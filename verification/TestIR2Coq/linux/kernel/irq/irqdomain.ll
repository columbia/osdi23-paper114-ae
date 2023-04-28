; ModuleID = 'kernel/irq/irqdomain.c'
source_filename = "kernel/irq/irqdomain.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { {}*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, {}*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
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
%struct.atomic_t = type { i32 }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.49, %struct.list_head, %struct.list_head, %union.anon.50 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { i64 }
%union.anon.49 = type { %struct.list_head }
%union.anon.50 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.60 = type { %struct.callback_head }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.51 }
%union.anon.51 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.54 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.52, %struct.qspinlock }
%union.anon.52 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.kmem_cache = type opaque
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }

@irqchip_fwnode_ops = dso_local constant { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* } { %struct.fwnode_handle* (%struct.fwnode_handle*)* null, void (%struct.fwnode_handle*)* null, i1 (%struct.fwnode_handle*)* null, i8* (%struct.fwnode_handle*, %struct.device*)* null, i1 (%struct.fwnode_handle*, i8*)* null, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)* null, i32 (%struct.fwnode_handle*, i8*, i8**, i64)* null, i8* (%struct.fwnode_handle*)* @irqchip_fwnode_get_name, i8* (%struct.fwnode_handle*)* null, %struct.fwnode_handle* (%struct.fwnode_handle*)* null, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* null, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)* null, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)* null, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* null, %struct.fwnode_handle* (%struct.fwnode_handle*)* null, %struct.fwnode_handle* (%struct.fwnode_handle*)* null, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)* null, i32 (%struct.fwnode_handle*)* null }, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"irqchip@%pa\00", align 1
@__irq_domain_add.unknown_domains = internal global %struct.atomic_t zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%pfw\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"\013irq: Invalid fwnode type for irqdomain\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"unknown-%d\00", align 1
@__irq_domain_add.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"&domain->revmap_mutex\00", align 1
@irq_domain_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @irq_domain_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @irq_domain_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@irq_domain_list = internal global %struct.list_head { %struct.list_head* @irq_domain_list, %struct.list_head* @irq_domain_list }, align 8
@irq_default_domain = internal unnamed_addr global %struct.irq_domain* null, align 8
@.str.7 = private unnamed_addr constant [66 x i8] c"\016irq: Cannot allocate irq_descs @ IRQ%d, assuming pre-allocated\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"error: hwirq 0x%x is too large for %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"error: virq%i is not allocated\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"error: virq%i is already associated\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"\016irq: %s didn't like hwirq-0x%lx to VIRQ%i mapping (rc=%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%s(, %lx) called with NULL domain\0A\00", align 1
@__func__.irq_create_mapping_affinity = private unnamed_addr constant [28 x i8] c"irq_create_mapping_affinity\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\014irq: no irq domain found for %s !\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"\014irq: type mismatch, failed to map hwirq-%lu for %s!\0A\00", align 1
@irq_domain_simple_ops = dso_local local_unnamed_addr constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* null, i32 (%struct.irq_domain*, i32, i64)* null, void (%struct.irq_domain*, i32)* null, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* @irq_domain_xlate_onetwocell, i32 (%struct.irq_domain*, i32, i32, i8*)* null, void (%struct.irq_domain*, i32, i32)* null, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* null, void (%struct.irq_domain*, %struct.irq_data*)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* null }, align 8
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@no_irq_chip = external dso_local global %struct.irq_chip, align 8
@.str.15 = private unnamed_addr constant [37 x i8] c"domain is NULL; cannot allocate IRQ\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"NULL pointer, cannot free irq\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"virq%i doesn't exist; cannot disassociate\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"\016irq: IRQ%d: trimming hierarchy from %s\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i8* @irqchip_fwnode_get_name(%struct.fwnode_handle* nocapture noundef readonly %fwnode) #0 {
entry:
  %name = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 1, i32 1
  %0 = bitcast %struct.fwnode_operations** %name to i8**
  %1 = load i8*, i8** %0, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @__irq_domain_alloc_fwnode(i32 noundef %type, i32 noundef %id, i8* noundef %name, i64* noundef %pa) local_unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kzalloc() #16
  switch i32 %type, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %name) #17
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call3 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %name, i32 noundef %id) #17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call4 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* noundef %pa) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %n.0 = phi i8* [ %call4, %sw.default ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  %tobool = icmp ne i8* %call, null
  %tobool5 = icmp ne i8* %n.0, null
  %or.cond = select i1 %tobool, i1 %tobool5, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @kfree(i8* noundef %call) #17
  call void @kfree(i8* noundef %n.0) #17
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %type6 = getelementptr inbounds i8, i8* %call, i64 64
  %0 = bitcast i8* %type6 to i32*
  store i32 %type, i32* %0, align 8
  %name7 = getelementptr inbounds i8, i8* %call, i64 72
  %1 = bitcast i8* %name7 to i8**
  store i8* %n.0, i8** %1, align 8
  %pa8 = getelementptr inbounds i8, i8* %call, i64 80
  %2 = bitcast i8* %pa8 to i64**
  store i64* %pa, i64** %2, align 8
  %fwnode = bitcast i8* %call to %struct.fwnode_handle*
  call fastcc void @fwnode_init(%struct.fwnode_handle* noundef nonnull %fwnode) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.fwnode_handle* [ %fwnode, %if.end ], [ null, %if.then ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #17
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @fwnode_init(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #4 {
entry:
  %ops1 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  store %struct.fwnode_operations* bitcast ({ %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }* @irqchip_fwnode_ops to %struct.fwnode_operations*), %struct.fwnode_operations** %ops1, align 8
  %consumers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 4
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %consumers) #16
  %suppliers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %suppliers) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_domain_free_fwnode(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #1 {
entry:
  %call = call fastcc i1 @is_fwnode_irqchip(%struct.fwnode_handle* noundef %fwnode) #16
  br i1 %call, label %if.end17, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 117; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !8
  br label %cleanup

if.end17:                                         ; preds = %entry
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %name = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 1, i32 1
  %1 = bitcast %struct.fwnode_operations** %name to i8**
  %2 = load i8*, i8** %1, align 8
  call void @kfree(i8* noundef %2) #17
  call void @kfree(i8* noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_fwnode_irqchip(%struct.fwnode_handle* noundef readonly %fwnode) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %0, bitcast ({ %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }* @irqchip_fwnode_ops to %struct.fwnode_operations*)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, i64 noundef %hwirq_max, i32 noundef %direct_max, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) local_unnamed_addr #1 {
entry:
  %tobool1.not = icmp eq i32 %direct_max, 0
  br i1 %tobool1.not, label %if.end19, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 150; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !9
  br label %cleanup102

if.end19:                                         ; preds = %entry
  %conv20 = zext i32 %size to i64
  %call = call fastcc i64 @__ab_c_size(i64 noundef %conv20) #16
  %call26 = call fastcc i8* @kzalloc_node(i64 noundef %call) #16
  %0 = bitcast i8* %call26 to %struct.irq_domain*
  %tobool27.not = icmp eq i8* %call26, null
  br i1 %tobool27.not, label %cleanup102, label %if.end29

if.end29:                                         ; preds = %if.end19
  %call30 = call fastcc i1 @is_fwnode_irqchip(%struct.fwnode_handle* noundef %fwnode) #16
  br i1 %call30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  %type = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 1
  %1 = bitcast %struct.fwnode_handle* %type to i32*
  %2 = load i32, i32* %1, align 8
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  %fwnode38 = getelementptr inbounds i8, i8* %call26, i64 48
  %3 = bitcast i8* %fwnode38 to %struct.fwnode_handle**
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %3, align 8
  %name = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 1, i32 1
  %4 = bitcast %struct.fwnode_operations** %name to i8**
  %5 = load i8*, i8** %4, align 8
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then31
  %call39 = call noalias i8* @kstrdup(i8* noundef %5, i32 noundef 3264) #17
  %name40 = getelementptr inbounds i8, i8* %call26, i64 16
  %6 = bitcast i8* %name40 to i8**
  store i8* %call39, i8** %6, align 8
  %tobool42.not = icmp eq i8* %call39, null
  br i1 %tobool42.not, label %if.then43, label %if.end100.sink.split

if.then43:                                        ; preds = %sw.bb
  call void @kfree(i8* noundef nonnull %call26) #17
  br label %cleanup102

sw.default:                                       ; preds = %if.then31
  %name47 = getelementptr inbounds i8, i8* %call26, i64 16
  %7 = bitcast i8* %name47 to i8**
  store i8* %5, i8** %7, align 8
  br label %if.end67

if.else:                                          ; preds = %if.end29
  %call48 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #16
  br i1 %call48, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call53 = call i1 @is_software_node(%struct.fwnode_handle* noundef %fwnode) #17
  br i1 %call53, label %if.then55, label %lor.lhs.false.if.end67_crit_edge

lor.lhs.false.if.end67_crit_edge:                 ; preds = %lor.lhs.false
  %name68.phi.trans.insert = getelementptr inbounds i8, i8* %call26, i64 16
  %.phi.trans.insert = bitcast i8* %name68.phi.trans.insert to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8
  br label %if.end67

if.then55:                                        ; preds = %lor.lhs.false, %if.else
  %call57 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.fwnode_handle* noundef %fwnode) #17
  %tobool58.not = icmp eq i8* %call57, null
  br i1 %tobool58.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then55
  call void @kfree(i8* noundef nonnull %call26) #17
  br label %cleanup102

cleanup:                                          ; preds = %if.then55
  %call61 = call i8* @strreplace(i8* noundef nonnull %call57, i8 noundef 47, i8 noundef 58) #17
  %name62 = getelementptr inbounds i8, i8* %call26, i64 16
  %8 = bitcast i8* %name62 to i8**
  store i8* %call57, i8** %8, align 8
  %fwnode63 = getelementptr inbounds i8, i8* %call26, i64 48
  %9 = bitcast i8* %fwnode63 to %struct.fwnode_handle**
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %9, align 8
  br label %if.end100.sink.split

if.end67:                                         ; preds = %lor.lhs.false.if.end67_crit_edge, %sw.default
  %.pre-phi = phi i8** [ %.phi.trans.insert, %lor.lhs.false.if.end67_crit_edge ], [ %7, %sw.default ]
  %10 = phi i8* [ %.pre, %lor.lhs.false.if.end67_crit_edge ], [ %5, %sw.default ]
  %tobool69.not = icmp eq i8* %10, null
  br i1 %tobool69.not, label %if.then70, label %if.end100

if.then70:                                        ; preds = %if.end67
  %tobool71.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool71.not, label %if.end78, label %do.end75

do.end75:                                         ; preds = %if.then70
  %call77 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0)) #19
  br label %if.end78

if.end78:                                         ; preds = %do.end75, %if.then70
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return() #17
  %call80 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef %call.i.i.i) #17
  store i8* %call80, i8** %.pre-phi, align 8
  %tobool83.not = icmp eq i8* %call80, null
  br i1 %tobool83.not, label %if.then84, label %if.end100.sink.split

if.then84:                                        ; preds = %if.end78
  call void @kfree(i8* noundef nonnull %call26) #17
  br label %cleanup102

