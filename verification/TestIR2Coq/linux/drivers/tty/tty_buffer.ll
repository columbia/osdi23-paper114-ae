; ModuleID = 'drivers/tty/tty_buffer.c'
source_filename = "drivers/tty/tty_buffer.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.workqueue_struct = type opaque
%struct.lock_class_key = type {}
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
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
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
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, {}*, i32 (%struct.tty_port*, %struct.tty_struct*)*, {}* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, {}* }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }

@system_unbound_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str = private unnamed_addr constant [34 x i8] c"we still have not freed %d bytes!\00", align 1
@tty_buffer_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&buf->lock\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_buffer_lock_exclusive(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %priority = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 3
  call fastcc void @__ll_sc_atomic_add(i32 noundef 1, %struct.atomic_t* noundef %priority) #7
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_buffer_unlock_exclusive(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 0
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %head, align 8
  %commit = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 3
  %1 = load i32, i32* %commit, align 8
  %read = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 4
  %2 = load i32, i32* %read, align 4
  %cmp.not = icmp eq i32 %1, %2
  %priority = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 3
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %priority) #7
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 2
  call void @mutex_unlock(%struct.mutex* noundef %lock) #7
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_unbound_wq, align 8
  %work = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 1
  %call = call fastcc i1 @queue_work(%struct.workqueue_struct* noundef %3, %struct.work_struct* noundef %work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #7
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @tty_buffer_space_avail(%struct.tty_port* noundef %port) local_unnamed_addr #2 {
entry:
  %mem_limit = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 7
  %0 = load i32, i32* %mem_limit, align 4
  %counter.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 6, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %sub = sub i32 %0, %1
  %cmp = icmp sgt i32 %sub, 0
  %cond = select i1 %cmp, i32 %sub, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_buffer_free_all(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 0
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %head, align 8
  %cmp.not73 = icmp eq %struct.tty_buffer* %0, null
  br i1 %cmp.not73, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %1 = phi %struct.tty_buffer* [ %5, %if.end ], [ %0, %entry ]
  %freed.074 = phi i32 [ %add, %if.end ], [ 0, %entry ]
  %next2 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %1, i64 0, i32 0, i32 0
  %2 = load %struct.tty_buffer*, %struct.tty_buffer** %next2, align 8
  store %struct.tty_buffer* %2, %struct.tty_buffer** %head, align 8
  %size = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %1, i64 0, i32 2
  %3 = load i32, i32* %size, align 4
  %add = add i32 %3, %freed.074
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = bitcast %struct.tty_buffer* %1 to i8*
  call void @kfree(i8* noundef nonnull %4) #7
  %.pre = load %struct.tty_buffer*, %struct.tty_buffer** %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = phi %struct.tty_buffer* [ %.pre, %if.then ], [ %2, %while.body ]
  %cmp.not = icmp eq %struct.tty_buffer* %5, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %freed.0.lcssa = phi i32 [ 0, %entry ], [ %add, %if.end ]
  %free = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 5
  %call = call fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %free) #8
  %cmp7.not76 = icmp eq %struct.llist_node* %call, null
  br i1 %cmp7.not76, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %while.end
  %6 = bitcast %struct.llist_node* %call to %struct.tty_buffer*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.rhs
  %p.077 = phi %struct.tty_buffer* [ %8, %land.rhs ], [ %6, %land.rhs.preheader ]
  %7 = getelementptr %struct.tty_buffer, %struct.tty_buffer* %p.077, i64 0, i32 0, i32 0
  %8 = load %struct.tty_buffer*, %struct.tty_buffer** %7, align 8
  %9 = bitcast %struct.tty_buffer* %p.077 to i8*
  call void @kfree(i8* noundef nonnull %9) #7
  %cmp7.not = icmp eq %struct.tty_buffer* %8, null
  br i1 %cmp7.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %while.end
  %sentinel = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 4
  call fastcc void @tty_buffer_reset(%struct.tty_buffer* noundef %sentinel, i64 noundef 0) #8
  store %struct.tty_buffer* %sentinel, %struct.tty_buffer** %head, align 8
  %tail = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 8
  store %struct.tty_buffer* %sentinel, %struct.tty_buffer** %tail, align 8
  %mem_used = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 6
  %10 = bitcast %struct.atomic_t* %mem_used to i8*
  %call8.i.i = call fastcc i32 @__xchg_case_mb_32(i8* noundef %10) #7
  %cmp20.not = icmp eq i32 %call8.i.i, %freed.0.lcssa
  br i1 %cmp20.not, label %if.end37, label %do.end31, !prof !7

do.end31:                                         ; preds = %for.end
  %sub = sub i32 %call8.i.i, %freed.0.lcssa
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef %sub) #7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_buffer.c\22; .popsection; .long 14472b - 14470b; .short 141; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !8
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %head) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.llist_head* %head to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %0) #7
  %1 = inttoptr i64 %call11.i to %struct.llist_node*
  ret %struct.llist_node* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @tty_buffer_reset(%struct.tty_buffer* nocapture noundef writeonly %p, i64 noundef %size) unnamed_addr #3 {
