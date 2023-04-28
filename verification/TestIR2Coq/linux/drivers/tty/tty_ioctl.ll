; ModuleID = 'drivers/tty/tty_ioctl.c'
source_filename = "drivers/tty/tty_ioctl.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.66, %struct.anon.67, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
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
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.2, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.63 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.50, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.71, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.69 = type { %struct.callback_head }
%union.anon.70 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.53 }
%union.anon.53 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.54, %union.anon.55 }
%union.anon.54 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.55 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.59 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.57, %struct.qspinlock }
%union.anon.57 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, {}*, {}*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.anon.66 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.67 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.65, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.65 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.termios = type { i32, i32, i32, i32, i8, [19 x i8] }
%struct.termios2 = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termio = type { i16, i16, i16, i16, i8, [8 x i8] }

@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_chars_in_buffer(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %chars_in_buffer = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 11
  %chars_in_buffer1 = bitcast {}** %chars_in_buffer to i32 (%struct.tty_struct*)**
  %1 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %chars_in_buffer1, align 8
  %tobool.not = icmp eq i32 (%struct.tty_struct*)* %1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.tty_struct* noundef %tty) #10
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_write_room(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %write_room = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 10
  %write_room1 = bitcast {}** %write_room to i32 (%struct.tty_struct*)**
  %1 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %write_room1, align 8
  %tobool.not = icmp eq i32 (%struct.tty_struct*)* %1, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.tty_struct* noundef %tty) #10
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 2048, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_driver_flush_buffer(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %flush_buffer = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 21
  %1 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer, align 8
  %tobool.not = icmp eq void (%struct.tty_struct*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %1(%struct.tty_struct* noundef %tty) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_unthrottle(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_write(%struct.rw_semaphore* noundef %termios_rwsem) #10
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %call = call fastcc i1 @test_and_clear_bit(i64* noundef %flags) #11
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %unthrottle = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 16
  %1 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %unthrottle, align 8
  %tobool.not = icmp eq void (%struct.tty_struct*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %1(%struct.tty_struct* noundef %tty) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %flow_change = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 23
  store i32 0, i32* %flow_change, align 8
  call void @up_write(%struct.rw_semaphore* noundef %termios_rwsem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #10
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_throttle_safe(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %throttle_mutex = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 10
  call void @mutex_lock(%struct.mutex* noundef %throttle_mutex) #10
  %call = call fastcc i1 @tty_throttled(%struct.tty_struct* noundef %tty) #11
  br i1 %call, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %flow_change = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 23
  %0 = load i32, i32* %flow_change, align 8
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.else, label %if.end6

if.else:                                          ; preds = %if.then
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @set_bit(i64* noundef %flags) #11
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %1 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %throttle = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %1, i64 0, i32 15
  %2 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %throttle, align 8
  %tobool.not = icmp eq void (%struct.tty_struct*)* %2, null
  br i1 %tobool.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.else
  call void %2(%struct.tty_struct* noundef %tty) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then2, %if.else, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then2 ], [ 0, %if.else ], [ 1, %if.then ]
  call void @mutex_unlock(%struct.mutex* noundef %throttle_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @tty_throttled(%struct.tty_struct* noundef %tty) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %0 = load volatile i64, i64* %flags, align 8
  %conv.i1 = and i64 %0, 1
  %tobool = icmp ne i64 %conv.i1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_unthrottle_safe(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %throttle_mutex = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 10
  call void @mutex_lock(%struct.mutex* noundef %throttle_mutex) #10
  %call = call fastcc i1 @tty_throttled(%struct.tty_struct* noundef %tty) #11
  br i1 %call, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %flow_change = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 23
  %0 = load i32, i32* %flow_change, align 8
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %if.else, label %if.end6

if.else:                                          ; preds = %if.then
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  call fastcc void @clear_bit(i64* noundef %flags) #11
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %1 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %unthrottle = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %1, i64 0, i32 16
  %2 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %unthrottle, align 8
  %tobool.not = icmp eq void (%struct.tty_struct*)* %2, null
  br i1 %tobool.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.else
  call void %2(%struct.tty_struct* noundef %tty) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then2, %if.else, %entry
  %ret.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.else ], [ 0, %entry ], [ 1, %if.then ]
  call void @mutex_unlock(%struct.mutex* noundef %throttle_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_wait_until_sent(%struct.tty_struct* noundef %tty, i64 noundef %timeout) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %tobool.not = icmp eq i64 %timeout, 0
  %spec.store.select57 = select i1 %tobool.not, i64 9223372036854775807, i64 %timeout
  %call = call i32 @tty_chars_in_buffer(%struct.tty_struct* noundef %tty) #11
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end44, label %if.then15

if.then15:                                        ; preds = %entry
  %0 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !7
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #10
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 26
  %call1792 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %write_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call1993 = call i32 @tty_chars_in_buffer(%struct.tty_struct* noundef %tty) #11
  %tobool2094.not = icmp eq i32 %call1993, 0
  br i1 %tobool2094.not, label %for.end, label %if.end37

if.end37:                                         ; preds = %if.then15, %cleanup
  %spec.store.select58100 = phi i64 [ %spec.store.select58, %cleanup ], [ %spec.store.select57, %if.then15 ]
  %call1799 = phi i64 [ %call17, %cleanup ], [ %call1792, %if.then15 ]
  %tobool38.not = icmp eq i64 %call1799, 0
  br i1 %tobool38.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end37
  %call41 = call i64 @schedule_timeout(i64 noundef %spec.store.select58100) #10
  %call17 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %write_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call19 = call i32 @tty_chars_in_buffer(%struct.tty_struct* noundef %tty) #11
  %tobool20 = icmp ne i32 %call19, 0
  %lnot21 = xor i1 %tobool20, true
  %tobool25 = icmp ne i64 %call41, 0
  %or.cond56 = select i1 %tobool20, i1 true, i1 %tobool25
  %spec.store.select58 = select i1 %or.cond56, i64 %call41, i64 1
  %tobool31.not = icmp eq i64 %spec.store.select58, 0
  %1 = select i1 %lnot21, i1 true, i1 %tobool31.not
  br i1 %1, label %for.end, label %if.end37

for.end:                                          ; preds = %cleanup, %if.then15
  %spec.store.select58.lcssa = phi i64 [ %spec.store.select57, %if.then15 ], [ %spec.store.select58, %cleanup ]
  call void @finish_wait(%struct.wait_queue_head* noundef %write_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %if.end37, %for.end
  %__ret16.184 = phi i64 [ %spec.store.select58.lcssa, %for.end ], [ %call1799, %if.end37 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #12
  br label %if.end44

if.end44:                                         ; preds = %__out, %entry
  %__ret.0 = phi i64 [ %spec.store.select57, %entry ], [ %__ret16.184, %__out ]
  %cmp = icmp slt i64 %__ret.0, 1
  br i1 %cmp, label %if.end55, label %if.end47

if.end47:                                         ; preds = %if.end44
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %2 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %wait_until_sent = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %2, i64 0, i32 23
  %3 = load void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i32)** %wait_until_sent, align 8
  %tobool51.not = icmp eq void (%struct.tty_struct*, i32)* %3, null
  br i1 %tobool51.not, label %if.end55, label %if.then52

if.then52:                                        ; preds = %if.end47
  %cmp48 = icmp eq i64 %__ret.0, 9223372036854775807
  %4 = trunc i64 %__ret.0 to i32
  %conv = select i1 %cmp48, i32 0, i32 %4
  call void %3(%struct.tty_struct* noundef %tty, i32 noundef %conv) #10
  br label %if.end55

if.end55:                                         ; preds = %if.end44, %if.then52, %if.end47
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @tty_termios_copy_hw(%struct.ktermios* nocapture noundef %new, %struct.ktermios* nocapture noundef readonly %old) local_unnamed_addr #5 {
entry:
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %new, i64 0, i32 2
  %0 = load i32, i32* %c_cflag, align 4
  %and = and i32 %0, 3200
  store i32 %and, i32* %c_cflag, align 4
  %c_cflag1 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old, i64 0, i32 2
  %1 = load i32, i32* %c_cflag1, align 4
  %and2 = and i32 %1, -3201
  %or = or i32 %and2, %and
  store i32 %or, i32* %c_cflag, align 4
  %c_ispeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old, i64 0, i32 6
  %2 = load i32, i32* %c_ispeed, align 4
  %c_ispeed4 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %new, i64 0, i32 6
  store i32 %2, i32* %c_ispeed4, align 4
  %c_ospeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old, i64 0, i32 7
  %3 = load i32, i32* %c_ospeed, align 4
  %c_ospeed5 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %new, i64 0, i32 7
  store i32 %3, i32* %c_ospeed5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @tty_termios_hw_change(%struct.ktermios* nocapture noundef readonly %a, %struct.ktermios* nocapture noundef readonly %b) local_unnamed_addr #6 {
entry:
  %c_ispeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %a, i64 0, i32 6
  %0 = load i32, i32* %c_ispeed, align 4
  %c_ispeed1 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %b, i64 0, i32 6
  %1 = load i32, i32* %c_ispeed1, align 4
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %c_ospeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %a, i64 0, i32 7
  %2 = load i32, i32* %c_ospeed, align 4
  %c_ospeed2 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %b, i64 0, i32 7
  %3 = load i32, i32* %c_ospeed2, align 4
  %cmp3.not = icmp eq i32 %2, %3
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %a, i64 0, i32 2
  %4 = load i32, i32* %c_cflag, align 4
  %c_cflag4 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %b, i64 0, i32 2
  %5 = load i32, i32* %c_cflag4, align 4
  %xor = xor i32 %5, %4
  %and = and i32 %xor, -3201
  %tobool.not = icmp ne i32 %and, 0
  %. = zext i1 %tobool.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8 @tty_get_char_size(i32 noundef %cflag) local_unnamed_addr #7 {
entry:
  %0 = trunc i32 %cflag to i8
  %1 = lshr i8 %0, 4
  %switch.idx.cast = and i8 %1, 3
  %switch.offset = add nuw nsw i8 %switch.idx.cast, 5
  ret i8 %switch.offset
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8 @tty_get_frame_size(i32 noundef %cflag) local_unnamed_addr #7 {
entry:
  %call = call i8 @tty_get_char_size(i32 noundef %cflag) #11
  %and = and i32 %cflag, 64
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i8 2, i8 3
  %and2 = lshr i32 %cflag, 8
  %0 = trunc i32 %and2 to i8
  %1 = and i8 %0, 1
  %spec.select = add nuw nsw i8 %1, %spec.select.v
  %bits.1 = add i8 %spec.select, %call
  ret i8 %bits.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_set_termios(%struct.tty_struct* noundef %tty, %struct.ktermios* nocapture noundef readonly %new_termios) local_unnamed_addr #0 {
entry:
  %old_termios = alloca %struct.ktermios, align 4
  %0 = bitcast %struct.ktermios* %old_termios to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %0) #12
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %1 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %1, i64 0, i32 10
  %2 = load i16, i16* %type, align 8
  %cmp = icmp eq i16 %2, 4
  br i1 %cmp, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %entry
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %1, i64 0, i32 11
  %3 = load i16, i16* %subtype, align 2
  %cmp4 = icmp eq i16 %3, 1
  br i1 %cmp4, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_ioctl.c\22; .popsection; .long 14472b - 14470b; .short 344; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.rhs
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_write(%struct.rw_semaphore* noundef %termios_rwsem) #10
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  %4 = bitcast %struct.ktermios* %termios to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(44) %0, i8* noundef align 8 dereferenceable(44) %4, i64 44, i1 false)
  %5 = bitcast %struct.ktermios* %new_termios to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(44) %4, i8* noundef align 4 dereferenceable(44) %5, i64 44, i1 false)
  call fastcc void @unset_locked_termios(%struct.tty_struct* noundef %tty, %struct.ktermios* noundef nonnull %old_termios) #11
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %6 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %set_termios = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %6, i64 0, i32 14
  %7 = load void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*, %struct.ktermios*)** %set_termios, align 8
  %tobool21.not = icmp eq void (%struct.tty_struct*, %struct.ktermios*)* %7, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  call void %7(%struct.tty_struct* noundef %tty, %struct.ktermios* noundef nonnull %old_termios) #10
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @tty_termios_copy_hw(%struct.ktermios* noundef %termios, %struct.ktermios* noundef nonnull %old_termios) #11
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22
  %call = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* noundef %tty) #10
  %cmp27.not = icmp eq %struct.tty_ldisc* %call, null
  br i1 %cmp27.not, label %if.end37, label %if.then29

if.then29:                                        ; preds = %if.end26
  %ops30 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %call, i64 0, i32 0
  %8 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops30, align 8
  %set_termios31 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %8, i64 0, i32 10
  %9 = load void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*, %struct.ktermios*)** %set_termios31, align 8
  %tobool32.not = icmp eq void (%struct.tty_struct*, %struct.ktermios*)* %9, null
  br i1 %tobool32.not, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.then29
  call void %9(%struct.tty_struct* noundef %tty, %struct.ktermios* noundef nonnull %old_termios) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then29
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call) #10
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end26
  call void @up_write(%struct.rw_semaphore* noundef %termios_rwsem) #10
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %0) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @unset_locked_termios(%struct.tty_struct* nocapture noundef %tty, %struct.ktermios* nocapture noundef readonly %old) unnamed_addr #9 {
entry:
  %c_iflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 0
  %0 = load i32, i32* %c_iflag, align 4
  %c_iflag2 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 14, i32 0
  %1 = load i32, i32* %c_iflag2, align 4
  %neg = xor i32 %1, -1
  %and = and i32 %0, %neg
  %c_iflag3 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old, i64 0, i32 0
  %2 = load i32, i32* %c_iflag3, align 4
  %and5 = and i32 %2, %1
  %or = or i32 %and5, %and
  store i32 %or, i32* %c_iflag, align 4
  %c_oflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 1
  %3 = load i32, i32* %c_oflag, align 4
  %c_oflag7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 14, i32 1
  %4 = load i32, i32* %c_oflag7, align 4
  %neg8 = xor i32 %4, -1
  %and9 = and i32 %3, %neg8
  %c_oflag10 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old, i64 0, i32 1
  %5 = load i32, i32* %c_oflag10, align 4
  %and12 = and i32 %5, %4
  %or13 = or i32 %and12, %and9
  store i32 %or13, i32* %c_oflag, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 2
  %6 = load i32, i32* %c_cflag, align 4
  %c_cflag15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 14, i32 2
  %7 = load i32, i32* %c_cflag15, align 4
  %neg16 = xor i32 %7, -1
  %and17 = and i32 %6, %neg16
  %c_cflag18 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old, i64 0, i32 2
  %8 = load i32, i32* %c_cflag18, align 4
  %and20 = and i32 %8, %7
  %or21 = or i32 %and20, %and17
  store i32 %or21, i32* %c_cflag, align 4
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 3
  %9 = load i32, i32* %c_lflag, align 4
  %c_lflag23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 14, i32 3
  %10 = load i32, i32* %c_lflag23, align 4
  %neg24 = xor i32 %10, -1
  %and25 = and i32 %9, %neg24
  %c_lflag26 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old, i64 0, i32 3
  %11 = load i32, i32* %c_lflag26, align 4
  %and28 = and i32 %11, %10
  %or29 = or i32 %and28, %and25
  store i32 %or29, i32* %c_lflag, align 4
  %c_line = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 14, i32 4
  %12 = load i8, i8* %c_line, align 4
  %tobool.not = icmp eq i8 %12, 0
  %c_line31 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %old, i64 0, i32 4
  %c_line33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 4
  %cond.in.in = select i1 %tobool.not, i8* %c_line33, i8* %c_line31
  %cond.in90 = load i8, i8* %cond.in.in, align 4
  store i8 %cond.in90, i8* %c_line33, align 4
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 14, i32 5, i64 %indvars.iv
  %13 = load i8, i8* %arrayidx, align 1
  %tobool39.not = icmp eq i8 %13, 0
  %arrayidx43 = getelementptr %struct.ktermios, %struct.ktermios* %old, i64 0, i32 5, i64 %indvars.iv
  %arrayidx48 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 %indvars.iv
  %cond51.in.in = select i1 %tobool39.not, i8* %arrayidx48, i8* %arrayidx43
  %cond51.in91 = load i8, i8* %cond51.in.in, align 1
  store i8 %cond51.in91, i8* %arrayidx48, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 19
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(%struct.tty_ldisc* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_mode_ioctl(%struct.tty_struct* noundef %tty, %struct.file* noundef readnone %file, i32 noundef %cmd, i64 noundef %arg) local_unnamed_addr #0 {
entry:
  %kterm = alloca %struct.ktermios, align 4
  %0 = inttoptr i64 %arg to i8*
  %1 = bitcast %struct.ktermios* %kterm to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %1) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(44) %1, i8 0, i64 44, i1 false), !annotation !7
  %cmp = icmp eq %struct.file* %file, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_ioctl.c\22; .popsection; .long 14472b - 14470b; .short 695; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !10
  unreachable