if.end100.sink.split:                             ; preds = %if.end78, %sw.bb, %cleanup
  %flags86 = getelementptr inbounds i8, i8* %call26, i64 40
  %11 = bitcast i8* %flags86 to i32*
  %12 = load i32, i32* %11, align 8
  %or = or i32 %12, 2
  store i32 %or, i32* %11, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.end100.sink.split, %if.end67
  %call89 = call %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* noundef %fwnode) #17
  call fastcc void @fwnode_dev_initialized(%struct.fwnode_handle* noundef %fwnode, i1 noundef true) #16
  %revmap_tree = getelementptr inbounds i8, i8* %call26, i64 96
  %13 = bitcast i8* %revmap_tree to %struct.xarray*
  call fastcc void @xa_init_flags(%struct.xarray* noundef %13) #16
  %revmap_mutex = getelementptr inbounds i8, i8* %call26, i64 112
  %14 = bitcast i8* %revmap_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %14, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @__irq_domain_add.__key) #17
  %ops93 = getelementptr inbounds i8, i8* %call26, i64 24
  %15 = bitcast i8* %ops93 to %struct.irq_domain_ops**
  store %struct.irq_domain_ops* %ops, %struct.irq_domain_ops** %15, align 8
  %host_data94 = getelementptr inbounds i8, i8* %call26, i64 32
  %16 = bitcast i8* %host_data94 to i8**
  store i8* %host_data, i8** %16, align 8
  %hwirq_max95 = getelementptr inbounds i8, i8* %call26, i64 80
  %17 = bitcast i8* %hwirq_max95 to i64*
  store i64 %hwirq_max, i64* %17, align 8
  %revmap_size = getelementptr inbounds i8, i8* %call26, i64 88
  %18 = bitcast i8* %revmap_size to i32*
  store i32 %size, i32* %18, align 8
  call fastcc void @irq_domain_check_hierarchy(%struct.irq_domain* noundef nonnull %0) #16
  call void @mutex_lock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  %link = bitcast i8* %call26 to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef nonnull %link) #16
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  br label %cleanup102

cleanup102:                                       ; preds = %cleanup.thread, %if.then, %if.end19, %if.end100, %if.then84, %if.then43
  %retval.1 = phi %struct.irq_domain* [ %0, %if.end100 ], [ null, %if.then84 ], [ null, %if.then43 ], [ null, %if.then ], [ null, %if.end19 ], [ null, %cleanup.thread ]
  ret %struct.irq_domain* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc_node(i64 noundef %size) unnamed_addr #1 {
entry:
  %call.i.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #17
  ret i8* %call.i.i
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ab_c_size(i64 noundef %a) unnamed_addr #5 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %2, i64 144)
  %retval.0 = select i1 %1, i64 -1, i64 %spec.select
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #16
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %1 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %1, @of_fwnode_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kstrdup(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_software_node(%struct.fwnode_handle* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strreplace(i8* noundef, i8 noundef, i8 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @fwnode_dev_initialized(%struct.fwnode_handle* noundef %fwnode, i1 noundef %initialized) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #16
  br i1 %call, label %if.end6, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 5
  %1 = load i8, i8* %flags, align 8
  %2 = and i8 %1, -5
  %masksel = select i1 %initialized, i8 4, i8 0
  %.sink = or i8 %2, %masksel
  store i8 %.sink, i8* %flags, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xa_init_flags(%struct.xarray* nocapture noundef writeonly %xa) unnamed_addr #8 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 1
  store i32 3264, i32* %xa_flags, align 4
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %xa, i64 0, i32 2
  store i8* null, i8** %xa_head, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irq_domain_check_hierarchy(%struct.irq_domain* nocapture noundef %domain) unnamed_addr #7 {
entry:
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 2
  %0 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %alloc = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %0, i64 0, i32 5
  %1 = load i32 (%struct.irq_domain*, i32, i32, i8*)*, i32 (%struct.irq_domain*, i32, i32, i8*)** %alloc, align 8
  %tobool.not = icmp eq i32 (%struct.irq_domain*, i32, i32, i8*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 4
  %2 = load i32, i32* %flags, align 8
  %or = or i32 %2, 1
  store i32 %or, i32* %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #4 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @irq_domain_list, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_domain_remove(%struct.irq_domain* noundef %domain) local_unnamed_addr #1 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  %revmap_tree = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 12
  %call = call fastcc i1 @radix_tree_empty(%struct.xarray* noundef %revmap_tree) #16
  br i1 %call, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 253; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %link = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %link) #16
  %0 = load %struct.irq_domain*, %struct.irq_domain** @irq_default_domain, align 8
  %cmp = icmp eq %struct.irq_domain* %0, %domain
  br i1 %cmp, label %if.then23, label %if.end24, !prof !11

if.then23:                                        ; preds = %if.end
  call void @irq_set_default_host(%struct.irq_domain* noundef null) #16
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  %fwnode = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 6
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  call fastcc void @fwnode_dev_initialized(%struct.fwnode_handle* noundef %1, i1 noundef false) #16
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %2) #17
  %flags = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 4
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 2
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end24
  %name = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 1
  %4 = load i8*, i8** %name, align 8
  call void @kfree(i8* noundef %4) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24
  %5 = bitcast %struct.irq_domain* %domain to i8*
  call void @kfree(i8* noundef %5) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @radix_tree_empty(%struct.xarray* nocapture noundef readonly %root) unnamed_addr #0 {
entry:
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %root, i64 0, i32 2
  %0 = load i8*, i8** %xa_head, align 8
  %cmp = icmp eq i8* %0, null
  ret i1 %cmp
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @irq_set_default_host(%struct.irq_domain* noundef %domain) local_unnamed_addr #8 {
entry:
  store %struct.irq_domain* %domain, %struct.irq_domain** @irq_default_domain, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(%struct.fwnode_handle* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_domain_update_bus_token(%struct.irq_domain* nocapture noundef %domain, i32 noundef %bus_token) local_unnamed_addr #1 {
entry:
  %bus_token1 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 7
  %0 = load i32, i32* %bus_token1, align 8
  %cmp = icmp eq i32 %0, %bus_token
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  store i32 %bus_token, i32* %bus_token1, align 8
  %name3 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 1
  %1 = load i8*, i8** %name3, align 8
  %call = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %1, i32 noundef %bus_token) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end5

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 4
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, 2
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %3 = load i8*, i8** %name3, align 8
  call void @kfree(i8* noundef %3) #17
  br label %if.end10

if.else:                                          ; preds = %if.end5
  %or = or i32 %2, 2
  store i32 %or, i32* %flags, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  store i8* %call, i8** %name3, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end10
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @irq_domain_create_simple(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, i32 noundef %first_irq, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) local_unnamed_addr #1 {
entry:
  %conv = zext i32 %size to i64
  %call = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, i64 noundef %conv, i32 noundef 0, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) #16
  %tobool.not = icmp eq %struct.irq_domain* %call, null
  %cmp.not = icmp eq i32 %first_irq, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call7 = call i32 @__irq_alloc_descs(i32 noundef %first_irq, i32 noundef %first_irq, i32 noundef %size, i32 noundef -1, %struct.module* noundef null, %struct.irq_affinity_desc* noundef null) #17
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.then2
  %call15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 noundef %first_irq) #19
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then2
  call void @irq_domain_associate_many(%struct.irq_domain* noundef nonnull %call, i32 noundef %first_irq, i64 noundef 0, i32 noundef %size) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry
  ret %struct.irq_domain* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.module* noundef, %struct.irq_affinity_desc* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_domain_associate_many(%struct.irq_domain* noundef %domain, i32 noundef %irq_base, i64 noundef %hwirq_base, i32 noundef %count) local_unnamed_addr #1 {
entry:
  %cmp9 = icmp sgt i32 %count, 0
  br i1 %cmp9, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %count to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %0 = trunc i64 %indvars.iv to i32
  %add = add i32 %0, %irq_base
  %add1 = add i64 %indvars.iv, %hwirq_base
  %call2 = call i32 @irq_domain_associate(%struct.irq_domain* noundef %domain, i32 noundef %add, i64 noundef %add1) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @irq_domain_add_legacy(%struct.device_node* noundef %of_node, i32 noundef %size, i32 noundef %first_irq, i64 noundef %first_hwirq, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* noundef %of_node) #16
  %call1 = call %struct.irq_domain* @irq_domain_create_legacy(%struct.fwnode_handle* noundef %call, i32 noundef %size, i32 noundef %first_irq, i64 noundef %first_hwirq, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) #16
  ret %struct.irq_domain* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @irq_domain_create_legacy(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, i32 noundef %first_irq, i64 noundef %first_hwirq, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) local_unnamed_addr #1 {
entry:
  %conv = zext i32 %size to i64
  %add = add i64 %conv, %first_hwirq
  %conv1 = trunc i64 %add to i32
  %call = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef %conv1, i64 noundef %add, i32 noundef 0, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) #16
  %tobool.not = icmp eq %struct.irq_domain* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @irq_domain_associate_many(%struct.irq_domain* noundef nonnull %call, i32 noundef %first_irq, i64 noundef %first_hwirq, i32 noundef %size) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.irq_domain* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* noundef readnone %node) unnamed_addr #9 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 3
  %cond = select i1 %tobool.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode
  ret %struct.fwnode_handle* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* noundef %fwspec, i32 noundef %bus_token) local_unnamed_addr #1 {
entry:
  %fwnode1 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  %h.066 = load %struct.irq_domain*, %struct.irq_domain** bitcast (%struct.list_head* @irq_domain_list to %struct.irq_domain**), align 8
  %link67 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %h.066, i64 0, i32 0
  %cmp.not68 = icmp eq %struct.list_head* %link67, @irq_domain_list
  br i1 %cmp.not68, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  %add.ptr17 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %0, i64 -1, i32 4
  %1 = bitcast %struct.list_head* %add.ptr17 to %struct.device_node*
  %cmp20.not = icmp eq %struct.fwnode_handle* %0, null
  %cmp24 = icmp eq i32 %bus_token, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %h.069 = phi %struct.irq_domain* [ %h.066, %for.body.lr.ph ], [ %h.0, %for.inc ]
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %h.069, i64 0, i32 2
  %2 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %select = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %2, i64 0, i32 1
  %3 = load i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)** %select, align 8
  %tobool.not = icmp eq i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* %3, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %param_count, align 8
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 %3(%struct.irq_domain* noundef %h.069, %struct.irq_fwspec* noundef %fwspec, i32 noundef %bus_token) #17
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true, %for.body
  %match = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %2, i64 0, i32 0
  %5 = load i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32)** %match, align 8
  %tobool6.not = icmp eq i32 (%struct.irq_domain*, %struct.device_node*, i32)* %5, null
  br i1 %tobool6.not, label %if.else19, label %if.then7

if.then7:                                         ; preds = %if.else
  %call11 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %0) #16
  %cond = select i1 %call11, %struct.device_node* %1, %struct.device_node* null
  %call18 = call i32 %5(%struct.irq_domain* noundef %h.069, %struct.device_node* noundef %cond, i32 noundef %bus_token) #17
  br label %if.end27

if.else19:                                        ; preds = %if.else
  br i1 %cmp20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.else19
  %fwnode22 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %h.069, i64 0, i32 6
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode22, align 8
  %cmp23 = icmp ne %struct.fwnode_handle* %6, %0
  %brmerge = or i1 %cmp23, %cmp24
  %not.cmp23 = xor i1 %cmp23, true
  br i1 %brmerge, label %land.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true21
  %bus_token25 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %h.069, i64 0, i32 7
  %7 = load i32, i32* %bus_token25, align 8
  %cmp26 = icmp eq i32 %7, %bus_token
  br label %land.end

land.end:                                         ; preds = %land.lhs.true21, %lor.rhs, %if.else19
  %8 = phi i1 [ %not.cmp23, %land.lhs.true21 ], [ false, %if.else19 ], [ %cmp26, %lor.rhs ]
  %land.ext = zext i1 %8 to i32
  br label %if.end27

