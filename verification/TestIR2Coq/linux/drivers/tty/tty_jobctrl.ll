; ModuleID = 'drivers/tty/tty_jobctrl.c'
source_filename = "drivers/tty/tty_jobctrl.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.52, %struct.qspinlock }
%union.anon.52 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.60, %struct.anon.61, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.58, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.58 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.17, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.22, i32 }
%union.anon.22 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.47, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.25 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.46, i32, [12 x i8] }
%union.anon.46 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.2, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.48, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.48 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.18, i8* }
%union.anon.18 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.49, %struct.list_head, %struct.list_head, %union.anon.50 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { i64 }
%union.anon.49 = type { %struct.list_head }
%union.anon.50 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.51 }
%union.anon.51 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.54 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.54 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kernfs_iattrs = type opaque
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, {}*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.60 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.61 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.59, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.59 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }

@.str = private unnamed_addr constant [37 x i8] c"\014%s %s: sig=%d, tty->pgrp == NULL!\0A\00", align 1
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__tty_check_change(%struct.tty_struct* noundef %tty, i32 noundef %sig) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 24
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %cmp.not = icmp eq %struct.tty_struct* %3, %tty
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #7
  %call3 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %1) #8
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  %call7 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %pgrp11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 1
  %4 = load %struct.pid*, %struct.pid** %pgrp11, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call7) #7
  %tobool.not = icmp eq %struct.pid* %4, null
  %cmp14.not = icmp eq %struct.pid* %call3, %4
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp14.not
  br i1 %or.cond, label %if.end32, label %if.then16

if.then16:                                        ; preds = %if.end
  %call17 = call fastcc i32 @is_ignored(i32 noundef %sig) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then16
  %cmp20 = icmp eq i32 %sig, 21
  %spec.select = select i1 %cmp20, i32 -5, i32 0
  br label %if.end32

if.else:                                          ; preds = %if.then16
  %call24 = call i32 @is_current_pgrp_orphaned() #7
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else27, label %if.end32

if.else27:                                        ; preds = %if.else
  %call28 = call i32 @kill_pgrp(%struct.pid* noundef %call3, i32 noundef %sig, i32 noundef 1) #7
  %5 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %5) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then19, %if.else, %if.else27, %if.end
  %ret.0 = phi i32 [ -512, %if.else27 ], [ 0, %if.end ], [ %spec.select, %if.then19 ], [ -5, %if.else ]
  call fastcc void @rcu_read_unlock() #8
  br i1 %tobool.not, label %do.end37, label %cleanup