do.end7:                                          ; preds = %entry
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %2 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 10
  %3 = load i16, i16* %type, align 8
  %cmp9 = icmp eq i16 %3, 4
  br i1 %cmp9, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %do.end7
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 11
  %4 = load i16, i16* %subtype, align 2
  %cmp13 = icmp eq i16 %4, 1
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %5 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  br label %if.end16

if.end16:                                         ; preds = %do.end7, %land.lhs.true, %if.then15
  %real_tty.0 = phi %struct.tty_struct* [ %5, %if.then15 ], [ %tty, %land.lhs.true ], [ %tty, %do.end7 ]
  switch i32 %cmd, label %sw.default [
    i32 21508, label %sw.bb
    i32 21507, label %sw.bb17
    i32 21506, label %sw.bb19
    i32 21505, label %sw.bb21
    i32 -2144578518, label %sw.bb26
    i32 1076646957, label %sw.bb31
    i32 1076646956, label %sw.bb33
    i32 1076646955, label %sw.bb35
    i32 21509, label %sw.bb37
    i32 21512, label %sw.bb39
    i32 21511, label %sw.bb41
    i32 21510, label %sw.bb43
    i32 21590, label %sw.bb45
    i32 21591, label %sw.bb50
    i32 21554, label %cleanup
    i32 21555, label %cleanup
    i32 21557, label %cleanup
    i32 21556, label %cleanup
    i32 21529, label %sw.bb60
    i32 21530, label %sw.bb79
  ]