if.end27:                                         ; preds = %if.then7, %land.end, %if.then
  %rc.0 = phi i32 [ %call, %if.then ], [ %call18, %if.then7 ], [ %land.ext, %land.end ]
  %tobool28.not = icmp eq i32 %rc.0, 0
  br i1 %tobool28.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %if.end27
  %9 = bitcast %struct.irq_domain* %h.069 to %struct.irq_domain**
  %h.0 = load %struct.irq_domain*, %struct.irq_domain** %9, align 8
  %link = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %h.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @irq_domain_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end27, %entry
  %found.0 = phi %struct.irq_domain* [ null, %entry ], [ %h.069, %if.end27 ], [ null, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  ret %struct.irq_domain* %found.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @irq_domain_check_msi_remap() local_unnamed_addr #1 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  %h.015 = load %struct.irq_domain*, %struct.irq_domain** bitcast (%struct.list_head* @irq_domain_list to %struct.irq_domain**), align 8
  %link16 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %h.015, i64 0, i32 0
  %cmp.not17 = icmp eq %struct.list_head* %link16, @irq_domain_list
  br i1 %cmp.not17, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %h.018 = phi %struct.irq_domain* [ %h.0, %for.inc ], [ %h.015, %entry ]
  %call = call fastcc i1 @irq_domain_is_msi(%struct.irq_domain* noundef %h.018) #16
  br i1 %call, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call1 = call i1 @irq_domain_hierarchical_is_msi_remap(%struct.irq_domain* noundef %h.018) #16
  br i1 %call1, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %0 = bitcast %struct.irq_domain* %h.018 to %struct.irq_domain**
  %h.0 = load %struct.irq_domain*, %struct.irq_domain** %0, align 8
  %link = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %h.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %link, @irq_domain_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %land.lhs.true, %entry
  %cmp.not.lcssa = phi i1 [ true, %entry ], [ false, %land.lhs.true ], [ true, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  ret i1 %cmp.not.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_domain_is_msi(%struct.irq_domain* nocapture noundef readonly %domain) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 16
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @irq_domain_hierarchical_is_msi_remap(%struct.irq_domain* noundef readonly %domain) local_unnamed_addr #10 {
entry:
  %tobool.not3 = icmp eq %struct.irq_domain* %domain, null
  br i1 %tobool.not3, label %return, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %domain.addr.04 = phi %struct.irq_domain* [ %0, %for.inc ], [ %domain, %entry ]
  %call = call fastcc i1 @irq_domain_is_msi_remap(%struct.irq_domain* noundef nonnull %domain.addr.04) #16
  br i1 %call, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain.addr.04, i64 0, i32 9
  %0 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %tobool.not = icmp eq %struct.irq_domain* %0, null
  br i1 %tobool.not, label %return, label %for.body

return:                                           ; preds = %for.body, %for.inc, %entry
  %tobool.not.lcssa = phi i1 [ false, %entry ], [ %call, %for.inc ], [ %call, %for.body ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.irq_domain* @irq_get_default_host() local_unnamed_addr #0 {
entry:
  %0 = load %struct.irq_domain*, %struct.irq_domain** @irq_default_domain, align 8
  ret %struct.irq_domain* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_associate(%struct.irq_domain* noundef %domain, i32 noundef %virq, i64 noundef %hwirq) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %virq) #17
  %hwirq_max = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 10
  %0 = load i64, i64* %hwirq_max, align 8
  %cmp.not = icmp ugt i64 %0, %hwirq
  br i1 %cmp.not, label %if.end23, label %do.end, !prof !7

do.end:                                           ; preds = %entry
  %conv8 = trunc i64 %hwirq to i32
  %name = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 1
  %1 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv8, i8* noundef %1) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 569; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !12
  br label %cleanup

if.end23:                                         ; preds = %entry
  %tobool25.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool25.not, label %do.end44, label %if.end61, !prof !11

do.end44:                                         ; preds = %if.end23
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 noundef %virq) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 571; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !13
  br label %cleanup

if.end61:                                         ; preds = %if.end23
  %domain63 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  %2 = load %struct.irq_domain*, %struct.irq_domain** %domain63, align 8
  %tobool64.not = icmp eq %struct.irq_domain* %2, null
  br i1 %tobool64.not, label %if.end98, label %do.end81, !prof !7

do.end81:                                         ; preds = %if.end61
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 noundef %virq) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 573; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !14
  br label %cleanup

if.end98:                                         ; preds = %if.end61
  call void @mutex_lock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  %hwirq99 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 2
  store i64 %hwirq, i64* %hwirq99, align 8
  store %struct.irq_domain* %domain, %struct.irq_domain** %domain63, align 8
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 2
  %3 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %map = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %3, i64 0, i32 2
  %4 = load i32 (%struct.irq_domain*, i32, i64)*, i32 (%struct.irq_domain*, i32, i64)** %map, align 8
  %tobool101.not = icmp eq i32 (%struct.irq_domain*, i32, i64)* %4, null
  br i1 %tobool101.not, label %if.end130, label %if.then102

if.then102:                                       ; preds = %if.end98
  %call105 = call i32 %4(%struct.irq_domain* noundef %domain, i32 noundef %virq, i64 noundef %hwirq) #17
  switch i32 %call105, label %do.end114 [
    i32 0, label %if.end121
    i32 -1, label %if.end118
  ]

do.end114:                                        ; preds = %if.then102
  %name116 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 1
  %5 = load i8*, i8** %name116, align 8
  %call117 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i8* noundef %5, i64 noundef %hwirq, i32 noundef %virq, i32 noundef %call105) #19
  br label %if.end118

if.end118:                                        ; preds = %if.then102, %do.end114
  store %struct.irq_domain* null, %struct.irq_domain** %domain63, align 8
  store i64 0, i64* %hwirq99, align 8
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  br label %cleanup

if.end121:                                        ; preds = %if.then102
  %name122 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 1
  %6 = load i8*, i8** %name122, align 8
  %tobool123.not = icmp eq i8* %6, null
  br i1 %tobool123.not, label %land.lhs.true, label %if.end130

land.lhs.true:                                    ; preds = %if.end121
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 4
  %7 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %tobool124.not = icmp eq %struct.irq_chip* %7, null
  br i1 %tobool124.not, label %if.end130, label %if.then125

if.then125:                                       ; preds = %land.lhs.true
  %name127 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %7, i64 0, i32 1
  %8 = load i8*, i8** %name127, align 8
  store i8* %8, i8** %name122, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.end121, %land.lhs.true, %if.then125, %if.end98
  %mapcount = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 5
  %9 = load i32, i32* %mapcount, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %mapcount, align 4
  call fastcc void @irq_domain_set_mapping(%struct.irq_domain* noundef %domain, i64 noundef %hwirq, %struct.irq_data* noundef nonnull %call) #16
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  call fastcc void @irq_clear_status_flags(i32 noundef %virq) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %do.end44, %do.end, %if.end130, %if.end118
  %retval.0 = phi i32 [ %call105, %if.end118 ], [ 0, %if.end130 ], [ -22, %do.end ], [ -22, %do.end44 ], [ -22, %do.end81 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_domain_set_mapping(%struct.irq_domain* noundef %domain, i64 noundef %hwirq, %struct.irq_data* noundef %irq_data) unnamed_addr #1 {
entry:
  %revmap_mutex = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %revmap_mutex) #17
  %revmap_size = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 11
  %0 = load i32, i32* %revmap_size, align 8
  %conv = zext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, %hwirq
  br i1 %cmp, label %do.body, label %if.else25

do.body:                                          ; preds = %entry
  %1 = ptrtoint %struct.irq_data* %irq_data to i64
  %arrayidx15 = getelementptr %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 14, i64 %hwirq
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.irq_data** elementtype(%struct.irq_data*) %arrayidx15, i64 %1) #18, !srcloc !15
  br label %if.end27

if.else25:                                        ; preds = %entry
  %revmap_tree = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 12
  %2 = bitcast %struct.irq_data* %irq_data to i8*
  %call26 = call i32 @radix_tree_insert(%struct.xarray* noundef %revmap_tree, i64 noundef %hwirq, i8* noundef %2) #17
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %do.body
  call void @mutex_unlock(%struct.mutex* noundef %revmap_mutex) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_clear_status_flags(i32 noundef %irq) unnamed_addr #1 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 2048, i64 noundef 0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_create_mapping_affinity(%struct.irq_domain* noundef %domain, i64 noundef %hwirq, %struct.irq_affinity_desc* noundef %affinity) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.irq_domain* %domain, null
  %0 = load %struct.irq_domain*, %struct.irq_domain** @irq_default_domain, align 8
  %spec.select = select i1 %cmp, %struct.irq_domain* %0, %struct.irq_domain* %domain
  %cmp1 = icmp eq %struct.irq_domain* %spec.select, null
  br i1 %cmp1, label %do.end, label %if.end21

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.irq_create_mapping_affinity, i64 0, i64 0), i64 noundef %hwirq) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 695; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !16
  br label %cleanup

if.end21:                                         ; preds = %entry
  %call23 = call fastcc i32 @irq_find_mapping(%struct.irq_domain* noundef nonnull %spec.select, i64 noundef %hwirq) #16
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end21
  %call29 = call i32 @irq_domain_alloc_descs(i32 noundef -1, i32 noundef 1, i64 noundef %hwirq, i32 noundef -1, %struct.irq_affinity_desc* noundef %affinity) #16
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end27
  %call35 = call i32 @irq_domain_associate(%struct.irq_domain* noundef nonnull %spec.select, i32 noundef %call29, i64 noundef %hwirq) #16
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %if.end34
  call fastcc void @irq_free_desc(i32 noundef %call29) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end27, %if.end21, %if.then37, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.then37 ], [ %call23, %if.end21 ], [ 0, %if.end27 ], [ %call29, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_find_mapping(%struct.irq_domain* noundef %domain, i64 noundef %hwirq) unnamed_addr #1 {
entry:
  %irq = alloca i32, align 4
  %0 = bitcast i32* %irq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 0, i32* %irq, align 4, !annotation !17
  %call = call %struct.irq_desc* @__irq_resolve_mapping(%struct.irq_domain* noundef %domain, i64 noundef %hwirq, i32* noundef nonnull %irq) #16
  %tobool.not = icmp eq %struct.irq_desc* %call, null
  %1 = load i32, i32* %irq, align 4
  %retval.0 = select i1 %tobool.not, i32 0, i32 %1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_alloc_descs(i32 noundef %virq, i32 noundef %cnt, i64 noundef %hwirq, i32 noundef %node, %struct.irq_affinity_desc* noundef %affinity) local_unnamed_addr #1 {
entry:
  %cmp = icmp sgt i32 %virq, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @__irq_alloc_descs(i32 noundef %virq, i32 noundef %virq, i32 noundef %cnt, i32 noundef %node, %struct.module* noundef null, %struct.irq_affinity_desc* noundef %affinity) #17
  br label %if.end13

if.else:                                          ; preds = %entry
  %0 = load i32, i32* @nr_irqs, align 4
  %conv = sext i32 %0 to i64
  %rem = urem i64 %hwirq, %conv
  %conv1 = trunc i64 %rem to i32
  %cmp2 = icmp eq i32 %conv1, 0
  %spec.select = select i1 %cmp2, i32 1, i32 %conv1
  %call5 = call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef %spec.select, i32 noundef %cnt, i32 noundef %node, %struct.module* noundef null, %struct.irq_affinity_desc* noundef %affinity) #17
  %cmp6 = icmp slt i32 %call5, 1
  %cmp8 = icmp ugt i32 %spec.select, 1
  %or.cond = and i1 %cmp6, %cmp8
  br i1 %or.cond, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.else
  %call11 = call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 1, i32 noundef %cnt, i32 noundef %node, %struct.module* noundef null, %struct.irq_affinity_desc* noundef %affinity) #17
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10, %if.then
  %virq.addr.0 = phi i32 [ %call, %if.then ], [ %call11, %if.then10 ], [ %call5, %if.else ]
  ret i32 %virq.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_free_desc(i32 noundef %irq) unnamed_addr #1 {
entry:
  call void @irq_free_descs(i32 noundef %irq, i32 noundef 1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_create_fwspec_mapping(%struct.irq_fwspec* noundef %fwspec) local_unnamed_addr #1 {
entry:
  %hwirq = alloca i64, align 8
  %type = alloca i32, align 4
  %0 = bitcast i64* %hwirq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %hwirq, align 8, !annotation !17
  %1 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #18
  store i32 0, i32* %type, align 4
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %tobool.not = icmp eq %struct.fwnode_handle* %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* noundef %fwspec, i32 noundef 1) #16
  %tobool1.not = icmp eq %struct.irq_domain* %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end16