entry:
  %used = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %p, i64 0, i32 1
  store i32 0, i32* %used, align 8
  %conv = trunc i64 %size to i32
  %size1 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %p, i64 0, i32 2
  store i32 %conv, i32* %size1, align 4
  %next = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %p, i64 0, i32 0, i32 0
  store %struct.tty_buffer* null, %struct.tty_buffer** %next, align 8
  %commit = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %p, i64 0, i32 3
  store i32 0, i32* %commit, align 8
  %read = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %p, i64 0, i32 4
  store i32 0, i32* %read, align 4
  %flags = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %p, i64 0, i32 5
  store i32 0, i32* %flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_buffer_flush(%struct.tty_struct* noundef %tty, %struct.tty_ldisc* noundef readonly %ld) local_unnamed_addr #0 {
entry:
  %port1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %0 = load %struct.tty_port*, %struct.tty_port** %port1, align 8
  %priority = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i64 0, i32 0, i32 3
  call fastcc void @__ll_sc_atomic_add(i32 noundef 1, %struct.atomic_t* noundef %priority) #7
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i64 0, i32 0, i32 2
  call void @mutex_lock(%struct.mutex* noundef %lock) #7
  %head = getelementptr inbounds %struct.tty_port, %struct.tty_port* %0, i64 0, i32 0, i32 0
  %1 = load %struct.tty_buffer*, %struct.tty_buffer** %head, align 8
  %next332 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %1, i64 0, i32 0, i32 0
  %2 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.tty_buffer** elementtype(%struct.tty_buffer*) %next332) #9, !srcloc !9
  %cmp.not33 = icmp eq i64 %2, 0
  br i1 %cmp.not33, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %3 = phi i64 [ %6, %while.body ], [ %2, %entry ]
  %4 = inttoptr i64 %3 to %struct.tty_buffer*
  %5 = load %struct.tty_buffer*, %struct.tty_buffer** %head, align 8
  call fastcc void @tty_buffer_free(%struct.tty_port* noundef %0, %struct.tty_buffer* noundef %5) #8
  store %struct.tty_buffer* %4, %struct.tty_buffer** %head, align 8
  %next3 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %4, i64 0, i32 0, i32 0
  %6 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.tty_buffer** elementtype(%struct.tty_buffer*) %next3) #9, !srcloc !9
  %cmp.not = icmp eq i64 %6, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %7 = load %struct.tty_buffer*, %struct.tty_buffer** %head, align 8
  %commit = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %7, i64 0, i32 3
  %8 = load i32, i32* %commit, align 8
  %read = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %7, i64 0, i32 4
  store i32 %8, i32* %read, align 4
  %tobool.not = icmp eq %struct.tty_ldisc* %ld, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %ld, i64 0, i32 0
  %9 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %9, i64 0, i32 5
  %10 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer, align 8
  %tobool8.not = icmp eq void (%struct.tty_struct*)* %10, null
  br i1 %tobool8.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %10(%struct.tty_struct* noundef %tty) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %priority) #7
  call void @mutex_unlock(%struct.mutex* noundef %lock) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_buffer_free(%struct.tty_port* noundef %port, %struct.tty_buffer* noundef %b) unnamed_addr #0 {