sw.bb:                                            ; preds = %if.end16
  %call = call fastcc i32 @set_termios(%struct.tty_struct* noundef %real_tty.0, i8* noundef %0, i32 noundef 11) #11
  br label %cleanup

sw.bb17:                                          ; preds = %if.end16
  %call18 = call fastcc i32 @set_termios(%struct.tty_struct* noundef %real_tty.0, i8* noundef %0, i32 noundef 10) #11
  br label %cleanup

sw.bb19:                                          ; preds = %if.end16
  %call20 = call fastcc i32 @set_termios(%struct.tty_struct* noundef %real_tty.0, i8* noundef %0, i32 noundef 8) #11
  br label %cleanup

sw.bb21:                                          ; preds = %if.end16
  call fastcc void @copy_termios(%struct.tty_struct* noundef %real_tty.0, %struct.ktermios* noundef nonnull %kterm) #11
  %6 = inttoptr i64 %arg to %struct.termios*
  %call22 = call fastcc i32 @kernel_termios_to_user_termios_1(%struct.termios* noundef %6, %struct.ktermios* noundef nonnull %kterm) #11
  %tobool23.not = icmp eq i32 %call22, 0
  %spec.select = select i1 %tobool23.not, i32 0, i32 -14
  br label %cleanup

sw.bb26:                                          ; preds = %if.end16
  call fastcc void @copy_termios(%struct.tty_struct* noundef %real_tty.0, %struct.ktermios* noundef nonnull %kterm) #11
  %7 = inttoptr i64 %arg to %struct.termios2*
  %call27 = call fastcc i32 @kernel_termios_to_user_termios(%struct.termios2* noundef %7, %struct.ktermios* noundef nonnull %kterm) #11
  %tobool28.not = icmp eq i32 %call27, 0
  %spec.select166 = select i1 %tobool28.not, i32 0, i32 -14
  br label %cleanup

sw.bb31:                                          ; preds = %if.end16
  %call32 = call fastcc i32 @set_termios(%struct.tty_struct* noundef %real_tty.0, i8* noundef %0, i32 noundef 3) #11
  br label %cleanup

sw.bb33:                                          ; preds = %if.end16
  %call34 = call fastcc i32 @set_termios(%struct.tty_struct* noundef %real_tty.0, i8* noundef %0, i32 noundef 2) #11
  br label %cleanup

sw.bb35:                                          ; preds = %if.end16
  %call36 = call fastcc i32 @set_termios(%struct.tty_struct* noundef %real_tty.0, i8* noundef %0, i32 noundef 0) #11
  br label %cleanup