if.then2:                                         ; preds = %if.then
  %call3 = call %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* noundef %fwspec, i32 noundef 0) #16
  br label %if.end4

if.else:                                          ; preds = %entry
  %3 = load %struct.irq_domain*, %struct.irq_domain** @irq_default_domain, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else
  %domain.0 = phi %struct.irq_domain* [ %call3, %if.then2 ], [ %3, %if.else ]
  %tobool5.not = icmp eq %struct.irq_domain* %domain.0, null
  br i1 %tobool5.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end4
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call9 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %4) #16
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %4, i64 -1, i32 4
  %5 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call9, %struct.device_node* %5, %struct.device_node* null
  %call14 = call fastcc i8* @of_node_full_name(%struct.device_node* noundef %cond) #16
  %call15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call14) #19
  br label %cleanup

if.end16:                                         ; preds = %if.then, %if.end4
  %domain.0149 = phi %struct.irq_domain* [ %domain.0, %if.end4 ], [ %call, %if.then ]
  %call17 = call fastcc i32 @irq_domain_translate(%struct.irq_domain* noundef nonnull %domain.0149, %struct.irq_fwspec* noundef %fwspec, i64* noundef nonnull %hwirq, i32* noundef nonnull %type) #16
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end16
  %6 = load i32, i32* %type, align 4
  %tobool21.not = icmp ult i32 %6, 16
  br i1 %tobool21.not, label %if.end42, label %if.then29, !prof !7

if.then29:                                        ; preds = %if.end20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 789; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !18
  %7 = load i32, i32* %type, align 4
  %and41 = and i32 %7, 15
  store i32 %and41, i32* %type, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end20, %if.then29
  %8 = load i64, i64* %hwirq, align 8
  %call43 = call fastcc i32 @irq_find_mapping(%struct.irq_domain* noundef nonnull %domain.0149, i64 noundef %8) #16
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end82, label %if.then45

if.then45:                                        ; preds = %if.end42
  %9 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then45
  %call47 = call fastcc i32 @irq_get_trigger_type(i32 noundef %call43) #16
  %cmp48 = icmp eq i32 %9, %call47
  br i1 %cmp48, label %cleanup, label %if.end51

if.end51:                                         ; preds = %lor.lhs.false
  %call52 = call fastcc i32 @irq_get_trigger_type(i32 noundef %call43) #16
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %do.end63

if.then55:                                        ; preds = %if.end51
  %call56 = call %struct.irq_data* @irq_get_irq_data(i32 noundef %call43) #17
  %tobool57.not = icmp eq %struct.irq_data* %call56, null
  br i1 %tobool57.not, label %cleanup, label %if.end59

if.end59:                                         ; preds = %if.then55
  %10 = load i32, i32* %type, align 4
  call fastcc void @irqd_set_trigger_type(%struct.irq_data* noundef nonnull %call56, i32 noundef %10) #16
  br label %cleanup

do.end63:                                         ; preds = %if.end51
  %11 = load i64, i64* %hwirq, align 8
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call68 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %12) #16
  %add.ptr76 = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %12, i64 -1, i32 4
  %13 = bitcast %struct.list_head* %add.ptr76 to %struct.device_node*
  %cond79 = select i1 %call68, %struct.device_node* %13, %struct.device_node* null
  %call80 = call fastcc i8* @of_node_full_name(%struct.device_node* noundef %cond79) #16
  %call81 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i64 noundef %11, i8* noundef %call80) #19
  br label %cleanup

if.end82:                                         ; preds = %if.end42
  %call83 = call fastcc i1 @irq_domain_is_hierarchy(%struct.irq_domain* noundef nonnull %domain.0149) #16
  br i1 %call83, label %if.then84, label %if.else90

if.then84:                                        ; preds = %if.end82
  %14 = bitcast %struct.irq_fwspec* %fwspec to i8*
  %call85 = call fastcc i32 @irq_domain_alloc_irqs(%struct.irq_domain* noundef nonnull %domain.0149, i8* noundef %14) #16
  %cmp86 = icmp slt i32 %call85, 1
  br i1 %cmp86, label %cleanup, label %if.end95

if.else90:                                        ; preds = %if.end82
  %15 = load i64, i64* %hwirq, align 8
  %call91 = call fastcc i32 @irq_create_mapping(%struct.irq_domain* noundef nonnull %domain.0149, i64 noundef %15) #16
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %cleanup, label %if.end95

if.end95:                                         ; preds = %if.else90, %if.then84
  %virq.0 = phi i32 [ %call85, %if.then84 ], [ %call91, %if.else90 ]
  %call96 = call %struct.irq_data* @irq_get_irq_data(i32 noundef %virq.0) #17
  %tobool97.not = icmp eq %struct.irq_data* %call96, null
  br i1 %tobool97.not, label %if.then98, label %if.end103

if.then98:                                        ; preds = %if.end95
  %call99 = call fastcc i1 @irq_domain_is_hierarchy(%struct.irq_domain* noundef nonnull %domain.0149) #16
  br i1 %call99, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.then98
  call void @irq_domain_free_irqs(i32 noundef %virq.0, i32 noundef 1) #16
  br label %cleanup

if.else101:                                       ; preds = %if.then98
  call void @irq_dispose_mapping(i32 noundef %virq.0) #16
  br label %cleanup

if.end103:                                        ; preds = %if.end95
  %16 = load i32, i32* %type, align 4
  call fastcc void @irqd_set_trigger_type(%struct.irq_data* noundef nonnull %call96, i32 noundef %16) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %if.else101, %if.else90, %if.then84, %if.then55, %if.then45, %lor.lhs.false, %if.end16, %if.end103, %do.end63, %if.end59, %do.end
  %retval.0 = phi i32 [ %call43, %if.end59 ], [ 0, %do.end63 ], [ %virq.0, %if.end103 ], [ 0, %do.end ], [ 0, %if.end16 ], [ %call43, %lor.lhs.false ], [ %call43, %if.then45 ], [ 0, %if.then55 ], [ 0, %if.then84 ], [ 0, %if.else90 ], [ 0, %if.else101 ], [ 0, %if.then100 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @of_node_full_name(%struct.device_node* noundef readonly %np) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %np, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %0 = load i8*, i8** %full_name, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %0, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), %entry ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_domain_translate(%struct.irq_domain* noundef %d, %struct.irq_fwspec* noundef %fwspec, i64* noundef %hwirq, i32* noundef %type) unnamed_addr #1 {
entry:
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %d, i64 0, i32 2
  %0 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %translate = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %0, i64 0, i32 9
  %1 = load i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)** %translate, align 8
  %tobool.not = icmp eq i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.irq_domain* noundef %d, %struct.irq_fwspec* noundef %fwspec, i64* noundef %hwirq, i32* noundef %type) #17
  br label %return

if.end:                                           ; preds = %entry
  %xlate = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %0, i64 0, i32 4
  %2 = load i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)** %xlate, align 8
  %tobool4.not = icmp eq i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* %2, null
  br i1 %tobool4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.end
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call8 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %3) #16
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %3, i64 -1, i32 4
  %4 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call8, %struct.device_node* %4, %struct.device_node* null
  %arraydecay = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  %5 = load i32, i32* %param_count, align 8
  %call10 = call i32 %2(%struct.irq_domain* noundef %d, %struct.device_node* noundef %cond, i32* noundef %arraydecay, i32 noundef %5, i64* noundef %hwirq, i32* noundef %type) #17
  br label %return

if.end11:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  %6 = load i32, i32* %arrayidx, align 4
  %conv = zext i32 %6 to i64
  store i64 %conv, i64* %hwirq, align 8
  br label %return

return:                                           ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call10, %if.then5 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_get_trigger_type(i32 noundef %irq) unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %irq) #17
  %tobool.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call1 = call fastcc i32 @irqd_get_trigger_type(%struct.irq_data* noundef nonnull %call) #16
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_trigger_type(%struct.irq_data* nocapture noundef readonly %d, i32 noundef %type) unnamed_addr #7 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -16
  store i32 %and, i32* %state_use_accessors, align 8
  %and1 = and i32 %type, 15
  %2 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors3 = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %2, i64 0, i32 0
  %3 = load i32, i32* %state_use_accessors3, align 8
  %or = or i32 %3, %and1
  store i32 %or, i32* %state_use_accessors3, align 8
  %4 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors5 = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %4, i64 0, i32 0
  %5 = load i32, i32* %state_use_accessors5, align 8
  %or6 = or i32 %5, 33554432
  store i32 %or6, i32* %state_use_accessors5, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_domain_is_hierarchy(%struct.irq_domain* nocapture noundef readonly %domain) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_domain_alloc_irqs(%struct.irq_domain* noundef %domain, i8* noundef %arg) unnamed_addr #1 {
entry:
  %call = call i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef %domain, i32 noundef -1, i32 noundef 1, i32 noundef -1, i8* noundef %arg, i1 noundef false, %struct.irq_affinity_desc* noundef null) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_create_mapping(%struct.irq_domain* noundef %host, i64 noundef %hwirq) unnamed_addr #1 {
entry:
  %call = call i32 @irq_create_mapping_affinity(%struct.irq_domain* noundef %host, i64 noundef %hwirq, %struct.irq_affinity_desc* noundef null) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_domain_free_irqs(i32 noundef %virq, i32 noundef %nr_irqs) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %virq) #17
  %tobool.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %domain = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %tobool1.not = icmp eq %struct.irq_domain* %0, null
  br i1 %tobool1.not, label %do.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i64 0, i32 2
  %1 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %free = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %1, i64 0, i32 6
  %2 = load void (%struct.irq_domain*, i32, i32)*, void (%struct.irq_domain*, i32, i32)** %free, align 8
  %tobool3.not = icmp eq void (%struct.irq_domain*, i32, i32)* %2, null
  br i1 %tobool3.not, label %do.end, label %if.end27, !prof !11

do.end:                                           ; preds = %entry, %lor.lhs.false, %lor.rhs
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 1692; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !19
  br label %cleanup