do.end37:                                         ; preds = %if.end32
  %call39 = call i8* @tty_driver_name(%struct.tty_struct* noundef %tty) #7
  %call40 = call i8* @tty_name(%struct.tty_struct* noundef %tty) #7
  %call41 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* noundef %call39, i8* noundef %call40, i32 noundef %sig) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end37, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ret.0, %do.end37 ], [ %ret.0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pgrp(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #1 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 2
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #8
  ret i64 %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @is_ignored(i32 noundef %sig) unnamed_addr #2 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89
  %call1 = call fastcc i32 @sigismember(%struct.sigset_t* noundef %blocked, i32 noundef %sig) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %sub = add i32 %sig, -1
  %idxprom = sext i32 %sub to i64
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 3, i64 %idxprom, i32 0, i32 0
  %3 = load void (i32)*, void (i32)** %sa_handler, align 8
  %cmp = icmp eq void (i32)* %3, inttoptr (i64 1 to void (i32)*)
  %phi.cast = zext i1 %cmp to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_current_pgrp_orphaned() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(%struct.pid* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @tty_driver_name(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @tty_name(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_check_change(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %call = call i32 @__tty_check_change(%struct.tty_struct* noundef %tty, i32 noundef 22) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @proc_clear_tty(%struct.task_struct* nocapture noundef readonly %p) local_unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty5 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 24
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty5, align 8
  store %struct.tty_struct* null, %struct.tty_struct** %tty5, align 8
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i15 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i15, i64 noundef %call2) #7
  call void @tty_kref_put(%struct.tty_struct* noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_open_proc_set_tty(%struct.file* nocapture noundef readonly %filp, %struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_read_lock() #8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #7
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %leader = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 23
  %4 = load i32, i32* %leader, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %tty4 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 24
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty4, align 8
  %tobool5.not = icmp eq %struct.tty_struct* %5, null
  br i1 %tobool5.not, label %land.lhs.true6, label %if.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 2
  %6 = load %struct.pid*, %struct.pid** %session, align 8
  %cmp = icmp eq %struct.pid* %6, null
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %land.lhs.true6
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %7 = load i32, i32* %f_mode, align 4
  %and = and i32 %7, 1
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then
  call fastcc void @__proc_set_tty(%struct.tty_struct* noundef %tty) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then8, %land.lhs.true6, %land.lhs.true, %entry
  %8 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i14 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %8, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i14) #7
  call fastcc void @__raw_read_unlock() #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  call fastcc void @queued_read_lock() #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__proc_set_tty(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 2
  %0 = load %struct.pid*, %struct.pid** %session, align 8
  call void @put_pid(%struct.pid* noundef %0) #7
  %pgrp = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 1
  %1 = load %struct.pid*, %struct.pid** %pgrp, align 8
  call void @put_pid(%struct.pid* noundef %1) #7
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call8 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %3) #8
  %call9 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %call8) #8
  store %struct.pid* %call8, %struct.pid** %pgrp, align 8
  %call13 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %3) #8
  %call14 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %call13) #8
  store %struct.pid* %call13, %struct.pid** %session, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #7
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 87
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty20 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 24
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty20, align 8
  %tobool.not = icmp eq %struct.tty_struct* %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @tty_kref_put(%struct.tty_struct* noundef nonnull %5) #7
  %.pre = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = phi %struct.signal_struct* [ %.pre, %if.then ], [ %4, %entry ]
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 22
  %7 = load %struct.pid*, %struct.pid** %tty_old_pgrp, align 8
  call void @put_pid(%struct.pid* noundef %7) #7
  %call27 = call fastcc %struct.tty_struct* @tty_kref_get(%struct.tty_struct* noundef %tty) #8
  %8 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty30 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i64 0, i32 24
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty30, align 8
  %9 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty_old_pgrp33 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i64 0, i32 22
  store %struct.pid* null, %struct.pid** %tty_old_pgrp33, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_read_unlock() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.tty_struct* @get_current_tty() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty7 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 24
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty7, align 8
  %call8 = call fastcc %struct.tty_struct* @tty_kref_get(%struct.tty_struct* noundef %4) #8
  %5 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i14 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %5, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i14, i64 noundef %call3) #7
  ret %struct.tty_struct* %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_struct* @tty_kref_get(%struct.tty_struct* noundef returned %tty) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 1
  call fastcc void @kref_get(%struct.kref* noundef %kref) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.tty_struct* %tty
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @session_clear_tty(%struct.pid* noundef %session) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.pid* %session, null
  br i1 %cmp.not, label %do.end30, label %if.then

if.then:                                          ; preds = %entry
  %first = getelementptr %struct.pid, %struct.pid* %session, i64 0, i32 3, i64 3, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -68, i32 1
  %tobool8.not4648 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool8.not46 = or i1 %tobool.not, %tobool8.not4648
  br i1 %tobool8.not46, label %do.end30, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %p.047 = phi %struct.task_struct* [ %spec.select45, %for.body ], [ %1, %for.body.preheader ]
  call void @proc_clear_tty(%struct.task_struct* noundef nonnull %p.047) #8
  %next = getelementptr %struct.task_struct, %struct.task_struct* %p.047, i64 0, i32 60, i64 3, i32 0
  %2 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool18.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr25 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -68, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr25 to %struct.task_struct*
  %spec.select45 = select i1 %tobool18.not, %struct.task_struct* null, %struct.task_struct* %3
  %tobool8.not = icmp eq %struct.task_struct* %spec.select45, null
  br i1 %tobool8.not, label %do.end30, label %for.body

do.end30:                                         ; preds = %for.body, %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_signal_session_leader(%struct.tty_struct* noundef %tty, i32 noundef %exit_session) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_read_lock() #8
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 2
  %0 = load %struct.pid*, %struct.pid** %session, align 8
  %tobool.not = icmp eq %struct.pid* %0, null
  br i1 %tobool.not, label %if.end68.thread, label %if.then3

if.end68.thread:                                  ; preds = %entry
  call fastcc void @__raw_read_unlock() #8
  br label %if.end75

if.then3:                                         ; preds = %entry
  %first = getelementptr %struct.pid, %struct.pid* %0, i64 0, i32 3, i64 3, i32 0
  %1 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool9.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -68, i32 1
  %tobool14.not123128 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool14.not123 = or i1 %tobool9.not, %tobool14.not123128
  br i1 %tobool14.not123, label %if.end68.thread129, label %for.body.lr.ph

if.end68.thread129:                               ; preds = %if.then3
  call fastcc void @__raw_read_unlock() #8
  br label %if.end75

for.body.lr.ph:                                   ; preds = %if.then3
  %2 = bitcast %struct.hlist_node*** %add.ptr to %struct.task_struct*
  %rlock.i114 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  %pgrp = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %p.0126 = phi %struct.task_struct* [ %2, %for.body.lr.ph ], [ %spec.select122, %for.inc ]
  %refs.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %refs.1, %for.inc ]
  %tty_pgrp.0124 = phi %struct.pid* [ null, %for.body.lr.ph ], [ %tty_pgrp.1, %for.inc ]
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.0126, i64 0, i32 88
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #7
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.0126, i64 0, i32 87
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty15 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 24
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty15, align 8
  %cmp16 = icmp eq %struct.tty_struct* %5, %tty
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %for.body
  store %struct.tty_struct* null, %struct.tty_struct** %tty15, align 8
  %inc = add i32 %refs.0125, 1
  %.pre = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  br label %if.end