entry:
  %size = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %b, i64 0, i32 2
  %0 = load i32, i32* %size, align 4
  %mem_used = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 6
  %call.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef %0, %struct.atomic_t* noundef %mem_used) #7
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_buffer.c\22; .popsection; .long 14472b - 14470b; .short 201; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %size, align 4
  %cmp16 = icmp sgt i32 %1, 256
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  %2 = bitcast %struct.tty_buffer* %b to i8*
  call void @kfree(i8* noundef %2) #7
  br label %if.end26

if.else:                                          ; preds = %if.end
  %cmp20 = icmp sgt i32 %1, 0
  br i1 %cmp20, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.else
  %free = bitcast %struct.tty_buffer* %b to %struct.llist_node*
  %free23 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 5
  call fastcc void @llist_add(%struct.llist_node* noundef %free, %struct.llist_head* noundef %free23) #8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22, %if.then18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_buffer_request_room(%struct.tty_port* noundef %port, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__tty_buffer_request_room(%struct.tty_port* noundef %port, i64 noundef %size, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__tty_buffer_request_room(%struct.tty_port* noundef %port, i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %tail = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 8
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %tail, align 8
  %flags2 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 5
  %1 = load i32, i32* %flags2, align 8
  %and = and i32 %1, 1
  %size4 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 2
  %2 = load i32, i32* %size4, align 4
  %.sink = shl i32 %2, %and
  %used5 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 1
  %3 = load i32, i32* %used5, align 8
  %sub6 = sub i32 %.sink, %3
  %tobool9 = icmp ne i32 %and, 0
  %neg = and i32 %flags, 1
  %tobool11 = icmp eq i32 %neg, 0
  %4 = and i1 %tobool11, %tobool9
  %conv = sext i32 %sub6 to i64
  %cmp = icmp ult i64 %conv, %size
  %or.cond = select i1 %4, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then14, label %if.end44

if.then14:                                        ; preds = %entry
  %call = call fastcc %struct.tty_buffer* @tty_buffer_alloc(%struct.tty_port* noundef %port, i64 noundef %size) #8
  %cmp15.not = icmp eq %struct.tty_buffer* %call, null
  br i1 %cmp15.not, label %if.else37, label %if.then17

if.then17:                                        ; preds = %if.then14
  %flags18 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %call, i64 0, i32 5
  store i32 %flags, i32* %flags18, align 8
  store %struct.tty_buffer* %call, %struct.tty_buffer** %tail, align 8
  %commit = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 3
  %used20 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 1
  %5 = load i32, i32* %used20, align 8
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %commit, i32 %5) #9, !srcloc !12
  %next = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 0, i32 0
  %6 = ptrtoint %struct.tty_buffer* %call to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.tty_buffer** elementtype(%struct.tty_buffer*) %next, i64 %6) #9, !srcloc !13
  br label %if.end44

if.else37:                                        ; preds = %if.then14
  %spec.select = select i1 %4, i64 0, i64 %conv
  br label %if.end44

if.end44:                                         ; preds = %if.else37, %entry, %if.then17
  %size.addr.0 = phi i64 [ %size, %if.then17 ], [ %size, %entry ], [ %spec.select, %if.else37 ]
  %conv45 = trunc i64 %size.addr.0 to i32
  ret i32 %conv45
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port* noundef %port, i8* noundef %chars, i8 noundef %flag, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %conv3 = zext i8 %flag to i32
  %cmp4 = icmp eq i8 %flag, 0
  %cond6 = zext i1 %cmp4 to i32
  %tail = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %cleanup, %entry
  %copied.0 = phi i32 [ 0, %entry ], [ %add25, %cleanup ]
  %chars.addr.0 = phi i8* [ %chars, %entry ], [ %add.ptr, %cleanup ]
  %conv = sext i32 %copied.0 to i64
  %sub = sub i64 %size, %conv
  %cmp = icmp ult i64 %sub, 1792
  %cond = select i1 %cmp, i64 %sub, i64 1792
  %call = call fastcc i32 @__tty_buffer_request_room(%struct.tty_port* noundef %port, i64 noundef %cond, i32 noundef %cond6) #8
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %tail, align 8
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %do.end, label %if.end, !prof !10

