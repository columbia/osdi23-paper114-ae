; ModuleID = 'drivers/tty/tty_port.c'
source_filename = "drivers/tty/tty_port.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.atomic_t = type { i32 }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.60, %struct.anon.61, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.59, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.59 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.18, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.23, i32 }
%union.anon.23 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.24 }
%union.anon.24 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26, i16, i16 }
%union.anon.26 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.33, %union.anon.34, i32 }
%struct.request_queue = type opaque
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.35 }
%struct.anon.35 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.3, %union.anon.58, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.58 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.49, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.49 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.19, i8* }
%union.anon.19 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.50, %struct.list_head, %struct.list_head, %union.anon.51 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { i64 }
%union.anon.50 = type { %struct.list_head }
%union.anon.51 = type { %struct.hlist_node }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.52 }
%union.anon.52 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.55 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.55 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.53, %struct.qspinlock }
%union.anon.53 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.32 = type { %struct.callback_head }
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
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, i8*, i16, i32, i64 }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.60 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.61 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { {}*, void (%struct.tty_port*)* }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@tty_port_default_client_ops = dso_local constant { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* } { i32 (%struct.tty_port*, i8*, i8*, i64)* @tty_port_default_receive_buf, void (%struct.tty_port*)* @tty_port_default_wakeup }, align 8
@tty_port_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [17 x i8] c"&port->open_wait\00", align 1
@tty_port_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"&port->delta_msr_wait\00", align 1
@tty_port_init.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"&port->mutex\00", align 1
@tty_port_init.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"&port->buf_mutex\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\014%s %s: %s: tty->count = 1 port count = %d\0A\00", align 1
@__func__.tty_port_close_start = private unnamed_addr constant [21 x i8] c"tty_port_close_start\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\014%s %s: %s: bad port count (%d)\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @tty_port_default_receive_buf(%struct.tty_port* noundef %port, i8* noundef %p, i8* noundef %f, i64 noundef %count) #0 {
entry:
  %itty = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 2
  %0 = load volatile %struct.tty_struct*, %struct.tty_struct** %itty, align 8
  %tobool.not = icmp eq %struct.tty_struct* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* noundef nonnull %0) #7
  %tobool1.not = icmp eq %struct.tty_ldisc* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %conv = trunc i64 %count to i32
  %call4 = call i32 @tty_ldisc_receive_buf(%struct.tty_ldisc* noundef nonnull %call, i8* noundef %p, i8* noundef %f, i32 noundef %conv) #7
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @tty_port_default_wakeup(%struct.tty_port* noundef %port) #0 {
entry:
  %call = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* noundef %port) #8
  %tobool.not = icmp eq %struct.tty_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @tty_wakeup(%struct.tty_struct* noundef nonnull %call) #7
  call void @tty_kref_put(%struct.tty_struct* noundef nonnull %call) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_init(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.tty_port* %port to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 352) #7
  call void @tty_buffer_init(%struct.tty_port* noundef %port) #7
  %open_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 8
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %open_wait, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @tty_port_init.__key) #7
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 9
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %delta_msr_wait, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @tty_port_init.__key.1) #7
  %mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 13
  call void @__mutex_init(%struct.mutex* noundef %mutex, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @tty_port_init.__key.3) #7
  %buf_mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 14
  call void @__mutex_init(%struct.mutex* noundef %buf_mutex, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @tty_port_init.__key.5) #7
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %close_delay = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 16
  store i32 125, i32* %close_delay, align 8
  %closing_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 17
  store i32 7500, i32* %closing_wait, align 4
  %client_ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 4
  store %struct.tty_port_client_operations* bitcast ({ i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }* @tty_port_default_client_ops to %struct.tty_port_client_operations*), %struct.tty_port_client_operations** %client_ops, align 8
  %kref = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 19
  call fastcc void @kref_init(%struct.kref* noundef %kref) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_init(%struct.tty_port* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @kref_init(%struct.kref* noundef %kref) unnamed_addr #2 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %refcount) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_link_device(%struct.tty_port* noundef %port, %struct.tty_driver* nocapture noundef readonly %driver, i32 noundef %index) local_unnamed_addr #0 {
entry:
  %num = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 9
  %0 = load i32, i32* %num, align 4
  %cmp.not = icmp ugt i32 %0, %index
  br i1 %cmp.not, label %if.end16, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_port.c\22; .popsection; .long 14472b - 14470b; .short 92; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !8
  br label %return

if.end16:                                         ; preds = %entry
  %ports = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 17
  %1 = load %struct.tty_port**, %struct.tty_port*** %ports, align 8
  %idxprom = zext i32 %index to i64
  %arrayidx = getelementptr %struct.tty_port*, %struct.tty_port** %1, i64 %idxprom
  store %struct.tty_port* %port, %struct.tty_port** %arrayidx, align 8
  br label %return

return:                                           ; preds = %if.then, %if.end16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @tty_port_register_device(%struct.tty_port* noundef %port, %struct.tty_driver* noundef %driver, i32 noundef %index, %struct.device* noundef %device) local_unnamed_addr #0 {
entry:
  %call = call %struct.device* @tty_port_register_device_attr(%struct.tty_port* noundef %port, %struct.tty_driver* noundef %driver, i32 noundef %index, %struct.device* noundef %device, i8* noundef null, %struct.attribute_group** noundef null) #8
  ret %struct.device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @tty_port_register_device_attr(%struct.tty_port* noundef %port, %struct.tty_driver* noundef %driver, i32 noundef %index, %struct.device* noundef %device, i8* noundef %drvdata, %struct.attribute_group** noundef %attr_grp) local_unnamed_addr #0 {
entry:
  call void @tty_port_link_device(%struct.tty_port* noundef %port, %struct.tty_driver* noundef %driver, i32 noundef %index) #8
  %call = call %struct.device* @tty_register_device_attr(%struct.tty_driver* noundef %driver, i32 noundef %index, %struct.device* noundef %device, i8* noundef %drvdata, %struct.attribute_group** noundef %attr_grp) #7
  ret %struct.device* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @tty_register_device_attr(%struct.tty_driver* noundef, i32 noundef, %struct.device* noundef, i8* noundef, %struct.attribute_group** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @tty_port_register_device_attr_serdev(%struct.tty_port* noundef %port, %struct.tty_driver* noundef %driver, i32 noundef %index, %struct.device* noundef %device, i8* noundef %drvdata, %struct.attribute_group** noundef %attr_grp) local_unnamed_addr #0 {
entry:
  call void @tty_port_link_device(%struct.tty_port* noundef %port, %struct.tty_driver* noundef %driver, i32 noundef %index) #8
  %call2 = call %struct.device* @tty_register_device_attr(%struct.tty_driver* noundef %driver, i32 noundef %index, %struct.device* noundef %device, i8* noundef %drvdata, %struct.attribute_group** noundef %attr_grp) #7
  ret %struct.device* %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @tty_port_register_device_serdev(%struct.tty_port* noundef %port, %struct.tty_driver* noundef %driver, i32 noundef %index, %struct.device* noundef %device) local_unnamed_addr #0 {
entry:
  %call = call %struct.device* @tty_port_register_device_attr_serdev(%struct.tty_port* noundef %port, %struct.tty_driver* noundef %driver, i32 noundef %index, %struct.device* noundef %device, i8* noundef null, %struct.attribute_group** noundef null) #8
  ret %struct.device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_unregister_device(%struct.tty_port* nocapture noundef readnone %port, %struct.tty_driver* noundef %driver, i32 noundef %index) local_unnamed_addr #0 {
entry:
  call void @tty_unregister_device(%struct.tty_driver* noundef %driver, i32 noundef %index) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(%struct.tty_driver* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_port_alloc_xmit_buf(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %buf_mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 14
  call void @mutex_lock(%struct.mutex* noundef %buf_mutex) #7
  %xmit_buf = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 15
  %0 = load i8*, i8** %xmit_buf, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @get_zeroed_page(i32 noundef 3264) #7
  %1 = inttoptr i64 %call to i8*
  store i8* %1, i8** %xmit_buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* noundef %buf_mutex) #7
  %2 = load i8*, i8** %xmit_buf, align 8
  %cmp4 = icmp eq i8* %2, null
  %. = select i1 %cmp4, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_free_xmit_buf(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %buf_mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 14
  call void @mutex_lock(%struct.mutex* noundef %buf_mutex) #7
  %xmit_buf = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 15
  %0 = load i8*, i8** %xmit_buf, align 8
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = ptrtoint i8* %0 to i64
  call void @free_pages(i64 noundef %1, i32 noundef 0) #7
  store i8* null, i8** %xmit_buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* noundef %buf_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_destroy(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %call = call i1 @tty_buffer_cancel_work(%struct.tty_port* noundef %port) #7
  call void @tty_buffer_free_all(%struct.tty_port* noundef %port) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @tty_buffer_cancel_work(%struct.tty_port* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_free_all(%struct.tty_port* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_put(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_port* %port, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 19
  call fastcc void @kref_put(%struct.kref* noundef %kref) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_put(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcount) #8
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call fastcc void @tty_port_destructor(%struct.kref* noundef %kref) #8
  br label %return

return:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_port_destructor(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %add.ptr44 = getelementptr %struct.kref, %struct.kref* %kref, i64 -85
  %add.ptr = bitcast %struct.kref* %add.ptr44 to i8*
  %0 = bitcast %struct.kref* %add.ptr44 to %struct.tty_port*
  %itty = getelementptr %struct.kref, %struct.kref* %kref, i64 -49
  %1 = bitcast %struct.kref* %itty to %struct.tty_struct**
  %2 = load %struct.tty_struct*, %struct.tty_struct** %1, align 8
  %tobool.not = icmp eq %struct.tty_struct* %2, null
  br i1 %tobool.not, label %if.end18, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_port.c\22; .popsection; .long 14472b - 14470b; .short 259; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !9
  br label %cleanup

if.end18:                                         ; preds = %entry
  %xmit_buf = getelementptr %struct.kref, %struct.kref* %kref, i64 -5
  %3 = bitcast %struct.kref* %xmit_buf to i8**
  %4 = load i8*, i8** %3, align 8
  %tobool19.not = icmp eq i8* %4, null
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  %5 = ptrtoint i8* %4 to i64
  call void @free_pages(i64 noundef %5, i32 noundef 0) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  call void @tty_port_destroy(%struct.tty_port* noundef %0) #8
  %ops = getelementptr %struct.kref, %struct.kref* %kref, i64 -47
  %6 = bitcast %struct.kref* %ops to %struct.tty_port_operations**
  %7 = load %struct.tty_port_operations*, %struct.tty_port_operations** %6, align 8
  %tobool23.not = icmp eq %struct.tty_port_operations* %7, null
  br i1 %tobool23.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end22
  %destruct = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %7, i64 0, i32 4
  %8 = load void (%struct.tty_port*)*, void (%struct.tty_port*)** %destruct, align 8
  %tobool25.not = icmp eq void (%struct.tty_port*)* %8, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  call void %8(%struct.tty_port* noundef %0) #7
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.end22
  call void @kfree(i8* noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then26, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 5, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %tty5 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 1
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty5, align 8
  %call6 = call fastcc %struct.tty_struct* @tty_kref_get(%struct.tty_struct* noundef %0) #8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #7
  ret %struct.tty_struct* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #8
  ret i64 %call
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
define dso_local void @tty_port_tty_set(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 5, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %tty5 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 1
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty5, align 8
  call void @tty_kref_put(%struct.tty_struct* noundef %0) #7
  %call6 = call fastcc %struct.tty_struct* @tty_kref_get(%struct.tty_struct* noundef %tty) #8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty5, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_hangup(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 5, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %count = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 7
  store i32 0, i32* %count, align 8
  %tty5 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 1
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty5, align 8
  %tobool.not = icmp eq %struct.tty_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %flags6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.tty_struct* null, %struct.tty_struct** %tty5, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #7
  call fastcc void @tty_port_set_active(%struct.tty_port* noundef %port, i1 noundef false) #8
  call fastcc void @tty_port_shutdown(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %0) #8
  call void @tty_kref_put(%struct.tty_struct* noundef %0) #7
  %open_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 8
  call void @__wake_up(%struct.wait_queue_head* noundef %open_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #7
  %delta_msr_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 9
  call void @__wake_up(%struct.wait_queue_head* noundef %delta_msr_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_port_set_active(%struct.tty_port* noundef %port, i1 noundef %val) unnamed_addr #0 {
entry:
  %iflags = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 11
  br i1 %val, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %iflags) #7
  br label %assign_bit.exit

if.else.i:                                        ; preds = %entry
  call fastcc void @clear_bit(i64 noundef 2, i64* noundef %iflags) #7
  br label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.then.i, %if.else.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_port_shutdown(%struct.tty_port* noundef %port, %struct.tty_struct* noundef readonly %tty) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %mutex) #7
  %console = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 12
  %bf.load = load i8, i8* %console, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @tty_port_initialized(%struct.tty_port* noundef %port) #8
  br i1 %call, label %if.then1, label %out

if.then1:                                         ; preds = %if.end
  call fastcc void @tty_port_set_initialized(%struct.tty_port* noundef %port, i1 noundef false) #8
  %tobool2.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool2.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then1
  %c_cflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 2
  %0 = load i32, i32* %c_cflag, align 8
  %and = and i32 %0, 1024
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  call void @tty_port_lower_dtr_rts(%struct.tty_port* noundef %port) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true, %if.then1
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 3
  %1 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8
  %shutdown = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %1, i64 0, i32 2
  %2 = load void (%struct.tty_port*)*, void (%struct.tty_port*)** %shutdown, align 8
  %tobool6.not = icmp eq void (%struct.tty_port*)* %2, null
  br i1 %tobool6.not, label %out, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void %2(%struct.tty_port* noundef %port) #7
  br label %out

out:                                              ; preds = %if.end, %if.then7, %if.end5, %entry
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_tty_hangup(%struct.tty_port* noundef %port, i1 noundef %check_clocal) local_unnamed_addr #0 {
entry:
  %call = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* noundef %port) #8
  %tobool.not = icmp eq %struct.tty_struct* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %check_clocal, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %c_cflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 13, i32 2
  %0 = load i32, i32* %c_cflag, align 8
  %and = and i32 %0, 2048
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @tty_hangup(%struct.tty_struct* noundef nonnull %call) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  call void @tty_kref_put(%struct.tty_struct* noundef %call) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_tty_wakeup(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %client_ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 4
  %0 = load %struct.tty_port_client_operations*, %struct.tty_port_client_operations** %client_ops, align 8
  %write_wakeup = getelementptr inbounds %struct.tty_port_client_operations, %struct.tty_port_client_operations* %0, i64 0, i32 1
  %1 = load void (%struct.tty_port*)*, void (%struct.tty_port*)** %write_wakeup, align 8
  call void %1(%struct.tty_port* noundef %port) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_port_carrier_raised(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 3
  %0 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8
  %carrier_raised = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %0, i64 0, i32 0
  %1 = load i32 (%struct.tty_port*)*, i32 (%struct.tty_port*)** %carrier_raised, align 8
  %cmp = icmp eq i32 (%struct.tty_port*)* %1, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 %1(%struct.tty_port* noundef %port) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_raise_dtr_rts(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 3
  %0 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8
  %dtr_rts = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %0, i64 0, i32 1
  %1 = load void (%struct.tty_port*, i32)*, void (%struct.tty_port*, i32)** %dtr_rts, align 8
  %tobool.not = icmp eq void (%struct.tty_port*, i32)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %1(%struct.tty_port* noundef %port, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_lower_dtr_rts(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 3
  %0 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8
  %dtr_rts = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %0, i64 0, i32 1
  %1 = load void (%struct.tty_port*, i32)*, void (%struct.tty_port*, i32)** %dtr_rts, align 8
  %tobool.not = icmp eq void (%struct.tty_port*, i32)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %1(%struct.tty_port* noundef %port, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_port_block_til_ready(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty, %struct.file* noundef %filp) local_unnamed_addr #0 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !11
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast i8** %private to %struct.task_struct**
  %4 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %4, align 8
  store %struct.task_struct* %2, %struct.task_struct** %3, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry3, i64 0, i32 0
  store %struct.list_head* %entry3, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry3, %struct.list_head** %prev, align 8
  %call6 = call fastcc i1 @tty_io_error(%struct.tty_struct* noundef %tty) #8
  br i1 %call6, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct.file* %filp, null
  br i1 %cmp, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %5 = load i32, i32* %f_flags, align 8
  %and = and i32 %5, 2048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %c_cflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 2
  %6 = load i32, i32* %c_cflag, align 8
  %and8 = and i32 %6, 4111
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %cleanup.sink.split, label %if.then10

if.then10:                                        ; preds = %if.then7
  call void @tty_port_raise_dtr_rts(%struct.tty_port* noundef %port) #8
  br label %cleanup.sink.split

if.end12:                                         ; preds = %lor.lhs.false
  %c_cflag14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 2
  %7 = load i32, i32* %c_cflag14, align 8
  %and15 = and i32 %7, 2048
  %tobool16.not = icmp eq i32 %and15, 0
  %rlock.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 5, i32 0, i32 0
  %call22 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %count = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 7
  %8 = load i32, i32* %count, align 8
  %dec = add i32 %8, -1
  store i32 %dec, i32* %count, align 8
  %blocked_open = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 6
  %9 = load i32, i32* %blocked_open, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %blocked_open, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call22) #7
  %open_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %if.end55, %if.end12
  %10 = load i32, i32* %c_cflag14, align 8
  %and28 = and i32 %10, 4111
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %call30 = call fastcc i1 @tty_port_initialized(%struct.tty_port* noundef %port) #8
  br i1 %call30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  call void @tty_port_raise_dtr_rts(%struct.tty_port* noundef %port) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %land.lhs.true, %while.cond
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %open_wait, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 1) #7
  %call34 = call i32 @tty_hung_up_p(%struct.file* noundef nonnull %filp) #7
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.then38

lor.lhs.false36:                                  ; preds = %if.end33
  %call37 = call fastcc i1 @tty_port_initialized(%struct.tty_port* noundef %port) #8
  br i1 %call37, label %if.end44, label %if.then38

if.then38:                                        ; preds = %lor.lhs.false36, %if.end33
  %flags39 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 10
  %11 = load i64, i64* %flags39, align 8
  %and40 = and i64 %11, 1
  %tobool41.not = icmp eq i64 %and40, 0
  %. = select i1 %tobool41.not, i32 -512, i32 -11
  br label %while.end

if.end44:                                         ; preds = %lor.lhs.false36
  br i1 %tobool16.not, label %lor.lhs.false46, label %while.end

lor.lhs.false46:                                  ; preds = %if.end44
  %call47 = call i32 @tty_port_carrier_raised(%struct.tty_port* noundef %port) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %while.end

if.end50:                                         ; preds = %lor.lhs.false46
  %call52 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %2) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %while.end

if.end55:                                         ; preds = %if.end50
  call void @tty_unlock(%struct.tty_struct* noundef %tty) #7
  call void @schedule() #7
  call void @tty_lock(%struct.tty_struct* noundef %tty) #7
  br label %while.cond

while.end:                                        ; preds = %if.end50, %if.end44, %lor.lhs.false46, %if.then38
  %cmp80 = phi i1 [ false, %if.then38 ], [ false, %if.end50 ], [ true, %lor.lhs.false46 ], [ true, %if.end44 ]
  %retval1.0 = phi i32 [ %., %if.then38 ], [ -512, %if.end50 ], [ 0, %lor.lhs.false46 ], [ 0, %if.end44 ]
  call void @finish_wait(%struct.wait_queue_head* noundef %open_wait, %struct.wait_queue_entry* noundef nonnull %wait) #7
  %call66 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %call71 = call i32 @tty_hung_up_p(%struct.file* noundef nonnull %filp) #7
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end76

if.then73:                                        ; preds = %while.end
  %12 = load i32, i32* %count, align 8
  %inc75 = add i32 %12, 1
  store i32 %inc75, i32* %count, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %while.end
  %13 = load i32, i32* %blocked_open, align 4
  %dec78 = add i32 %13, -1
  store i32 %dec78, i32* %blocked_open, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call66) #7
  br i1 %cmp80, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end76, %if.then7, %if.then10, %entry
  %retval.0.ph = phi i32 [ 0, %entry ], [ 0, %if.then10 ], [ 0, %if.then7 ], [ %retval1.0, %if.end76 ]
  call fastcc void @tty_port_set_active(%struct.tty_port* noundef %port, i1 noundef true) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end76
  %retval.0 = phi i32 [ %retval1.0, %if.end76 ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @tty_io_error(%struct.tty_struct* noundef %tty) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 2
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @tty_port_initialized(%struct.tty_port* noundef %port) unnamed_addr #4 {
entry:
  %iflags = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 11
  %0 = load volatile i64, i64* %iflags, align 8
  %conv.i1 = and i64 %0, 1
  %tobool = icmp ne i64 %conv.i1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_hung_up_p(%struct.file* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !7

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_port_close_start(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty, %struct.file* noundef %filp) local_unnamed_addr #0 {
entry:
  %call = call i32 @tty_hung_up_p(%struct.file* noundef %filp) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %cleanup

do.body1:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 5, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %count = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 17
  %0 = load i32, i32* %count, align 8
  %cmp6 = icmp eq i32 %0, 1
  %count8 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 7
  %1 = load i32, i32* %count8, align 8
  br i1 %cmp6, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %do.body1
  %cmp9.not = icmp eq i32 %1, 1
  br i1 %cmp9.not, label %if.end35.thread88, label %do.end14

do.end14:                                         ; preds = %land.lhs.true
  %call16 = call i8* @tty_driver_name(%struct.tty_struct* noundef %tty) #7
  %call17 = call i8* @tty_name(%struct.tty_struct* noundef %tty) #7
  %2 = load i32, i32* %count8, align 8
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call16, i8* noundef %call17, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tty_port_close_start, i64 0, i64 0), i32 noundef %2) #11
  br label %if.end35.thread88

if.end35.thread88:                                ; preds = %land.lhs.true, %do.end14
  %count2286 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 7
  br label %if.end40.sink.split

if.end21:                                         ; preds = %do.body1
  %phi.bo = add i32 %1, -1
  %count22 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 7
  store i32 %phi.bo, i32* %count22, align 8
  %cmp23 = icmp slt i32 %phi.bo, 0
  br i1 %cmp23, label %if.end35.thread, label %if.end35

if.end35.thread:                                  ; preds = %if.end21
  %call30 = call i8* @tty_driver_name(%struct.tty_struct* noundef %tty) #7
  %call31 = call i8* @tty_name(%struct.tty_struct* noundef %tty) #7
  %3 = load i32, i32* %count22, align 8
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call30, i8* noundef %call31, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tty_port_close_start, i64 0, i64 0), i32 noundef %3) #11
  br label %if.end40.sink.split

if.end35:                                         ; preds = %if.end21
  %tobool37.not = icmp eq i32 %phi.bo, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end35
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #7
  br label %cleanup

if.end40.sink.split:                              ; preds = %if.end35.thread, %if.end35.thread88
  %count2286.sink = phi i32* [ %count2286, %if.end35.thread88 ], [ %count22, %if.end35.thread ]
  store i32 0, i32* %count2286.sink, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.end35
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call3) #7
  %closing = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 33
  store i32 1, i32* %closing, align 8
  %call42 = call fastcc i1 @tty_port_initialized(%struct.tty_port* noundef %port) #8
  br i1 %call42, label %if.then43, label %if.end56

if.then43:                                        ; preds = %if.end40
  %tco_stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 2
  %4 = load i8, i8* %tco_stopped, align 1, !range !12
  %tobool44.not = icmp eq i8 %4, 0
  br i1 %tobool44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.then43
  call void @tty_driver_flush_buffer(%struct.tty_struct* noundef %tty) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.then43
  %closing_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 17
  %5 = load i32, i32* %closing_wait, align 4
  %cmp47.not = icmp eq i32 %5, 65535
  br i1 %cmp47.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end46
  %conv51 = zext i32 %5 to i64
  call void @tty_wait_until_sent(%struct.tty_struct* noundef %tty, i64 noundef %conv51) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end46
  %drain_delay = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 18
  %6 = load i32, i32* %drain_delay, align 8
  %tobool53.not = icmp eq i32 %6, 0
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end52
  call fastcc void @tty_port_drain_delay(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty) #8
  br label %if.end56

if.end56:                                         ; preds = %if.end52, %if.then54, %if.end40
  call void @tty_ldisc_flush(%struct.tty_struct* noundef %tty) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end56, %if.then38
  %retval.0 = phi i32 [ 0, %if.then38 ], [ 1, %if.end56 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @tty_driver_name(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @tty_name(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wait_until_sent(%struct.tty_struct* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_port_drain_delay(%struct.tty_port* nocapture noundef readonly %port, %struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @tty_get_baud_rate(%struct.tty_struct* noundef %tty) #8
  %cmp = icmp ugt i32 %call, 1200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %drain_delay = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 18
  %0 = load i32, i32* %drain_delay, align 8
  %mul = mul i32 %0, 2500
  %div = udiv i32 %mul, %call
  %conv = zext i32 %div to i64
  %cmp1 = icmp ugt i64 %conv, 25
  %cond = select i1 %cmp1, i64 %conv, i64 25
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %timeout.0 = phi i64 [ %cond, %if.then ], [ 500, %entry ]
  %call3 = call i64 @schedule_timeout_interruptible(i64 noundef %timeout.0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_close_end(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  call void @tty_ldisc_flush(%struct.tty_struct* noundef %tty) #7
  %closing = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 33
  store i32 0, i32* %closing, align 8
  %rlock.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 5, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %blocked_open = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 6
  %0 = load i32, i32* %blocked_open, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end26, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #7
  %close_delay = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 16
  %1 = load i32, i32* %close_delay, align 8
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %do.body13, label %if.then7

if.then7:                                         ; preds = %if.then
  %conv9 = zext i32 %1 to i64
  %call10 = call i32 @jiffies_to_msecs(i64 noundef %conv9) #7
  %call11 = call i64 @msleep_interruptible(i32 noundef %call10) #7
  br label %do.body13

do.body13:                                        ; preds = %if.then7, %if.then
  %call21 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %open_wait = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 8
  call void @__wake_up(%struct.wait_queue_head* noundef %open_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #7
  br label %if.end26

if.end26:                                         ; preds = %do.body13, %entry
  %flags.0 = phi i64 [ %call21, %do.body13 ], [ %call2, %entry ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %flags.0) #7
  call fastcc void @tty_port_set_active(%struct.tty_port* noundef %port, i1 noundef false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_port_close(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty, %struct.file* noundef %filp) local_unnamed_addr #0 {
entry:
  %call = call i32 @tty_port_close_start(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty, %struct.file* noundef %filp) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @tty_port_shutdown(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty) #8
  %console = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 12
  %bf.load = load i8, i8* %console, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %flags) #8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  call void @tty_port_close_end(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty) #8
  call void @tty_port_tty_set(%struct.tty_port* noundef %port, %struct.tty_struct* noundef null) #8
  br label %return

return:                                           ; preds = %entry, %if.end2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_port_install(%struct.tty_port* noundef %port, %struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %port1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  store %struct.tty_port* %port, %struct.tty_port** %port1, align 8
  %call = call i32 @tty_standard_install(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(%struct.tty_driver* noundef, %struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_port_open(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty, %struct.file* noundef %filp) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 5, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #7
  %count = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 7
  %0 = load i32, i32* %count, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* %count, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #7
  call void @tty_port_tty_set(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty) #8
  %mutex = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %mutex) #7
  %call = call fastcc i1 @tty_port_initialized(%struct.tty_port* noundef %port) #8
  br i1 %call, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @clear_bit(i64 noundef 1, i64* noundef %flags) #8
  %ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 3
  %1 = load %struct.tty_port_operations*, %struct.tty_port_operations** %ops, align 8
  %activate = getelementptr inbounds %struct.tty_port_operations, %struct.tty_port_operations* %1, i64 0, i32 3
  %2 = load i32 (%struct.tty_port*, %struct.tty_struct*)*, i32 (%struct.tty_port*, %struct.tty_struct*)** %activate, align 8
  %tobool.not = icmp eq i32 (%struct.tty_port*, %struct.tty_struct*)* %2, null
  br i1 %tobool.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.then
  %call6 = call i32 %2(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %cleanup

cleanup:                                          ; preds = %if.then2
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #7
  br label %return

if.end10:                                         ; preds = %if.then2, %if.then
  call fastcc void @tty_port_set_initialized(%struct.tty_port* noundef %port, i1 noundef true) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #7
  %call13 = call i32 @tty_port_block_til_ready(%struct.tty_port* noundef %port, %struct.tty_struct* noundef %tty, %struct.file* noundef %filp) #8
  br label %return

return:                                           ; preds = %cleanup, %if.end11
  %retval.1 = phi i32 [ %call13, %if.end11 ], [ %call6, %cleanup ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_port_set_initialized(%struct.tty_port* noundef %port, i1 noundef %val) unnamed_addr #0 {
entry:
  %iflags = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 11
  br i1 %val, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %iflags) #7
  br label %assign_bit.exit

if.else.i:                                        ; preds = %entry
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %iflags) #7
  br label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.then.i, %if.else.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_receive_buf(%struct.tty_ldisc* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(%struct.tty_ldisc* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #2 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #7
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #9, !srcloc !13
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !7

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !14
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

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
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

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
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #9, !srcloc !15
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #9, !srcloc !16
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #8
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !17

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #9, !srcloc !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #9, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
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
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !17

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !7

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #7
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !20
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #9, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #9, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #9, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #8
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #8
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #8
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #4 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #6 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_get_baud_rate(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  %call = call i32 @tty_termios_baud_rate(%struct.ktermios* noundef %termios) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout_interruptible(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #7
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

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
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #9, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #9, !srcloc !28
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
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
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2152533571}
!9 = !{i64 2152538498}
!10 = !{i64 2149550214}
!11 = !{i64 1376480}
!12 = !{i8 0, i8 2}
!13 = !{i64 2150619330}
!14 = !{i64 2147988684, i64 2147989358, i64 2147989388, i64 2147989420, i64 2147989454, i64 2147989490, i64 2147989515}
!15 = !{i64 2149116041, i64 2149116088, i64 2149116094, i64 2149116131, i64 2149116149, i64 2149117460, i64 2149117508, i64 2149117556, i64 2149117619, i64 2149117668, i64 2149116227, i64 2149116252, i64 2149116278, i64 2149116284, i64 2149117126, i64 2149117166, i64 2149117184, i64 2149117216, i64 2149117244, i64 2149117298, i64 2149117318, i64 2149117415, i64 2149116307, i64 2149116321, i64 2149116327, i64 2149116377, i64 2149116423, i64 2149116456}
!16 = !{i64 2149118220, i64 2149118267, i64 2149118273, i64 2149118310, i64 2149118328, i64 2149119271, i64 2149119319, i64 2149119367, i64 2149119430, i64 2149119479, i64 2149118406, i64 2149118431, i64 2149118457, i64 2149118463, i64 2149118500, i64 2149118506, i64 2149118556, i64 2149118602, i64 2149118635}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2149110338, i64 2149110385, i64 2149110391, i64 2149110428, i64 2149110446, i64 2149111787, i64 2149111835, i64 2149111883, i64 2149111946, i64 2149111995, i64 2149110524, i64 2149110549, i64 2149110575, i64 2149110581, i64 2149111453, i64 2149111493, i64 2149111511, i64 2149111543, i64 2149111571, i64 2149111625, i64 2149111645, i64 2149111742, i64 2149110604, i64 2149110618, i64 2149110624, i64 2149110674, i64 2149110720, i64 2149110753}
!19 = !{i64 2148066800, i64 2148066833, i64 2148066886, i64 2148066945, i64 2148066979, i64 2148067034, i64 2148067063, i64 2148067083}
!20 = !{i64 2147976902, i64 2147977566, i64 2147977596, i64 2147977628, i64 2147977662, i64 2147977697, i64 2147977722}
!21 = !{i64 2149576057}
!22 = !{i64 2149364726}
!23 = !{i64 2149122054, i64 2149122101, i64 2149122107, i64 2149122144, i64 2149122162, i64 2149127534, i64 2149127582, i64 2149127630, i64 2149127693, i64 2149127742, i64 2149122240, i64 2149122265, i64 2149122291, i64 2149122297, i64 2149127200, i64 2149127240, i64 2149127258, i64 2149127290, i64 2149127318, i64 2149127372, i64 2149127392, i64 2149127489, i64 2149122320, i64 2149122334, i64 2149122340, i64 2149122390, i64 2149122436, i64 2149122469}
!24 = !{i64 2148040018, i64 2148040529, i64 2148040559, i64 2148040585, i64 2148040617, i64 2148040646}
!25 = !{i64 2149554507}
!26 = !{i64 2149579360}
!27 = !{i64 2149100882, i64 2149100929, i64 2149100935, i64 2149100972, i64 2149100990, i64 2149102330, i64 2149102378, i64 2149102426, i64 2149102489, i64 2149102538, i64 2149101068, i64 2149101093, i64 2149101119, i64 2149101125, i64 2149101996, i64 2149102036, i64 2149102054, i64 2149102086, i64 2149102114, i64 2149102168, i64 2149102188, i64 2149102285, i64 2149101148, i64 2149101162, i64 2149101168, i64 2149101218, i64 2149101264, i64 2149101297}
!28 = !{i64 2148050588, i64 2148051109, i64 2148051139, i64 2148051165, i64 2148051197, i64 2148051226}