if.end:                                           ; preds = %if.then17, %for.body
  %6 = phi %struct.signal_struct* [ %.pre, %if.then17 ], [ %4, %for.body ]
  %refs.1 = phi i32 [ %inc, %if.then17 ], [ %refs.0125, %for.body ]
  %leader = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 23
  %7 = load i32, i32* %leader, align 8
  %tobool21.not = icmp eq i32 %7, 0
  br i1 %tobool21.not, label %for.inc, label %if.end25

if.end25:                                         ; preds = %if.end
  %call = call i32 @__group_send_sig_info(i32 noundef 1, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef nonnull %p.0126) #7
  %call26 = call i32 @__group_send_sig_info(i32 noundef 18, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef nonnull %p.0126) #7
  %8 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i64 0, i32 22
  %9 = load %struct.pid*, %struct.pid** %tty_old_pgrp, align 8
  call void @put_pid(%struct.pid* noundef %9) #7
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i114) #7
  %10 = load %struct.pid*, %struct.pid** %pgrp, align 8
  %call30 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %10) #8
  %11 = load %struct.pid*, %struct.pid** %pgrp, align 8
  %tobool33.not = icmp eq %struct.pid* %11, null
  br i1 %tobool33.not, label %if.end40, label %if.then34

if.then34:                                        ; preds = %if.end25
  %call37 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef nonnull %11) #8
  %12 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty_old_pgrp39 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 22
  store %struct.pid* %11, %struct.pid** %tty_old_pgrp39, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.end25
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i114) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.end40
  %tty_pgrp.1 = phi %struct.pid* [ %10, %if.end40 ], [ %tty_pgrp.0124, %if.end ]
  %13 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i116 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %13, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i116) #7
  %next = getelementptr %struct.task_struct, %struct.task_struct* %p.0126, i64 0, i32 60, i64 3, i32 0
  %14 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool54.not = icmp eq %struct.hlist_node* %14, null
  %add.ptr61 = getelementptr %struct.hlist_node, %struct.hlist_node* %14, i64 -68, i32 1
  %15 = bitcast %struct.hlist_node*** %add.ptr61 to %struct.task_struct*
  %spec.select122 = select i1 %tobool54.not, %struct.task_struct* null, %struct.task_struct* %15
  %tobool14.not = icmp eq %struct.task_struct* %spec.select122, null
  br i1 %tobool14.not, label %if.end68, label %for.body

if.end68:                                         ; preds = %for.inc
  call fastcc void @__raw_read_unlock() #8
  %tobool69.not = icmp eq %struct.pid* %tty_pgrp.1, null
  br i1 %tobool69.not, label %if.end75, label %if.then70

if.then70:                                        ; preds = %if.end68
  %tobool71.not = icmp eq i32 %exit_session, 0
  br i1 %tobool71.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.then70
  %call73 = call i32 @kill_pgrp(%struct.pid* noundef nonnull %tty_pgrp.1, i32 noundef 1, i32 noundef %exit_session) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.then70
  call void @put_pid(%struct.pid* noundef nonnull %tty_pgrp.1) #7
  br label %if.end75