if.end:                                           ; preds = %do.body
  %used = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 1
  %1 = load i32, i32* %used, align 8
  %call12 = call fastcc i8* @char_buf_ptr(%struct.tty_buffer* noundef %0, i32 noundef %1) #8
  %conv13 = sext i32 %call to i64
  %call14 = call i8* @memcpy(i8* noundef %call12, i8* noundef %chars.addr.0, i64 noundef %conv13) #7
  %flags15 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 5
  %2 = load i32, i32* %flags15, align 8
  %neg = and i32 %2, 1
  %tobool16.not.not = icmp eq i32 %neg, 0
  br i1 %tobool16.not.not, label %if.then17, label %cleanup

if.then17:                                        ; preds = %if.end
  %3 = load i32, i32* %used, align 8
  %call19 = call fastcc i8* @flag_buf_ptr(%struct.tty_buffer* noundef %0, i32 noundef %3) #8
  %call22 = call i8* @memset(i8* noundef %call19, i32 noundef %conv3, i64 noundef %conv13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then17
  %4 = load i32, i32* %used, align 8
  %add = add i32 %4, %call
  store i32 %add, i32* %used, align 8
  %add25 = add i32 %call, %copied.0
  %add.ptr = getelementptr i8, i8* %chars.addr.0, i64 %conv13
  %conv29 = sext i32 %add25 to i64
  %cmp30 = icmp ult i64 %conv29, %size
  br i1 %cmp30, label %do.body, label %do.end, !prof !14

do.end:                                           ; preds = %do.body, %cleanup
  %copied.173 = phi i32 [ %add25, %cleanup ], [ %copied.0, %do.body ]
  ret i32 %copied.173
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @char_buf_ptr(%struct.tty_buffer* noundef readnone %b, i32 noundef %ofs) unnamed_addr #4 {
entry:
  %arraydecay = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %b, i64 0, i32 6, i64 0
  %0 = bitcast i64* %arraydecay to i8*
  %idx.ext = sext i32 %ofs to i64
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @flag_buf_ptr(%struct.tty_buffer* noundef readonly %b, i32 noundef %ofs) unnamed_addr #5 {
entry:
  %call = call fastcc i8* @char_buf_ptr(%struct.tty_buffer* noundef %b, i32 noundef %ofs) #8
  %size = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %b, i64 0, i32 2
  %0 = load i32, i32* %size, align 4
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_insert_flip_string_flags(%struct.tty_port* noundef %port, i8* noundef %chars, i8* noundef %flags, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %tail = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %cleanup, %entry
  %copied.0 = phi i32 [ 0, %entry ], [ %add16, %cleanup ]
  %flags.addr.0 = phi i8* [ %flags, %entry ], [ %add.ptr18, %cleanup ]
  %chars.addr.0 = phi i8* [ %chars, %entry ], [ %add.ptr, %cleanup ]
  %conv = sext i32 %copied.0 to i64
  %sub = sub i64 %size, %conv
  %cmp = icmp ult i64 %sub, 1792
  %cond = select i1 %cmp, i64 %sub, i64 1792
  %call = call i32 @tty_buffer_request_room(%struct.tty_port* noundef %port, i64 noundef %cond) #8
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %tail, align 8
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %do.end, label %cleanup, !prof !10

cleanup:                                          ; preds = %do.body
  %used = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 1
  %1 = load i32, i32* %used, align 8
  %call8 = call fastcc i8* @char_buf_ptr(%struct.tty_buffer* noundef %0, i32 noundef %1) #8
  %conv9 = sext i32 %call to i64
  %call10 = call i8* @memcpy(i8* noundef %call8, i8* noundef %chars.addr.0, i64 noundef %conv9) #7
  %2 = load i32, i32* %used, align 8
  %call12 = call fastcc i8* @flag_buf_ptr(%struct.tty_buffer* noundef %0, i32 noundef %2) #8
  %call14 = call i8* @memcpy(i8* noundef %call12, i8* noundef %flags.addr.0, i64 noundef %conv9) #7
  %3 = load i32, i32* %used, align 8
  %add = add i32 %3, %call
  store i32 %add, i32* %used, align 8
  %add16 = add i32 %call, %copied.0
  %add.ptr = getelementptr i8, i8* %chars.addr.0, i64 %conv9
  %add.ptr18 = getelementptr i8, i8* %flags.addr.0, i64 %conv9
  %conv21 = sext i32 %add16 to i64
  %cmp22 = icmp ult i64 %conv21, %size
  br i1 %cmp22, label %do.body, label %do.end, !prof !14

do.end:                                           ; preds = %do.body, %cleanup
  %copied.165 = phi i32 [ %add16, %cleanup ], [ %copied.0, %do.body ]
  ret i32 %copied.165
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__tty_insert_flip_char(%struct.tty_port* noundef %port, i8 noundef %ch, i8 noundef %flag) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8 %flag, 0
  %cond = zext i1 %cmp to i32
  %call = call fastcc i32 @__tty_buffer_request_room(%struct.tty_port* noundef %port, i64 noundef 1, i32 noundef %cond) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 8
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %tail, align 8
  %flags2 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 5
  %1 = load i32, i32* %flags2, align 8
  %neg = and i32 %1, 1
  %tobool3.not.not = icmp eq i32 %neg, 0
  br i1 %tobool3.not.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %used = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 1
  %2 = load i32, i32* %used, align 8
  %call5 = call fastcc i8* @flag_buf_ptr(%struct.tty_buffer* noundef %0, i32 noundef %2) #8
  store i8 %flag, i8* %call5, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %used7 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 1
  %3 = load i32, i32* %used7, align 8
  %inc = add i32 %3, 1
  store i32 %inc, i32* %used7, align 8
  %call8 = call fastcc i8* @char_buf_ptr(%struct.tty_buffer* noundef %0, i32 noundef %3) #8
  store i8 %ch, i8* %call8, align 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_schedule_flip(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %tail = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 8
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %tail, align 8
  %commit = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 3
  %used = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 1
  %1 = load i32, i32* %used, align 8
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) %commit, i32 %1) #9, !srcloc !15
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_unbound_wq, align 8
  %work = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 1
  %call6 = call fastcc i1 @queue_work(%struct.workqueue_struct* noundef %2, %struct.work_struct* noundef %work) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_prepare_flip_string(%struct.tty_port* noundef %port, i8** nocapture noundef writeonly %chars, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__tty_buffer_request_room(%struct.tty_port* noundef %port, i64 noundef %size, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %tail = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 8
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %tail, align 8
  %used = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 1
  %1 = load i32, i32* %used, align 8
  %call3 = call fastcc i8* @char_buf_ptr(%struct.tty_buffer* noundef %0, i32 noundef %1) #8
  store i8* %call3, i8** %chars, align 8
  %flags = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 5
  %2 = load i32, i32* %flags, align 8
  %neg = and i32 %2, 1
  %tobool4.not.not = icmp eq i32 %neg, 0
  br i1 %tobool4.not.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %3 = load i32, i32* %used, align 8
  %call7 = call fastcc i8* @flag_buf_ptr(%struct.tty_buffer* noundef %0, i32 noundef %3) #8
  %conv8 = sext i32 %call to i64
  %call9 = call i8* @memset(i8* noundef %call7, i32 noundef 0, i64 noundef %conv8) #7
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %4 = load i32, i32* %used, align 8
  %add = add i32 %4, %call
  store i32 %add, i32* %used, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_ldisc_receive_buf(%struct.tty_ldisc* nocapture noundef readonly %ld, i8* noundef %p, i8* noundef %f, i32 noundef %count) local_unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %ld, i64 0, i32 0
  %0 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %receive_buf2 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %0, i64 0, i32 16
  %1 = load i32 (%struct.tty_struct*, i8*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)** %receive_buf2, align 8
  %tobool.not = icmp eq i32 (%struct.tty_struct*, i8*, i8*, i32)* %1, null
  %tty3 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %ld, i64 0, i32 1
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty3, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.tty_struct* noundef %2, i8* noundef %p, i8* noundef %f, i32 noundef %count) #7
  br label %if.end11

if.else:                                          ; preds = %entry
  %receive_room = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i64 0, i32 22
  %3 = load i32, i32* %receive_room, align 4
  %cmp = icmp sgt i32 %3, %count
  %cond = select i1 %cmp, i32 %count, i32 %3
  %tobool4.not = icmp eq i32 %cond, 0
  br i1 %tobool4.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %receive_buf = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %0, i64 0, i32 13
  %4 = load void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*, i8*, i8*, i32)** %receive_buf, align 8
  %tobool6.not = icmp eq void (%struct.tty_struct*, i8*, i8*, i32)* %4, null
  br i1 %tobool6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  call void %4(%struct.tty_struct* noundef %2, i8* noundef %p, i8* noundef %f, i32 noundef %cond) #7
  br label %if.end11

if.end11:                                         ; preds = %if.else, %land.lhs.true, %if.then7, %if.then
  %count.addr.0 = phi i32 [ %call, %if.then ], [ %cond, %if.then7 ], [ %cond, %land.lhs.true ], [ 0, %if.else ]
  ret i32 %count.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_flip_buffer_push(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  call void @tty_schedule_flip(%struct.tty_port* noundef %port) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_buffer_init(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 2
  call void @__mutex_init(%struct.mutex* noundef %lock, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @tty_buffer_init.__key) #7
  %sentinel = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 4
  call fastcc void @tty_buffer_reset(%struct.tty_buffer* noundef %sentinel, i64 noundef 0) #8
  %head = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 0
  store %struct.tty_buffer* %sentinel, %struct.tty_buffer** %head, align 8
  %tail = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 8
  store %struct.tty_buffer* %sentinel, %struct.tty_buffer** %tail, align 8
  %free = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 5
  call fastcc void @init_llist_head(%struct.llist_head* noundef %free) #8
  %counter.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 6, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %counter.i25 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 3, i32 0
  store volatile i32 0, i32* %counter.i25, align 4
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 1, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry7 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 1, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry7) #8
  %func = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 1, i32 2
  store void (%struct.work_struct*)* @flush_to_ldisc, void (%struct.work_struct*)** %func, align 8
  %mem_limit = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 7
  store i32 655360, i32* %mem_limit, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_llist_head(%struct.llist_head* nocapture noundef writeonly %list) unnamed_addr #3 {
entry:
  %first = getelementptr inbounds %struct.llist_head, %struct.llist_head* %list, i64 0, i32 0
  store %struct.llist_node* null, %struct.llist_node** %first, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @flush_to_ldisc(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -1, i32 2
  %0 = bitcast void (%struct.work_struct*)** %add.ptr to %struct.tty_port*
  %lock = getelementptr inbounds void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 5
  %1 = bitcast void (%struct.work_struct*)** %lock to %struct.mutex*
  call void @mutex_lock(%struct.mutex* noundef %1) #7
  %head2 = bitcast void (%struct.work_struct*)** %add.ptr to %struct.tty_buffer**
  %priority = getelementptr inbounds void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 9
  %counter.i = bitcast void (%struct.work_struct*)** %priority to i32*
  %2 = load %struct.tty_buffer*, %struct.tty_buffer** %head2, align 8
  %3 = load volatile i32, i32* %counter.i, align 4
  %tobool.not65 = icmp eq i32 %3, 0
  br i1 %tobool.not65, label %if.end, label %while.end

if.end:                                           ; preds = %entry, %cleanup
  %4 = phi %struct.tty_buffer* [ %10, %cleanup ], [ %2, %entry ]
  %next3 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %4, i64 0, i32 0, i32 0
  %5 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.tty_buffer** elementtype(%struct.tty_buffer*) %next3) #9, !srcloc !16
  %6 = inttoptr i64 %5 to %struct.tty_buffer*
  %commit = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %4, i64 0, i32 3
  %7 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %commit) #9, !srcloc !17
  %read = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %4, i64 0, i32 4
  %8 = load i32, i32* %read, align 4
  %sub = sub i32 %7, %8
  %tobool19.not = icmp eq i32 %sub, 0
  br i1 %tobool19.not, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %while.end, label %if.end22

if.end22:                                         ; preds = %if.then20
  store %struct.tty_buffer* %6, %struct.tty_buffer** %head2, align 8
  call fastcc void @tty_buffer_free(%struct.tty_port* noundef %0, %struct.tty_buffer* noundef %4) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %call25 = call fastcc i32 @receive_buf(%struct.tty_port* noundef %0, %struct.tty_buffer* noundef %4, i32 noundef %sub) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %while.end, label %if.end28

if.end28:                                         ; preds = %if.end24
  %9 = load i32, i32* %read, align 4
  %add = add i32 %9, %call25
  store i32 %add, i32* %read, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end22
  %10 = load %struct.tty_buffer*, %struct.tty_buffer** %head2, align 8
  %11 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %while.end

while.end:                                        ; preds = %if.end24, %if.then20, %cleanup, %entry
  call void @mutex_unlock(%struct.mutex* noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i32 @tty_buffer_set_limit(%struct.tty_port* nocapture noundef writeonly %port, i32 noundef %limit) local_unnamed_addr #3 {
entry:
  %cmp = icmp slt i32 %limit, 256
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %mem_limit = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 7
  store i32 %limit, i32* %mem_limit, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @tty_buffer_set_lock_subclass(%struct.tty_port* nocapture noundef %port) local_unnamed_addr #4 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @tty_buffer_restart_work(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_unbound_wq, align 8
  %work = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 1
  %call = call fastcc i1 @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #8
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @tty_buffer_cancel_work(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %work = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 1
  %call = call i1 @cancel_work_sync(%struct.work_struct* noundef %work) #7
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cancel_work_sync(%struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_buffer_flush_work(%struct.tty_port* noundef %port) local_unnamed_addr #0 {
entry:
  %work = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 1
  %call = call i1 @flush_work(%struct.work_struct* noundef %work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @flush_work(%struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #9, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #9, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xchg_case_mb_32(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i32, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09stlxr\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i32* elementtype(i32) %0, i32 0, i32* elementtype(i32) %0) #9, !srcloc !20
  %asmresult = extractvalue { i32, i64 } %1, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #9, !srcloc !21
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @llist_add(%struct.llist_node* noundef %new, %struct.llist_head* noundef %head) unnamed_addr #0 {
entry:
  %call = call i1 @llist_add_batch(%struct.llist_node* noundef %new, %struct.llist_node* noundef %new, %struct.llist_head* noundef %head) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #9, !srcloc !22
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @llist_add_batch(%struct.llist_node* noundef, %struct.llist_node* noundef, %struct.llist_head* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_buffer* @tty_buffer_alloc(%struct.tty_port* noundef %port, i64 noundef %size) unnamed_addr #0 {
entry:
  %add = add i64 %size, 255
  %and = and i64 %add, -256
  %cmp = icmp ult i64 %and, 257
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %free1 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 5
  %call = call %struct.llist_node* @llist_del_first(%struct.llist_head* noundef %free1) #7
  %tobool.not = icmp eq %struct.llist_node* %call, null
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.then
  %0 = bitcast %struct.llist_node* %call to i8*
  br label %found

if.end3:                                          ; preds = %if.then, %entry
  %counter.i = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 6, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %mem_limit = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 7
  %2 = load i32, i32* %mem_limit, align 4
  %cmp7 = icmp sgt i32 %1, %2
  br i1 %cmp7, label %cleanup, label %if.end9.i

if.end9.i:                                        ; preds = %if.end3
  %mul = shl i64 %and, 1
  %add10 = or i64 %mul, 32
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %add10, i32 noundef 2592) #7
  %cmp12 = icmp eq i8* %call10.i, null
  br i1 %cmp12, label %cleanup, label %found

found:                                            ; preds = %if.end9.i, %if.then2
  %p.0.in = phi i8* [ %0, %if.then2 ], [ %call10.i, %if.end9.i ]
  %p.0 = bitcast i8* %p.0.in to %struct.tty_buffer*
  call fastcc void @tty_buffer_reset(%struct.tty_buffer* noundef %p.0, i64 noundef %and) #8
  %conv = trunc i64 %and to i32
  %mem_used16 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 6
  call fastcc void @__ll_sc_atomic_add(i32 noundef %conv, %struct.atomic_t* noundef %mem_used16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.end3, %found
  %retval.0 = phi %struct.tty_buffer* [ %p.0, %found ], [ null, %if.end3 ], [ null, %if.end9.i ]
  ret %struct.tty_buffer* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.llist_node* @llist_del_first(%struct.llist_head* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @receive_buf(%struct.tty_port* noundef %port, %struct.tty_buffer* noundef %head, i32 noundef %count) unnamed_addr #0 {
entry:
  %read = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %head, i64 0, i32 4
  %0 = load i32, i32* %read, align 4
  %call = call fastcc i8* @char_buf_ptr(%struct.tty_buffer* noundef %head, i32 noundef %0) #8
  %flags = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %head, i64 0, i32 5
  %1 = load i32, i32* %flags, align 8
  %neg = and i32 %1, 1
  %tobool.not.not = icmp eq i32 %neg, 0
  br i1 %tobool.not.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @flag_buf_ptr(%struct.tty_buffer* noundef %head, i32 noundef %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %f.0 = phi i8* [ %call2, %if.then ], [ null, %entry ]
  %client_ops = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 4
  %2 = load %struct.tty_port_client_operations*, %struct.tty_port_client_operations** %client_ops, align 8
  %receive_buf = getelementptr inbounds %struct.tty_port_client_operations, %struct.tty_port_client_operations* %2, i64 0, i32 0
  %3 = load i32 (%struct.tty_port*, i8*, i8*, i64)*, i32 (%struct.tty_port*, i8*, i8*, i64)** %receive_buf, align 8
  %conv = sext i32 %count to i64
  %call3 = call i32 %3(%struct.tty_port* noundef %port, i8* noundef %call, i8* noundef %f.0, i64 noundef %conv) #7
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %conv620 = zext i32 %call3 to i64
  %call7 = call i8* @memset(i8* noundef %call, i32 noundef 0, i64 noundef %conv620) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  ret i32 %call3
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

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
!8 = !{i64 2152507654}
!9 = !{i64 2152512700}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152511671}
!12 = !{i64 2152515991}
!13 = !{i64 2152520157}
!14 = !{!"branch_weights", i32 1, i32 4001}
!15 = !{i64 2152529981}
!16 = !{i64 2152538440}
!17 = !{i64 2152541477}
!18 = !{i64 2147968960, i64 2147969476, i64 2147969506, i64 2147969533, i64 2147969567, i64 2147969597}
!19 = !{i64 2147978681, i64 2147979197, i64 2147979227, i64 2147979254, i64 2147979288, i64 2147979318}
!20 = !{i64 2148102739, i64 2148102771, i64 2148102816, i64 2148102864, i64 2148102890}
!21 = !{i64 2148103838, i64 2148103870, i64 2148103914, i64 2148103961, i64 2148103987}
!22 = !{i64 2147979533, i64 2147980181, i64 2147980211, i64 2147980243, i64 2147980277, i64 2147980313, i64 2147980338}