if.end27:                                         ; preds = %lor.rhs
  call void @mutex_lock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  %cmp48.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp48.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end27, %for.body
  %i.049 = phi i32 [ %inc, %for.body ], [ 0, %if.end27 ]
  %add = add i32 %i.049, %virq
  call fastcc void @irq_domain_remove_irq(i32 noundef %add) #16
  %inc = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end27
  %3 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  call fastcc void @irq_domain_free_irqs_hierarchy(%struct.irq_domain* noundef %3, i32 noundef %virq, i32 noundef %nr_irqs) #16
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  call fastcc void @irq_domain_free_irq_data(i32 noundef %virq, i32 noundef %nr_irqs) #16
  call void @irq_free_descs(i32 noundef %virq, i32 noundef %nr_irqs) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_dispose_mapping(i32 noundef %virq) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %virq) #17
  %tobool = icmp ne i32 %virq, 0
  %tobool1 = icmp ne %struct.irq_data* %call, null
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %domain2 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain2, align 8
  %cmp = icmp eq %struct.irq_domain* %0, null
  br i1 %cmp, label %if.then10, label %if.end21, !prof !11

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 875; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !20
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %call22 = call fastcc i1 @irq_domain_is_hierarchy(%struct.irq_domain* noundef nonnull %0) #16
  br i1 %call22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end21
  call void @irq_domain_free_irqs(i32 noundef %virq, i32 noundef 1) #16
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call fastcc void @irq_domain_disassociate(%struct.irq_domain* noundef nonnull %0, i32 noundef %virq) #16
  call fastcc void @irq_free_desc(i32 noundef %virq) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then23, %if.else, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_create_of_mapping(%struct.of_phandle_args* nocapture noundef readonly %irq_data) local_unnamed_addr #1 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 8
  %0 = bitcast %struct.irq_fwspec* %fwspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !17
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %irq_data, i64 0, i32 0
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8
  %arraydecay = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %irq_data, i64 0, i32 2, i64 0
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %irq_data, i64 0, i32 1
  %2 = load i32, i32* %args_count, align 8
  call fastcc void @of_phandle_args_to_fwspec(%struct.device_node* noundef %1, i32* noundef %arraydecay, i32 noundef %2, %struct.irq_fwspec* noundef nonnull %fwspec) #16
  %call = call i32 @irq_create_fwspec_mapping(%struct.irq_fwspec* noundef nonnull %fwspec) #16
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #18
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @of_phandle_args_to_fwspec(%struct.device_node* noundef %np, i32* nocapture noundef readonly %args, i32 noundef %count, %struct.irq_fwspec* nocapture noundef writeonly %fwspec) unnamed_addr #12 {
entry:
  %call = call fastcc %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* noundef %np) #16
  %fwnode = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  store %struct.fwnode_handle* %call, %struct.fwnode_handle** %fwnode, align 8
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  store i32 %count, i32* %param_count, align 8
  %cmp10.not = icmp eq i32 %count, 0
  br i1 %cmp10.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.011 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %idxprom = sext i32 %i.011 to i64
  %arrayidx = getelementptr i32, i32* %args, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 %idxprom
  store i32 %0, i32* %arrayidx2, align 4
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_domain_disassociate(%struct.irq_domain* noundef %domain, i32 noundef %irq) unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %irq) #17
  %tobool.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not, label %do.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %domain1 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain1, align 8
  %cmp.not = icmp eq %struct.irq_domain* %0, %domain
  br i1 %cmp.not, label %if.end24, label %do.end, !prof !7

do.end:                                           ; preds = %entry, %lor.rhs
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i32 noundef %irq) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 537; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !21
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  %hwirq25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 2
  %1 = load i64, i64* %hwirq25, align 8
  call fastcc void @irq_set_status_flags(i32 noundef %irq) #16
  call fastcc void @irq_set_chip_and_handler(i32 noundef %irq) #16
  call void @synchronize_irq(i32 noundef %irq) #17
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 2
  %2 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %unmap = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %2, i64 0, i32 3
  %3 = load void (%struct.irq_domain*, i32)*, void (%struct.irq_domain*, i32)** %unmap, align 8
  %tobool26.not = icmp eq void (%struct.irq_domain*, i32)* %3, null
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void %3(%struct.irq_domain* noundef %domain, i32 noundef %irq) #17
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  store %struct.irq_domain* null, %struct.irq_domain** %domain1, align 8
  store i64 0, i64* %hwirq25, align 8
  %mapcount = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 5
  %4 = load i32, i32* %mapcount, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %mapcount, align 4
  call fastcc void @irq_domain_clear_mapping(%struct.irq_domain* noundef %domain, i64 noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_desc* @__irq_resolve_mapping(%struct.irq_domain* noundef %domain, i64 noundef %hwirq, i32* noundef writeonly %irq) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.irq_domain* %domain, null
  %0 = load %struct.irq_domain*, %struct.irq_domain** @irq_default_domain, align 8
  %spec.select = select i1 %cmp, %struct.irq_domain* %0, %struct.irq_domain* %domain
  %cmp1 = icmp eq %struct.irq_domain* %spec.select, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  call fastcc void @__rcu_read_lock() #17
  %revmap_size18 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %spec.select, i64 0, i32 11
  %1 = load i32, i32* %revmap_size18, align 8
  %conv19 = zext i32 %1 to i64
  %cmp20 = icmp ugt i64 %conv19, %hwirq
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end3
  %arrayidx = getelementptr %struct.irq_domain, %struct.irq_domain* %spec.select, i64 0, i32 14, i64 %hwirq
  %2 = load volatile %struct.irq_data*, %struct.irq_data** %arrayidx, align 8
  br label %if.end28

if.else:                                          ; preds = %if.end3
  %revmap_tree = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %spec.select, i64 0, i32 12
  %call27 = call i8* @radix_tree_lookup(%struct.xarray* noundef %revmap_tree, i64 noundef %hwirq) #17
  %3 = bitcast i8* %call27 to %struct.irq_data*
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then22
  %data.0 = phi %struct.irq_data* [ %2, %if.then22 ], [ %3, %if.else ]
  %tobool29.not = icmp eq %struct.irq_data* %data.0, null
  br i1 %tobool29.not, label %if.end39, label %if.then33, !prof !11

if.then33:                                        ; preds = %if.end28
  %call34 = call fastcc %struct.irq_desc* @irq_data_to_desc(%struct.irq_data* noundef nonnull %data.0) #16
  %tobool35.not = icmp eq i32* %irq, null
  br i1 %tobool35.not, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.then33
  %irq37 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.0, i64 0, i32 1
  %4 = load i32, i32* %irq37, align 4
  store i32 %4, i32* %irq, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.then36, %if.end28
  %desc.1 = phi %struct.irq_desc* [ %call34, %if.then36 ], [ %call34, %if.then33 ], [ null, %if.end28 ]
  call fastcc void @rcu_read_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end39
  %retval.0 = phi %struct.irq_desc* [ %desc.1, %if.end39 ], [ null, %entry ]
  ret %struct.irq_desc* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef readnone %domain, i32 noundef %virq) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %virq) #17
  %tobool.not6 = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not6, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %irq_data.07 = phi %struct.irq_data* [ %1, %for.inc ], [ %call, %entry ]
  %domain1 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data.07, i64 0, i32 5
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain1, align 8
  %cmp = icmp eq %struct.irq_domain* %0, %domain
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data.07, i64 0, i32 6
  %1 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool.not = icmp eq %struct.irq_data* %1, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %irq_data.0.lcssa = phi %struct.irq_data* [ null, %entry ], [ null, %for.inc ], [ %irq_data.07, %for.body ]
  ret %struct.irq_data* %irq_data.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.irq_desc* @irq_data_to_desc(%struct.irq_data* nocapture noundef readonly %data) unnamed_addr #0 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 3
  %0 = bitcast %struct.irq_common_data** %common to %struct.irq_desc**
  %1 = load %struct.irq_desc*, %struct.irq_desc** %0, align 8
  ret %struct.irq_desc* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @radix_tree_lookup(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_xlate_onecell(%struct.irq_domain* nocapture noundef readnone %d, %struct.device_node* nocapture noundef readnone %ctrlr, i32* nocapture noundef readonly %intspec, i32 noundef %intsize, i64* nocapture noundef writeonly %out_hwirq, i32* nocapture noundef writeonly %out_type) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %intsize, 0
  br i1 %cmp, label %if.then, label %if.end16, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 946; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !23
  br label %return

if.end16:                                         ; preds = %entry
  %0 = load i32, i32* %intspec, align 4
  %conv17 = zext i32 %0 to i64
  store i64 %conv17, i64* %out_hwirq, align 8
  store i32 0, i32* %out_type, align 4
  br label %return

return:                                           ; preds = %if.then, %if.end16
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_xlate_twocell(%struct.irq_domain* nocapture noundef readnone %d, %struct.device_node* noundef %ctrlr, i32* nocapture noundef readonly %intspec, i32 noundef %intsize, i64* nocapture noundef writeonly %out_hwirq, i32* nocapture noundef writeonly %out_type) local_unnamed_addr #1 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 8
  %0 = bitcast %struct.irq_fwspec* %fwspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !17
  call fastcc void @of_phandle_args_to_fwspec(%struct.device_node* noundef %ctrlr, i32* noundef %intspec, i32 noundef %intsize, %struct.irq_fwspec* noundef nonnull %fwspec) #16
  %call = call i32 @irq_domain_translate_twocell(%struct.irq_domain* undef, %struct.irq_fwspec* noundef nonnull %fwspec, i64* noundef %out_hwirq, i32* noundef %out_type) #16
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_translate_twocell(%struct.irq_domain* nocapture readnone %d, %struct.irq_fwspec* nocapture noundef readonly %fwspec, i64* nocapture noundef writeonly %out_hwirq, i32* nocapture noundef writeonly %out_type) local_unnamed_addr #1 {
entry:
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  %0 = load i32, i32* %param_count, align 8
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end16, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 1034; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !24
  br label %return

if.end16:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %conv17 = zext i32 %1 to i64
  store i64 %conv17, i64* %out_hwirq, align 8
  %arrayidx19 = getelementptr %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  %2 = load i32, i32* %arrayidx19, align 4
  %and = and i32 %2, 15
  store i32 %and, i32* %out_type, align 4
  br label %return

return:                                           ; preds = %if.then, %if.end16
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_xlate_onetwocell(%struct.irq_domain* nocapture readnone %d, %struct.device_node* nocapture readnone %ctrlr, i32* nocapture noundef readonly %intspec, i32 noundef %intsize, i64* nocapture noundef writeonly %out_hwirq, i32* nocapture noundef writeonly %out_type) #1 {
entry:
  %cmp = icmp eq i32 %intsize, 0
  br i1 %cmp, label %if.then, label %if.end16, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 988; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !25
  br label %return

if.end16:                                         ; preds = %entry
  %0 = load i32, i32* %intspec, align 4
  %conv17 = zext i32 %0 to i64
  store i64 %conv17, i64* %out_hwirq, align 8
  %cmp18.not = icmp eq i32 %intsize, 1
  br i1 %cmp18.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end16
  %arrayidx21 = getelementptr i32, i32* %intspec, i64 1
  %1 = load i32, i32* %arrayidx21, align 4
  %and = and i32 %1, 15
  br label %if.end22

if.end22:                                         ; preds = %if.end16, %if.then20
  %storemerge = phi i32 [ %and, %if.then20 ], [ 0, %if.end16 ]
  store i32 %storemerge, i32* %out_type, align 4
  br label %return

return:                                           ; preds = %if.then, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_translate_onecell(%struct.irq_domain* nocapture noundef readnone %d, %struct.irq_fwspec* nocapture noundef readonly %fwspec, i64* nocapture noundef writeonly %out_hwirq, i32* nocapture noundef writeonly %out_type) local_unnamed_addr #1 {
entry:
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  %0 = load i32, i32* %param_count, align 8
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end16, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 1013; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !26
  br label %return

if.end16:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %conv17 = zext i32 %1 to i64
  store i64 %conv17, i64* %out_hwirq, align 8
  store i32 0, i32* %out_type, align 4
  br label %return

return:                                           ; preds = %if.then, %if.end16
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @irq_domain_reset_irq_data(%struct.irq_data* nocapture noundef writeonly %irq_data) local_unnamed_addr #8 {
entry:
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data, i64 0, i32 2
  store i64 0, i64* %hwirq, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data, i64 0, i32 4
  store %struct.irq_chip* @no_irq_chip, %struct.irq_chip** %chip, align 8
  %chip_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data, i64 0, i32 7
  store i8* null, i8** %chip_data, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.irq_domain* @irq_domain_create_hierarchy(%struct.irq_domain* noundef %parent, i32 noundef %flags, i32 noundef %size, %struct.fwnode_handle* noundef %fwnode, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) #16
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call fastcc %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle* noundef %fwnode, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %domain.0 = phi %struct.irq_domain* [ %call, %if.then ], [ %call1, %if.else ]
  %tobool2.not = icmp eq %struct.irq_domain* %domain.0, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %parent4 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain.0, i64 0, i32 9
  store %struct.irq_domain* %parent, %struct.irq_domain** %parent4, align 8
  %flags5 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain.0, i64 0, i32 4
  %0 = load i32, i32* %flags5, align 8
  %or = or i32 %0, %flags
  store i32 %or, i32* %flags5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  ret %struct.irq_domain* %domain.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_domain_create_linear(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) unnamed_addr #1 {
entry:
  %conv = zext i32 %size to i64
  %call = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef %size, i64 noundef %conv, i32 noundef 0, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) #16
  ret %struct.irq_domain* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle* noundef %fwnode, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) unnamed_addr #1 {