sw.bb37:                                          ; preds = %if.end16
  %8 = inttoptr i64 %arg to %struct.termio*
  %call38 = call fastcc i32 @get_termio(%struct.tty_struct* noundef %real_tty.0, %struct.termio* noundef %8) #11
  br label %cleanup

sw.bb39:                                          ; preds = %if.end16
  %call40 = call fastcc i32 @set_termios(%struct.tty_struct* noundef %real_tty.0, i8* noundef %0, i32 noundef 7) #11
  br label %cleanup

sw.bb41:                                          ; preds = %if.end16
  %call42 = call fastcc i32 @set_termios(%struct.tty_struct* noundef %real_tty.0, i8* noundef %0, i32 noundef 6) #11
  br label %cleanup

sw.bb43:                                          ; preds = %if.end16
  %call44 = call fastcc i32 @set_termios(%struct.tty_struct* noundef %real_tty.0, i8* noundef %0, i32 noundef 4) #11
  br label %cleanup

sw.bb45:                                          ; preds = %if.end16
  call fastcc void @copy_termios_locked(%struct.tty_struct* noundef %real_tty.0, %struct.ktermios* noundef nonnull %kterm) #11
  %9 = inttoptr i64 %arg to %struct.termios*
  %call46 = call fastcc i32 @kernel_termios_to_user_termios_1(%struct.termios* noundef %9, %struct.ktermios* noundef nonnull %kterm) #11
  %tobool47.not = icmp eq i32 %call46, 0
  %spec.select167 = select i1 %tobool47.not, i32 0, i32 -14
  br label %cleanup

sw.bb50:                                          ; preds = %if.end16
  %call51 = call i1 @capable(i32 noundef 21) #10
  br i1 %call51, label %if.end53, label %cleanup

if.end53:                                         ; preds = %sw.bb50
  call fastcc void @copy_termios_locked(%struct.tty_struct* noundef %real_tty.0, %struct.ktermios* noundef nonnull %kterm) #11
  %10 = inttoptr i64 %arg to %struct.termios*
  %call54 = call fastcc i32 @user_termios_to_kernel_termios_1(%struct.ktermios* noundef nonnull %kterm, %struct.termios* noundef %10) #11
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %cleanup

if.end57:                                         ; preds = %if.end53
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %real_tty.0, i64 0, i32 11
  call void @down_write(%struct.rw_semaphore* noundef %termios_rwsem) #10
  %termios_locked = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %real_tty.0, i64 0, i32 14
  %11 = bitcast %struct.ktermios* %termios_locked to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(44) %11, i8* noundef nonnull align 4 dereferenceable(44) %1, i64 44, i1 false)
  call void @up_write(%struct.rw_semaphore* noundef %termios_rwsem) #10
  br label %cleanup

sw.bb60:                                          ; preds = %if.end16
  call fastcc void @copy_termios(%struct.tty_struct* noundef %real_tty.0, %struct.ktermios* noundef nonnull %kterm) #11
  %call62 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #11
  %tobool63.not = icmp eq i64 %call62, 0
  br i1 %tobool63.not, label %cleanup, label %if.then64

if.then64:                                        ; preds = %sw.bb60
  %call65 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #11
  %12 = bitcast i8* %call65 to i32*
  %c_cflag = getelementptr inbounds %struct.ktermios, %struct.ktermios* %kterm, i64 0, i32 2
  %13 = load i32, i32* %c_cflag, align 4
  %and = lshr i32 %13, 11
  %and.lobit = and i32 %and, 1
  %14 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %and.lobit, i32* %12, i32 -14, i32 0) #12, !srcloc !11
  br label %cleanup

sw.bb79:                                          ; preds = %if.end16
  %call82 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #11
  %tobool83.not = icmp eq i64 %call82, 0
  br i1 %tobool83.not, label %cleanup, label %if.end98

if.end98:                                         ; preds = %sw.bb79
  %call85 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #11
  %15 = bitcast i8* %call85 to i32*
  %16 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %15, i32 -14, i32 0) #12, !srcloc !12
  %asmresult = extractvalue { i32, i64 } %16, 0
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end104, label %cleanup

if.end104:                                        ; preds = %if.end98
  %asmresult89 = extractvalue { i32, i64 } %16, 1
  %conv90 = trunc i64 %asmresult89 to i32
  %call106 = call fastcc i32 @tty_change_softcar(%struct.tty_struct* noundef %real_tty.0, i32 noundef %conv90) #11
  br label %cleanup

sw.default:                                       ; preds = %if.end16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb79, %if.end98, %if.then64, %sw.bb60, %if.end16, %if.end16, %if.end16, %if.end16, %if.end53, %sw.bb50, %sw.default, %if.end104, %if.end57, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb26, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb
  %retval.0 = phi i32 [ -515, %sw.default ], [ %call106, %if.end104 ], [ 0, %if.end57 ], [ %spec.select167, %sw.bb45 ], [ %call44, %sw.bb43 ], [ %call42, %sw.bb41 ], [ %call40, %sw.bb39 ], [ %call38, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %call34, %sw.bb33 ], [ %call32, %sw.bb31 ], [ %spec.select166, %sw.bb26 ], [ %spec.select, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %call, %sw.bb ], [ -1, %sw.bb50 ], [ -14, %if.end53 ], [ -25, %if.end16 ], [ -25, %if.end16 ], [ -25, %if.end16 ], [ -25, %if.end16 ], [ %14, %if.then64 ], [ -14, %sw.bb60 ], [ -14, %if.end98 ], [ -14, %sw.bb79 ]
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %1) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @set_termios(%struct.tty_struct* noundef %tty, i8* noundef %arg, i32 noundef %opt) unnamed_addr #0 {
entry:
  %tmp_termios = alloca %struct.ktermios, align 4
  %0 = bitcast %struct.ktermios* %tmp_termios to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %0) #12
  %call = call i32 @tty_check_change(%struct.tty_struct* noundef %tty) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem) #10
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  %1 = bitcast %struct.ktermios* %termios to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(44) %0, i8* noundef align 8 dereferenceable(44) %1, i64 44, i1 false)
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem) #10
  %and = and i32 %opt, 4
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = bitcast i8* %arg to %struct.termio*
  %call5 = call fastcc i32 @user_termio_to_kernel_termios(%struct.ktermios* noundef nonnull %tmp_termios, %struct.termio* noundef %2) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end22, label %cleanup

if.else:                                          ; preds = %if.end
  %and9 = and i32 %opt, 8
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else16, label %if.then11

if.then11:                                        ; preds = %if.else
  %3 = bitcast i8* %arg to %struct.termios*
  %call12 = call fastcc i32 @user_termios_to_kernel_termios_1(%struct.ktermios* noundef nonnull %tmp_termios, %struct.termios* noundef %3) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end22, label %cleanup