if.end75:                                         ; preds = %if.end68.thread129, %if.end68.thread, %if.end74, %if.end68
  %refs.2121 = phi i32 [ 0, %if.end68.thread ], [ %refs.1, %if.end74 ], [ %refs.1, %if.end68 ], [ 0, %if.end68.thread129 ]
  ret i32 %refs.2121
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__group_send_sig_info(i32 noundef, %struct.kernel_siginfo* noundef, %struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @get_pid(%struct.pid* noundef returned %pid) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.pid* %pid
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disassociate_ctty(i32 noundef %on_exit) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %leader = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 23
  %3 = load i32, i32* %leader, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.tty_struct* @get_current_tty() #8
  %tobool2.not = icmp eq %struct.tty_struct* %call1, null
  %tobool18.not = icmp eq i32 %on_exit, 0
  br i1 %tobool2.not, label %if.else17, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %tobool18.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call1, i64 0, i32 3
  %4 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %4, i64 0, i32 10
  %5 = load i16, i16* %type, align 8
  %cmp.not = icmp eq i16 %5, 4
  br i1 %cmp.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  call void @tty_vhangup_session(%struct.tty_struct* noundef nonnull %call1) #7
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true, %if.then3
  %call7 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef nonnull %call1) #8
  %tobool8.not = icmp eq %struct.pid* %call7, null
  br i1 %tobool8.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.else
  %call10 = call i32 @kill_pgrp(%struct.pid* noundef nonnull %call7, i32 noundef 1, i32 noundef %on_exit) #7
  br i1 %tobool18.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then9
  %call13 = call i32 @kill_pgrp(%struct.pid* noundef nonnull %call7, i32 noundef 18, i32 noundef 0) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then9
  call void @put_pid(%struct.pid* noundef nonnull %call7) #7
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end14, %if.then6
  call void @tty_kref_put(%struct.tty_struct* noundef nonnull %call1) #7
  br label %if.end35

if.else17:                                        ; preds = %if.end
  br i1 %tobool18.not, label %if.end35, label %if.then19

if.then19:                                        ; preds = %if.else17
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %6 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %6, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #7
  %7 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 22
  %8 = load %struct.pid*, %struct.pid** %tty_old_pgrp, align 8
  store %struct.pid* null, %struct.pid** %tty_old_pgrp, align 8
  %9 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i102 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %9, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i102) #7
  %tobool29.not = icmp eq %struct.pid* %8, null
  br i1 %tobool29.not, label %cleanup, label %if.then30

if.then30:                                        ; preds = %if.then19
  %call31 = call i32 @kill_pgrp(%struct.pid* noundef nonnull %8, i32 noundef 1, i32 noundef %on_exit) #7
  %call32 = call i32 @kill_pgrp(%struct.pid* noundef nonnull %8, i32 noundef 18, i32 noundef %on_exit) #7
  call void @put_pid(%struct.pid* noundef nonnull %8) #7
  br label %cleanup

if.end35:                                         ; preds = %if.else17, %if.end16
  %sighand37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %10 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand37, align 16
  %rlock.i103 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %10, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i103) #7
  %11 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty_old_pgrp41 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %11, i64 0, i32 22
  %12 = load %struct.pid*, %struct.pid** %tty_old_pgrp41, align 8
  call void @put_pid(%struct.pid* noundef %12) #7
  %13 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty_old_pgrp44 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %13, i64 0, i32 22
  store %struct.pid* null, %struct.pid** %tty_old_pgrp44, align 8
  %14 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty47 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %14, i64 0, i32 24
  %15 = load %struct.tty_struct*, %struct.tty_struct** %tty47, align 8
  %call48 = call fastcc %struct.tty_struct* @tty_kref_get(%struct.tty_struct* noundef %15) #8
  %16 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand37, align 16
  %rlock.i104 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %16, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i104) #7
  %tobool52.not = icmp eq %struct.tty_struct* %15, null
  br i1 %tobool52.not, label %if.end69, label %if.then53

if.then53:                                        ; preds = %if.end35
  call void @tty_lock(%struct.tty_struct* noundef nonnull %15) #7
  %rlock.i105 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i64 0, i32 20, i32 0, i32 0, i32 0
  %call58 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i105) #8
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i64 0, i32 20, i32 2
  %17 = load %struct.pid*, %struct.pid** %session, align 8
  call void @put_pid(%struct.pid* noundef %17) #7
  %pgrp = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i64 0, i32 20, i32 1
  %18 = load %struct.pid*, %struct.pid** %pgrp, align 8
  call void @put_pid(%struct.pid* noundef %18) #7
  store %struct.pid* null, %struct.pid** %session, align 8
  store %struct.pid* null, %struct.pid** %pgrp, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i105, i64 noundef %call58) #7
  call void @tty_unlock(%struct.tty_struct* noundef nonnull %15) #7
  call void @tty_kref_put(%struct.tty_struct* noundef nonnull %15) #7
  br label %if.end69