entry:
  %call = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef 0, i64 noundef -1, i32 noundef 0, %struct.irq_domain_ops* noundef %ops, i8* noundef %host_data) #16
  ret %struct.irq_domain* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_disconnect_hierarchy(%struct.irq_domain* noundef %domain, i32 noundef %virq) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %virq) #16
  %tobool.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 4
  store %struct.irq_chip* inttoptr (i64 -107 to %struct.irq_chip*), %struct.irq_chip** %chip, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef %domain, i32 noundef %virq, i64 noundef %hwirq, %struct.irq_chip* noundef %chip, i8* noundef %chip_data) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %virq) #16
  %tobool.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %hwirq1 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 2
  store i64 %hwirq, i64* %hwirq1, align 8
  %tobool2.not = icmp eq %struct.irq_chip* %chip, null
  %cond = select i1 %tobool2.not, %struct.irq_chip* @no_irq_chip, %struct.irq_chip* %chip
  %chip3 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 4
  store %struct.irq_chip* %cond, %struct.irq_chip** %chip3, align 8
  %chip_data4 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 7
  store i8* %chip_data, i8** %chip_data4, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_domain_set_info(%struct.irq_domain* noundef %domain, i32 noundef %virq, i64 noundef %hwirq, %struct.irq_chip* noundef %chip, i8* noundef %chip_data, void (%struct.irq_desc*)* noundef %handler, i8* noundef %handler_data, i8* noundef %handler_name) local_unnamed_addr #1 {
entry:
  %call = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef %domain, i32 noundef %virq, i64 noundef %hwirq, %struct.irq_chip* noundef %chip, i8* noundef %chip_data) #16
  call void @__irq_set_handler(i32 noundef %virq, void (%struct.irq_desc*)* noundef %handler, i32 noundef 0, i8* noundef %handler_name) #17
  %call1 = call i32 @irq_set_handler_data(i32 noundef %virq, i8* noundef %handler_data) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, void (%struct.irq_desc*)* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_domain_free_irqs_common(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) local_unnamed_addr #1 {
entry:
  %cmp9.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp9.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.010 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %add = add i32 %i.010, %virq
  %call = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %add) #16
  %tobool.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @irq_domain_reset_irq_data(%struct.irq_data* noundef nonnull %call) #16
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call void @irq_domain_free_irqs_parent(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_domain_free_irqs_parent(%struct.irq_domain* nocapture noundef readonly %domain, i32 noundef %irq_base, i32 noundef %nr_irqs) local_unnamed_addr #1 {
entry:
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 9
  %0 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %tobool.not = icmp eq %struct.irq_domain* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @irq_domain_free_irqs_hierarchy(%struct.irq_domain* noundef nonnull %0, i32 noundef %irq_base, i32 noundef %nr_irqs) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_domain_free_irqs_top(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) local_unnamed_addr #1 {
entry:
  %cmp9.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp9.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.010 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %add = add i32 %i.010, %virq
  %call = call i32 @irq_set_handler_data(i32 noundef %add, i8* noundef null) #17
  call fastcc void @irq_set_handler(i32 noundef %add) #16
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call void @irq_domain_free_irqs_common(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_handler(i32 noundef %irq) unnamed_addr #1 {
entry:
  call void @__irq_set_handler(i32 noundef %irq, void (%struct.irq_desc*)* noundef null, i32 noundef 0, i8* noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_alloc_irqs_hierarchy(%struct.irq_domain* noundef %domain, i32 noundef %irq_base, i32 noundef %nr_irqs, i8* noundef %arg) local_unnamed_addr #1 {
entry:
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 2
  %0 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %alloc = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %0, i64 0, i32 5
  %1 = load i32 (%struct.irq_domain*, i32, i32, i8*)*, i32 (%struct.irq_domain*, i32, i32, i8*)** %alloc, align 8
  %tobool.not = icmp eq i32 (%struct.irq_domain*, i32, i32, i8*)* %1, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 %1(%struct.irq_domain* noundef %domain, i32 noundef %irq_base, i32 noundef %nr_irqs, i8* noundef %arg) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -38, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__irq_domain_alloc_irqs(%struct.irq_domain* noundef %domain, i32 noundef %irq_base, i32 noundef %nr_irqs, i32 noundef %node, i8* noundef %arg, i1 noundef %realloc, %struct.irq_affinity_desc* noundef %affinity) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.irq_domain* %domain, null
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %0 = load %struct.irq_domain*, %struct.irq_domain** @irq_default_domain, align 8
  %tobool.not = icmp eq %struct.irq_domain* %0, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !11

do.end:                                           ; preds = %if.then
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 1456; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !27
  br label %cleanup

if.end26:                                         ; preds = %if.then, %entry
  %domain.addr.0 = phi %struct.irq_domain* [ %domain, %entry ], [ %0, %if.then ]
  %cmp29 = icmp sgt i32 %irq_base, -1
  %or.cond = and i1 %cmp29, %realloc
  br i1 %or.cond, label %if.end37, label %if.else

if.else:                                          ; preds = %if.end26
  %call = call i32 @irq_domain_alloc_descs(i32 noundef %irq_base, i32 noundef %nr_irqs, i64 noundef 0, i32 noundef %node, %struct.irq_affinity_desc* noundef %affinity) #16
  %cmp32 = icmp slt i32 %call, 0
  br i1 %cmp32, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.end26, %if.else
  %virq.0 = phi i32 [ %call, %if.else ], [ %irq_base, %if.end26 ]
  %call38 = call fastcc i32 @irq_domain_alloc_irq_data(%struct.irq_domain* noundef nonnull %domain.addr.0, i32 noundef %virq.0, i32 noundef %nr_irqs) #16
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end42, label %out_free_desc

if.end42:                                         ; preds = %if.end37
  call void @mutex_lock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  %call43 = call i32 @irq_domain_alloc_irqs_hierarchy(%struct.irq_domain* noundef nonnull %domain.addr.0, i32 noundef %virq.0, i32 noundef %nr_irqs, i8* noundef %arg) #16
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %out_free_irq_data, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end42
  %cmp4895.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp4895.not, label %for.end61, label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.cond54.preheader, label %for.body

for.cond54.preheader:                             ; preds = %for.cond
  br i1 %cmp4895.not, label %for.end61, label %for.body57

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.096 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %add = add i32 %i.096, %virq.0
  %call50 = call fastcc i32 @irq_domain_trim_hierarchy(i32 noundef %add) #16
  %tobool51.not = icmp eq i32 %call50, 0
  %inc = add nuw i32 %i.096, 1
  br i1 %tobool51.not, label %for.cond, label %out_free_irq_data

for.body57:                                       ; preds = %for.cond54.preheader, %for.body57
  %i.198 = phi i32 [ %inc60, %for.body57 ], [ 0, %for.cond54.preheader ]
  %add58 = add i32 %i.198, %virq.0
  call fastcc void @irq_domain_insert_irq(i32 noundef %add58) #16
  %inc60 = add nuw i32 %i.198, 1
  %exitcond100.not = icmp eq i32 %inc60, %nr_irqs
  br i1 %exitcond100.not, label %for.end61, label %for.body57

for.end61:                                        ; preds = %for.body57, %for.cond.preheader, %for.cond54.preheader
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  br label %cleanup

out_free_irq_data:                                ; preds = %for.body, %if.end42
  %ret.0 = phi i32 [ %call43, %if.end42 ], [ %call50, %for.body ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  call fastcc void @irq_domain_free_irq_data(i32 noundef %virq.0, i32 noundef %nr_irqs) #16
  br label %out_free_desc

out_free_desc:                                    ; preds = %if.end37, %out_free_irq_data
  %ret.1 = phi i32 [ %ret.0, %out_free_irq_data ], [ -12, %if.end37 ]
  call void @irq_free_descs(i32 noundef %virq.0, i32 noundef %nr_irqs) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else, %out_free_desc, %for.end61
  %retval.0 = phi i32 [ %ret.1, %out_free_desc ], [ %virq.0, %for.end61 ], [ -22, %do.end ], [ %call, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_domain_alloc_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) unnamed_addr #1 {
entry:
  %cmp26.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp26.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc9
  %i.027 = phi i32 [ %inc, %for.inc9 ], [ 0, %entry ]
  %add = add i32 %i.027, %virq
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %add) #17
  %domain1 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  store %struct.irq_domain* %domain, %struct.irq_domain** %domain1, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.body4, %for.body
  %irq_data.0 = phi %struct.irq_data* [ %call, %for.body ], [ %call5, %for.body4 ]
  %domain.pn = phi %struct.irq_domain* [ %domain, %for.body ], [ %parent.0, %for.body4 ]
  %parent.0.in = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain.pn, i64 0, i32 9
  %parent.0 = load %struct.irq_domain*, %struct.irq_domain** %parent.0.in, align 8
  %tobool.not = icmp eq %struct.irq_domain* %parent.0, null
  br i1 %tobool.not, label %for.inc9, label %for.body4

for.body4:                                        ; preds = %for.cond3
  %call5 = call fastcc %struct.irq_data* @irq_domain_insert_irq_data(%struct.irq_domain* noundef nonnull %parent.0, %struct.irq_data* noundef %irq_data.0) #16
  %tobool6.not = icmp eq %struct.irq_data* %call5, null
  br i1 %tobool6.not, label %if.then, label %for.cond3

if.then:                                          ; preds = %for.body4
  %add7 = add i32 %i.027, 1
  call fastcc void @irq_domain_free_irq_data(i32 noundef %virq, i32 noundef %add7) #16
  br label %cleanup

for.inc9:                                         ; preds = %for.cond3
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc9, %entry, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %entry ], [ 0, %for.inc9 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @irq_domain_trim_hierarchy(i32 noundef %virq) unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %virq) #17
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 4
  %0 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %tobool.not = icmp eq %struct.irq_chip* %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = bitcast %struct.irq_chip* %0 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef nonnull %1) #16
  br i1 %call2, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %irqd.0.in55 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 6
  %irqd.056 = load %struct.irq_data*, %struct.irq_data** %irqd.0.in55, align 8
  %tobool3.not57 = icmp eq %struct.irq_data* %irqd.056, null
  br i1 %tobool3.not57, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %irqd.060 = phi %struct.irq_data* [ %irqd.0, %for.inc ], [ %irqd.056, %for.cond.preheader ]
  %irq_data.059 = phi %struct.irq_data* [ %irqd.060, %for.inc ], [ %call, %for.cond.preheader ]
  %tail.058 = phi %struct.irq_data* [ %tail.1, %for.inc ], [ null, %for.cond.preheader ]
  %chip4 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irqd.060, i64 0, i32 4
  %2 = load %struct.irq_chip*, %struct.irq_chip** %chip4, align 8
  %tobool5 = icmp ne %struct.irq_chip* %2, null
  %tobool6 = icmp ne %struct.irq_data* %tail.058, null
  %or.cond = select i1 %tobool5, i1 %tobool6, i1 false
  %3 = bitcast %struct.irq_chip* %2 to i8*
  br i1 %or.cond, label %cleanup, label %if.end8

if.end8:                                          ; preds = %for.body
  %or.cond33 = select i1 %tobool5, i1 true, i1 %tobool6
  br i1 %or.cond33, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end8
  %call16 = call fastcc i1 @IS_ERR(i8* noundef %3) #16
  br i1 %call16, label %if.then17, label %for.inc

if.then17:                                        ; preds = %if.end14
  %call19 = call fastcc i64 @PTR_ERR(i8* noundef %3) #16
  %cmp.not = icmp eq i64 %call19, -107
  br i1 %cmp.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.then17, %if.end14
  %tail.1 = phi %struct.irq_data* [ %tail.058, %if.end14 ], [ %irq_data.059, %if.then17 ]
  %irqd.0.in = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irqd.060, i64 0, i32 6
  %irqd.0 = load %struct.irq_data*, %struct.irq_data** %irqd.0.in, align 8
  %tobool3.not = icmp eq %struct.irq_data* %irqd.0, null
  br i1 %tobool3.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool24.not = icmp eq %struct.irq_data* %tail.1, null
  br i1 %tobool24.not, label %cleanup, label %do.end

do.end:                                           ; preds = %for.end
  %parent_data27 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %tail.1, i64 0, i32 6
  %4 = load %struct.irq_data*, %struct.irq_data** %parent_data27, align 8
  %domain = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i64 0, i32 5
  %5 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %name = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %5, i64 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i32 noundef %virq, i8* noundef %6) #19
  %7 = load %struct.irq_data*, %struct.irq_data** %parent_data27, align 8
  store %struct.irq_data* null, %struct.irq_data** %parent_data27, align 8
  call fastcc void @__irq_domain_free_hierarchy(%struct.irq_data* noundef %7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end8, %for.body, %for.cond.preheader, %for.end, %entry, %lor.lhs.false, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ 0, %for.end ], [ 0, %for.cond.preheader ], [ -22, %for.body ], [ -22, %if.end8 ], [ -22, %if.then17 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_domain_insert_irq(i32 noundef %virq) unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %virq) #17
  %tobool.not19 = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %data.020 = phi %struct.irq_data* [ %6, %if.end ], [ %call, %entry ]
  %domain1 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.020, i64 0, i32 5
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain1, align 8
  %mapcount = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i64 0, i32 5
  %1 = load i32, i32* %mapcount, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %mapcount, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.020, i64 0, i32 2
  %2 = load i64, i64* %hwirq, align 8
  call fastcc void @irq_domain_set_mapping(%struct.irq_domain* noundef %0, i64 noundef %2, %struct.irq_data* noundef nonnull %data.020) #16
  %name = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i64 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %tobool2.not = icmp eq i8* %3, null
  br i1 %tobool2.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.020, i64 0, i32 4
  %4 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %tobool3.not = icmp eq %struct.irq_chip* %4, null
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %name5 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %4, i64 0, i32 1
  %5 = load i8*, i8** %name5, align 8
  store i8* %5, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.020, i64 0, i32 6
  %6 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool.not = icmp eq %struct.irq_data* %6, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  call fastcc void @irq_clear_status_flags(i32 noundef %virq) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_domain_free_irq_data(i32 noundef %virq, i32 noundef %nr_irqs) unnamed_addr #1 {