if.else16:                                        ; preds = %if.else
  %4 = bitcast i8* %arg to %struct.termios2*
  %call17 = call fastcc i32 @user_termios_to_kernel_termios(%struct.ktermios* noundef nonnull %tmp_termios, %struct.termios2* noundef %4) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.then11, %if.else16, %if.then4
  %call23 = call i32 @tty_termios_input_baud_rate(%struct.ktermios* noundef nonnull %tmp_termios) #10
  %c_ispeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %tmp_termios, i64 0, i32 6
  store i32 %call23, i32* %c_ispeed, align 4
  %call24 = call i32 @tty_termios_baud_rate(%struct.ktermios* noundef nonnull %tmp_termios) #10
  %c_ospeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %tmp_termios, i64 0, i32 7
  store i32 %call24, i32* %c_ospeed, align 4
  %call25 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* noundef %tty) #10
  %cmp.not = icmp eq %struct.tty_ldisc* %call25, null
  br i1 %cmp.not, label %if.end34, label %if.then26

if.then26:                                        ; preds = %if.end22
  %and27 = and i32 %opt, 1
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then26
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %call25, i64 0, i32 0
  %5 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %5, i64 0, i32 5
  %6 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer, align 8
  %tobool29.not = icmp eq void (%struct.tty_struct*)* %6, null
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  call void %6(%struct.tty_struct* noundef %tty) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true, %if.then26
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call25) #10
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end22
  %and35 = and i32 %opt, 2
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end43, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @tty_wait_until_sent(%struct.tty_struct* noundef %tty, i64 noundef 0) #11
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !13
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %call39 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %8) #11
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %cleanup

if.end43:                                         ; preds = %if.then37, %if.end34
  %call44 = call i32 @tty_set_termios(%struct.tty_struct* noundef %tty, %struct.ktermios* noundef nonnull %tmp_termios) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.else16, %if.then11, %if.then4, %entry, %if.end43
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call, %entry ], [ -14, %if.then4 ], [ -14, %if.then11 ], [ -14, %if.else16 ], [ -512, %if.then37 ]
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @copy_termios(%struct.tty_struct* noundef %tty, %struct.ktermios* nocapture noundef writeonly %kterm) unnamed_addr #0 {
entry:
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem) #10
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  %0 = bitcast %struct.ktermios* %kterm to i8*
  %1 = bitcast %struct.ktermios* %termios to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(44) %0, i8* noundef align 8 dereferenceable(44) %1, i64 44, i1 false)
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernel_termios_to_user_termios_1(%struct.termios* noundef %u, %struct.ktermios* noundef %k) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.termios* %u to i8*
  %1 = bitcast %struct.ktermios* %k to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %0, i8* noundef %1, i64 noundef 36) #10
  %conv = trunc i64 %call2.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernel_termios_to_user_termios(%struct.termios2* noundef %u, %struct.ktermios* noundef %k) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.termios2* %u to i8*
  %1 = bitcast %struct.ktermios* %k to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %0, i8* noundef %1, i64 noundef 44) #10
  %conv = trunc i64 %call2.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_termio(%struct.tty_struct* noundef %tty, %struct.termio* noundef %termio) unnamed_addr #0 {