if.end69:                                         ; preds = %if.then53, %if.end35
  call fastcc void @__raw_read_lock() #8
  %call71 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %1) #8
  call void @session_clear_tty(%struct.pid* noundef %call71) #8
  call fastcc void @__raw_read_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then30, %entry, %if.end69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup_session(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %pgrp6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 1
  %0 = load %struct.pid*, %struct.pid** %pgrp6, align 8
  %call7 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %0) #8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #7
  ret %struct.pid* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_session(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #1 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 3
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @no_tty() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  call void @disassociate_ctty(i32 noundef 0) #8
  call void @proc_clear_tty(%struct.task_struct* noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @tty_jobctrl_ioctl(%struct.tty_struct* noundef %tty, %struct.tty_struct* noundef %real_tty, %struct.file* nocapture noundef readonly %file, i32 noundef %cmd, i64 noundef %arg) local_unnamed_addr #0 {
entry:
  switch i32 %cmd, label %cleanup [
    i32 21538, label %sw.bb
    i32 21518, label %sw.bb2
    i32 21519, label %sw.bb5
    i32 21520, label %sw.bb8
    i32 21545, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 24
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %cmp.not = icmp eq %struct.tty_struct* %3, %tty
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @no_tty() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %conv = trunc i64 %arg to i32
  %call3 = call fastcc i32 @tiocsctty(%struct.tty_struct* noundef %real_tty, %struct.file* noundef %file, i32 noundef %conv) #8
  %conv4 = sext i32 %call3 to i64
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %4 = inttoptr i64 %arg to i32*
  %call6 = call fastcc i32 @tiocgpgrp(%struct.tty_struct* noundef %tty, %struct.tty_struct* noundef %real_tty, i32* noundef %4) #8
  %conv7 = sext i32 %call6 to i64
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %5 = inttoptr i64 %arg to i32*
  %call9 = call fastcc i32 @tiocspgrp(%struct.tty_struct* noundef %real_tty, i32* noundef %5) #8
  %conv10 = sext i32 %call9 to i64
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %6 = inttoptr i64 %arg to i32*
  %call12 = call fastcc i32 @tiocgsid(%struct.tty_struct* noundef %tty, %struct.tty_struct* noundef %real_tty, i32* noundef %6) #8
  %conv13 = sext i32 %call12 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %if.end
  %retval.0 = phi i64 [ %conv13, %sw.bb11 ], [ %conv10, %sw.bb8 ], [ %conv7, %sw.bb5 ], [ %conv4, %sw.bb2 ], [ 0, %if.end ], [ -25, %sw.bb ], [ -515, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tiocsctty(%struct.tty_struct* noundef %tty, %struct.file* nocapture noundef readonly %file, i32 noundef %arg) unnamed_addr #0 {
entry:
  call void @tty_lock(%struct.tty_struct* noundef %tty) #7
  call fastcc void @__raw_read_lock() #8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %leader = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 23
  %3 = load i32, i32* %leader, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %unlock, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %1) #8
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 2
  %4 = load %struct.pid*, %struct.pid** %session, align 8
  %cmp = icmp eq %struct.pid* %call2, %4
  br i1 %cmp, label %unlock, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tty9 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 24
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty9, align 8
  %tobool10.not = icmp eq %struct.tty_struct* %5, null
  br i1 %tobool10.not, label %if.end12, label %unlock

if.end12:                                         ; preds = %lor.lhs.false
  %tobool15.not = icmp eq %struct.pid* %4, null
  br i1 %tobool15.not, label %if.end24, label %if.then16

if.then16:                                        ; preds = %if.end12
  %cmp17 = icmp eq i32 %arg, 1
  br i1 %cmp17, label %land.lhs.true18, label %unlock

land.lhs.true18:                                  ; preds = %if.then16
  %call19 = call i1 @capable(i32 noundef 21) #7
  br i1 %call19, label %if.then20, label %unlock

if.then20:                                        ; preds = %land.lhs.true18
  %6 = load %struct.pid*, %struct.pid** %session, align 8
  call void @session_clear_tty(%struct.pid* noundef %6) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end12
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %7 = load i32, i32* %f_mode, align 4
  %and = and i32 %7, 1
  %cmp25 = icmp eq i32 %and, 0
  br i1 %cmp25, label %land.lhs.true26, label %if.end29

land.lhs.true26:                                  ; preds = %if.end24
  %call27 = call i1 @capable(i32 noundef 21) #7
  br i1 %call27, label %if.end29, label %unlock

if.end29:                                         ; preds = %land.lhs.true26, %if.end24
  call fastcc void @proc_set_tty(%struct.tty_struct* noundef %tty) #8
  br label %unlock

unlock:                                           ; preds = %entry, %land.lhs.true26, %if.then16, %land.lhs.true18, %lor.lhs.false, %land.lhs.true, %if.end29
  %ret.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end29 ], [ -1, %lor.lhs.false ], [ -1, %land.lhs.true18 ], [ -1, %if.then16 ], [ -1, %land.lhs.true26 ], [ -1, %entry ]
  call fastcc void @__raw_read_unlock() #8
  call void @tty_unlock(%struct.tty_struct* noundef %tty) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tiocgpgrp(%struct.tty_struct* noundef readnone %tty, %struct.tty_struct* noundef %real_tty, i32* noundef %p) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.tty_struct* %tty, %real_tty
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 24
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %cmp2.not = icmp eq %struct.tty_struct* %3, %tty
  br i1 %cmp2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef %real_tty) #8
  %4 = bitcast i32* %p to i8*
  %call4 = call fastcc i64 @__range_ok(i8* noundef %4) #8
  %tobool.not = icmp eq i64 %call4, 0
  br i1 %tobool.not, label %if.end14, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #8
  %5 = bitcast i8* %call6 to i32*
  %call10 = call i32 @pid_vnr(%struct.pid* noundef %call3) #7
  %6 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call10, i32* %5, i32 -14, i32 0) #10, !srcloc !11
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then5
  %__pu_err.0 = phi i32 [ %6, %if.then5 ], [ -14, %if.end ]
  call void @put_pid(%struct.pid* noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end14
  %retval.0 = phi i32 [ %__pu_err.0, %if.end14 ], [ -25, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tiocspgrp(%struct.tty_struct* noundef %real_tty, i32* noundef %p) unnamed_addr #0 {
entry:
  %call = call i32 @tty_check_change(%struct.tty_struct* noundef %real_tty) #8
  switch i32 %call, label %if.then2 [
    i32 -5, label %cleanup
    i32 0, label %if.end3
  ]

if.then2:                                         ; preds = %entry
  br label %cleanup

if.end3:                                          ; preds = %entry
  %0 = bitcast i32* %p to i8*
  %call4 = call fastcc i64 @__range_ok(i8* noundef %0) #8
  %tobool5.not = icmp eq i64 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end3
  %call7 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #8
  %1 = bitcast i8* %call7 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #10, !srcloc !12
  %asmresult = extractvalue { i32, i64 } %2, 0
  %asmresult11 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult11 to i32
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end15
  %cmp21 = icmp slt i32 %conv, 0
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end20
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %real_tty, i64 0, i32 20, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #7
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 87
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty26 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 24
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty26, align 8
  %tobool27.not = icmp ne %struct.tty_struct* %6, null
  %cmp31.not = icmp eq %struct.tty_struct* %6, %real_tty
  %or.cond = and i1 %tobool27.not, %cmp31.not
  br i1 %or.cond, label %lor.lhs.false33, label %out_unlock_ctrl

lor.lhs.false33:                                  ; preds = %if.end24
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %real_tty, i64 0, i32 20, i32 2
  %7 = load %struct.pid*, %struct.pid** %session, align 8
  %call36 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %4) #8
  %cmp37.not = icmp eq %struct.pid* %7, %call36
  br i1 %cmp37.not, label %if.end40, label %out_unlock_ctrl

if.end40:                                         ; preds = %lor.lhs.false33
  call fastcc void @__rcu_read_lock() #7
  %call41 = call %struct.pid* @find_vpid(i32 noundef %conv) #7
  %tobool42.not = icmp eq %struct.pid* %call41, null
  br i1 %tobool42.not, label %out_unlock, label %if.end44

if.end44:                                         ; preds = %if.end40
  %call45 = call fastcc %struct.pid* @session_of_pgrp(%struct.pid* noundef nonnull %call41) #8
  %call47 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %4) #8
  %cmp48.not = icmp eq %struct.pid* %call45, %call47
  br i1 %cmp48.not, label %if.end51, label %out_unlock