entry:
  %cmp9.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp9.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.010 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %add = add i32 %i.010, %virq
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %add) #17
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  store %struct.irq_data* null, %struct.irq_data** %parent_data, align 8
  %domain = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  store %struct.irq_domain* null, %struct.irq_domain** %domain, align 8
  call fastcc void @__irq_domain_free_hierarchy(%struct.irq_data* noundef %0) #16
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_free_descs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_push_irq(%struct.irq_domain* noundef %domain, i32 noundef %virq, i8* noundef %arg) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %virq) #17
  %call1 = call %struct.irq_desc* @irq_to_desc(i32 noundef %virq) #17
  %tobool.not = icmp eq %struct.irq_desc* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call1, i64 0, i32 4
  %0 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool2.not = icmp eq %struct.irqaction* %0, null
  br i1 %tobool2.not, label %if.end21, label %if.then10, !prof !7

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 1557; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !28
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cmp = icmp eq %struct.irq_domain* %domain, null
  br i1 %cmp, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end21
  %call26 = call fastcc i1 @irq_domain_is_hierarchy(%struct.irq_domain* noundef nonnull %domain) #16
  br i1 %call26, label %if.end53, label %if.then41, !prof !7

if.then41:                                        ; preds = %if.end24
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 1563; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !29
  br label %cleanup

if.end53:                                         ; preds = %if.end24
  %tobool54.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool54.not, label %cleanup, label %if.end56

if.end56:                                         ; preds = %if.end53
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 9
  %1 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %domain57 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  %2 = load %struct.irq_domain*, %struct.irq_domain** %domain57, align 8
  %cmp58.not = icmp eq %struct.irq_domain* %1, %2
  br i1 %cmp58.not, label %if.end61, label %cleanup

if.end61:                                         ; preds = %if.end56
  %call63 = call fastcc i8* @kzalloc_node(i64 noundef 56) #16
  %3 = bitcast i8* %call63 to %struct.irq_data*
  %tobool64.not = icmp eq i8* %call63, null
  br i1 %tobool64.not, label %cleanup, label %if.end66

if.end66:                                         ; preds = %if.end61
  call void @mutex_lock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  %4 = bitcast %struct.irq_data* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %call63, i8* noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 6
  %5 = bitcast %struct.irq_data** %parent_data to i8**
  store i8* %call63, i8** %5, align 8
  store %struct.irq_domain* %domain, %struct.irq_domain** %domain57, align 8
  %mask = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 0
  store i32 0, i32* %mask, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 2
  store i64 0, i64* %hwirq, align 8
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 4
  store %struct.irq_chip* null, %struct.irq_chip** %chip, align 8
  %chip_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 7
  store i8* null, i8** %chip_data, align 8
  %call68 = call i32 @irq_domain_alloc_irqs_hierarchy(%struct.irq_domain* noundef nonnull %domain, i32 noundef %virq, i32 noundef 1, i8* noundef %arg) #16
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.end66
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) %call63, i64 56, i1 false)
  call void @kfree(i8* noundef nonnull %call63) #17
  br label %error

if.end71:                                         ; preds = %if.end66
  call fastcc void @irq_domain_fix_revmap(%struct.irq_data* noundef nonnull %3) #16
  %6 = load i64, i64* %hwirq, align 8
  call fastcc void @irq_domain_set_mapping(%struct.irq_domain* noundef nonnull %domain, i64 noundef %6, %struct.irq_data* noundef nonnull %call) #16
  br label %error

error:                                            ; preds = %if.end71, %if.then70
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.then10, %if.end61, %if.end56, %if.end53, %if.end21, %entry, %error
  %retval.0 = phi i32 [ %call68, %error ], [ -22, %entry ], [ -16, %if.then10 ], [ -22, %if.end21 ], [ -22, %if.then41 ], [ -22, %if.end53 ], [ -22, %if.end56 ], [ -12, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_desc* @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_domain_fix_revmap(%struct.irq_data* noundef %d) unnamed_addr #1 {
entry:
  %domain = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 5
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %revmap_mutex = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %revmap_mutex) #17
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 2
  %1 = load i64, i64* %hwirq, align 8
  %2 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %revmap_size = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %2, i64 0, i32 11
  %3 = load i32, i32* %revmap_size, align 8
  %conv = zext i32 %3 to i64
  %cmp = icmp ult i64 %1, %conv
  br i1 %cmp, label %do.body, label %if.else31

do.body:                                          ; preds = %entry
  %4 = ptrtoint %struct.irq_data* %d to i64
  %arrayidx21 = getelementptr %struct.irq_domain, %struct.irq_domain* %2, i64 0, i32 14, i64 %1
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.irq_data** elementtype(%struct.irq_data*) %arrayidx21, i64 %4) #18, !srcloc !30
  br label %if.end39

if.else31:                                        ; preds = %entry
  %revmap_tree = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %2, i64 0, i32 12
  %call34 = call i8** @radix_tree_lookup_slot(%struct.xarray* noundef %revmap_tree, i64 noundef %1) #17
  %tobool.not = icmp eq i8** %call34, null
  br i1 %tobool.not, label %if.end39, label %if.then35

if.then35:                                        ; preds = %if.else31
  %5 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %revmap_tree37 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %5, i64 0, i32 12
  %6 = bitcast %struct.irq_data* %d to i8*
  call void @radix_tree_replace_slot(%struct.xarray* noundef %revmap_tree37, i8** noundef nonnull %call34, i8* noundef %6) #17
  br label %if.end39

if.end39:                                         ; preds = %if.else31, %if.then35, %do.body
  %7 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %revmap_mutex41 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %7, i64 0, i32 13
  call void @mutex_unlock(%struct.mutex* noundef %revmap_mutex41) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_pop_irq(%struct.irq_domain* noundef %domain, i32 noundef %virq) local_unnamed_addr #1 {
entry:
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %virq) #17
  %call1 = call %struct.irq_desc* @irq_to_desc(i32 noundef %virq) #17
  %tobool.not = icmp eq %struct.irq_desc* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %action = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %call1, i64 0, i32 4
  %0 = load %struct.irqaction*, %struct.irqaction** %action, align 8
  %tobool2.not = icmp eq %struct.irqaction* %0, null
  br i1 %tobool2.not, label %if.end21, label %if.then10, !prof !7

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 1639; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !31
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cmp = icmp eq %struct.irq_domain* %domain, null
  %tobool25.not = icmp eq %struct.irq_data* %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end21
  %call28 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef nonnull %domain, i32 noundef %virq) #16
  %cmp30.not = icmp eq %struct.irq_data* %call, %call28
  br i1 %cmp30.not, label %if.end56, label %if.then44, !prof !7

if.then44:                                        ; preds = %if.end27
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 1651; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !32
  br label %cleanup

if.end56:                                         ; preds = %if.end27
  %domain58 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 5
  %1 = load %struct.irq_domain*, %struct.irq_domain** %domain58, align 8
  %cmp59.not = icmp eq %struct.irq_domain* %1, %domain
  br i1 %cmp59.not, label %if.end85, label %if.then73, !prof !7

if.then73:                                        ; preds = %if.end56
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 1654; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !33
  br label %cleanup

if.end85:                                         ; preds = %if.end56
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 6
  %2 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool87.not = icmp eq %struct.irq_data* %2, null
  br i1 %tobool87.not, label %if.then102, label %if.end114, !prof !11

if.then102:                                       ; preds = %if.end85
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/irq/irqdomain.c\22; .popsection; .long 14472b - 14470b; .short 1658; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !34
  br label %cleanup