entry:
  %kterm = alloca %struct.ktermios, align 4
  %0 = bitcast %struct.ktermios* %kterm to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false), !annotation !7
  call fastcc void @copy_termios(%struct.tty_struct* noundef %tty, %struct.ktermios* noundef nonnull %kterm) #11
  %call = call fastcc i32 @kernel_termios_to_user_termio(%struct.termio* noundef %termio, %struct.ktermios* noundef nonnull %kterm) #11
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %0) #12
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @copy_termios_locked(%struct.tty_struct* noundef %tty, %struct.ktermios* nocapture noundef writeonly %kterm) unnamed_addr #0 {
entry:
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem) #10
  %termios_locked = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 14
  %0 = bitcast %struct.ktermios* %kterm to i8*
  %1 = bitcast %struct.ktermios* %termios_locked to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(44) %0, i8* noundef align 4 dereferenceable(44) %1, i64 44, i1 false)
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_termios_to_kernel_termios_1(%struct.ktermios* noundef %k, %struct.termios* noundef %u) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ktermios* %k to i8*
  %1 = bitcast %struct.termios* %u to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %0, i8* noundef %1, i64 noundef 36) #10
  %conv = trunc i64 %call2.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #12, !srcloc !14
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #12, !srcloc !15
  call void asm sideeffect "hint #20", "~{memory}"() #12, !srcloc !16
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_change_softcar(%struct.tty_struct* noundef %tty, i32 noundef %arg) unnamed_addr #0 {
entry:
  %old = alloca %struct.ktermios, align 4
  %tobool.not = icmp eq i32 %arg, 0
  %cond = select i1 %tobool.not, i32 0, i32 2048
  %0 = bitcast %struct.ktermios* %old to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %0) #12
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_write(%struct.rw_semaphore* noundef %termios_rwsem) #10
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  %1 = bitcast %struct.ktermios* %termios to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(44) %0, i8* noundef align 8 dereferenceable(44) %1, i64 44, i1 false)
  %c_cflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 2
  %2 = load i32, i32* %c_cflag, align 8
  %and = and i32 %2, -2049
  %or = or i32 %and, %cond
  store i32 %or, i32* %c_cflag, align 8
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %3 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %set_termios = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %3, i64 0, i32 14
  %4 = load void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*, %struct.ktermios*)** %set_termios, align 8
  %tobool4.not = icmp eq void (%struct.tty_struct*, %struct.ktermios*)* %4, null
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %4(%struct.tty_struct* noundef %tty, %struct.ktermios* noundef nonnull %old) #10
  %.pre = load i32, i32* %c_cflag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = phi i32 [ %.pre, %if.then ], [ %or, %entry ]
  %and9 = and i32 %5, 2048
  %cmp.not = icmp eq i32 %and9, %cond
  %spec.select = select i1 %cmp.not, i32 0, i32 -22
  call void @up_write(%struct.rw_semaphore* noundef %termios_rwsem) #10
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %0) #12
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_perform_flush(%struct.tty_struct* noundef %tty, i64 noundef %arg) local_unnamed_addr #0 {
entry:
  %call = call i32 @tty_check_change(%struct.tty_struct* noundef %tty) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef %tty) #10
  %call3 = call fastcc i32 @__tty_perform_flush(%struct.tty_struct* noundef %tty, i64 noundef %arg) #11
  %tobool4.not = icmp eq %struct.tty_ldisc* %call2, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call3, %if.then5 ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_check_change(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__tty_perform_flush(%struct.tty_struct* noundef %tty, i64 noundef %arg) unnamed_addr #0 {
entry:
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  %0 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  switch i64 %arg, label %cleanup [
    i64 0, label %sw.bb
    i64 2, label %sw.bb4
    i64 1, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq %struct.tty_ldisc* %0, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %0, i64 0, i32 0
  %1 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %1, i64 0, i32 5
  %2 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer, align 8
  %tobool1.not = icmp eq void (%struct.tty_struct*)* %2, null
  br i1 %tobool1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %2(%struct.tty_struct* noundef %tty) #10
  call void @tty_unthrottle(%struct.tty_struct* noundef %tty) #11
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %tobool5.not = icmp eq %struct.tty_ldisc* %0, null
  br i1 %tobool5.not, label %sw.bb14, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %sw.bb4
  %ops7 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %0, i64 0, i32 0
  %3 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops7, align 8
  %flush_buffer8 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %3, i64 0, i32 5
  %4 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer8, align 8
  %tobool9.not = icmp eq void (%struct.tty_struct*)* %4, null
  br i1 %tobool9.not, label %sw.bb14, label %if.then10

if.then10:                                        ; preds = %land.lhs.true6
  call void %4(%struct.tty_struct* noundef %tty) #10
  call void @tty_unthrottle(%struct.tty_struct* noundef %tty) #11
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb4, %land.lhs.true6, %if.then10, %entry
  call void @tty_driver_flush_buffer(%struct.tty_struct* noundef %tty) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %if.then, %land.lhs.true, %sw.bb, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %sw.bb ], [ 0, %land.lhs.true ], [ 0, %if.then ], [ 0, %sw.bb14 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @n_tty_ioctl_helper(%struct.tty_struct* noundef %tty, %struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) local_unnamed_addr #0 {
entry:
  switch i32 %cmd, label %sw.default50 [
    i32 21514, label %sw.bb
    i32 21515, label %sw.bb44
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 @tty_check_change(%struct.tty_struct* noundef %tty) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.bb
  switch i64 %arg, label %cleanup [
    i64 0, label %sw.bb2
    i64 1, label %sw.bb11
    i64 2, label %sw.bb23
    i64 3, label %sw.bb31
  ]

sw.bb2:                                           ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  %tco_stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 2
  %0 = load i8, i8* %tco_stopped, align 1, !range !17
  %tobool4.not = icmp eq i8 %0, 0
  br i1 %tobool4.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %sw.bb2
  store i8 1, i8* %tco_stopped, align 1
  call void @__stop_tty(%struct.tty_struct* noundef %tty) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %sw.bb2
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #10
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %rlock.i80 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i80) #10
  %tco_stopped15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 2
  %1 = load i8, i8* %tco_stopped15, align 1, !range !17
  %tobool16.not = icmp eq i8 %1, 0
  br i1 %tobool16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %sw.bb11
  store i8 0, i8* %tco_stopped15, align 1
  call void @__start_tty(%struct.tty_struct* noundef %tty) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %sw.bb11
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i80) #10
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 9
  %2 = load i8, i8* %arrayidx, align 1
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %cleanup, label %if.then25

if.then25:                                        ; preds = %sw.bb23
  %call29 = call i32 @tty_send_xchar(%struct.tty_struct* noundef %tty, i8 noundef %2) #10
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  %arrayidx34 = getelementptr %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 5, i64 8
  %3 = load i8, i8* %arrayidx34, align 1
  %cmp36.not = icmp eq i8 %3, 0
  br i1 %cmp36.not, label %cleanup, label %if.then38

if.then38:                                        ; preds = %sw.bb31
  %call42 = call i32 @tty_send_xchar(%struct.tty_struct* noundef %tty, i8 noundef %3) #10
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  %call45 = call i32 @tty_check_change(%struct.tty_struct* noundef %tty) #10
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %cleanup

if.end48:                                         ; preds = %sw.bb44
  %call49 = call fastcc i32 @__tty_perform_flush(%struct.tty_struct* noundef %tty, i64 noundef %arg) #11
  br label %cleanup

sw.default50:                                     ; preds = %entry
  %call51 = call i32 @tty_mode_ioctl(%struct.tty_struct* noundef %tty, %struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb44, %if.end8, %if.end20, %if.then25, %sw.bb23, %if.then38, %sw.bb31, %if.end, %sw.bb, %sw.default50, %if.end48
  %retval.0 = phi i32 [ %call51, %sw.default50 ], [ %call49, %if.end48 ], [ %call, %sw.bb ], [ -22, %if.end ], [ %call42, %if.then38 ], [ 0, %sw.bb31 ], [ %call29, %if.then25 ], [ 0, %sw.bb23 ], [ 0, %if.end20 ], [ 0, %if.end8 ], [ %call45, %sw.bb44 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__stop_tty(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__start_tty(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_send_xchar(%struct.tty_struct* noundef, i8 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #12, !srcloc !18
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #12, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #12, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_termio_to_kernel_termios(%struct.ktermios* noundef %termios, %struct.termio* noundef %termio) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.termio* %termio to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 2) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %fault, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #11
  %1 = bitcast i8* %call1 to i16*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i16* %1, i32 -14, i32 0) #12, !srcloc !21
  %asmresult = extractvalue { i32, i64 } %2, 0
  %phi.cmp = icmp slt i32 %asmresult, 0
  br i1 %phi.cmp, label %fault, label %if.end14

if.end14:                                         ; preds = %if.end
  %asmresult5 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult5 to i32
  %phi.cast = and i32 %conv, 65535
  %c_iflag15 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 0
  %3 = load i32, i32* %c_iflag15, align 4
  %and = and i32 %3, -65536
  %or = or i32 %and, %phi.cast
  store i32 %or, i32* %c_iflag15, align 4
  %c_oflag = getelementptr inbounds %struct.termio, %struct.termio* %termio, i64 0, i32 1
  %4 = bitcast i16* %c_oflag to i8*
  %call21 = call fastcc i64 @__range_ok(i8* noundef %4, i64 noundef 2) #11
  %tobool22.not = icmp eq i64 %call21, 0
  br i1 %tobool22.not, label %fault, label %if.end38

if.end38:                                         ; preds = %if.end14
  %call24 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #11
  %5 = bitcast i8* %call24 to i16*
  %6 = call { i32, i64 } asm sideeffect "1:\09ldtrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i16* %5, i32 -14, i32 0) #12, !srcloc !22
  %asmresult29 = extractvalue { i32, i64 } %6, 0
  %phi.cmp203 = icmp slt i32 %asmresult29, 0
  br i1 %phi.cmp203, label %fault, label %if.end45

if.end45:                                         ; preds = %if.end38
  %asmresult30 = extractvalue { i32, i64 } %6, 1
  %conv31 = trunc i64 %asmresult30 to i32
  %phi.cast204 = and i32 %conv31, 65535
  %c_oflag46 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 1
  %7 = load i32, i32* %c_oflag46, align 4
  %and47 = and i32 %7, -65536
  %or49 = or i32 %and47, %phi.cast204
  store i32 %or49, i32* %c_oflag46, align 4
  %c_cflag = getelementptr inbounds %struct.termio, %struct.termio* %termio, i64 0, i32 2
  %8 = bitcast i16* %c_cflag to i8*
  %call54 = call fastcc i64 @__range_ok(i8* noundef %8, i64 noundef 2) #11
  %tobool55.not = icmp eq i64 %call54, 0
  br i1 %tobool55.not, label %fault, label %if.end71

if.end71:                                         ; preds = %if.end45
  %call57 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %8) #11
  %9 = bitcast i8* %call57 to i16*
  %10 = call { i32, i64 } asm sideeffect "1:\09ldtrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i16* %9, i32 -14, i32 0) #12, !srcloc !23
  %asmresult62 = extractvalue { i32, i64 } %10, 0
  %phi.cmp205 = icmp slt i32 %asmresult62, 0
  br i1 %phi.cmp205, label %fault, label %if.end78

if.end78:                                         ; preds = %if.end71
  %asmresult63 = extractvalue { i32, i64 } %10, 1
  %conv64 = trunc i64 %asmresult63 to i32
  %phi.cast206 = and i32 %conv64, 65535
  %c_cflag79 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 2
  %11 = load i32, i32* %c_cflag79, align 4
  %and80 = and i32 %11, -65536
  %or82 = or i32 %and80, %phi.cast206
  store i32 %or82, i32* %c_cflag79, align 4
  %c_lflag = getelementptr inbounds %struct.termio, %struct.termio* %termio, i64 0, i32 3
  %12 = bitcast i16* %c_lflag to i8*
  %call87 = call fastcc i64 @__range_ok(i8* noundef %12, i64 noundef 2) #11
  %tobool88.not = icmp eq i64 %call87, 0
  br i1 %tobool88.not, label %fault, label %if.end104

if.end104:                                        ; preds = %if.end78
  %call90 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %12) #11
  %13 = bitcast i8* %call90 to i16*
  %14 = call { i32, i64 } asm sideeffect "1:\09ldtrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i16* %13, i32 -14, i32 0) #12, !srcloc !24
  %asmresult95 = extractvalue { i32, i64 } %14, 0
  %phi.cmp207 = icmp slt i32 %asmresult95, 0
  br i1 %phi.cmp207, label %fault, label %if.end111

if.end111:                                        ; preds = %if.end104
  %asmresult96 = extractvalue { i32, i64 } %14, 1
  %conv97 = trunc i64 %asmresult96 to i32
  %phi.cast208 = and i32 %conv97, 65535
  %c_lflag112 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 3
  %15 = load i32, i32* %c_lflag112, align 4
  %and113 = and i32 %15, -65536
  %or115 = or i32 %and113, %phi.cast208
  store i32 %or115, i32* %c_lflag112, align 4
  %c_line = getelementptr inbounds %struct.termio, %struct.termio* %termio, i64 0, i32 4
  %call120 = call fastcc i64 @__range_ok(i8* noundef %c_line, i64 noundef 1) #11
  %tobool121.not = icmp eq i64 %call120, 0
  br i1 %tobool121.not, label %if.else137, label %if.then122

if.then122:                                       ; preds = %if.end111
  %call123 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %c_line) #11
  %16 = call { i32, i64 } asm sideeffect "1:\09ldtrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %call123, i32 -14, i32 0) #12, !srcloc !25
  %asmresult128 = extractvalue { i32, i64 } %16, 0
  %asmresult129 = extractvalue { i32, i64 } %16, 1
  %conv130 = trunc i64 %asmresult129 to i8
  %c_line131 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 4
  store i8 %conv130, i8* %c_line131, align 4
  %phi.cmp209 = icmp slt i32 %asmresult128, 0
  br i1 %phi.cmp209, label %fault, label %if.end146

if.else137:                                       ; preds = %if.end111
  %c_line138 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 4
  store i8 0, i8* %c_line138, align 4
  br label %fault

if.end146:                                        ; preds = %if.then122
  %arraydecay = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 5, i64 0
  %arraydecay148 = getelementptr inbounds %struct.termio, %struct.termio* %termio, i64 0, i32 5, i64 0
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %arraydecay, i8* noundef %arraydecay148, i64 noundef 8) #10
  %cmp150.not = icmp eq i64 %call2.i, 0
  br i1 %cmp150.not, label %cleanup, label %fault

fault:                                            ; preds = %if.end78, %if.end45, %if.end14, %entry, %if.else137, %if.end146, %if.then122, %if.end104, %if.end71, %if.end38, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %fault
  %retval.0 = phi i32 [ -14, %fault ], [ 0, %if.end146 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_termios_to_kernel_termios(%struct.ktermios* noundef %k, %struct.termios2* noundef %u) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ktermios* %k to i8*
  %1 = bitcast %struct.termios2* %u to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %0, i8* noundef %1, i64 noundef 44) #10
  %conv = trunc i64 %call2.i to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_input_baud_rate(%struct.ktermios* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !26

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #11
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !26

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #11
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #11
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #11
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #3 {
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
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #7 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #11
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #10
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kernel_termios_to_user_termio(%struct.termio* noundef %termio, %struct.ktermios* noundef %termios) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.termio* %termio to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 2) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #11
  %1 = bitcast i8* %call1 to i16*
  %c_iflag5 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 0
  %2 = load i32, i32* %c_iflag5, align 4
  %conv = trunc i32 %2 to i16
  %3 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %conv, i16* %1, i32 -14, i32 0) #12, !srcloc !27
  %phi.cmp = icmp slt i32 %3, 0
  br i1 %phi.cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %c_oflag = getelementptr inbounds %struct.termio, %struct.termio* %termio, i64 0, i32 1
  %4 = bitcast i16* %c_oflag to i8*
  %call15 = call fastcc i64 @__range_ok(i8* noundef %4, i64 noundef 2) #11
  %tobool16.not = icmp eq i64 %call15, 0
  br i1 %tobool16.not, label %return, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false
  %call18 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #11
  %5 = bitcast i8* %call18 to i16*
  %c_oflag23 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 1
  %6 = load i32, i32* %c_oflag23, align 4
  %conv24 = trunc i32 %6 to i16
  %7 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %conv24, i16* %5, i32 -14, i32 0) #12, !srcloc !28
  %phi.cmp161 = icmp slt i32 %7, 0
  br i1 %phi.cmp161, label %return, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.then17
  %c_cflag = getelementptr inbounds %struct.termio, %struct.termio* %termio, i64 0, i32 2
  %8 = bitcast i16* %c_cflag to i8*
  %call41 = call fastcc i64 @__range_ok(i8* noundef %8, i64 noundef 2) #11
  %tobool42.not = icmp eq i64 %call41, 0
  br i1 %tobool42.not, label %return, label %if.then43