if.end51:                                         ; preds = %if.end44
  %pgrp53 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %real_tty, i64 0, i32 20, i32 1
  %8 = load %struct.pid*, %struct.pid** %pgrp53, align 8
  call void @put_pid(%struct.pid* noundef %8) #7
  %call54 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef nonnull %call41) #8
  store %struct.pid* %call41, %struct.pid** %pgrp53, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.end44, %if.end40, %if.end51
  %retval1.0 = phi i32 [ -1, %if.end44 ], [ 0, %if.end51 ], [ -3, %if.end40 ]
  call fastcc void @rcu_read_unlock() #8
  br label %out_unlock_ctrl

out_unlock_ctrl:                                  ; preds = %if.end24, %lor.lhs.false33, %out_unlock
  %retval1.1 = phi i32 [ %retval1.0, %out_unlock ], [ -25, %lor.lhs.false33 ], [ -25, %if.end24 ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end20, %if.end15, %entry, %out_unlock_ctrl, %if.then2
  %retval.0 = phi i32 [ %call, %if.then2 ], [ %retval1.1, %out_unlock_ctrl ], [ -25, %entry ], [ -14, %if.end15 ], [ -22, %if.end20 ], [ -14, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tiocgsid(%struct.tty_struct* noundef readnone %tty, %struct.tty_struct* noundef %real_tty, i32* noundef %p) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.tty_struct* %tty, %real_tty
  br i1 %cmp, label %land.lhs.true, label %do.body3

land.lhs.true:                                    ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 24
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %cmp2.not = icmp eq %struct.tty_struct* %3, %tty
  br i1 %cmp2.not, label %do.body3, label %cleanup

do.body3:                                         ; preds = %land.lhs.true, %entry
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %real_tty, i64 0, i32 20, i32 0, i32 0, i32 0
  %call6 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %real_tty, i64 0, i32 20, i32 2
  %4 = load %struct.pid*, %struct.pid** %session, align 8
  %tobool.not = icmp eq %struct.pid* %4, null
  br i1 %tobool.not, label %err, label %if.end11

if.end11:                                         ; preds = %do.body3
  %call14 = call i32 @pid_vnr(%struct.pid* noundef nonnull %4) #7
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call6) #7
  %5 = bitcast i32* %p to i8*
  %call18 = call fastcc i64 @__range_ok(i8* noundef %5) #8
  %tobool19.not = icmp eq i64 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %if.then20

if.then20:                                        ; preds = %if.end11
  %call21 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %5) #8
  %6 = bitcast i8* %call21 to i32*
  %7 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call14, i32* %6, i32 -14, i32 0) #10, !srcloc !13
  br label %cleanup