if.end114:                                        ; preds = %if.end85
  call void @mutex_lock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  store %struct.irq_data* null, %struct.irq_data** %parent_data, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 2
  %3 = load i64, i64* %hwirq, align 8
  call fastcc void @irq_domain_clear_mapping(%struct.irq_domain* noundef nonnull %domain, i64 noundef %3) #16
  call fastcc void @irq_domain_free_irqs_hierarchy(%struct.irq_domain* noundef nonnull %domain, i32 noundef %virq, i32 noundef 1) #16
  %4 = bitcast %struct.irq_data* %call to i8*
  %5 = bitcast %struct.irq_data* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  call fastcc void @irq_domain_fix_revmap(%struct.irq_data* noundef nonnull %call) #16
  call void @mutex_unlock(%struct.mutex* noundef nonnull @irq_domain_mutex) #17
  call void @kfree(i8* noundef nonnull %5) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %if.then73, %if.then44, %if.then10, %if.end21, %entry, %if.end114
  %retval.0 = phi i32 [ 0, %if.end114 ], [ -22, %entry ], [ -16, %if.then10 ], [ -22, %if.end21 ], [ -22, %if.then44 ], [ -22, %if.then73 ], [ -22, %if.then102 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_domain_clear_mapping(%struct.irq_domain* noundef %domain, i64 noundef %hwirq) unnamed_addr #1 {
entry:
  %revmap_mutex = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 13
  call void @mutex_lock(%struct.mutex* noundef %revmap_mutex) #17
  %revmap_size = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 11
  %0 = load i32, i32* %revmap_size, align 8
  %conv = zext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, %hwirq
  br i1 %cmp, label %do.body8, label %if.else25

do.body8:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 14, i64 %hwirq
  store volatile %struct.irq_data* null, %struct.irq_data** %arrayidx, align 8
  br label %if.end27

if.else25:                                        ; preds = %entry
  %revmap_tree = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 12
  %call26 = call i8* @radix_tree_delete(%struct.xarray* noundef %revmap_tree, i64 noundef %hwirq) #17
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %do.body8
  call void @mutex_unlock(%struct.mutex* noundef %revmap_mutex) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_domain_free_irqs_hierarchy(%struct.irq_domain* noundef %domain, i32 noundef %irq_base, i32 noundef %nr_irqs) unnamed_addr #1 {
entry:
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 2
  %0 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %free = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %0, i64 0, i32 6
  %1 = load void (%struct.irq_domain*, i32, i32)*, void (%struct.irq_domain*, i32, i32)** %free, align 8
  %tobool.not = icmp ne void (%struct.irq_domain*, i32, i32)* %1, null
  %cmp15 = icmp ne i32 %nr_irqs, 0
  %or.cond = and i1 %tobool.not, %cmp15
  br i1 %or.cond, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.inc
  %i.016 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %add = add i32 %i.016, %irq_base
  %call = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %add) #16
  %tobool1.not = icmp eq %struct.irq_data* %call, null
  br i1 %tobool1.not, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.body
  %2 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %free4 = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %2, i64 0, i32 6
  %3 = load void (%struct.irq_domain*, i32, i32)*, void (%struct.irq_domain*, i32, i32)** %free4, align 8
  call void %3(%struct.irq_domain* noundef %domain, i32 noundef %add, i32 noundef 1) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then2
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_domain_remove_irq(i32 noundef %virq) unnamed_addr #1 {
entry:
  call fastcc void @irq_set_status_flags(i32 noundef %virq) #16
  call fastcc void @irq_set_chip_and_handler(i32 noundef %virq) #16
  call void @synchronize_irq(i32 noundef %virq) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %call = call %struct.irq_data* @irq_get_irq_data(i32 noundef %virq) #17
  %tobool.not13 = icmp eq %struct.irq_data* %call, null
  br i1 %tobool.not13, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %data.014 = phi %struct.irq_data* [ %3, %for.body ], [ %call, %entry ]
  %domain1 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.014, i64 0, i32 5
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain1, align 8
  %hwirq2 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.014, i64 0, i32 2
  %1 = load i64, i64* %hwirq2, align 8
  %mapcount = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i64 0, i32 5
  %2 = load i32, i32* %mapcount, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %mapcount, align 4
  call fastcc void @irq_domain_clear_mapping(%struct.irq_domain* noundef %0, i64 noundef %1) #16
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data.014, i64 0, i32 6
  %3 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool.not = icmp eq %struct.irq_data* %3, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* nocapture noundef readonly %domain, i32 noundef %irq_base, i32 noundef %nr_irqs, i8* noundef %arg) local_unnamed_addr #1 {
entry:
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 9
  %0 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %tobool.not = icmp eq %struct.irq_domain* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @irq_domain_alloc_irqs_hierarchy(%struct.irq_domain* noundef nonnull %0, i32 noundef %irq_base, i32 noundef %nr_irqs, i8* noundef %arg) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -38, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @irq_domain_activate_irq(%struct.irq_data* noundef %irq_data, i1 noundef %reserve) local_unnamed_addr #1 {
entry:
  %call = call fastcc i1 @irqd_is_activated(%struct.irq_data* noundef %irq_data) #16
  br i1 %call, label %if.then3, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @__irq_domain_activate_irq(%struct.irq_data* noundef %irq_data, i1 noundef %reserve) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry, %if.end
  call fastcc void @irqd_set_activated(%struct.irq_data* noundef %irq_data) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %ret.011 = phi i32 [ 0, %if.then3 ], [ %call1, %if.end ]
  ret i32 %ret.011
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irqd_is_activated(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #0 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 512
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__irq_domain_activate_irq(%struct.irq_data* noundef %irqd, i1 noundef %reserve) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.irq_data* %irqd, null
  br i1 %tobool.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %domain = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irqd, i64 0, i32 5
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %tobool1.not = icmp eq %struct.irq_domain* %0, null
  br i1 %tobool1.not, label %if.end24, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irqd, i64 0, i32 6
  %1 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool4.not = icmp eq %struct.irq_data* %1, null
  br i1 %tobool4.not, label %land.lhs.true9, label %if.end

if.end:                                           ; preds = %if.then
  %call = call fastcc i32 @__irq_domain_activate_irq(%struct.irq_data* noundef nonnull %1, i1 noundef %reserve) #16
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %if.end24

land.lhs.true9:                                   ; preds = %if.then, %if.end
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i64 0, i32 2
  %2 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %activate = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %2, i64 0, i32 7
  %3 = load i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)** %activate, align 8
  %tobool10.not = icmp eq i32 (%struct.irq_domain*, %struct.irq_data*, i1)* %3, null
  br i1 %tobool10.not, label %if.end24, label %if.then11

if.then11:                                        ; preds = %land.lhs.true9
  %call15 = call i32 %3(%struct.irq_domain* noundef nonnull %0, %struct.irq_data* noundef nonnull %irqd, i1 noundef %reserve) #17
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end24, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then11
  %4 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool19.not = icmp eq %struct.irq_data* %4, null
  br i1 %tobool19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %land.lhs.true17
  call fastcc void @__irq_domain_deactivate_irq(%struct.irq_data* noundef nonnull %4) #16
  br label %if.end24

if.end24:                                         ; preds = %if.end, %land.lhs.true9, %if.then20, %land.lhs.true17, %if.then11, %land.lhs.true, %entry
  %ret.2 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %call, %if.end ], [ %call15, %if.then20 ], [ %call15, %land.lhs.true17 ], [ 0, %if.then11 ], [ 0, %land.lhs.true9 ]
  ret i32 %ret.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_set_activated(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #7 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %or = or i32 %1, 512
  store i32 %or, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @irq_domain_deactivate_irq(%struct.irq_data* noundef %irq_data) local_unnamed_addr #1 {
entry:
  %call = call fastcc i1 @irqd_is_activated(%struct.irq_data* noundef %irq_data) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__irq_domain_deactivate_irq(%struct.irq_data* noundef %irq_data) #16
  call fastcc void @irqd_clr_activated(%struct.irq_data* noundef %irq_data) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__irq_domain_deactivate_irq(%struct.irq_data* noundef %irq_data) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.irq_data* %irq_data, null
  br i1 %tobool.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %domain = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data, i64 0, i32 5
  %0 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8
  %tobool1.not = icmp eq %struct.irq_domain* %0, null
  br i1 %tobool1.not, label %if.end12, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %0, i64 0, i32 2
  %1 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %ops, align 8
  %deactivate = getelementptr inbounds %struct.irq_domain_ops, %struct.irq_domain_ops* %1, i64 0, i32 8
  %2 = load void (%struct.irq_domain*, %struct.irq_data*)*, void (%struct.irq_domain*, %struct.irq_data*)** %deactivate, align 8
  %tobool4.not = icmp eq void (%struct.irq_domain*, %struct.irq_data*)* %2, null
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void %2(%struct.irq_domain* noundef nonnull %0, %struct.irq_data* noundef nonnull %irq_data) #17
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data, i64 0, i32 6
  %3 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %tobool8.not = icmp eq %struct.irq_data* %3, null
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  call fastcc void @__irq_domain_deactivate_irq(%struct.irq_data* noundef nonnull %3) #16
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then9, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @irqd_clr_activated(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #7 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, -513
  store i32 %and, i32* %state_use_accessors, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @irq_domain_is_msi_remap(%struct.irq_domain* nocapture noundef readonly %domain) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 32
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #9 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return() unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__irq_domain_add.unknown_domains, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__irq_domain_add.unknown_domains, i64 0, i32 0)) #18, !srcloc !36
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @irq_domain_list, %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @irq_domain_list, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #4 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(%struct.xarray* noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @irqd_get_trigger_type(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #0 {
entry:
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 3
  %0 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %0, i64 0, i32 0
  %1 = load i32, i32* %state_use_accessors, align 8
  %and = and i32 %1, 15
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_status_flags(i32 noundef %irq) unnamed_addr #1 {
entry:
  call void @irq_modify_status(i32 noundef %irq, i64 noundef 0, i64 noundef 2048) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @irq_set_chip_and_handler(i32 noundef %irq) unnamed_addr #1 {
entry:
  call void @irq_set_chip_and_handler_name(i32 noundef %irq, %struct.irq_chip* noundef null, void (%struct.irq_desc*)* noundef null, i8* noundef null) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, %struct.irq_chip* noundef, void (%struct.irq_desc*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  call void @rcu_read_unlock_strict() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_data* @irq_domain_insert_irq_data(%struct.irq_domain* noundef %domain, %struct.irq_data* nocapture noundef %child) unnamed_addr #1 {
entry:
  %call1 = call fastcc i8* @kzalloc_node(i64 noundef 56) #16
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %child, i64 0, i32 6
  %0 = bitcast %struct.irq_data** %parent_data to i8**
  store i8* %call1, i8** %0, align 8
  %irq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %child, i64 0, i32 1
  %1 = load i32, i32* %irq, align 4
  %irq2 = getelementptr inbounds i8, i8* %call1, i64 4
  %2 = bitcast i8* %irq2 to i32*
  store i32 %1, i32* %2, align 4
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %child, i64 0, i32 3
  %3 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8
  %common3 = getelementptr inbounds i8, i8* %call1, i64 16
  %4 = bitcast i8* %common3 to %struct.irq_common_data**
  store %struct.irq_common_data* %3, %struct.irq_common_data** %4, align 8
  %domain4 = getelementptr inbounds i8, i8* %call1, i64 32
  %5 = bitcast i8* %domain4 to %struct.irq_domain**
  store %struct.irq_domain* %domain, %struct.irq_domain** %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = bitcast i8* %call1 to %struct.irq_data*
  ret %struct.irq_data* %6
}

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
define internal fastcc void @__irq_domain_free_hierarchy(%struct.irq_data* noundef %irq_data) unnamed_addr #1 {
entry:
  %tobool.not4 = icmp eq %struct.irq_data* %irq_data, null
  br i1 %tobool.not4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %irq_data.addr.05 = phi %struct.irq_data* [ %0, %while.body ], [ %irq_data, %entry ]
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %irq_data.addr.05, i64 0, i32 6
  %0 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %1 = bitcast %struct.irq_data* %irq_data.addr.05 to i8*
  call void @kfree(i8* noundef nonnull %1) #17
  %tobool.not = icmp eq %struct.irq_data* %0, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8** @radix_tree_lookup_slot(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_replace_slot(%struct.xarray* noundef, i8** noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @radix_tree_delete(%struct.xarray* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #14 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2153675313}
!9 = !{i64 2153679959}
!10 = !{i64 2153688997}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153728132}
!13 = !{i64 2153730083}
!14 = !{i64 2153736112}
!15 = !{i64 2153720655}
!16 = !{i64 2153740660}
!17 = !{!"auto-init"}
!18 = !{i64 2153750602}
!19 = !{i64 2153796619}
!20 = !{i64 2153755640}
!21 = !{i64 2153726006}
!22 = !{i64 2153726403}
!23 = !{i64 2153761081}
!24 = !{i64 2153766527}
!25 = !{i64 2153762921}
!26 = !{i64 2153764777}
!27 = !{i64 2153771082}
!28 = !{i64 2153781989}
!29 = !{i64 2153783640}
!30 = !{i64 2153776818}
!31 = !{i64 2153785578}
!32 = !{i64 2153791290}
!33 = !{i64 2153792925}
!34 = !{i64 2153794544}
!35 = !{i64 2153767337}
!36 = !{i64 2147873502, i64 2147874150, i64 2147874180, i64 2147874212, i64 2147874246, i64 2147874282, i64 2147874307}
!37 = !{i64 2149588240}
!38 = !{i64 2149588457}