if.then43:                                        ; preds = %lor.lhs.false37
  %call44 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %8) #11
  %9 = bitcast i8* %call44 to i16*
  %c_cflag49 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 2
  %10 = load i32, i32* %c_cflag49, align 4
  %conv50 = trunc i32 %10 to i16
  %11 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %conv50, i16* %9, i32 -14, i32 0) #12, !srcloc !29
  %phi.cmp162 = icmp slt i32 %11, 0
  br i1 %phi.cmp162, label %return, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.then43
  %c_lflag = getelementptr inbounds %struct.termio, %struct.termio* %termio, i64 0, i32 3
  %12 = bitcast i16* %c_lflag to i8*
  %call67 = call fastcc i64 @__range_ok(i8* noundef %12, i64 noundef 2) #11
  %tobool68.not = icmp eq i64 %call67, 0
  br i1 %tobool68.not, label %return, label %if.then69

if.then69:                                        ; preds = %lor.lhs.false63
  %call70 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %12) #11
  %13 = bitcast i8* %call70 to i16*
  %c_lflag75 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 3
  %14 = load i32, i32* %c_lflag75, align 4
  %conv76 = trunc i32 %14 to i16
  %15 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %conv76, i16* %13, i32 -14, i32 0) #12, !srcloc !30
  %phi.cmp163 = icmp slt i32 %15, 0
  br i1 %phi.cmp163, label %return, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.then69
  %c_line = getelementptr inbounds %struct.termio, %struct.termio* %termio, i64 0, i32 4
  %call93 = call fastcc i64 @__range_ok(i8* noundef %c_line, i64 noundef 1) #11
  %tobool94.not = icmp eq i64 %call93, 0
  br i1 %tobool94.not, label %return, label %if.then95