err:                                              ; preds = %do.body3
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end11, %land.lhs.true, %err
  %retval.0 = phi i32 [ -25, %err ], [ -25, %land.lhs.true ], [ %7, %if.then20 ], [ -14, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #8
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #7
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !15

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #7
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #10, !srcloc !16
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #10, !srcloc !17
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #8
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !18

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #10, !srcloc !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #10, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #10, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #10, !srcloc !23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set, i32 noundef %_sig) unnamed_addr #1 {
entry:
  %sub = add i32 %_sig, -1
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %conv4 = zext i32 %sub to i64
  %shr = lshr i64 %0, %conv4
  %1 = trunc i64 %shr to i32
  %conv2 = and i32 %1, 1
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #10, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  call void @rcu_read_unlock_strict() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #7
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !15

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #10, !srcloc !26
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #7
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !15

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #7
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call fastcc void @arch_local_irq_enable() #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #10, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #10, !srcloc !30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #7
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !18

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !15

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #7
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #10, !srcloc !31
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @proc_set_tty(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #6, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #7
  call fastcc void @__proc_set_tty(%struct.tty_struct* noundef %tty) #8
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i4 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i4) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 4, i8* %addr, i64 549755813887) #10, !srcloc !34
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #10, !srcloc !35
  call void asm sideeffect "hint #20", "~{memory}"() #10, !srcloc !36
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(%struct.pid* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @session_of_pgrp(%struct.pid* noundef %pgrp) unnamed_addr #0 {
entry:
  %call = call %struct.task_struct* @pid_task(%struct.pid* noundef %pgrp, i32 noundef 2) #7
  %cmp = icmp eq %struct.task_struct* %call, null
  br i1 %cmp, label %if.end, label %if.then3

if.end:                                           ; preds = %entry
  %call1 = call %struct.task_struct* @pid_task(%struct.pid* noundef %pgrp, i32 noundef 0) #7
  %cmp2.not = icmp eq %struct.task_struct* %call1, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %entry, %if.end
  %p.013 = phi %struct.task_struct* [ %call1, %if.end ], [ %call, %entry ]
  %call4 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef nonnull %p.013) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %sid.0 = phi %struct.pid* [ %call4, %if.then3 ], [ null, %if.end ]
  ret %struct.pid* %sid.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nounwind readnone }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { cold nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1550706}