if.then95:                                        ; preds = %lor.lhs.false89
  %call96 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %c_line) #11
  %c_line101 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 4
  %16 = load i8, i8* %c_line101, align 4
  %17 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 %16, i8* %call96, i32 -14, i32 0) #12, !srcloc !31
  %phi.cmp164 = icmp slt i32 %17, 0
  br i1 %phi.cmp164, label %return, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %if.then95
  %arraydecay = getelementptr inbounds %struct.termio, %struct.termio* %termio, i64 0, i32 5, i64 0
  %arraydecay116 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i64 0, i32 5, i64 0
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %arraydecay, i8* noundef %arraydecay116, i64 noundef 8) #10
  %cmp118.not = icmp eq i64 %call2.i, 0
  %spec.select = select i1 %cmp118.not, i32 0, i32 -14
  br label %return

return:                                           ; preds = %lor.lhs.false114, %if.then, %if.then17, %if.then43, %if.then69, %if.then95, %entry, %lor.lhs.false, %lor.lhs.false37, %lor.lhs.false63, %lor.lhs.false89
  %retval.0 = phi i32 [ -14, %lor.lhs.false89 ], [ -14, %lor.lhs.false63 ], [ -14, %lor.lhs.false37 ], [ -14, %lor.lhs.false ], [ -14, %entry ], [ -14, %if.then95 ], [ -14, %if.then69 ], [ -14, %if.then43 ], [ -14, %if.then17 ], [ -14, %if.then ], [ %spec.select, %lor.lhs.false114 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #11
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #12, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !26

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
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
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !34
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call fastcc void @arch_local_irq_enable() #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #12, !srcloc !37
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153371830}
!10 = !{i64 2153373486}
!11 = !{i64 2153379794, i64 2153379832, i64 2153379849, i64 2153379883, i64 2153379905, i64 2153379931, i64 2153379949, i64 2153380107, i64 2153380148, i64 2153380170, i64 2153380216}
!12 = !{i64 2153383909, i64 2153383946, i64 2153383963, i64 2153383998, i64 2153384020, i64 2153384046, i64 2153384069, i64 2153384087, i64 2153384246, i64 2153384287, i64 2153384309, i64 2153384355}
!13 = !{i64 241017}
!14 = !{i64 3002793, i64 3002876, i64 3003100, i64 3003320, i64 3003343}
!15 = !{i64 3007495, i64 3007519}
!16 = !{i64 2150806953}
!17 = !{i8 0, i8 2}
!18 = !{i64 2147992475, i64 2147993137, i64 2147993167, i64 2147993198, i64 2147993230, i64 2147993265, i64 2147993290}
!19 = !{i64 2147981052, i64 2147981563, i64 2147981593, i64 2147981619, i64 2147981651, i64 2147981680}
!20 = !{i64 2147991622, i64 2147992143, i64 2147992173, i64 2147992199, i64 2147992231, i64 2147992260}
!21 = !{i64 2150828457, i64 2150828494, i64 2150828511, i64 2150828546, i64 2150828568, i64 2150828594, i64 2150828617, i64 2150828635, i64 2150828798, i64 2150828839, i64 2150828861, i64 2150828907}
!22 = !{i64 2150832580, i64 2150832617, i64 2150832634, i64 2150832669, i64 2150832691, i64 2150832717, i64 2150832740, i64 2150832758, i64 2150832921, i64 2150832962, i64 2150832984, i64 2150833030}
!23 = !{i64 2150836703, i64 2150836740, i64 2150836757, i64 2150836792, i64 2150836814, i64 2150836840, i64 2150836863, i64 2150836881, i64 2150837044, i64 2150837085, i64 2150837107, i64 2150837153}
!24 = !{i64 2150840826, i64 2150840863, i64 2150840880, i64 2150840915, i64 2150840937, i64 2150840963, i64 2150840986, i64 2150841004, i64 2150841167, i64 2150841208, i64 2150841230, i64 2150841276}
!25 = !{i64 2150844516, i64 2150844553, i64 2150844570, i64 2150844605, i64 2150844627, i64 2150844653, i64 2150844676, i64 2150844694, i64 2150844857, i64 2150844898, i64 2150844920, i64 2150844966}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2150849258, i64 2150849296, i64 2150849313, i64 2150849347, i64 2150849369, i64 2150849395, i64 2150849413, i64 2150849575, i64 2150849616, i64 2150849638, i64 2150849684}
!28 = !{i64 2150853252, i64 2150853290, i64 2150853307, i64 2150853341, i64 2150853363, i64 2150853389, i64 2150853407, i64 2150853569, i64 2150853610, i64 2150853632, i64 2150853678}
!29 = !{i64 2150857246, i64 2150857284, i64 2150857301, i64 2150857335, i64 2150857357, i64 2150857383, i64 2150857401, i64 2150857563, i64 2150857604, i64 2150857626, i64 2150857672}
!30 = !{i64 2150865301, i64 2150865339, i64 2150865356, i64 2150865390, i64 2150865412, i64 2150865438, i64 2150865456, i64 2150865618, i64 2150865659, i64 2150865681, i64 2150865727}
!31 = !{i64 2150868810, i64 2150868848, i64 2150868865, i64 2150868899, i64 2150868921, i64 2150868947, i64 2150868965, i64 2150869127, i64 2150869168, i64 2150869190, i64 2150869236}
!32 = !{i64 2149707333}
!33 = !{i64 2148951885, i64 2148951932, i64 2148951938, i64 2148951975, i64 2148951993, i64 2148953334, i64 2148953382, i64 2148953430, i64 2148953493, i64 2148953542, i64 2148952071, i64 2148952096, i64 2148952122, i64 2148952128, i64 2148953000, i64 2148953040, i64 2148953058, i64 2148953090, i64 2148953118, i64 2148953172, i64 2148953192, i64 2148953289, i64 2148952151, i64 2148952165, i64 2148952171, i64 2148952221, i64 2148952267, i64 2148952300}
!34 = !{i64 2148007834, i64 2148007867, i64 2148007920, i64 2148007979, i64 2148008013, i64 2148008068, i64 2148008097, i64 2148008117}
!35 = !{i64 2149732186}
!36 = !{i64 2149672170}
!37 = !{i64 2148942429, i64 2148942476, i64 2148942482, i64 2148942519, i64 2148942537, i64 2148943877, i64 2148943925, i64 2148943973, i64 2148944036, i64 2148944085, i64 2148942615, i64 2148942640, i64 2148942666, i64 2148942672, i64 2148943543, i64 2148943583, i64 2148943601, i64 2148943633, i64 2148943661, i64 2148943715, i64 2148943735, i64 2148943832, i64 2148942695, i64 2148942709, i64 2148942715, i64 2148942765, i64 2148942811, i64 2148942844}