!8 = !{i64 2149744473}
!9 = !{i64 2149812044}
!10 = !{i64 2149866998}
!11 = !{i64 2152329346, i64 2152329384, i64 2152329401, i64 2152329435, i64 2152329457, i64 2152329483, i64 2152329501, i64 2152329659, i64 2152329700, i64 2152329722, i64 2152329768}
!12 = !{i64 2152333405, i64 2152333442, i64 2152333459, i64 2152333494, i64 2152333516, i64 2152333542, i64 2152333565, i64 2152333583, i64 2152333742, i64 2152333783, i64 2152333805, i64 2152333851}
!13 = !{i64 2152337877, i64 2152337915, i64 2152337932, i64 2152337966, i64 2152337988, i64 2152338014, i64 2152338032, i64 2152338190, i64 2152338231, i64 2152338253, i64 2152338299}
!14 = !{i64 2149435782}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148970434, i64 2148970481, i64 2148970487, i64 2148970524, i64 2148970542, i64 2148971853, i64 2148971901, i64 2148971949, i64 2148972012, i64 2148972061, i64 2148970620, i64 2148970645, i64 2148970671, i64 2148970677, i64 2148971519, i64 2148971559, i64 2148971577, i64 2148971609, i64 2148971637, i64 2148971691, i64 2148971711, i64 2148971808, i64 2148970700, i64 2148970714, i64 2148970720, i64 2148970770, i64 2148970816, i64 2148970849}
!17 = !{i64 2148972613, i64 2148972660, i64 2148972666, i64 2148972703, i64 2148972721, i64 2148973664, i64 2148973712, i64 2148973760, i64 2148973823, i64 2148973872, i64 2148972799, i64 2148972824, i64 2148972850, i64 2148972856, i64 2148972893, i64 2148972899, i64 2148972949, i64 2148972995, i64 2148973028}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2148964731, i64 2148964778, i64 2148964784, i64 2148964821, i64 2148964839, i64 2148966180, i64 2148966228, i64 2148966276, i64 2148966339, i64 2148966388, i64 2148964917, i64 2148964942, i64 2148964968, i64 2148964974, i64 2148965846, i64 2148965886, i64 2148965904, i64 2148965936, i64 2148965964, i64 2148966018, i64 2148966038, i64 2148966135, i64 2148964997, i64 2148965011, i64 2148965017, i64 2148965067, i64 2148965113, i64 2148965146}
!20 = !{i64 2147966538, i64 2147966571, i64 2147966624, i64 2147966683, i64 2147966717, i64 2147966772, i64 2147966801, i64 2147966821}
!21 = !{i64 2149770316}
!22 = !{i64 2149713603}
!23 = !{i64 2148976447, i64 2148976494, i64 2148976500, i64 2148976537, i64 2148976555, i64 2148977866, i64 2148977914, i64 2148977962, i64 2148978025, i64 2148978074, i64 2148976633, i64 2148976658, i64 2148976684, i64 2148976690, i64 2148977532, i64 2148977572, i64 2148977590, i64 2148977622, i64 2148977650, i64 2148977704, i64 2148977724, i64 2148977821, i64 2148976713, i64 2148976727, i64 2148976733, i64 2148976783, i64 2148976829, i64 2148976862}
!24 = !{i64 2147935695, i64 2147936206, i64 2147936236, i64 2147936262, i64 2147936294, i64 2147936323}
!25 = !{i64 2149435999}
!26 = !{i64 2147869499, i64 2147870165, i64 2147870195, i64 2147870228, i64 2147870262, i64 2147870297, i64 2147870322}
!27 = !{i64 2149748766}
!28 = !{i64 2149773619}
!29 = !{i64 2148955275, i64 2148955322, i64 2148955328, i64 2148955365, i64 2148955383, i64 2148956723, i64 2148956771, i64 2148956819, i64 2148956882, i64 2148956931, i64 2148955461, i64 2148955486, i64 2148955512, i64 2148955518, i64 2148956389, i64 2148956429, i64 2148956447, i64 2148956479, i64 2148956507, i64 2148956561, i64 2148956581, i64 2148956678, i64 2148955541, i64 2148955555, i64 2148955561, i64 2148955611, i64 2148955657, i64 2148955690}
!30 = !{i64 2147880247, i64 2147880913, i64 2147880943, i64 2147880975, i64 2147881009, i64 2147881045, i64 2147881070}
!31 = !{i64 2147872579, i64 2147873243, i64 2147873273, i64 2147873305, i64 2147873339, i64 2147873374, i64 2147873399}
!32 = !{i64 2149759474}
!33 = !{i64 2149766755}
!34 = !{i64 3043963, i64 3044046, i64 3044270, i64 3044490, i64 3044513}
!35 = !{i64 3048665, i64 3048689}
!36 = !{i64 2150848123}
