; ModuleID = 'kernel/printk/printk.c'
source_filename = "kernel/printk/printk.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init\22, \22a\22\09\09"
module asm "__initcall__kmod_printk__392_3203_printk_late_init7:\09\09\09"
module asm ".long\09printk_late_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.66, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.12 = type { i32 }
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.14, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.14 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.15, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.16, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.15 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.16 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.17, %union.anon.36, %struct.atomic_t, [8 x i8] }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.36 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.49, %struct.anon.50, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
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
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.43, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.43 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
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
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.49 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.50 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.44, %struct.qspinlock }
%union.anon.44 = type { %struct.atomic_t }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.48, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.48 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.51, %union.anon.52, i32 }
%struct.request_queue = type opaque
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.57 }
%struct.anon.57 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.65, i32, [12 x i8] }
%union.anon.65 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.66 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.67, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.67 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6, [48 x i8] }
%struct.anon.6 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.7, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, {}*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { i64 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
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
%struct.swap_info_struct = type opaque
%union.anon.71 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, {}*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.42 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.42 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.21 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.46 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.46 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.printk_ringbuffer = type { %struct.prb_desc_ring, %struct.prb_data_ring, %struct.atomic64_t }
%struct.prb_desc_ring = type { i32, %struct.prb_desc*, %struct.printk_info*, %struct.atomic64_t, %struct.atomic64_t }
%struct.prb_desc = type { %struct.atomic64_t, %struct.prb_data_blk_lpos }
%struct.prb_data_blk_lpos = type { i64, i64 }
%struct.printk_info = type { i64, i64, i16, i8, i8, i32, %struct.dev_printk_info }
%struct.dev_printk_info = type { [16 x i8], [48 x i8] }
%struct.prb_data_ring = type { i32, i8*, %struct.atomic64_t, %struct.atomic64_t }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { i8* }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.console = type { [16 x i8], void (%struct.console*, i8*, i32)*, i32 (%struct.console*, i8*, i32)*, %struct.tty_driver* (%struct.console*, i32*)*, void ()*, i32 (%struct.console*, i8*)*, i32 (%struct.console*)*, i32 (%struct.console*, i8*, i32, i8*)*, i16, i16, i32, i8*, %struct.console* }
%struct.irq_work = type { %struct.__call_single_node, void (%struct.irq_work*)* }
%struct.latched_seq = type { %struct.seqcount_latch_t, [2 x i64] }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.console_cmdline = type { [16 x i8], i32, i8, i8* }
%struct.devkmsg_user = type { %struct.atomic64_t, %struct.ratelimit_state, %struct.mutex, [8192 x i8], %struct.printk_info, [8192 x i8], %struct.printk_record }
%struct.printk_record = type { %struct.printk_info*, i8*, i32 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.prb_reserved_entry = type { %struct.printk_ringbuffer*, i64, i64, i32 }
%struct.pt_regs = type { %union.anon.77, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.77 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.kmsg_dumper = type { %struct.list_head, void (%struct.kmsg_dumper*, i32)*, i32, i8 }
%struct.kmsg_dump_iter = type { i64, i64 }

@console_printk = dso_local local_unnamed_addr global [4 x i32] [i32 7, i32 4, i32 1, i32 7], align 4
@ignore_console_lock_warning = dso_local local_unnamed_addr global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@__setup_str_control_devkmsg = internal constant [16 x i8] c"printk.devkmsg=\00", section ".init.rodata", align 1
@__setup_control_devkmsg = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__setup_str_control_devkmsg, i32 0, i32 0), i32 (i8*)* @control_devkmsg, i32 0 }, section ".init.setup", align 8
@devkmsg_log_str = dso_local global [10 x i8] c"ratelimit\00", align 1
@devkmsg_log = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@log_wait = dso_local global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @log_wait to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @log_wait to i8*), i64 8) to %struct.list_head*) } }, align 8
@__printk_percpu_data_ready = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@log_buf = internal unnamed_addr global i8* getelementptr inbounds ([131072 x i8], [131072 x i8]* @__log_buf, i64 0, i64 0), align 8
@log_buf_len = internal unnamed_addr global i32 131072, align 4
@dmesg_restrict = dso_local local_unnamed_addr global i32 0, align 4
@kmsg_fops = dso_local local_unnamed_addr constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @devkmsg_llseek, i64 (%struct.file*, i8*, i64, i64*)* @devkmsg_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @devkmsg_write, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @devkmsg_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @devkmsg_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @devkmsg_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@__setup_str_log_buf_len_setup = internal constant [12 x i8] c"log_buf_len\00", section ".init.rodata", align 1
@__setup_log_buf_len_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__setup_str_log_buf_len_setup, i32 0, i32 0), i32 (i8*)* @log_buf_len_setup, i32 1 }, section ".init.setup", align 8
@__log_buf = internal global [131072 x i8] zeroinitializer, align 8
@new_log_buf_len = internal unnamed_addr global i64 0, section ".init.data", align 8
@.str = private unnamed_addr constant [42 x i8] c"\013printk: new_log_buf_len: %lu too small\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\013printk: log_buf_len: %lu text bytes not available\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\013printk: log_buf_len: %zu desc bytes not available\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"\013printk: log_buf_len: %zu info bytes not available\0A\00", align 1
@setup_text_buf = internal global [992 x i8] zeroinitializer, section ".init.data", align 1
@printk_rb_dynamic = internal global %struct.printk_ringbuffer zeroinitializer, align 8
@printk_rb_static = internal global %struct.printk_ringbuffer { %struct.prb_desc_ring { i32 12, %struct.prb_desc* getelementptr inbounds ([4096 x %struct.prb_desc], [4096 x %struct.prb_desc]* @_printk_rb_static_descs, i32 0, i32 0), %struct.printk_info* getelementptr inbounds ([4096 x %struct.printk_info], [4096 x %struct.printk_info]* bitcast (<{ %struct.printk_info, [4095 x %struct.printk_info] }>* @_printk_rb_static_infos to [4096 x %struct.printk_info]*), i32 0, i32 0), %struct.atomic64_t { i64 4294963199 }, %struct.atomic64_t { i64 4294963199 } }, %struct.prb_data_ring { i32 17, i8* getelementptr inbounds ([131072 x i8], [131072 x i8]* @__log_buf, i32 0, i32 0), %struct.atomic64_t { i64 -131072 }, %struct.atomic64_t { i64 -131072 } }, %struct.atomic64_t zeroinitializer }, align 8
@prb = internal unnamed_addr global %struct.printk_ringbuffer* @printk_rb_static, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"\013printk: dropped %llu messages\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"\016printk: log_buf_len: %u bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\016printk: early log buf free: %u(%u%%)\0A\00", align 1
@__setup_str_ignore_loglevel_setup = internal constant [16 x i8] c"ignore_loglevel\00", section ".init.rodata", align 1
@__setup_ignore_loglevel_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__setup_str_ignore_loglevel_setup, i32 0, i32 0), i32 (i8*)* @ignore_loglevel_setup, i32 1 }, section ".init.setup", align 8
@__param_str_ignore_loglevel = internal constant [23 x i8] c"printk.ignore_loglevel\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@ignore_loglevel = internal global i8 0, section ".data..read_mostly", align 1
@__param_ignore_loglevel = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_ignore_loglevel, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { i8* @ignore_loglevel } }, section "__param", align 8
@__UNIQUE_ID_ignore_logleveltype378 = internal constant [37 x i8] c"printk.parmtype=ignore_loglevel:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_loglevel379 = internal constant [96 x i8] c"printk.parm=ignore_loglevel:ignore loglevel setting (prints all kernel messages to the console)\00", section ".modinfo", align 1
@__param_str_time = internal constant [12 x i8] c"printk.time\00", align 1
@printk_time = internal global i8 0, align 4
@__param_time = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_time, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { i8* @printk_time } }, section "__param", align 8
@__UNIQUE_ID_timetype380 = internal constant [26 x i8] c"printk.parmtype=time:bool\00", section ".modinfo", align 1
@do_syslog.saved_console_loglevel = internal unnamed_addr global i32 -1, align 4
@syslog_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @syslog_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @syslog_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@syslog_seq = internal unnamed_addr global i64 0, align 8
@syslog_partial = internal unnamed_addr global i64 0, align 8
@syslog_time = internal unnamed_addr global i8 0, align 4
@trunc_msg = internal constant [12 x i8] c"<truncated>\00", align 1
@suppress_printk = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__setup_str_console_msg_format_setup = internal constant [20 x i8] c"console_msg_format=\00", section ".init.rodata", align 1
@__setup_console_msg_format_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__setup_str_console_msg_format_setup, i32 0, i32 0), i32 (i8*)* @console_msg_format_setup, i32 0 }, section ".init.setup", align 8
@__setup_str_console_setup = internal constant [9 x i8] c"console=\00", section ".init.rodata", align 1
@__setup_console_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__setup_str_console_setup, i32 0, i32 0), i32 (i8*)* @console_setup, i32 0 }, section ".init.setup", align 8
@console_suspend_enabled = dso_local global i8 1, align 4
@__setup_str_console_suspend_disable = internal constant [19 x i8] c"no_console_suspend\00", section ".init.rodata", align 1
@__setup_console_suspend_disable = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__setup_str_console_suspend_disable, i32 0, i32 0), i32 (i8*)* @console_suspend_disable, i32 0 }, section ".init.setup", align 8
@__param_str_console_suspend = internal constant [23 x i8] c"printk.console_suspend\00", align 1
@__param_console_suspend = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_console_suspend, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { i8* @console_suspend_enabled } }, section "__param", align 8
@__UNIQUE_ID_console_suspendtype387 = internal constant [37 x i8] c"printk.parmtype=console_suspend:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_console_suspend388 = internal constant [84 x i8] c"printk.parm=console_suspend:suspend console during suspend and hibernate operations\00", section ".modinfo", align 1
@printk_console_no_auto_verbose = internal global i8 0, align 4
@__param_str_console_no_auto_verbose = internal constant [31 x i8] c"printk.console_no_auto_verbose\00", align 1
@__param_console_no_auto_verbose = internal constant %struct.kernel_param { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__param_str_console_no_auto_verbose, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { i8* @printk_console_no_auto_verbose } }, section "__param", align 8
@__UNIQUE_ID_console_no_auto_verbosetype389 = internal constant [45 x i8] c"printk.parmtype=console_no_auto_verbose:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_console_no_auto_verbose390 = internal constant [96 x i8] c"printk.parm=console_no_auto_verbose:Disable console loglevel raise to highest on oops/panic/etc\00", section ".modinfo", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"\016printk: Suspending console(s) (use no_console_suspend to debug)\0A\00", align 1
@console_suspended = internal unnamed_addr global i1 false, align 4
@console_sem = internal global %struct.semaphore { %struct.raw_spinlock zeroinitializer, i32 1, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.semaphore* @console_sem to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.semaphore* @console_sem to i8*), i64 8) to %struct.list_head*) } }, align 8
@console_locked = internal unnamed_addr global i1 false, align 4
@console_may_schedule = internal unnamed_addr global i1 false, align 4
@console_unlock.ext_text = internal global [8192 x i8] zeroinitializer, align 1
@console_unlock.text = internal global [1024 x i8] zeroinitializer, align 1
@console_seq = internal unnamed_addr global i64 0, align 8
@console_dropped = internal unnamed_addr global i64 0, align 8
@exclusive_console = internal unnamed_addr global %struct.console* null, align 8
@exclusive_console_stop_seq = internal unnamed_addr global i64 0, align 8
@nr_ext_console_drivers = internal unnamed_addr global i32 0, align 4
@console_msg_format = internal unnamed_addr global i1 false, align 4
@oops_in_progress = dso_local local_unnamed_addr global i32 0, align 4
@console_drivers = dso_local local_unnamed_addr global %struct.console* null, align 8
@__setup_str_keep_bootcon_setup = internal constant [13 x i8] c"keep_bootcon\00", section ".init.rodata", align 1
@__setup_keep_bootcon_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__setup_str_keep_bootcon_setup, i32 0, i32 0), i32 (i8*)* @keep_bootcon_setup, i32 1 }, section ".init.setup", align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"console '%s%d' already registered\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"\016printk: Too late to register bootconsole %s%d\0A\00", align 1
@has_preferred_console = internal unnamed_addr global i8 0, align 4
@preferred_console = internal unnamed_addr global i32 -1, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"\016printk: %sconsole [%s%d] enabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@keep_bootcon = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"\016printk: %sconsole [%s%d] disabled\0A\00", align 1
@__con_initcall_start = external dso_local global [0 x i32], align 4
@__con_initcall_end = external dso_local global [0 x i32], align 4
@__UNIQUE_ID___addressable_printk_late_init393 = internal global i8* bitcast (i32 ()* @printk_late_init to i8*), section ".discard.addressable", align 8
@printk_pending = internal global i32 0, section ".data..percpu", align 4
@wake_up_klogd_work = internal global %struct.irq_work { %struct.__call_single_node { %struct.llist_node zeroinitializer, %union.anon.12 { i32 4 }, i16 0, i16 0 }, void (%struct.irq_work*)* @wake_up_klogd_work_func }, section ".data..percpu", align 8
@printk_ratelimit_state = dso_local global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@dump_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@dump_list = internal global %struct.list_head { %struct.list_head* @dump_list, %struct.list_head* @dump_list }, align 8
@__param_str_always_kmsg_dump = internal constant [24 x i8] c"printk.always_kmsg_dump\00", align 1
@always_kmsg_dump = internal global i8 0, align 4
@__param_always_kmsg_dump = internal constant %struct.kernel_param { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__param_str_always_kmsg_dump, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { i8* @always_kmsg_dump } }, section "__param", align 8
@__UNIQUE_ID_always_kmsg_dumptype394 = internal constant [38 x i8] c"printk.parmtype=always_kmsg_dump:bool\00", section ".modinfo", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Panic\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Oops\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Emergency\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Shutdown\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@clear_seq = internal global %struct.latched_seq zeroinitializer, align 8
@printk_cpulock_owner = internal global %struct.atomic_t { i32 -1 }, align 4
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@printk_cpulock_nested = internal global %struct.atomic_t zeroinitializer, align 4
@console_set_on_cmdline = dso_local local_unnamed_addr global i32 0, align 4
@printk_delay_msec = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.22 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"ratelimit\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@devkmsg_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"&user->lock\00", align 1
@.str.28 = private unnamed_addr constant [62 x i8] c"\014printk: %s: %d output lines suppressed due to ratelimiting\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"\013printk: log_buf over 2G is not supported.\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.30 = private unnamed_addr constant [65 x i8] c"\016printk: log_buf_len individual max cpu contribution: %d bytes\0A\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"\016printk: log_buf_len total cpu_extra contributions: %d bytes\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"\016printk: log_buf_len min size: %d bytes\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@_printk_rb_static_descs = internal global [4096 x %struct.prb_desc] [%struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc { %struct.atomic64_t { i64 -4611686014132424705 }, %struct.prb_data_blk_lpos { i64 1, i64 1 } }], align 8
@_printk_rb_static_infos = internal global <{ %struct.printk_info, [4095 x %struct.printk_info] }> <{ %struct.printk_info { i64 -4096, i64 0, i16 0, i8 0, i8 0, i32 0, %struct.dev_printk_info zeroinitializer }, [4095 x %struct.printk_info] zeroinitializer }>, align 8
@.str.34 = private unnamed_addr constant [45 x i8] c"\016printk: debug: ignoring loglevel setting.\0A\00", align 1
@check_syslog_permissions.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = private unnamed_addr constant [96 x i8] c"\014printk: %s (%d): Attempt to access syslog with CAP_SYS_ADMIN but no CAP_SYSLOG (deprecated).\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"<%u>\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"[%5lu.%06lu]\00", align 1
@printk_count_nmi = internal global i8 0, section ".data..percpu", align 1
@printk_count_nmi_early = internal global i8 0, align 1
@printk_count = internal global i8 0, section ".data..percpu", align 1
@printk_count_early = internal global i8 0, align 1
@console_owner_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@console_owner = internal global %struct.task_struct* null, align 8
@console_waiter = internal global i8 0, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"ttynull\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"ttyS\00", align 1
@console_cmdline = internal global [8 x %struct.console_cmdline] zeroinitializer, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.43 = private unnamed_addr constant [19 x i8] c"%u,%llu,%llu,%c%s;\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"SUBSYSTEM\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@call_console_drivers.dropped_text = internal global [64 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"** %lu printk messages dropped **\0A\00", align 1
@.str.48 = private unnamed_addr constant [53 x i8] c"\016printk: debug: skip boot console de-registration.\0A\00", align 1
@.str.49 = private unnamed_addr constant [102 x i8] c"\014printk: bootconsole [%s%d] uses init memory and must be disabled even before the real one is ready\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"printk:dead\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"printk:online\00", align 1
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@cpuhp_tasks_frozen = external dso_local local_unnamed_addr global i8, align 1
@llvm.compiler.used = appending global [21 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_printk_late_init393 to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_always_kmsg_dumptype394, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__UNIQUE_ID_console_no_auto_verbose390, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_console_no_auto_verbosetype389, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__UNIQUE_ID_console_suspend388, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_console_suspendtype387, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__UNIQUE_ID_ignore_loglevel379, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_ignore_logleveltype378, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_timetype380, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_always_kmsg_dump to i8*), i8* bitcast (%struct.kernel_param* @__param_console_no_auto_verbose to i8*), i8* bitcast (%struct.kernel_param* @__param_console_suspend to i8*), i8* bitcast (%struct.kernel_param* @__param_ignore_loglevel to i8*), i8* bitcast (%struct.kernel_param* @__param_time to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_console_msg_format_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_console_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_console_suspend_disable to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_control_devkmsg to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_ignore_loglevel_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_keep_bootcon_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_log_buf_len_setup to i8*)], section "llvm.metadata"
@switch.table.kmsg_dump_reason_str = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)], align 8

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @control_devkmsg(i8* noundef %str) #0 section ".init.text" {
entry:
  %call = call fastcc i32 @__control_devkmsg(i8* noundef %str) #23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @devkmsg_log, align 4
  switch i32 %0, label %if.end8 [
    i32 1, label %if.end8.sink.split
    i32 2, label %if.then5
  ]

if.then5:                                         ; preds = %if.end
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %if.end, %if.then5
  %.sink = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), %if.then5 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %if.end ]
  %call6 = call i8* @strcpy(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @devkmsg_log_str, i64 0, i64 0), i8* noundef %.sink) #24
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.end
  %1 = load i32, i32* @devkmsg_log, align 4
  %or = or i32 %1, 4
  store i32 %or, i32* @devkmsg_log, align 4
  br label %return

return:                                           ; preds = %entry, %if.end8
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devkmsg_sysctl_set_loglvl(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #1 {
entry:
  %old_str = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %old_str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %0, i8 0, i64 10, i1 false), !annotation !8
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end3.thread, label %if.then

if.end3.thread:                                   ; preds = %entry
  %call429 = call i32 @proc_dostring(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #24
  br label %cleanup

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @devkmsg_log, align 4
  %and = and i32 %1, 4
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.then
  %call = call i8* @strncpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @devkmsg_log_str, i64 0, i64 0), i64 noundef 10) #24
  %call4 = call i32 @proc_dostring(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #24
  %tobool5.not = icmp ne i32 %call4, 0
  %brmerge = or i1 %tobool.not, %tobool5.not
  br i1 %brmerge, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end3
  %call10 = call fastcc i32 @__control_devkmsg(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @devkmsg_log_str, i64 0, i64 0)) #23
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then9
  %add = add nuw i32 %call10, 1
  %conv = sext i32 %add to i64
  %2 = load i64, i64* %lenp, align 8
  %cmp11.not = icmp eq i64 %2, %conv
  br i1 %cmp11.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %if.then9
  store i32 %1, i32* @devkmsg_log, align 4
  %call15 = call i8* @strncpy(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @devkmsg_log_str, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 10) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end3.thread, %if.end3, %lor.lhs.false, %if.then, %if.then13
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -22, %if.then ], [ %call4, %if.end3 ], [ 0, %lor.lhs.false ], [ %call429, %if.end3.thread ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #25
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__control_devkmsg(i8* noundef %str) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call.i = call i64 @strlen(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #24
  %call1.i = call i32 @strncmp(i8* noundef nonnull %str, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i64 noundef %call.i) #24
  %cmp.i = icmp ne i32 %call1.i, 0
  %tobool1.not31 = icmp eq i64 %call.i, 0
  %tobool1.not = or i1 %tobool1.not31, %cmp.i
  br i1 %tobool1.not, label %if.end3, label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %call.i23 = call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)) #24
  %call1.i24 = call i32 @strncmp(i8* noundef nonnull %str, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i64 noundef %call.i23) #24
  %cmp.i25 = icmp ne i32 %call1.i24, 0
  %tobool5.not32 = icmp eq i64 %call.i23, 0
  %tobool5.not = or i1 %tobool5.not32, %cmp.i25
  br i1 %tobool5.not, label %if.end8, label %cleanup.sink.split

if.end8:                                          ; preds = %if.end3
  %call.i27 = call i64 @strlen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #24
  %call1.i28 = call i32 @strncmp(i8* noundef nonnull %str, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i64 noundef %call.i27) #24
  %cmp.i29 = icmp ne i32 %call1.i28, 0
  %tobool10.not33 = icmp eq i64 %call.i27, 0
  %tobool10.not = or i1 %tobool10.not33, %cmp.i29
  br i1 %tobool10.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.end3, %if.end
  %.sink = phi i32 [ 1, %if.end ], [ 2, %if.end3 ], [ 0, %if.end8 ]
  %call.i27.sink = phi i64 [ %call.i, %if.end ], [ %call.i23, %if.end3 ], [ %call.i27, %if.end8 ]
  store i32 %.sink, i32* @devkmsg_log, align 4
  %conv12 = trunc i64 %call.i27.sink to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %if.end8 ], [ %conv12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @printk_percpu_data_ready() local_unnamed_addr #5 {
entry:
  %.b1 = load i1, i1* @__printk_percpu_data_ready, align 1
  ret i1 %.b1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @log_buf_addr_get() local_unnamed_addr #5 {
entry:
  %0 = load i8*, i8** @log_buf, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @log_buf_len_get() local_unnamed_addr #5 {
entry:
  %0 = load i32, i32* @log_buf_len, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @devkmsg_llseek(%struct.file* nocapture noundef readonly %file, i64 noundef %offset, i32 noundef %whence) #1 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.devkmsg_user**
  %1 = load %struct.devkmsg_user*, %struct.devkmsg_user** %0, align 8
  %tobool.not = icmp eq %struct.devkmsg_user* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i64 %offset, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  switch i32 %whence, label %cleanup [
    i32 0, label %sw.bb
    i32 3, label %sw.bb4
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end3
  %2 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call = call i64 @prb_first_valid_seq(%struct.printk_ringbuffer* noundef %2) #24
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %if.end3
  %call6 = call fastcc i64 @latched_seq_read_nolock() #23
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.end3
  %3 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call9 = call i64 @prb_next_seq(%struct.printk_ringbuffer* noundef %3) #24
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb7, %sw.bb4, %sw.bb
  %call.sink = phi i64 [ %call, %sw.bb ], [ %call6, %sw.bb4 ], [ %call9, %sw.bb7 ]
  %counter.i = getelementptr inbounds %struct.devkmsg_user, %struct.devkmsg_user* %1, i64 0, i32 0, i32 0
  store volatile i64 %call.sink, i64* %counter.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3, %if.end, %entry
  %retval.0 = phi i64 [ -9, %entry ], [ -29, %if.end ], [ -22, %if.end3 ], [ 0, %cleanup.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @devkmsg_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readnone %ppos) #1 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.devkmsg_user**
  %1 = load %struct.devkmsg_user*, %struct.devkmsg_user** %0, align 8
  %record = getelementptr inbounds %struct.devkmsg_user, %struct.devkmsg_user* %1, i64 0, i32 6
  %tobool.not = icmp eq %struct.devkmsg_user* %1, null
  br i1 %tobool.not, label %cleanup68, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.devkmsg_user, %struct.devkmsg_user* %1, i64 0, i32 2
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %lock) #24
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %conv = sext i32 %call to i64
  br label %cleanup68

if.end3:                                          ; preds = %if.end
  %2 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %counter.i = getelementptr inbounds %struct.devkmsg_user, %struct.devkmsg_user* %1, i64 0, i32 0, i32 0
  %3 = load volatile i64, i64* %counter.i, align 8
  %call5 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %2, i64 noundef %3, %struct.printk_record* noundef %record) #24
  br i1 %call5, label %if.end34, label %if.then6

if.then6:                                         ; preds = %if.end3
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %4 = load i32, i32* %f_flags, align 8
  %and = and i32 %4, 2048
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %out

if.end9:                                          ; preds = %if.then6
  %5 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %6 = load volatile i64, i64* %counter.i, align 8
  %call15 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %5, i64 noundef %6, %struct.printk_record* noundef %record) #24
  br i1 %call15, label %if.end34, label %if.then16

if.then16:                                        ; preds = %if.end9
  %7 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !8
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #24
  %call18125 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @log_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #24
  %8 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %9 = load volatile i64, i64* %counter.i, align 8
  %call21126 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %8, i64 noundef %9, %struct.printk_record* noundef %record) #24
  br i1 %call21126, label %if.end28.thread, label %if.end23

if.end23:                                         ; preds = %if.then16, %cleanup
  %call18127 = phi i64 [ %call18, %cleanup ], [ %call18125, %if.then16 ]
  %tobool24.not = icmp eq i64 %call18127, 0
  br i1 %tobool24.not, label %cleanup, label %if.end28

cleanup:                                          ; preds = %if.end23
  call void @schedule() #24
  %call18 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @log_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #24
  %10 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %11 = load volatile i64, i64* %counter.i, align 8
  %call21 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %10, i64 noundef %11, %struct.printk_record* noundef %record) #24
  br i1 %call21, label %if.end28.thread, label %if.end23

if.end28.thread:                                  ; preds = %cleanup, %if.then16
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @log_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #24
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #25
  br label %if.end34

if.end28:                                         ; preds = %if.end23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #25
  %sext = shl i64 %call18127, 32
  %phi.cast = ashr exact i64 %sext, 32
  %tobool31.not = icmp eq i64 %sext, 0
  br i1 %tobool31.not, label %if.end34, label %out

if.end34:                                         ; preds = %if.end28.thread, %if.end9, %if.end28, %if.end3
  %info = getelementptr inbounds %struct.printk_record, %struct.printk_record* %record, i64 0, i32 0
  %12 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %seq35 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %12, i64 0, i32 0
  %13 = load i64, i64* %seq35, align 8
  %14 = load volatile i64, i64* %counter.i, align 8
  %cmp.not = icmp eq i64 %13, %14
  br i1 %cmp.not, label %if.end43, label %if.then39

if.then39:                                        ; preds = %if.end34
  store volatile i64 %13, i64* %counter.i, align 8
  br label %out

if.end43:                                         ; preds = %if.end34
  %arraydecay = getelementptr inbounds %struct.devkmsg_user, %struct.devkmsg_user* %1, i64 0, i32 3, i64 0
  %call46 = call fastcc i64 @info_print_ext_header(i8* noundef %arraydecay, %struct.printk_info* noundef %12) #23
  %add.ptr = getelementptr %struct.devkmsg_user, %struct.devkmsg_user* %1, i64 0, i32 3, i64 %call46
  %sub = sub i64 8192, %call46
  %text_buf = getelementptr inbounds %struct.devkmsg_user, %struct.devkmsg_user* %1, i64 0, i32 6, i32 1
  %15 = load i8*, i8** %text_buf, align 8
  %16 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %text_len = getelementptr inbounds %struct.printk_info, %struct.printk_info* %16, i64 0, i32 2
  %17 = load i16, i16* %text_len, align 8
  %conv50 = zext i16 %17 to i64
  %dev_info = getelementptr inbounds %struct.printk_info, %struct.printk_info* %16, i64 0, i32 6
  %call52 = call fastcc i64 @msg_print_ext_body(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef %15, i64 noundef %conv50, %struct.dev_printk_info* noundef %dev_info) #23
  %add = add i64 %call52, %call46
  %18 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %seq55 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %18, i64 0, i32 0
  %19 = load i64, i64* %seq55, align 8
  %add56 = add i64 %19, 1
  store volatile i64 %add56, i64* %counter.i, align 8
  %cmp57 = icmp ugt i64 %add, %count
  br i1 %cmp57, label %out, label %if.end60

if.end60:                                         ; preds = %if.end43
  %cmp11.i.i = icmp ugt i64 %add, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !9

check_copy_size.exit.i:                           ; preds = %if.end60
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !10
  br label %out

if.then.i:                                        ; preds = %if.end60
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buf, i8* noundef %arraydecay, i64 noundef %add) #24
  %phi.cmp = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp, i64 %add, i64 -14
  br label %out

out:                                              ; preds = %if.then.i, %check_copy_size.exit.i, %if.end43, %if.then6, %if.end28, %if.then39
  %ret.0 = phi i64 [ -32, %if.then39 ], [ %phi.cast, %if.end28 ], [ -11, %if.then6 ], [ -22, %if.end43 ], [ %phi.sel, %if.then.i ], [ -14, %check_copy_size.exit.i ]
  call void @mutex_unlock(%struct.mutex* noundef %lock) #24
  br label %cleanup68

cleanup68:                                        ; preds = %entry, %out, %if.then2
  %retval.0 = phi i64 [ %conv, %if.then2 ], [ %ret.0, %out ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @devkmsg_write(%struct.kiocb* nocapture noundef readonly %iocb, %struct.iov_iter* noundef %from) #1 {
entry:
  %endp = alloca i8*, align 8
  %0 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 1), align 4
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %ki_filp, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 15
  %2 = bitcast i8** %private_data to %struct.devkmsg_user**
  %3 = load %struct.devkmsg_user*, %struct.devkmsg_user** %2, align 8
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #23
  %tobool = icmp eq %struct.devkmsg_user* %3, null
  %cmp = icmp ugt i64 %call, 992
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @devkmsg_log, align 4
  %and = and i32 %4, 2
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %4, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end9.i

if.then6:                                         ; preds = %if.end3
  %rs = getelementptr inbounds %struct.devkmsg_user, %struct.devkmsg_user* %3, i64 0, i32 1
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !11
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 81, i64 0
  %call8 = call i32 @___ratelimit(%struct.ratelimit_state* noundef %rs, i8* noundef %arraydecay) #24
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end9.i

if.end9.i:                                        ; preds = %if.end3, %if.then6
  %add = add nuw nsw i64 %call, 1
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %add, i32 noundef 3264) #24
  %cmp14 = icmp eq i8* %call10.i, null
  br i1 %cmp14, label %cleanup, label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.end9.i
  %arrayidx = getelementptr i8, i8* %call10.i, i64 %call
  store i8 0, i8* %arrayidx, align 1
  %call3.i.i = call i64 @_copy_from_iter(i8* noundef nonnull %call10.i, i64 noundef %call, %struct.iov_iter* noundef %from) #24
  %cmp.i78 = icmp eq i64 %call3.i.i, %call
  br i1 %cmp.i78, label %if.end19, label %if.then18, !prof !12

if.then18:                                        ; preds = %copy_from_iter.exit.i
  call void @iov_iter_revert(%struct.iov_iter* noundef %from, i64 noundef %call3.i.i) #24
  br label %cleanup.sink.split

if.end19:                                         ; preds = %copy_from_iter.exit.i
  %7 = load i8, i8* %call10.i, align 128
  %cmp21 = icmp eq i8 %7, 60
  br i1 %cmp21, label %if.then23, label %if.end41

if.then23:                                        ; preds = %if.end19
  %8 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #25
  store i8* null, i8** %endp, align 8
  %add.ptr = getelementptr i8, i8* %call10.i, i64 1
  %call24 = call i64 @simple_strtoul(i8* noundef %add.ptr, i8** noundef nonnull %endp, i32 noundef 10) #24
  %conv25 = trunc i64 %call24 to i32
  %9 = load i8*, i8** %endp, align 8
  %tobool26.not = icmp eq i8* %9, null
  br i1 %tobool26.not, label %if.end40, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then23
  %10 = load i8, i8* %9, align 1
  %cmp29 = icmp eq i8 %10, 62
  br i1 %cmp29, label %if.then31, label %if.end40

if.then31:                                        ; preds = %land.lhs.true
  %and32 = and i32 %conv25, 7
  %shr = lshr i32 %conv25, 3
  %and33 = and i32 %shr, 255
  %cmp34.not = icmp eq i32 %and33, 0
  %spec.select = select i1 %cmp34.not, i32 1, i32 %and33
  %incdec.ptr = getelementptr i8, i8* %9, i64 1
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %land.lhs.true, %if.then23
  %line.0 = phi i8* [ %incdec.ptr, %if.then31 ], [ %call10.i, %land.lhs.true ], [ %call10.i, %if.then23 ]
  %level.0 = phi i32 [ %and32, %if.then31 ], [ %0, %land.lhs.true ], [ %0, %if.then23 ]
  %facility.1 = phi i32 [ %spec.select, %if.then31 ], [ 1, %land.lhs.true ], [ 1, %if.then23 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #25
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end19
  %line.1 = phi i8* [ %line.0, %if.end40 ], [ %call10.i, %if.end19 ]
  %level.1 = phi i32 [ %level.0, %if.end40 ], [ %0, %if.end19 ]
  %facility.2 = phi i32 [ %facility.1, %if.end40 ], [ 1, %if.end19 ]
  call void (i32, i32, i8*, ...) @devkmsg_emit(i32 noundef %facility.2, i32 noundef %level.1, i8* undef, i8* noundef %line.1) #27
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then18, %if.end41
  %retval.0.ph = phi i64 [ -14, %if.then18 ], [ %call, %if.end41 ]
  call void @kfree(i8* noundef nonnull %call10.i) #24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.i, %if.then6, %if.end, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ %call, %if.end ], [ %call, %if.then6 ], [ -12, %if.end9.i ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devkmsg_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #1 {
entry:
  %info = alloca %struct.printk_info, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.devkmsg_user**
  %1 = load %struct.devkmsg_user*, %struct.devkmsg_user** %0, align 8
  %2 = bitcast %struct.printk_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %2) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 88, i1 false), !annotation !8
  %tobool.not = icmp eq %struct.devkmsg_user* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #23
  %3 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %counter.i = getelementptr inbounds %struct.devkmsg_user, %struct.devkmsg_user* %1, i64 0, i32 0, i32 0
  %4 = load volatile i64, i64* %counter.i, align 8
  %call1 = call i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %3, i64 noundef %4, %struct.printk_info* noundef nonnull %info, i32* noundef null) #24
  br i1 %call1, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %seq3 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 0
  %5 = load i64, i64* %seq3, align 8
  %6 = load volatile i64, i64* %counter.i, align 8
  %cmp.not = icmp eq i64 %5, %6
  %. = select i1 %cmp.not, i32 65, i32 75
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 40, %entry ], [ 0, %if.end ], [ %., %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %2) #25
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devkmsg_open(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef %file) #1 {
entry:
  %0 = load i32, i32* @devkmsg_log, align 4
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %1 = load i32, i32* %f_flags, align 8
  %and1 = and i32 %1, 3
  %cmp.not = icmp eq i32 %and1, 1
  br i1 %cmp.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call fastcc i32 @check_syslog_permissions(i32 noundef 3, i32 noundef 0) #23
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.then2, %if.end
  %call.i1.i.i = call noalias align 4096 i8* @kmalloc_order(i64 noundef 16576, i32 noundef 3264, i32 noundef 3) #24
  %tobool8.not = icmp eq i8* %call.i1.i.i, null
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %rs = getelementptr inbounds i8, i8* %call.i1.i.i, i64 8
  %2 = bitcast i8* %rs to %struct.ratelimit_state*
  call fastcc void @ratelimit_default_init(%struct.ratelimit_state* noundef %2) #23
  call fastcc void @ratelimit_set_flags(%struct.ratelimit_state* noundef %2) #23
  %lock = getelementptr inbounds i8, i8* %call.i1.i.i, i64 48
  %3 = bitcast i8* %lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @devkmsg_open.__key) #24
  %record = getelementptr inbounds i8, i8* %call.i1.i.i, i64 16552
  %4 = bitcast i8* %record to %struct.printk_record*
  %info = getelementptr inbounds i8, i8* %call.i1.i.i, i64 8272
  %5 = bitcast i8* %info to %struct.printk_info*
  %text_buf = getelementptr inbounds i8, i8* %call.i1.i.i, i64 8360
  call fastcc void @prb_rec_init_rd(%struct.printk_record* noundef %4, %struct.printk_info* noundef %5, i8* noundef %text_buf, i32 noundef 8192) #23
  %6 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call12 = call i64 @prb_first_valid_seq(%struct.printk_ringbuffer* noundef %6) #24
  %counter.i = bitcast i8* %call.i1.i.i to i64*
  store volatile i64 %call12, i64* %counter.i, align 4096
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  store i8* %call.i1.i.i, i8** %private_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then2, %entry, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -1, %entry ], [ %call, %if.then2 ], [ -12, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devkmsg_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) #1 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = load i8*, i8** %private_data, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %rs = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %rs to %struct.ratelimit_state*
  call fastcc void @ratelimit_state_exit(%struct.ratelimit_state* noundef %1) #23
  call void @kfree(i8* noundef nonnull %0) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @log_buf_len_setup(i8* noundef %str) #0 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @memparse(i8* noundef nonnull %str, i8** noundef nonnull %str.addr) #24
  call fastcc void @log_buf_len_update(i64 noundef %call) #27
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @setup_log_buf(i32 noundef %early) local_unnamed_addr #0 section ".init.text" {
entry:
  %info = alloca %struct.printk_info, align 8
  %r = alloca %struct.printk_record, align 8
  %0 = bitcast %struct.printk_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !8
  %1 = bitcast %struct.printk_record* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !8
  %tobool = icmp ne i32 %early, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @set_percpu_data_ready() #27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** @log_buf, align 8
  %cmp.not = icmp eq i8* %2, getelementptr inbounds ([131072 x i8], [131072 x i8]* @__log_buf, i64 0, i64 0)
  br i1 %cmp.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = load i64, i64* @new_log_buf_len, align 8
  %tobool4 = icmp ne i64 %3, 0
  %or.cond = select i1 %tobool, i1 true, i1 %tobool4
  br i1 %or.cond, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  call fastcc void @log_buf_add_cpu() #27
  %.pr = load i64, i64* @new_log_buf_len, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  %4 = phi i64 [ %.pr, %if.then5 ], [ %3, %if.end2 ]
  %tobool7.not = icmp eq i64 %4, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %shr = lshr i64 %4, 5
  %conv = trunc i64 %shr to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end9
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 noundef %4) #27
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %4, i64 noundef 8, i64 noundef 0, i64 noundef 0, i32 noundef -1) #24
  %tobool15.not = icmp eq i8* %call.i, null
  br i1 %tobool15.not, label %do.end23, label %if.end26, !prof !9

do.end23:                                         ; preds = %if.end13
  %5 = load i64, i64* @new_log_buf_len, align 8
  %call25 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 noundef %5) #27
  br label %cleanup

if.end26:                                         ; preds = %if.end13
  %conv27 = and i64 %shr, 4294967295
  %mul = mul nuw nsw i64 %conv27, 24
  %call.i208 = call i8* @memblock_alloc_try_nid(i64 noundef %mul, i64 noundef 8, i64 noundef 0, i64 noundef 0, i32 noundef -1) #24
  %6 = bitcast i8* %call.i208 to %struct.prb_desc*
  %tobool29.not = icmp eq i8* %call.i208, null
  br i1 %tobool29.not, label %do.end42, label %if.end45, !prof !9

do.end42:                                         ; preds = %if.end26
  %call44 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 noundef %mul) #27
  br label %err_free_log_buf

if.end45:                                         ; preds = %if.end26
  %mul47 = mul nuw nsw i64 %conv27, 88
  %call.i209 = call i8* @memblock_alloc_try_nid(i64 noundef %mul47, i64 noundef 8, i64 noundef 0, i64 noundef 0, i32 noundef -1) #24
  %tobool49.not = icmp eq i8* %call.i209, null
  br i1 %tobool49.not, label %do.end62, label %if.end65, !prof !9

do.end62:                                         ; preds = %if.end45
  %call64 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 noundef %mul47) #27
  call void @memblock_free_ptr(i8* noundef nonnull %call.i208, i64 noundef %mul) #24
  br label %err_free_log_buf

if.end65:                                         ; preds = %if.end45
  %7 = bitcast i8* %call.i209 to %struct.printk_info*
  call fastcc void @prb_rec_init_rd(%struct.printk_record* noundef nonnull %r, %struct.printk_info* noundef nonnull %info, i8* noundef getelementptr inbounds ([992 x i8], [992 x i8]* @setup_text_buf, i64 0, i64 0), i32 noundef 992) #23
  %8 = load i64, i64* @new_log_buf_len, align 8
  %call70 = call fastcc i32 @__ilog2_u64(i64 noundef %8) #28
  %call84 = call fastcc i32 @__ilog2_u32(i32 noundef %conv) #28
  call void @prb_init(%struct.printk_ringbuffer* noundef nonnull @printk_rb_dynamic, i8* noundef nonnull %call.i, i32 noundef %call70, %struct.prb_desc* noundef nonnull %6, i32 noundef %call84, %struct.printk_info* noundef nonnull %7) #24
  %call92 = call fastcc i64 @arch_local_irq_save() #23
  %9 = load i64, i64* @new_log_buf_len, align 8
  %conv97 = trunc i64 %9 to i32
  store i32 %conv97, i32* @log_buf_len, align 4
  store i8* %call.i, i8** @log_buf, align 8
  store i64 0, i64* @new_log_buf_len, align 8
  %call98210 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef nonnull @printk_rb_static, i64 noundef 0, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call98210, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end65
  %info105 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %free.0211 = phi i32 [ 131072, %for.body.lr.ph ], [ %10, %for.body ]
  %call99 = call fastcc i32 @add_to_rb(%struct.printk_record* noundef nonnull %r) #27
  %10 = call i32 @llvm.usub.sat.i32(i32 %free.0211, i32 %call99)
  %11 = load %struct.printk_info*, %struct.printk_info** %info105, align 8
  %seq106 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %11, i64 0, i32 0
  %12 = load i64, i64* %seq106, align 8
  %add = add i64 %12, 1
  %call98 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef nonnull @printk_rb_static, i64 noundef %add, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call98, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end65
  %seq.0.lcssa = phi i64 [ 0, %if.end65 ], [ %add, %for.body ]
  %free.0.lcssa = phi i32 [ 131072, %if.end65 ], [ %10, %for.body ]
  store %struct.printk_ringbuffer* @printk_rb_dynamic, %struct.printk_ringbuffer** @prb, align 8
  call fastcc void @arch_local_irq_restore(i64 noundef %call92) #23
  %call122213 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef nonnull @printk_rb_static, i64 noundef %seq.0.lcssa, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call122213, label %for.body123.lr.ph, label %for.end135

for.body123.lr.ph:                                ; preds = %for.end
  %info132 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  br label %for.body123

for.body123:                                      ; preds = %for.body123.lr.ph, %for.body123
  %free.2214 = phi i32 [ %free.0.lcssa, %for.body123.lr.ph ], [ %13, %for.body123 ]
  %call124 = call fastcc i32 @add_to_rb(%struct.printk_record* noundef nonnull %r) #27
  %13 = call i32 @llvm.usub.sat.i32(i32 %free.2214, i32 %call124)
  %14 = load %struct.printk_info*, %struct.printk_info** %info132, align 8
  %seq133 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %14, i64 0, i32 0
  %15 = load i64, i64* %seq133, align 8
  %add134 = add i64 %15, 1
  %call122 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef nonnull @printk_rb_static, i64 noundef %add134, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call122, label %for.body123, label %for.end135

for.end135:                                       ; preds = %for.body123, %for.end
  %seq.1.lcssa = phi i64 [ %seq.0.lcssa, %for.end ], [ %add134, %for.body123 ]
  %free.2.lcssa = phi i32 [ %free.0.lcssa, %for.end ], [ %13, %for.body123 ]
  %call136 = call i64 @prb_next_seq(%struct.printk_ringbuffer* noundef nonnull @printk_rb_static) #24
  %cmp137.not = icmp eq i64 %seq.1.lcssa, %call136
  br i1 %cmp137.not, label %do.end150, label %do.end142

do.end142:                                        ; preds = %for.end135
  %call144 = call i64 @prb_next_seq(%struct.printk_ringbuffer* noundef nonnull @printk_rb_static) #24
  %sub145 = sub i64 %call144, %seq.1.lcssa
  %call146 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 noundef %sub145) #27
  br label %do.end150

do.end150:                                        ; preds = %for.end135, %do.end142
  %16 = load i32, i32* @log_buf_len, align 4
  %call152 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 noundef %16) #27
  %mul157 = mul i32 %free.2.lcssa, 100
  %div = lshr i32 %mul157, 17
  %call158 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 noundef %free.2.lcssa, i32 noundef %div) #27
  br label %cleanup

err_free_log_buf:                                 ; preds = %do.end62, %do.end42
  %17 = load i64, i64* @new_log_buf_len, align 8
  call void @memblock_free_ptr(i8* noundef nonnull %call.i, i64 noundef %17) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %err_free_log_buf, %do.end150, %do.end23, %do.end
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #25
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal fastcc void @set_percpu_data_ready() unnamed_addr #6 section ".init.text" {
entry:
  store i1 true, i1* @__printk_percpu_data_ready, align 1
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @log_buf_add_cpu() unnamed_addr #0 section ".init.text" {
entry:
  %call = call fastcc i32 @cpumask_weight() #23
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @cpumask_weight() #23
  %sub = shl i32 %call1, 12
  %mul = add i32 %sub, -4096
  %cmp2 = icmp ult i32 %mul, 65537
  br i1 %cmp2, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.30, i64 0, i64 0), i32 noundef 4096) #27
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.31, i64 0, i64 0), i32 noundef %mul) #27
  %call15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i32 noundef 131072) #27
  %add = add i32 %sub, 126976
  %conv = zext i32 %add to i64
  call fastcc void @log_buf_len_update(i64 noundef %conv) #27
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %do.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @_printk(i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vprintk(i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #25
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @prb_rec_init_rd(%struct.printk_record* nocapture noundef writeonly %r, %struct.printk_info* noundef %info, i8* noundef %text_buf, i32 noundef %text_buf_size) unnamed_addr #7 {
entry:
  %info1 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  store %struct.printk_info* %info, %struct.printk_info** %info1, align 8
  %text_buf2 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  store i8* %text_buf, i8** %text_buf2, align 8
  %text_buf_size3 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 2
  store i32 %text_buf_size, i32* %text_buf_size3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prb_init(%struct.printk_ringbuffer* noundef, i8* noundef, i32 noundef, %struct.prb_desc* noundef, i32 noundef, %struct.printk_info* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u64(i64 noundef %n) unnamed_addr #9 {
entry:
  %cmp.i = icmp eq i64 %n, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %n, i1 false) #25, !range !13
  %1 = trunc i64 %0 to i32
  %conv.i.op = sub nsw i32 63, %1
  %sub = select i1 %cmp.i, i32 -1, i32 %conv.i.op
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u32(i32 noundef %n) unnamed_addr #9 {
entry:
  %0 = call i32 @llvm.ctlz.i32(i32 %n, i1 false) #25, !range !14
  %sub = sub nsw i32 31, %0
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #23
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @prb_read_valid(%struct.printk_ringbuffer* noundef, i64 noundef, %struct.printk_record* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @add_to_rb(%struct.printk_record* nocapture noundef readonly %r) unnamed_addr #0 section ".init.text" {
entry:
  %e = alloca %struct.prb_reserved_entry, align 8
  %dest_r = alloca %struct.printk_record, align 8
  %0 = bitcast %struct.prb_reserved_entry* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  %1 = bitcast %struct.printk_record* %dest_r to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !8
  %info = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  %2 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %text_len = getelementptr inbounds %struct.printk_info, %struct.printk_info* %2, i64 0, i32 2
  %3 = load i16, i16* %text_len, align 8
  %conv = zext i16 %3 to i32
  call fastcc void @prb_rec_init_wr(%struct.printk_record* noundef nonnull %dest_r, i32 noundef %conv) #23
  %call = call i1 @prb_reserve(%struct.prb_reserved_entry* noundef nonnull %e, %struct.printk_ringbuffer* noundef nonnull @printk_rb_dynamic, %struct.printk_record* noundef nonnull %dest_r) #24
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %text_buf = getelementptr inbounds %struct.printk_record, %struct.printk_record* %dest_r, i64 0, i32 1
  %4 = load i8*, i8** %text_buf, align 8
  %text_buf1 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  %5 = load i8*, i8** %text_buf1, align 8
  %6 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %text_len4 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %6, i64 0, i32 2
  %7 = load i16, i16* %text_len4, align 8
  %conv5 = zext i16 %7 to i64
  %call6 = call i8* @memcpy(i8* noundef %4, i8* noundef %5, i64 noundef %conv5) #24
  %8 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %text_len8 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %8, i64 0, i32 2
  %9 = load i16, i16* %text_len8, align 8
  %info9 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %dest_r, i64 0, i32 0
  %10 = load %struct.printk_info*, %struct.printk_info** %info9, align 8
  %text_len10 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %10, i64 0, i32 2
  store i16 %9, i16* %text_len10, align 8
  %11 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %facility = getelementptr inbounds %struct.printk_info, %struct.printk_info* %11, i64 0, i32 3
  %12 = load i8, i8* %facility, align 2
  %facility13 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %10, i64 0, i32 3
  store i8 %12, i8* %facility13, align 2
  %13 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %level = getelementptr inbounds %struct.printk_info, %struct.printk_info* %13, i64 0, i32 4
  %bf.load = load i8, i8* %level, align 1
  %bf.lshr = and i8 %bf.load, -32
  %level16 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %10, i64 0, i32 4
  %bf.load17 = load i8, i8* %level16, align 1
  %bf.clear = and i8 %bf.load17, 31
  %bf.set = or i8 %bf.clear, %bf.lshr
  store i8 %bf.set, i8* %level16, align 1
  %14 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %flags = getelementptr inbounds %struct.printk_info, %struct.printk_info* %14, i64 0, i32 4
  %bf.load19 = load i8, i8* %flags, align 1
  %bf.clear20 = and i8 %bf.load19, 31
  %bf.set26 = or i8 %bf.clear20, %bf.lshr
  store i8 %bf.set26, i8* %level16, align 1
  %15 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %ts_nsec = getelementptr inbounds %struct.printk_info, %struct.printk_info* %15, i64 0, i32 1
  %16 = load i64, i64* %ts_nsec, align 8
  %ts_nsec29 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %10, i64 0, i32 1
  store i64 %16, i64* %ts_nsec29, align 8
  %17 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %caller_id = getelementptr inbounds %struct.printk_info, %struct.printk_info* %17, i64 0, i32 5
  %18 = load i32, i32* %caller_id, align 4
  %caller_id32 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %10, i64 0, i32 5
  store i32 %18, i32* %caller_id32, align 4
  %19 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %10, i64 0, i32 6, i32 0, i64 0
  %20 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %21 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %20, i64 0, i32 6, i32 0, i64 0
  %call36 = call i8* @memcpy(i8* noundef %19, i8* noundef %21, i64 noundef 64) #24
  call void @prb_final_commit(%struct.prb_reserved_entry* noundef nonnull %e) #24
  %call37 = call i32 @prb_record_text_space(%struct.prb_reserved_entry* noundef nonnull %e) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call37, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #25, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prb_next_seq(%struct.printk_ringbuffer* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free_ptr(i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @ignore_loglevel_setup(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i8 1, i8* @ignore_loglevel, align 1
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0)) #27
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_syslog(i32 noundef %type, i8* noundef %buf, i32 noundef %len, i32 noundef %source) local_unnamed_addr #1 {
entry:
  %info = alloca %struct.printk_info, align 8
  %line_count = alloca i32, align 4
  %0 = bitcast %struct.printk_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !8
  %call = call fastcc i32 @check_syslog_permissions(i32 noundef %type, i32 noundef %source) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %type, label %sw.default [
    i32 0, label %cleanup
    i32 1, label %cleanup
    i32 2, label %sw.bb
    i32 4, label %sw.bb12
    i32 3, label %sw.bb13
    i32 5, label %sw.bb30
    i32 6, label %sw.bb31
    i32 7, label %sw.bb36
    i32 8, label %sw.bb41
    i32 9, label %sw.bb53
    i32 10, label %sw.bb87
  ]

sw.bb:                                            ; preds = %if.end
  %tobool1 = icmp eq i8* %buf, null
  %cmp = icmp slt i32 %len, 0
  %or.cond = or i1 %tobool1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %sw.bb
  %tobool4.not = icmp eq i32 %len, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %conv119 = zext i32 %len to i64
  %call7 = call fastcc i64 @__range_ok(i8* noundef nonnull %buf, i64 noundef %conv119) #23
  %tobool8.not = icmp eq i64 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @syslog_print(i8* noundef nonnull %buf, i32 noundef %len) #23
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  br label %sw.bb13

sw.bb13:                                          ; preds = %if.end, %sw.bb12
  %clear.0.off0 = phi i1 [ false, %if.end ], [ true, %sw.bb12 ]
  %tobool14 = icmp eq i8* %buf, null
  %cmp16 = icmp slt i32 %len, 0
  %or.cond90 = or i1 %tobool14, %cmp16
  br i1 %or.cond90, label %cleanup, label %if.end19

if.end19:                                         ; preds = %sw.bb13
  %tobool20.not = icmp eq i32 %len, 0
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end19
  %conv23120 = zext i32 %len to i64
  %call24 = call fastcc i64 @__range_ok(i8* noundef nonnull %buf, i64 noundef %conv23120) #23
  %tobool25.not = icmp eq i64 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call29 = call fastcc i32 @syslog_print_all(i8* noundef nonnull %buf, i32 noundef %len, i1 noundef %clear.0.off0) #23
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  call fastcc void @syslog_clear() #23
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  %1 = load i32, i32* @do_syslog.saved_console_loglevel, align 4
  %cmp32 = icmp eq i32 %1, -1
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %sw.bb31
  %2 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 0), align 4
  store i32 %2, i32* @do_syslog.saved_console_loglevel, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %sw.bb31
  %3 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 2), align 4
  store i32 %3, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 0), align 4
  br label %cleanup

sw.bb36:                                          ; preds = %if.end
  %4 = load i32, i32* @do_syslog.saved_console_loglevel, align 4
  %cmp37.not = icmp eq i32 %4, -1
  br i1 %cmp37.not, label %cleanup, label %if.then39

if.then39:                                        ; preds = %sw.bb36
  store i32 %4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 0), align 4
  store i32 -1, i32* @do_syslog.saved_console_loglevel, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  %5 = add i32 %len, -9
  %6 = icmp ult i32 %5, -8
  br i1 %6, label %cleanup, label %if.end48

if.end48:                                         ; preds = %sw.bb41
  %7 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 2), align 4
  %cmp49 = icmp sgt i32 %7, %len
  %spec.select = select i1 %cmp49, i32 %7, i32 %len
  store i32 %spec.select, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 0), align 4
  store i32 -1, i32* @do_syslog.saved_console_loglevel, align 4
  br label %cleanup

sw.bb53:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* noundef nonnull @syslog_lock) #24
  %8 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %9 = load i64, i64* @syslog_seq, align 8
  %call54 = call i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %8, i64 noundef %9, %struct.printk_info* noundef nonnull %info, i32* noundef null) #24
  br i1 %call54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %sw.bb53
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syslog_lock) #24
  br label %cleanup

if.end56:                                         ; preds = %sw.bb53
  %seq = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 0
  %10 = load i64, i64* %seq, align 8
  %11 = load i64, i64* @syslog_seq, align 8
  %cmp57.not = icmp eq i64 %10, %11
  br i1 %cmp57.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end56
  store i64 %10, i64* @syslog_seq, align 8
  store i64 0, i64* @syslog_partial, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end56
  %cmp62 = icmp eq i32 %source, 1
  br i1 %cmp62, label %if.then64, label %if.else

if.then64:                                        ; preds = %if.end61
  %12 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call65 = call i64 @prb_next_seq(%struct.printk_ringbuffer* noundef %12) #24
  %13 = load i64, i64* @syslog_seq, align 8
  %sub = sub i64 %call65, %13
  br label %if.end86

if.else:                                          ; preds = %if.end61
  %14 = load i64, i64* @syslog_partial, align 8
  %15 = load i8, i8* @syslog_time, align 4
  %16 = load i8, i8* @printk_time, align 4
  %17 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #25
  store i32 0, i32* %line_count, align 4, !annotation !8
  %18 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call74121 = call i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %18, i64 noundef %10, %struct.printk_info* noundef nonnull %info, i32* noundef nonnull %line_count) #24
  br i1 %call74121, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.else
  %tobool67.not = icmp eq i64 %14, 0
  %cond.v.v = select i1 %tobool67.not, i8 %16, i8 %15
  %19 = and i8 %cond.v.v, 1
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %time.0.off0.in123 = phi i8 [ %21, %for.body ], [ %19, %for.body.preheader ]
  %error.0122 = phi i64 [ %phi.cast, %for.body ], [ 0, %for.body.preheader ]
  %time.0.off0 = icmp ne i8 %time.0.off0.in123, 0
  %20 = load i32, i32* %line_count, align 4
  %call76 = call fastcc i64 @get_record_print_text_size(%struct.printk_info* noundef nonnull %info, i32 noundef %20, i1 noundef true, i1 noundef %time.0.off0) #23
  %add = add i64 %call76, %error.0122
  %21 = load i8, i8* @printk_time, align 4, !range !16
  %22 = load i64, i64* %seq, align 8
  %add82 = add i64 %22, 1
  %sext = shl i64 %add, 32
  %phi.cast = ashr exact i64 %sext, 32
  %23 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call74 = call i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %23, i64 noundef %add82, %struct.printk_info* noundef nonnull %info, i32* noundef nonnull %line_count) #24
  br i1 %call74, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.else
  %error.0.lcssa = phi i64 [ 0, %if.else ], [ %phi.cast, %for.body ]
  %24 = load i64, i64* @syslog_partial, align 8
  %sub84 = sub i64 %error.0.lcssa, %24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #25
  br label %if.end86

if.end86:                                         ; preds = %for.end, %if.then64
  %error.1.in = phi i64 [ %sub, %if.then64 ], [ %sub84, %for.end ]
  %error.1 = trunc i64 %error.1.in to i32
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syslog_lock) #24
  br label %cleanup

sw.bb87:                                          ; preds = %if.end
  %25 = load i32, i32* @log_buf_len, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end27, %sw.bb30, %if.end35, %if.end48, %if.end86, %if.end, %if.end, %sw.bb87, %sw.default, %if.then39, %sw.bb36, %sw.bb41, %if.end22, %if.end19, %sw.bb13, %if.end6, %if.end3, %sw.bb, %entry, %if.then55
  %retval.0 = phi i32 [ 0, %if.then55 ], [ %call, %entry ], [ -22, %sw.bb ], [ 0, %if.end3 ], [ -14, %if.end6 ], [ -22, %sw.bb13 ], [ 0, %if.end19 ], [ -14, %if.end22 ], [ -22, %sw.bb41 ], [ -22, %sw.default ], [ %25, %sw.bb87 ], [ %error.1, %if.end86 ], [ 0, %if.end48 ], [ 0, %if.then39 ], [ 0, %sw.bb36 ], [ 0, %if.end35 ], [ 0, %sw.bb30 ], [ %call29, %if.end27 ], [ %call11, %if.end10 ], [ 0, %if.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #25
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_syslog_permissions(i32 noundef %type, i32 noundef %source) unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %source, 1
  %cmp1 = icmp ne i32 %type, 1
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @syslog_action_restricted(i32 noundef %type) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i1 @capable(i32 noundef 34) #24
  br i1 %call3, label %return, label %if.end5

if.end5:                                          ; preds = %if.then2
  %call6 = call i1 @capable(i32 noundef 21) #24
  br i1 %call6, label %if.then7, label %return

if.then7:                                         ; preds = %if.end5
  %.b33 = load i1, i1* @check_syslog_permissions.__already_done, align 1
  br i1 %.b33, label %return, label %if.then13, !prof !12

if.then13:                                        ; preds = %if.then7
  store i1 true, i1* @check_syslog_permissions.__already_done, align 1
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %call16 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %1) #23
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.35, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %call16) #27
  br label %return

return:                                           ; preds = %entry, %if.then2, %if.end, %if.then13, %if.then7, %if.end5
  %retval.0 = phi i32 [ -1, %if.end5 ], [ 0, %if.then7 ], [ 0, %if.then13 ], [ 0, %if.end ], [ 0, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #25, !srcloc !17
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @syslog_print(i8* noundef %buf, i32 noundef %size) unnamed_addr #1 {
entry:
  %info = alloca %struct.printk_info, align 8
  %r = alloca %struct.printk_record, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.printk_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !8
  %1 = bitcast %struct.printk_record* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !8
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 10), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef 3264) #24
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup81, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @prb_rec_init_rd(%struct.printk_record* noundef nonnull %r, %struct.printk_info* noundef nonnull %info, i8* noundef nonnull %call.i.i, i32 noundef 1024) #23
  call void @mutex_lock(%struct.mutex* noundef nonnull @syslog_lock) #24
  %3 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  %.pre = load i64, i64* @syslog_seq, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond20, %if.end
  %4 = phi i64 [ %8, %do.cond20 ], [ %.pre, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syslog_lock) #24
  %5 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call5 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %5, i64 noundef %4, %struct.printk_record* noundef null) #24
  br i1 %call5, label %do.cond20.sink.split, label %if.then6

if.then6:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !8
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #24
  %call8140 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @log_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #24
  %6 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call9141 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %6, i64 noundef %4, %struct.printk_record* noundef null) #24
  br i1 %call9141, label %if.end15.thread147, label %if.end11

if.end11:                                         ; preds = %if.then6, %cleanup
  %call8142 = phi i64 [ %call8, %cleanup ], [ %call8140, %if.then6 ]
  %tobool12.not = icmp eq i64 %call8142, 0
  br i1 %tobool12.not, label %cleanup, label %if.end15

cleanup:                                          ; preds = %if.end11
  call void @schedule() #24
  %call8 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @log_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #24
  %7 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call9 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %7, i64 noundef %4, %struct.printk_record* noundef null) #24
  br i1 %call9, label %if.end15.thread147, label %if.end11

if.end15.thread147:                               ; preds = %cleanup, %if.then6
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @log_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #24
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #25
  br label %do.cond20.sink.split

if.end15:                                         ; preds = %if.end11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #25
  %conv = trunc i64 %call8142 to i32
  call void @mutex_lock(%struct.mutex* noundef nonnull @syslog_lock) #24
  %tobool17.not = icmp eq i32 %conv, 0
  br i1 %tobool17.not, label %do.cond20, label %out.loopexit151

do.cond20.sink.split:                             ; preds = %do.body, %if.end15.thread147
  call void @mutex_lock(%struct.mutex* noundef nonnull @syslog_lock) #24
  br label %do.cond20

do.cond20:                                        ; preds = %do.cond20.sink.split, %if.end15
  %8 = load i64, i64* @syslog_seq, align 8
  %cmp.not = icmp eq i64 %8, %4
  br i1 %cmp.not, label %do.body23.preheader, label %do.body

do.body23.preheader:                              ; preds = %do.cond20
  %info27 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  %9 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call24158 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %9, i64 noundef %4, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call24158, label %if.end26, label %out

if.end26:                                         ; preds = %do.body23.preheader, %cleanup73.do.body23_crit_edge
  %buf.addr.0162 = phi i8* [ %add.ptr72, %cleanup73.do.body23_crit_edge ], [ %buf, %do.body23.preheader ]
  %len.0160 = phi i32 [ %conv68, %cleanup73.do.body23_crit_edge ], [ 0, %do.body23.preheader ]
  %size.addr.0159 = phi i32 [ %conv71, %cleanup73.do.body23_crit_edge ], [ %size, %do.body23.preheader ]
  %10 = load %struct.printk_info*, %struct.printk_info** %info27, align 8
  %seq28 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %10, i64 0, i32 0
  %11 = load i64, i64* %seq28, align 8
  %12 = load i64, i64* @syslog_seq, align 8
  %cmp29.not = icmp eq i64 %11, %12
  br i1 %cmp29.not, label %if.end34, label %if.end34.thread

if.end34.thread:                                  ; preds = %if.end26
  store i64 %11, i64* @syslog_seq, align 8
  store i64 0, i64* @syslog_partial, align 8
  br label %if.then36

if.end34:                                         ; preds = %if.end26
  %.pr = load i64, i64* @syslog_partial, align 8
  %tobool35.not = icmp eq i64 %.pr, 0
  br i1 %tobool35.not, label %if.then36, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  %.pre146 = load i8, i8* @syslog_time, align 4, !range !16
  br label %if.end38

if.then36:                                        ; preds = %if.end34.thread, %if.end34
  %13 = load i8, i8* @printk_time, align 4, !range !16
  store i8 %13, i8* @syslog_time, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end34.if.end38_crit_edge, %if.then36
  %14 = phi i8 [ %13, %if.then36 ], [ %.pre146, %if.end34.if.end38_crit_edge ]
  %15 = phi i64 [ 0, %if.then36 ], [ %.pr, %if.end34.if.end38_crit_edge ]
  %tobool39 = icmp ne i8 %14, 0
  %call40 = call fastcc i64 @record_print_text(%struct.printk_record* noundef nonnull %r, i1 noundef true, i1 noundef %tobool39) #23
  %16 = load i64, i64* @syslog_partial, align 8
  %sub = sub i64 %call40, %16
  %conv41 = sext i32 %size.addr.0159 to i64
  %cmp42.not = icmp ugt i64 %sub, %conv41
  br i1 %cmp42.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end38
  %17 = load %struct.printk_info*, %struct.printk_info** %info27, align 8
  %seq46 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %17, i64 0, i32 0
  %18 = load i64, i64* %seq46, align 8
  %add = add i64 %18, 1
  store i64 %add, i64* @syslog_seq, align 8
  br label %if.end54

if.else:                                          ; preds = %if.end38
  %tobool48.not = icmp eq i32 %len.0160, 0
  br i1 %tobool48.not, label %if.then49, label %out

if.then49:                                        ; preds = %if.else
  %add51 = add i64 %16, %conv41
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.then44
  %storemerge = phi i64 [ 0, %if.then44 ], [ %add51, %if.then49 ]
  %n.0 = phi i64 [ %sub, %if.then44 ], [ %conv41, %if.then49 ]
  store i64 %storemerge, i64* @syslog_partial, align 8
  %tobool55.not = icmp eq i64 %n.0, 0
  br i1 %tobool55.not, label %out, label %if.end57

if.end57:                                         ; preds = %if.end54
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syslog_lock) #24
  %cmp11.i.i = icmp ugt i64 %n.0, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !9

check_copy_size.exit.i:                           ; preds = %if.end57
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !10
  br label %copy_to_user.exit

if.then.i:                                        ; preds = %if.end57
  %add.ptr = getelementptr i8, i8* %call.i.i, i64 %15
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buf.addr.0162, i8* noundef %add.ptr, i64 noundef %n.0) #24
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %n.addr.0.i = phi i64 [ %call2.i, %if.then.i ], [ %n.0, %check_copy_size.exit.i ]
  %conv59 = trunc i64 %n.addr.0.i to i32
  call void @mutex_lock(%struct.mutex* noundef nonnull @syslog_lock) #24
  %tobool60.not = icmp eq i32 %conv59, 0
  br i1 %tobool60.not, label %cleanup73, label %if.then61

if.then61:                                        ; preds = %copy_to_user.exit
  %tobool62.not = icmp eq i32 %len.0160, 0
  %spec.store.select = select i1 %tobool62.not, i32 -14, i32 %len.0160
  br label %out

cleanup73:                                        ; preds = %copy_to_user.exit
  %19 = trunc i64 %n.0 to i32
  %conv68 = add i32 %len.0160, %19
  %conv71 = sub i32 %size.addr.0159, %19
  %tobool79.not = icmp eq i32 %conv71, 0
  br i1 %tobool79.not, label %out, label %cleanup73.do.body23_crit_edge

cleanup73.do.body23_crit_edge:                    ; preds = %cleanup73
  %add.ptr72 = getelementptr i8, i8* %buf.addr.0162, i64 %n.0
  %.pre145 = load i64, i64* @syslog_seq, align 8
  %20 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call24 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %20, i64 noundef %.pre145, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call24, label %if.end26, label %out

out.loopexit151:                                  ; preds = %if.end15
  %conv.le = trunc i64 %call8142 to i32
  br label %out

out:                                              ; preds = %cleanup73, %cleanup73.do.body23_crit_edge, %if.end54, %if.else, %do.body23.preheader, %out.loopexit151, %if.then61
  %len.2 = phi i32 [ %spec.store.select, %if.then61 ], [ %conv.le, %out.loopexit151 ], [ 0, %do.body23.preheader ], [ %len.0160, %if.else ], [ %len.0160, %if.end54 ], [ %conv68, %cleanup73.do.body23_crit_edge ], [ %conv68, %cleanup73 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syslog_lock) #24
  call void @kfree(i8* noundef nonnull %call.i.i) #24
  br label %cleanup81

cleanup81:                                        ; preds = %entry, %out
  %retval.0 = phi i32 [ %len.2, %out ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #25
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @syslog_print_all(i8* noundef %buf, i32 noundef %size, i1 noundef %clear) unnamed_addr #1 {
entry:
  %info = alloca %struct.printk_info, align 8
  %r = alloca %struct.printk_record, align 8
  %0 = bitcast %struct.printk_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !8
  %1 = bitcast %struct.printk_record* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !8
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 10), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef 3264) #24
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup29, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i8, i8* @printk_time, align 4, !range !16
  %tobool1 = icmp ne i8 %3, 0
  %call3 = call fastcc i64 @latched_seq_read_nolock() #23
  %conv = sext i32 %size to i64
  %call5 = call fastcc i64 @find_first_fitting_seq(i64 noundef %call3, i64 noundef -1, i64 noundef %conv, i1 noundef true, i1 noundef %tobool1) #23
  call fastcc void @prb_rec_init_rd(%struct.printk_record* noundef nonnull %r, %struct.printk_info* noundef nonnull %info, i8* noundef nonnull %call.i.i, i32 noundef 1024) #23
  %4 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call667 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %4, i64 noundef %call5, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call667, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %info23 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %seq.069 = phi i64 [ %call5, %for.body.lr.ph ], [ %add25, %for.inc ]
  %len.068 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc ]
  %call8 = call fastcc i64 @record_print_text(%struct.printk_record* noundef nonnull %r, i1 noundef true, i1 noundef %tobool1) #23
  %conv9 = trunc i64 %call8 to i32
  %add = add i32 %len.068, %conv9
  %cmp = icmp sgt i32 %add, %size
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body
  %dec = add i64 %seq.069, -1
  br label %for.end

if.end12:                                         ; preds = %for.body
  %5 = and i64 %call8, 2147483648
  %cmp11.i.i.not = icmp eq i64 %5, 0
  br i1 %cmp11.i.i.not, label %copy_to_user.exit, label %copy_to_user.exit.thread, !prof !12

copy_to_user.exit.thread:                         ; preds = %if.end12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !10
  br label %for.end

copy_to_user.exit:                                ; preds = %if.end12
  %conv1377 = and i64 %call8, 4294967295
  %idx.ext62 = zext i32 %len.068 to i64
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.ext62
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %add.ptr, i8* noundef nonnull %call.i.i, i64 noundef %conv1377) #24
  %tobool15.not = icmp eq i64 %call2.i, 0
  %add. = select i1 %tobool15.not, i32 %add, i32 -14
  %cmp19 = icmp slt i32 %add., 0
  br i1 %cmp19, label %for.end, label %for.inc

for.inc:                                          ; preds = %copy_to_user.exit
  %6 = load %struct.printk_info*, %struct.printk_info** %info23, align 8
  %seq24 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %6, i64 0, i32 0
  %7 = load i64, i64* %seq24, align 8
  %add25 = add i64 %7, 1
  %8 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call6 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %8, i64 noundef %add25, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call6, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %copy_to_user.exit, %if.end, %copy_to_user.exit.thread, %if.then11
  %len.3 = phi i32 [ %len.068, %if.then11 ], [ -14, %copy_to_user.exit.thread ], [ 0, %if.end ], [ %add, %for.inc ], [ %add., %copy_to_user.exit ]
  %seq.2 = phi i64 [ %dec, %if.then11 ], [ %seq.069, %copy_to_user.exit.thread ], [ %call5, %if.end ], [ %add25, %for.inc ], [ %seq.069, %copy_to_user.exit ]
  br i1 %clear, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end
  call void @mutex_lock(%struct.mutex* noundef nonnull @syslog_lock) #24
  call fastcc void @latched_seq_write(i64 noundef %seq.2) #23
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syslog_lock) #24
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %for.end
  call void @kfree(i8* noundef nonnull %call.i.i) #24
  br label %cleanup29

cleanup29:                                        ; preds = %entry, %if.end28
  %retval.0 = phi i32 [ %len.3, %if.end28 ], [ -12, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #25
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @syslog_clear() unnamed_addr #1 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @syslog_lock) #24
  %0 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call = call i64 @prb_next_seq(%struct.printk_ringbuffer* noundef %0) #24
  call fastcc void @latched_seq_write(i64 noundef %call) #23
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syslog_lock) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef, i64 noundef, %struct.printk_info* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_record_print_text_size(%struct.printk_info* nocapture noundef readonly %info, i32 noundef %line_count, i1 noundef %syslog, i1 noundef %time) unnamed_addr #1 {
entry:
  %prefix = alloca [32 x i8], align 1
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %prefix, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  %call = call fastcc i64 @info_print_prefix(%struct.printk_info* noundef %info, i1 noundef %syslog, i1 noundef %time, i8* noundef nonnull %0) #23
  %conv = zext i32 %line_count to i64
  %mul = mul i64 %call, %conv
  %text_len = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 2
  %1 = load i16, i16* %text_len, align 8
  %conv3 = zext i16 %1 to i64
  %add = add i64 %mul, 1
  %add4 = add i64 %add, %conv3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret i64 %add4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_syslog(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_syslog(i64 noundef %0, i64 noundef %1, i64 noundef %2) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_syslog(i64 noundef %type, i64 noundef %buf, i64 noundef %len) unnamed_addr #1 {
entry:
  %conv = trunc i64 %type to i32
  %0 = inttoptr i64 %buf to i8*
  %conv1 = trunc i64 %len to i32
  %call = call fastcc i64 @__do_sys_syslog(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1) #23
  ret i64 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i16 @printk_parse_prefix(i8* nocapture noundef readonly %text, i32* noundef %level, i32* noundef %flags) local_unnamed_addr #10 {
entry:
  %0 = load i8, i8* %text, align 1
  %tobool.not20 = icmp eq i8 %0, 0
  br i1 %tobool.not20, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %tobool6.not = icmp eq i32* %flags, null
  %tobool2.not = icmp eq i32* %level, null
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %prefix_len.022 = phi i16 [ 0, %while.body.lr.ph ], [ %add, %sw.epilog ]
  %text.addr.021 = phi i8* [ %text, %while.body.lr.ph ], [ %add.ptr, %sw.epilog ]
  %call = call fastcc i32 @printk_get_level(i8* noundef %text.addr.021) #23
  switch i32 %call, label %sw.epilog [
    i32 0, label %while.end
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 99, label %sw.bb5
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  br i1 %tobool2.not, label %sw.epilog, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %1 = load i32, i32* %level, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then3, label %sw.epilog

if.then3:                                         ; preds = %land.lhs.true
  %sub = add nsw i32 %call, -48
  store i32 %sub, i32* %level, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  br i1 %tobool6.not, label %sw.epilog, label %if.then7

if.then7:                                         ; preds = %sw.bb5
  %2 = load i32, i32* %flags, align 4
  %or = or i32 %2, 8
  store i32 %or, i32* %flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb5, %if.then7, %sw.bb, %land.lhs.true, %if.then3
  %add = add i16 %prefix_len.022, 2
  %add.ptr = getelementptr i8, i8* %text.addr.021, i64 2
  %3 = load i8, i8* %add.ptr, align 1
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %sw.epilog, %while.body, %entry
  %prefix_len.0.lcssa = phi i16 [ 0, %entry ], [ %prefix_len.022, %while.body ], [ %add, %sw.epilog ]
  ret i16 %prefix_len.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @printk_get_level(i8* nocapture noundef readonly %buffer) unnamed_addr #5 {
entry:
  %0 = load i8, i8* %buffer, align 1
  %cmp = icmp eq i8 %0, 1
  br i1 %cmp, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, i8* %buffer, i64 1
  %1 = load i8, i8* %arrayidx2, align 1
  switch i8 %1, label %return [
    i8 55, label %sw.bb6
    i8 99, label %sw.bb6
    i8 48, label %sw.bb6
    i8 49, label %sw.bb6
    i8 50, label %sw.bb6
    i8 51, label %sw.bb6
    i8 52, label %sw.bb6
    i8 53, label %sw.bb6
    i8 54, label %sw.bb6
  ]

sw.bb6:                                           ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true
  %conv8 = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %sw.bb6
  %retval.0 = phi i32 [ %conv8, %sw.bb6 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vprintk_store(i32 noundef %facility, i32 noundef %level, %struct.dev_printk_info* noundef %dev_info, i8* noundef %fmt, %"struct.std::__va_list"* noundef %args) local_unnamed_addr #1 {
entry:
  %level.addr = alloca i32, align 4
  %e = alloca %struct.prb_reserved_entry, align 8
  %flags = alloca i32, align 4
  %r = alloca %struct.printk_record, align 8
  %trunc_msg_len = alloca i16, align 4
  %prefix_buf = alloca i64, align 8, !annotation !8
  %reserve_size = alloca i16, align 4
  %args2 = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %byval-temp61 = alloca %"struct.std::__va_list", align 8
  %byval-temp96 = alloca %"struct.std::__va_list", align 8
  store i32 %level, i32* %level.addr, align 4
  %call = call fastcc i32 @printk_caller_id() #23
  %0 = bitcast %struct.prb_reserved_entry* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  %1 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #25
  store i32 0, i32* %flags, align 4
  %2 = bitcast %struct.printk_record* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !8
  %3 = bitcast i16* %trunc_msg_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %3) #25
  store i16 0, i16* %trunc_msg_len, align 4
  %4 = bitcast i64* %prefix_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #25
  store i64 0, i64* %prefix_buf, align 8, !annotation !8
  %5 = bitcast i16* %reserve_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %5) #25
  %6 = bitcast %"struct.std::__va_list"* %args2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !annotation !8
  %call1 = call fastcc i64 @local_clock() #23
  %call8 = call fastcc i64 @arch_local_irq_save() #23
  %call11 = call fastcc i8* @__printk_recursion_counter() #23
  %7 = load i8, i8* %call11, align 1
  %cmp13 = icmp ugt i8 %7, 3
  br i1 %cmp13, label %cleanup, label %if.end32

if.end32:                                         ; preds = %entry
  %inc = add nuw nsw i8 %7, 1
  store i8 %inc, i8* %call11, align 1
  %8 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.va_copy(i8* nonnull %6, i8* %8)
  %9 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %call33 = call i32 @vsnprintf(i8* noundef nonnull %4, i64 noundef 8, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #25
  %10 = trunc i32 %call33 to i16
  %conv34 = add i16 %10, 1
  store i16 %conv34, i16* %reserve_size, align 4
  call void @llvm.va_end(i8* nonnull %6)
  %cmp37 = icmp ugt i16 %conv34, 992
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end32
  store i16 992, i16* %reserve_size, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end32
  %11 = phi i16 [ 992, %if.then39 ], [ %conv34, %if.end32 ]
  %cmp41 = icmp eq i32 %facility, 0
  br i1 %cmp41, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end40
  %call45 = call i16 @printk_parse_prefix(i8* noundef nonnull %4, i32* noundef nonnull %level.addr, i32* noundef nonnull %flags) #23
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40
  %12 = load i32, i32* %level.addr, align 4
  %cmp47 = icmp eq i32 %12, -1
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  %13 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 1), align 4
  store i32 %13, i32* %level.addr, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46
  %tobool51.not = icmp eq %struct.dev_printk_info* %dev_info, null
  %.pre = load i32, i32* %flags, align 4
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end50
  %or = or i32 %.pre, 2
  store i32 %or, i32* %flags, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.then52
  %14 = phi i32 [ %or, %if.then52 ], [ %.pre, %if.end50 ]
  %and = and i32 %14, 8
  %tobool54.not = icmp eq i32 %and, 0
  %.pre205 = zext i16 %11 to i32
  br i1 %tobool54.not, label %if.end83, label %if.then55

if.then55:                                        ; preds = %if.end53
  call fastcc void @prb_rec_init_wr(%struct.printk_record* noundef nonnull %r, i32 noundef %.pre205) #23
  %15 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call57 = call i1 @prb_reserve_in_last(%struct.prb_reserved_entry* noundef nonnull %e, %struct.printk_ringbuffer* noundef %15, %struct.printk_record* noundef nonnull %r, i32 noundef %call, i32 noundef 992) #24
  br i1 %call57, label %if.then58, label %if.end83

if.then58:                                        ; preds = %if.then55
  %text_buf = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  %16 = load i8*, i8** %text_buf, align 8
  %info = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  %17 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %text_len59 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %17, i64 0, i32 2
  %18 = load i16, i16* %text_len59, align 8
  %idxprom = zext i16 %18 to i64
  %arrayidx60 = getelementptr i8, i8* %16, i64 %idxprom
  %19 = bitcast %"struct.std::__va_list"* %byval-temp61 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %19, i8* noundef align 8 dereferenceable(32) %8, i64 32, i1 false)
  %call62 = call fastcc i16 @printk_sprint(i8* noundef %arrayidx60, i16 noundef %11, i32 noundef %facility, i32* noundef nonnull %flags, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp61) #23
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #25
  %conv63 = zext i16 %call62 to i32
  %20 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %text_len65 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %20, i64 0, i32 2
  %21 = load i16, i16* %text_len65, align 8
  %add67 = add i16 %21, %call62
  store i16 %add67, i16* %text_len65, align 8
  %22 = load i32, i32* %flags, align 4
  %and69 = and i32 %22, 2
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else79, label %if.then71

if.then71:                                        ; preds = %if.then58
  %flags73 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %20, i64 0, i32 4
  %bf.load = load i8, i8* %flags73, align 1
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, i8* %flags73, align 1
  call void @prb_final_commit(%struct.prb_reserved_entry* noundef nonnull %e) #24
  br label %do.body149

if.else79:                                        ; preds = %if.then58
  call void @prb_commit(%struct.prb_reserved_entry* noundef nonnull %e) #24
  br label %do.body149

if.end83:                                         ; preds = %if.end53, %if.then55
  call fastcc void @prb_rec_init_wr(%struct.printk_record* noundef nonnull %r, i32 noundef %.pre205) #23
  %23 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call85 = call i1 @prb_reserve(%struct.prb_reserved_entry* noundef nonnull %e, %struct.printk_ringbuffer* noundef %23, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call85, label %if.end93, label %if.then86

if.then86:                                        ; preds = %if.end83
  call fastcc void @truncate_msg(i16* noundef nonnull %reserve_size, i16* noundef nonnull %trunc_msg_len) #23
  %24 = load i16, i16* %reserve_size, align 4
  %conv87 = zext i16 %24 to i32
  %25 = load i16, i16* %trunc_msg_len, align 4
  %conv88 = zext i16 %25 to i32
  %add89 = add nuw nsw i32 %conv88, %conv87
  call fastcc void @prb_rec_init_wr(%struct.printk_record* noundef nonnull %r, i32 noundef %add89) #23
  %26 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call90 = call i1 @prb_reserve(%struct.prb_reserved_entry* noundef nonnull %e, %struct.printk_ringbuffer* noundef %26, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call90, label %if.end93, label %do.body149

if.end93:                                         ; preds = %if.then86, %if.end83
  %27 = phi i16 [ %25, %if.then86 ], [ 0, %if.end83 ]
  %28 = phi i16 [ %24, %if.then86 ], [ %11, %if.end83 ]
  %text_buf94 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  %29 = load i8*, i8** %text_buf94, align 8
  %30 = bitcast %"struct.std::__va_list"* %byval-temp96 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %30) #25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %30, i8* noundef align 8 dereferenceable(32) %8, i64 32, i1 false)
  %call97 = call fastcc i16 @printk_sprint(i8* noundef %29, i16 noundef %28, i32 noundef %facility, i32* noundef nonnull %flags, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp96) #23
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %30) #25
  %tobool98.not = icmp eq i16 %27, 0
  br i1 %tobool98.not, label %if.end105, label %if.then99

if.then99:                                        ; preds = %if.end93
  %31 = load i8*, i8** %text_buf94, align 8
  %idxprom101 = zext i16 %call97 to i64
  %arrayidx102 = getelementptr i8, i8* %31, i64 %idxprom101
  %conv103 = zext i16 %27 to i64
  %call104 = call i8* @memcpy(i8* noundef %arrayidx102, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @trunc_msg, i64 0, i64 0), i64 noundef %conv103) #24
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %if.end93
  %conv106 = zext i16 %call97 to i32
  %add108 = add i16 %27, %call97
  %info110 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  %32 = load %struct.printk_info*, %struct.printk_info** %info110, align 8
  %text_len111 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %32, i64 0, i32 2
  store i16 %add108, i16* %text_len111, align 8
  %conv112 = trunc i32 %facility to i8
  %facility114 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %32, i64 0, i32 3
  store i8 %conv112, i8* %facility114, align 2
  %33 = load i32, i32* %level.addr, align 4
  %34 = trunc i32 %33 to i8
  %level118 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %32, i64 0, i32 4
  %bf.shl = shl i8 %34, 5
  %35 = load i32, i32* %flags, align 4
  %36 = trunc i32 %35 to i8
  %conv124 = and i8 %36, 31
  %bf.set130 = or i8 %conv124, %bf.shl
  store i8 %bf.set130, i8* %level118, align 1
  %ts_nsec132 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %32, i64 0, i32 1
  store i64 %call1, i64* %ts_nsec132, align 8
  %caller_id134 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %32, i64 0, i32 5
  store i32 %call, i32* %caller_id134, align 4
  br i1 %tobool51.not, label %if.end140, label %if.then136

if.then136:                                       ; preds = %if.end105
  %37 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %32, i64 0, i32 6, i32 0, i64 0
  %38 = getelementptr %struct.dev_printk_info, %struct.dev_printk_info* %dev_info, i64 0, i32 0, i64 0
  %call139 = call i8* @memcpy(i8* noundef %37, i8* noundef %38, i64 noundef 64) #24
  %.pre204 = load i32, i32* %flags, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %if.end105
  %39 = phi i32 [ %.pre204, %if.then136 ], [ %35, %if.end105 ]
  %and141 = and i32 %39, 2
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.then143, label %if.else144

if.then143:                                       ; preds = %if.end140
  call void @prb_commit(%struct.prb_reserved_entry* noundef nonnull %e) #24
  br label %if.end145

if.else144:                                       ; preds = %if.end140
  call void @prb_final_commit(%struct.prb_reserved_entry* noundef nonnull %e) #24
  br label %if.end145

if.end145:                                        ; preds = %if.else144, %if.then143
  %conv147 = zext i16 %27 to i32
  %add148 = add nuw nsw i32 %conv147, %conv106
  br label %do.body149

do.body149:                                       ; preds = %if.then71, %if.else79, %if.end145, %if.then86
  %ret.0 = phi i32 [ %add148, %if.end145 ], [ 0, %if.then86 ], [ %conv63, %if.else79 ], [ %conv63, %if.then71 ]
  %40 = load i8, i8* %call11, align 1
  %dec = add i8 %40, -1
  store i8 %dec, i8* %call11, align 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body149
  %retval.0 = phi i32 [ %ret.0, %do.body149 ], [ 0, %entry ]
  call fastcc void @arch_local_irq_restore(i64 noundef %call8) #23
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #25
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %5) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #25
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %3) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @printk_caller_id() unnamed_addr #1 {
entry:
  %call = call fastcc i32 @preempt_count() #23
  %0 = and i32 %call, 15728640
  %call1 = call fastcc i32 @preempt_count() #23
  %1 = and i32 %call1, 983040
  %or18 = or i32 %1, %0
  %call4 = call fastcc i32 @preempt_count() #23
  %2 = and i32 %call4, 256
  %or820 = or i32 %or18, %2
  %tobool.not = icmp eq i32 %or820, 0
  br i1 %tobool.not, label %cond.true, label %do.body

cond.true:                                        ; preds = %entry
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !11
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %call10 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %4) #23
  br label %cond.end

do.body:                                          ; preds = %entry
  %call12 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call12, ptrtoint (i32* @cpu_number to i64)
  %5 = inttoptr i64 %add to i32*
  %6 = load i32, i32* %5, align 4
  %add13 = xor i32 %6, -2147483648
  br label %cond.end

cond.end:                                         ; preds = %do.body, %cond.true
  %cond = phi i32 [ %call10, %cond.true ], [ %add13, %do.body ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @local_clock() unnamed_addr #1 {
entry:
  %call = call i64 @sched_clock() #24
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__printk_recursion_counter() unnamed_addr #1 {
entry:
  %call = call fastcc i32 @preempt_count() #23
  %0 = and i32 %call, 15728640
  %tobool.not = icmp eq i32 %0, 0
  %call6 = call i1 @printk_percpu_data_ready() #23
  %printk_count_early.printk_count_nmi_early = select i1 %tobool.not, i8* @printk_count_early, i8* @printk_count_nmi_early
  br i1 %call6, label %return.sink.split, label %return

return.sink.split:                                ; preds = %entry
  %. = select i1 %tobool.not, i64 ptrtoint (i8* @printk_count to i64), i64 ptrtoint (i8* @printk_count_nmi to i64)
  %call14 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add15 = add i64 %call14, %.
  %1 = inttoptr i64 %add15 to i8*
  br label %return

return:                                           ; preds = %entry, %return.sink.split
  %retval.0 = phi i8* [ %1, %return.sink.split ], [ %printk_count_early.printk_count_nmi_early, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @prb_rec_init_wr(%struct.printk_record* nocapture noundef writeonly %r, i32 noundef %text_buf_size) unnamed_addr #7 {
entry:
  %info = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  store %struct.printk_info* null, %struct.printk_info** %info, align 8
  %text_buf = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  store i8* null, i8** %text_buf, align 8
  %text_buf_size1 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 2
  store i32 %text_buf_size, i32* %text_buf_size1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @prb_reserve_in_last(%struct.prb_reserved_entry* noundef, %struct.printk_ringbuffer* noundef, %struct.printk_record* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i16 @printk_sprint(i8* noundef %text, i16 noundef %size, i32 noundef %facility, i32* nocapture noundef %flags, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %args) unnamed_addr #1 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %conv = zext i16 %size to i64
  %0 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef align 8 dereferenceable(32) %1, i64 32, i1 false)
  %call = call i32 @vscnprintf(i8* noundef %text, i64 noundef %conv, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  %conv1 = trunc i32 %call to i16
  %conv2 = and i32 %call, 65535
  %tobool.not = icmp eq i32 %conv2, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sub = add nsw i32 %conv2, -1
  %2 = zext i32 %sub to i64
  %arrayidx = getelementptr i8, i8* %text, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  %cmp = icmp eq i8 %3, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %dec = add i16 %conv1, -1
  %4 = load i32, i32* %flags, align 4
  %or = or i32 %4, 2
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %text_len.0 = phi i16 [ %dec, %if.then ], [ %conv1, %land.lhs.true ], [ %conv1, %entry ]
  %cmp6 = icmp eq i32 %facility, 0
  br i1 %cmp6, label %if.then8, label %if.end20

if.then8:                                         ; preds = %if.end
  %call9 = call i16 @printk_parse_prefix(i8* noundef %text, i32* noundef null, i32* noundef null) #23
  %tobool10.not = icmp eq i16 %call9, 0
  br i1 %tobool10.not, label %if.end20, label %if.then11

if.then11:                                        ; preds = %if.then8
  %sub14 = sub i16 %text_len.0, %call9
  %5 = zext i16 %call9 to i64
  %add.ptr = getelementptr i8, i8* %text, i64 %5
  %conv17 = zext i16 %sub14 to i64
  %call18 = call i8* @memmove(i8* noundef %text, i8* noundef %add.ptr, i64 noundef %conv17) #24
  br label %if.end20

if.end20:                                         ; preds = %if.then8, %if.then11, %if.end
  %text_len.2 = phi i16 [ %text_len.0, %if.end ], [ %sub14, %if.then11 ], [ %text_len.0, %if.then8 ]
  ret i16 %text_len.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prb_final_commit(%struct.prb_reserved_entry* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prb_commit(%struct.prb_reserved_entry* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @prb_reserve(%struct.prb_reserved_entry* noundef, %struct.printk_ringbuffer* noundef, %struct.printk_record* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @truncate_msg(i16* nocapture noundef %text_len, i16* nocapture noundef writeonly %trunc_msg_len) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @log_buf_len, align 4
  %div = lshr i32 %0, 2
  %1 = load i16, i16* %text_len, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp ult i32 %div, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv2 = trunc i32 %div to i16
  store i16 %conv2, i16* %text_len, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @trunc_msg, i64 0, i64 0)) #24
  %conv3 = trunc i64 %call to i16
  store i16 %conv3, i16* %trunc_msg_len, align 2
  %2 = load i16, i16* %text_len, align 2
  %conv4 = zext i16 %2 to i32
  %3 = trunc i64 %call to i32
  %conv5 = and i32 %3, 65535
  %cmp6.not = icmp ugt i32 %conv5, %conv4
  br i1 %cmp6.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %conv11 = sub i16 %2, %conv3
  store i16 %conv11, i16* %text_len, align 2
  br label %if.end12

if.else:                                          ; preds = %if.end
  store i16 0, i16* %trunc_msg_len, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vprintk_emit(i32 noundef %facility, i32 noundef %level, %struct.dev_printk_info* noundef %dev_info, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %args) local_unnamed_addr #1 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = load i32, i32* @suppress_printk, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !12

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %level, -2
  %spec.select = select i1 %cmp, i32 -1, i32 %level
  call fastcc void @printk_delay() #23
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #25
  %2 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef align 8 dereferenceable(32) %2, i64 32, i1 false)
  %call = call i32 @vprintk_store(i32 noundef %facility, i32 noundef %spec.select, %struct.dev_printk_info* noundef %dev_info, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #23
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #25
  br i1 %cmp, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !18
  %call8 = call fastcc i32 @console_trylock_spinning() #23
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.then7
  call void @console_unlock() #23
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then7
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !19
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  call void @wake_up_klogd() #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12
  %retval.0 = phi i32 [ %call, %if.end12 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @printk_delay() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @printk_delay_msec, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %while.body, !prof !12

while.body:                                       ; preds = %entry, %while.body
  %m.06 = phi i32 [ %dec, %while.body ], [ %0, %entry ]
  %dec = add i32 %m.06, -1
  call void @__const_udelay(i64 noundef 4295000) #24
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %if.end, label %while.body

if.end:                                           ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @console_trylock_spinning() unnamed_addr #1 {
entry:
  %call = call i32 @console_trylock() #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %cleanup

do.body2:                                         ; preds = %entry
  %call3 = call fastcc i64 @arch_local_irq_save() #23
  call void @__printk_safe_enter() #24
  call fastcc void @__raw_spin_lock() #23
  %0 = load volatile %struct.task_struct*, %struct.task_struct** @console_owner, align 8
  %1 = load volatile i8, i8* @console_waiter, align 4, !range !16
  %tobool16.not = icmp eq i8 %1, 0
  %tobool20 = icmp ne %struct.task_struct* %0, null
  %or.cond = select i1 %tobool16.not, i1 %tobool20, i1 false
  br i1 %or.cond, label %land.lhs.true21, label %if.end35

land.lhs.true21:                                  ; preds = %do.body2
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !11
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cmp23.not = icmp eq %struct.task_struct* %0, %3
  br i1 %cmp23.not, label %if.end35, label %do.body30

do.body30:                                        ; preds = %land.lhs.true21
  store volatile i8 1, i8* @console_waiter, align 4
  call fastcc void @__raw_spin_unlock() #23
  %4 = load volatile i8, i8* @console_waiter, align 4, !range !16
  %tobool63.not96 = icmp eq i8 %4, 0
  br i1 %tobool63.not96, label %cleanup.sink.split, label %while.body

if.end35:                                         ; preds = %land.lhs.true21, %do.body2
  call fastcc void @__raw_spin_unlock() #23
  br label %cleanup.sink.split

while.body:                                       ; preds = %do.body30, %while.body
  call fastcc void @cpu_relax() #23
  %5 = load volatile i8, i8* @console_waiter, align 4, !range !16
  %tobool63.not = icmp eq i8 %5, 0
  br i1 %tobool63.not, label %cleanup.sink.split, label %while.body

cleanup.sink.split:                               ; preds = %while.body, %do.body30, %if.end35
  %retval.0.ph = phi i32 [ 0, %if.end35 ], [ 1, %do.body30 ], [ 1, %while.body ]
  call void @__printk_safe_exit() #24
  call fastcc void @arch_local_irq_restore(i64 noundef %call3) #23
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @console_unlock() local_unnamed_addr #1 {
entry:
  %info = alloca %struct.printk_info, align 8
  %r = alloca %struct.printk_record, align 8
  %0 = bitcast %struct.printk_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !8
  %1 = bitcast %struct.printk_record* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !8
  %.b = load i1, i1* @console_suspended, align 4
  br i1 %.b, label %cleanup143.sink.split, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @prb_rec_init_rd(%struct.printk_record* noundef nonnull %r, %struct.printk_info* noundef nonnull %info, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @console_unlock.text, i64 0, i64 0), i32 noundef 1024) #23
  %.b160 = load i1, i1* @console_may_schedule, align 4
  %info36 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  %text_buf = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  %.b160.not = xor i1 %.b160, true
  br label %again

again:                                            ; preds = %land.lhs.true, %if.end
  store i1 false, i1* @console_may_schedule, align 4
  %call = call fastcc i32 @can_use_console() #23
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.then12, label %for.cond

if.then12:                                        ; preds = %again
  store i1 false, i1* @console_locked, align 4
  br label %cleanup143.sink.split

for.cond:                                         ; preds = %again, %cleanup
  %2 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %3 = load i64, i64* @console_seq, align 8
  %call33164 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %2, i64 noundef %3, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call33164, label %if.end35, label %for.end

if.end35:                                         ; preds = %for.cond, %if.then47
  %4 = load i64, i64* @console_seq, align 8
  %5 = load %struct.printk_info*, %struct.printk_info** %info36, align 8
  %seq = getelementptr inbounds %struct.printk_info, %struct.printk_info* %5, i64 0, i32 0
  %6 = load i64, i64* %seq, align 8
  %cmp.not = icmp eq i64 %6, %4
  br i1 %cmp.not, label %if.end44, label %if.then37

if.then37:                                        ; preds = %if.end35
  %sub40 = sub i64 %6, %4
  %7 = load i64, i64* @console_dropped, align 8
  %add41 = add i64 %sub40, %7
  store i64 %add41, i64* @console_dropped, align 8
  %8 = load i64, i64* %seq, align 8
  store i64 %8, i64* @console_seq, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.end35
  %9 = phi i64 [ %8, %if.then37 ], [ %4, %if.end35 ]
  %level = getelementptr inbounds %struct.printk_info, %struct.printk_info* %5, i64 0, i32 4
  %bf.load = load i8, i8* %level, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %conv = zext i8 %bf.lshr to i32
  %call46 = call fastcc i1 @suppress_message_printing(i32 noundef %conv) #23
  br i1 %call46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  %inc = add i64 %9, 1
  store i64 %inc, i64* @console_seq, align 8
  %10 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call33 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %10, i64 noundef %inc, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call33, label %if.end35, label %for.end

if.end48:                                         ; preds = %if.end44
  %11 = load %struct.console*, %struct.console** @exclusive_console, align 8
  %tobool49 = icmp ne %struct.console* %11, null
  %12 = load i64, i64* @exclusive_console_stop_seq, align 8
  %cmp50 = icmp uge i64 %9, %12
  %13 = select i1 %tobool49, i1 %cmp50, i1 false
  br i1 %13, label %if.then55, label %if.end56, !prof !9

if.then55:                                        ; preds = %if.end48
  store %struct.console* null, %struct.console** @exclusive_console, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end48
  %14 = load i32, i32* @nr_ext_console_drivers, align 4
  %tobool57.not = icmp eq i32 %14, 0
  br i1 %tobool57.not, label %if.end67, label %if.then58

if.then58:                                        ; preds = %if.end56
  %call60 = call fastcc i64 @info_print_ext_header(i8* noundef getelementptr inbounds ([8192 x i8], [8192 x i8]* @console_unlock.ext_text, i64 0, i64 0), %struct.printk_info* noundef %5) #23
  %add.ptr = getelementptr [8192 x i8], [8192 x i8]* @console_unlock.ext_text, i64 0, i64 %call60
  %sub61 = sub i64 8192, %call60
  %15 = load i8*, i8** %text_buf, align 8
  %16 = load %struct.printk_info*, %struct.printk_info** %info36, align 8
  %text_len = getelementptr inbounds %struct.printk_info, %struct.printk_info* %16, i64 0, i32 2
  %17 = load i16, i16* %text_len, align 8
  %conv63 = zext i16 %17 to i64
  %dev_info = getelementptr inbounds %struct.printk_info, %struct.printk_info* %16, i64 0, i32 6
  %call65 = call fastcc i64 @msg_print_ext_body(i8* noundef %add.ptr, i64 noundef %sub61, i8* noundef %15, i64 noundef %conv63, %struct.dev_printk_info* noundef %dev_info) #23
  %add66 = add i64 %call65, %call60
  br label %if.end67

if.end67:                                         ; preds = %if.then58, %if.end56
  %ext_len.0 = phi i64 [ %add66, %if.then58 ], [ 0, %if.end56 ]
  %.b161 = load i1, i1* @console_msg_format, align 4
  %18 = load i8, i8* @printk_time, align 4, !range !16
  %tobool70 = icmp ne i8 %18, 0
  %call71 = call fastcc i64 @record_print_text(%struct.printk_record* noundef nonnull %r, i1 noundef %.b161, i1 noundef %tobool70) #23
  %19 = load i64, i64* @console_seq, align 8
  %inc72 = add i64 %19, 1
  store i64 %inc72, i64* @console_seq, align 8
  %call77 = call fastcc i64 @arch_local_irq_save() #23
  call void @__printk_safe_enter() #24
  call fastcc void @console_lock_spinning_enable() #23
  call fastcc void @call_console_drivers(i64 noundef %ext_len.0, i64 noundef %call71) #23
  %call88 = call fastcc i32 @console_lock_spinning_disable_and_check() #23
  call void @__printk_safe_exit() #24
  call fastcc void @arch_local_irq_restore(i64 noundef %call77) #23
  %tobool106.not = icmp ne i32 %call88, 0
  %brmerge = select i1 %tobool106.not, i1 true, i1 %.b160.not
  %.mux = zext i1 %tobool106.not to i32
  br i1 %brmerge, label %cleanup, label %if.then110

if.then110:                                       ; preds = %if.end67
  call fastcc void @_cond_resched() #23
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then110
  %cleanup.dest.slot.0 = phi i32 [ %.mux, %if.end67 ], [ 0, %if.then110 ]
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %for.cond, label %cleanup143

for.end:                                          ; preds = %for.cond, %if.then47
  %20 = load i64, i64* @console_seq, align 8
  store i1 false, i1* @console_locked, align 4
  call fastcc void @__up_console_sem() #23
  %21 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call135 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %21, i64 noundef %20, %struct.printk_record* noundef null) #24
  br i1 %call135, label %land.lhs.true, label %cleanup143

land.lhs.true:                                    ; preds = %for.end
  %call139 = call i32 @console_trylock() #23
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %cleanup143, label %again

cleanup143.sink.split:                            ; preds = %entry, %if.then12
  call fastcc void @__up_console_sem() #23
  br label %cleanup143

cleanup143:                                       ; preds = %for.end, %land.lhs.true, %cleanup, %cleanup143.sink.split
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wake_up_klogd() local_unnamed_addr #1 {
entry:
  %call = call i1 @printk_percpu_data_ready() #23
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !20
  %call1 = call fastcc i32 @waitqueue_active() #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end19, label %do.body3

do.body3:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !21
  %call8 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call8, ptrtoint (i32* @printk_pending to i64)
  %0 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_or_case_32(i8* noundef %0) #23
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !22
  %call16 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add17 = add i64 %call16, ptrtoint (%struct.irq_work* @wake_up_klogd_work to i64)
  %1 = inttoptr i64 %add17 to %struct.irq_work*
  %call18 = call i1 @irq_work_queue(%struct.irq_work* noundef %1) #24
  br label %if.end19

if.end19:                                         ; preds = %do.body3, %if.end
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !23
  br label %return

return:                                           ; preds = %entry, %if.end19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vprintk_default(i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %args) local_unnamed_addr #1 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef align 8 dereferenceable(32) %1, i64 32, i1 false)
  %call = call i32 @vprintk_emit(i32 noundef 0, i32 noundef -1, %struct.dev_printk_info* noundef null, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #23
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @console_msg_format_setup(i8* noundef %str) #0 section ".init.text" {
entry:
  %call = call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* @console_msg_format, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0)) #24
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i1 false, i1* @console_msg_format, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @console_setup(i8* noundef %str) #0 section ".init.text" {
entry:
  %buf = alloca [20 x i8], align 4
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false), !annotation !8
  %1 = load i8, i8* %str, align 1
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @strcmp(i8* noundef %str, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)) #24
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = call fastcc i32 @__add_preferred_console(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i32 noundef 0, i8* noundef null, i8* noundef null, i1 noundef true) #23
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8, i8* %str, align 1
  %3 = add i8 %2, -48
  %4 = icmp ult i8 %3, 10
  br i1 %4, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  %call17 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #24
  %add.ptr = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 4
  %call19 = call i8* @strncpy(i8* noundef %add.ptr, i8* noundef %str, i64 noundef 15) #24
  br label %if.end22

if.else:                                          ; preds = %if.end
  %call21 = call i8* @strncpy(i8* noundef nonnull %0, i8* noundef %str, i64 noundef 19) #24
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then16
  %arrayidx23 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 19
  store i8 0, i8* %arrayidx23, align 1
  %call24 = call i8* @strchr(i8* noundef %str, i32 noundef 44) #24
  %tobool25.not = icmp eq i8* %call24, null
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end22
  %incdec.ptr = getelementptr i8, i8* %call24, i64 1
  store i8 0, i8* %call24, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22
  %options.0 = phi i8* [ %incdec.ptr, %if.then26 ], [ null, %if.end22 ]
  %5 = load i8, i8* %0, align 4
  %tobool29.not64 = icmp eq i8 %5, 0
  br i1 %tobool29.not64, label %for.end, label %for.body

for.body:                                         ; preds = %if.end27, %for.inc
  %6 = phi i8 [ %7, %for.inc ], [ %5, %if.end27 ]
  %s.065 = phi i8* [ %incdec.ptr39, %for.inc ], [ %0, %if.end27 ]
  %conv30 = zext i8 %6 to i32
  %call31 = call fastcc i32 @isdigit(i32 noundef %conv30) #23
  %tobool32.not = icmp ne i32 %call31, 0
  %cmp35 = icmp eq i8 %6, 44
  %or.cond63 = select i1 %tobool32.not, i1 true, i1 %cmp35
  br i1 %or.cond63, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr39 = getelementptr i8, i8* %s.065, i64 1
  %7 = load i8, i8* %incdec.ptr39, align 1
  %tobool29.not = icmp eq i8 %7, 0
  br i1 %tobool29.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %if.end27
  %s.0.lcssa = phi i8* [ %0, %if.end27 ], [ %s.065, %for.body ], [ %incdec.ptr39, %for.inc ]
  %call40 = call i64 @simple_strtoul(i8* noundef %s.0.lcssa, i8** noundef null, i32 noundef 10) #24
  %conv41 = trunc i64 %call40 to i32
  store i8 0, i8* %s.0.lcssa, align 1
  %call43 = call fastcc i32 @__add_preferred_console(i8* noundef nonnull %0, i32 noundef %conv41, i8* noundef %options.0, i8* noundef null, i1 noundef true) #23
  store i32 1, i32* @console_set_on_cmdline, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #25
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @add_preferred_console(i8* noundef %name, i32 noundef %idx, i8* noundef %options) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__add_preferred_console(i8* noundef %name, i32 noundef %idx, i8* noundef %options, i8* noundef null, i1 noundef false) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__add_preferred_console(i8* noundef %name, i32 noundef %idx, i8* noundef %options, i8* noundef readnone %brl_options, i1 noundef %user_specified) unnamed_addr #1 {
entry:
  %frombool = zext i1 %user_specified to i8
  %0 = load i8, i8* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 0, i32 0, i64 0), align 8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end17, label %for.body

for.body:                                         ; preds = %entry
  %call = call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 0, i32 0, i64 0), i8* noundef %name) #24
  %cmp3 = icmp eq i32 %call, 0
  %1 = load i32, i32* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 0, i32 1), align 8
  %cmp5 = icmp eq i32 %1, %idx
  %or.cond = select i1 %cmp3, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body.7, %for.body.6, %for.body.5, %for.body.4, %for.body.3, %for.body.2, %for.body.1, %for.body
  %i.059.lcssa63 = phi i32 [ 0, %for.body ], [ 1, %for.body.1 ], [ 2, %for.body.2 ], [ 3, %for.body.3 ], [ 4, %for.body.4 ], [ 5, %for.body.5 ], [ 6, %for.body.6 ], [ 7, %for.body.7 ]
  %c.057.lcssa61 = phi %struct.console_cmdline* [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 0), %for.body ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 1), %for.body.1 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 2), %for.body.2 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 3), %for.body.3 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 4), %for.body.4 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 5), %for.body.5 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 6), %for.body.6 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 7), %for.body.7 ]
  %tobool7.not = icmp eq i8* %brl_options, null
  br i1 %tobool7.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 %i.059.lcssa63, i32* @preferred_console, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  br i1 %user_specified, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end
  %user_specified11 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.057.lcssa61, i64 0, i32 2
  store i8 1, i8* %user_specified11, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %2 = load i8, i8* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 1, i32 0, i64 0), align 8
  %tobool.not.1 = icmp eq i8 %2, 0
  br i1 %tobool.not.1, label %if.end17, label %for.body.1

for.body.1:                                       ; preds = %for.inc
  %call.1 = call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 1, i32 0, i64 0), i8* noundef %name) #24
  %cmp3.1 = icmp eq i32 %call.1, 0
  %3 = load i32, i32* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 1, i32 1), align 8
  %cmp5.1 = icmp eq i32 %3, %idx
  %or.cond65 = select i1 %cmp3.1, i1 %cmp5.1, i1 false
  br i1 %or.cond65, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.body.1
  %4 = load i8, i8* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 2, i32 0, i64 0), align 8
  %tobool.not.2 = icmp eq i8 %4, 0
  br i1 %tobool.not.2, label %if.end17, label %for.body.2

for.body.2:                                       ; preds = %for.inc.1
  %call.2 = call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 2, i32 0, i64 0), i8* noundef %name) #24
  %cmp3.2 = icmp eq i32 %call.2, 0
  %5 = load i32, i32* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 2, i32 1), align 8
  %cmp5.2 = icmp eq i32 %5, %idx
  %or.cond66 = select i1 %cmp3.2, i1 %cmp5.2, i1 false
  br i1 %or.cond66, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.body.2
  %6 = load i8, i8* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 3, i32 0, i64 0), align 8
  %tobool.not.3 = icmp eq i8 %6, 0
  br i1 %tobool.not.3, label %if.end17, label %for.body.3

for.body.3:                                       ; preds = %for.inc.2
  %call.3 = call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 3, i32 0, i64 0), i8* noundef %name) #24
  %cmp3.3 = icmp eq i32 %call.3, 0
  %7 = load i32, i32* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 3, i32 1), align 8
  %cmp5.3 = icmp eq i32 %7, %idx
  %or.cond67 = select i1 %cmp3.3, i1 %cmp5.3, i1 false
  br i1 %or.cond67, label %if.then, label %for.inc.3

for.inc.3:                                        ; preds = %for.body.3
  %8 = load i8, i8* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 4, i32 0, i64 0), align 8
  %tobool.not.4 = icmp eq i8 %8, 0
  br i1 %tobool.not.4, label %if.end17, label %for.body.4

for.body.4:                                       ; preds = %for.inc.3
  %call.4 = call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 4, i32 0, i64 0), i8* noundef %name) #24
  %cmp3.4 = icmp eq i32 %call.4, 0
  %9 = load i32, i32* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 4, i32 1), align 8
  %cmp5.4 = icmp eq i32 %9, %idx
  %or.cond68 = select i1 %cmp3.4, i1 %cmp5.4, i1 false
  br i1 %or.cond68, label %if.then, label %for.inc.4

for.inc.4:                                        ; preds = %for.body.4
  %10 = load i8, i8* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 5, i32 0, i64 0), align 8
  %tobool.not.5 = icmp eq i8 %10, 0
  br i1 %tobool.not.5, label %if.end17, label %for.body.5

for.body.5:                                       ; preds = %for.inc.4
  %call.5 = call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 5, i32 0, i64 0), i8* noundef %name) #24
  %cmp3.5 = icmp eq i32 %call.5, 0
  %11 = load i32, i32* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 5, i32 1), align 8
  %cmp5.5 = icmp eq i32 %11, %idx
  %or.cond69 = select i1 %cmp3.5, i1 %cmp5.5, i1 false
  br i1 %or.cond69, label %if.then, label %for.inc.5

for.inc.5:                                        ; preds = %for.body.5
  %12 = load i8, i8* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 6, i32 0, i64 0), align 8
  %tobool.not.6 = icmp eq i8 %12, 0
  br i1 %tobool.not.6, label %if.end17, label %for.body.6

for.body.6:                                       ; preds = %for.inc.5
  %call.6 = call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 6, i32 0, i64 0), i8* noundef %name) #24
  %cmp3.6 = icmp eq i32 %call.6, 0
  %13 = load i32, i32* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 6, i32 1), align 8
  %cmp5.6 = icmp eq i32 %13, %idx
  %or.cond70 = select i1 %cmp3.6, i1 %cmp5.6, i1 false
  br i1 %or.cond70, label %if.then, label %for.inc.6

for.inc.6:                                        ; preds = %for.body.6
  %14 = load i8, i8* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 7, i32 0, i64 0), align 8
  %tobool.not.7 = icmp eq i8 %14, 0
  br i1 %tobool.not.7, label %if.end17, label %for.body.7

for.body.7:                                       ; preds = %for.inc.6
  %call.7 = call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 7, i32 0, i64 0), i8* noundef %name) #24
  %cmp3.7 = icmp eq i32 %call.7, 0
  %15 = load i32, i32* getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 7, i32 1), align 8
  %cmp5.7 = icmp eq i32 %15, %idx
  %or.cond71 = select i1 %cmp3.7, i1 %cmp5.7, i1 false
  br i1 %or.cond71, label %if.then, label %cleanup

if.end17:                                         ; preds = %entry, %for.inc, %for.inc.1, %for.inc.2, %for.inc.3, %for.inc.4, %for.inc.5, %for.inc.6
  %i.059.lcssa = phi i32 [ 0, %entry ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ]
  %c.057.lcssa = phi %struct.console_cmdline* [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 0), %entry ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 1), %for.inc ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 2), %for.inc.1 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 3), %for.inc.2 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 4), %for.inc.3 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 5), %for.inc.4 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 6), %for.inc.5 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 7), %for.inc.6 ]
  %tobool18.not = icmp eq i8* %brl_options, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 %i.059.lcssa, i32* @preferred_console, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17
  %arraydecay22 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.057.lcssa, i64 0, i32 0, i64 0
  %call23 = call i64 @strlcpy(i8* noundef %arraydecay22, i8* noundef %name, i64 noundef 16) #24
  %options24 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.057.lcssa, i64 0, i32 3
  store i8* %options, i8** %options24, align 8
  %user_specified26 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.057.lcssa, i64 0, i32 2
  store i8 %frombool, i8* %user_specified26, align 4
  %index28 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.057.lcssa, i64 0, i32 1
  store i32 %idx, i32* %index28, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body.7, %if.end, %if.then10, %if.end20
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %if.then10 ], [ 0, %if.end ], [ -7, %for.body.7 ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @console_suspend_disable(i8* nocapture noundef readnone %str) #6 section ".init.text" {
entry:
  store i8 0, i8* @console_suspend_enabled, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @console_verbose() local_unnamed_addr #13 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 0), align 4
  %tobool.not = icmp ne i32 %0, 0
  %1 = load i8, i8* @printk_console_no_auto_verbose, align 4
  %tobool1.not = icmp eq i8 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 15, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @suspend_console() local_unnamed_addr #1 {
entry:
  %0 = load i8, i8* @console_suspend_enabled, align 4, !range !16
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0)) #27
  call void @console_lock() #23
  store i1 true, i1* @console_suspended, align 4
  call fastcc void @__up_console_sem() #23
  br label %return

return:                                           ; preds = %entry, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @console_lock() local_unnamed_addr #1 {
entry:
  call void @down(%struct.semaphore* noundef nonnull @console_sem) #24
  %.b = load i1, i1* @console_suspended, align 4
  br i1 %.b, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i1 true, i1* @console_locked, align 4
  store i1 true, i1* @console_may_schedule, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__up_console_sem() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #23
  call void @__printk_safe_enter() #24
  call void @up(%struct.semaphore* noundef nonnull @console_sem) #24
  call void @__printk_safe_exit() #24
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @resume_console() local_unnamed_addr #1 {
entry:
  %0 = load i8, i8* @console_suspend_enabled, align 4, !range !16
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %do.body

do.body:                                          ; preds = %entry
  call void @down(%struct.semaphore* noundef nonnull @console_sem) #24
  store i1 false, i1* @console_suspended, align 4
  call void @console_unlock() #23
  br label %return

return:                                           ; preds = %entry, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(%struct.semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @console_trylock() local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @__down_trylock_console_sem() #23
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @console_suspended, align 4
  br i1 %.b, label %cond.end29, label %if.end31

cond.end29:                                       ; preds = %if.end
  call fastcc void @__up_console_sem() #23
  br label %return

if.end31:                                         ; preds = %if.end
  store i1 true, i1* @console_locked, align 4
  store i1 false, i1* @console_may_schedule, align 4
  br label %return

return:                                           ; preds = %entry, %if.end31, %cond.end29
  %retval.0 = phi i32 [ 0, %cond.end29 ], [ 1, %if.end31 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__down_trylock_console_sem() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #23
  call void @__printk_safe_enter() #24
  %call7 = call i32 @down_trylock(%struct.semaphore* noundef nonnull @console_sem) #24
  call void @__printk_safe_exit() #24
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #23
  %tobool.not = icmp ne i32 %call7, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @is_console_locked() local_unnamed_addr #5 {
entry:
  %.b = load i1, i1* @console_locked, align 4
  %0 = zext i1 %.b to i32
  ret i32 %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i32 @can_use_console() unnamed_addr #14 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i1 @cpu_online(i32 noundef %1) #23
  br i1 %call2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call3 = call fastcc i32 @have_callable_console() #23
  %tobool = icmp ne i32 %call3, 0
  %phi.cast = zext i1 %tobool to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @suppress_message_printing(i32 noundef %level) unnamed_addr #5 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @console_printk, i64 0, i64 0), align 4
  %cmp = icmp sle i32 %0, %level
  %1 = load i8, i8* @ignore_loglevel, align 1
  %2 = and i8 %1, 1
  %tobool.not = icmp eq i8 %2, 0
  %3 = select i1 %cmp, i1 %tobool.not, i1 false
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @info_print_ext_header(i8* noundef %buf, %struct.printk_info* nocapture noundef readonly %info) unnamed_addr #1 {
entry:
  %caller = alloca [20 x i8], align 4
  %ts_nsec = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 1
  %0 = load i64, i64* %ts_nsec, align 8
  %1 = getelementptr inbounds [20 x i8], [20 x i8]* %caller, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %1) #25
  %div = udiv i64 %0, 1000
  %facility = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 3
  call void @llvm.memset.p0i8.i64(i8* noundef align 4 dereferenceable(20) %1, i8 0, i64 20, i1 false)
  %2 = load i8, i8* %facility, align 2
  %conv3 = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv3, 3
  %level = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 4
  %bf.load = load i8, i8* %level, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %conv4 = zext i8 %bf.lshr to i32
  %or = or i32 %shl, %conv4
  %seq = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 0
  %3 = load i64, i64* %seq, align 8
  %4 = and i8 %bf.load, 8
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, i32 45, i32 99
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 8192, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0), i32 noundef %or, i64 noundef %3, i64 noundef %div, i32 noundef %cond, i8* noundef nonnull %1) #24
  %conv7 = sext i32 %call to i64
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %1) #25
  ret i64 %conv7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @msg_print_ext_body(i8* noundef %buf, i64 noundef %size, i8* nocapture noundef readonly %text, i64 noundef %text_len, %struct.dev_printk_info* noundef %dev_info) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @msg_add_ext_text(i8* noundef %buf, i64 noundef %size, i8* noundef %text, i64 noundef %text_len, i8 noundef 10) #23
  %tobool.not = icmp eq %struct.dev_printk_info* %dev_info, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, i8* %buf, i64 %call
  %sub = sub i64 %size, %call
  %arraydecay = getelementptr inbounds %struct.dev_printk_info, %struct.dev_printk_info* %dev_info, i64 0, i32 0, i64 0
  %call1 = call fastcc i64 @msg_add_dict_text(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* noundef %arraydecay) #23
  %add = add i64 %call1, %call
  %add.ptr2 = getelementptr i8, i8* %buf, i64 %add
  %sub3 = sub i64 %size, %add
  %arraydecay4 = getelementptr inbounds %struct.dev_printk_info, %struct.dev_printk_info* %dev_info, i64 0, i32 1, i64 0
  %call5 = call fastcc i64 @msg_add_dict_text(i8* noundef %add.ptr2, i64 noundef %sub3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* noundef %arraydecay4) #23
  %add6 = add i64 %add, %call5
  br label %out

out:                                              ; preds = %entry, %if.end
  %len.0 = phi i64 [ %add6, %if.end ], [ %call, %entry ]
  ret i64 %len.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @record_print_text(%struct.printk_record* nocapture noundef readonly %r, i1 noundef %syslog, i1 noundef %time) unnamed_addr #1 {
entry:
  %prefix = alloca [32 x i8], align 1
  %info = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  %0 = load %struct.printk_info*, %struct.printk_info** %info, align 8
  %text_len2 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %0, i64 0, i32 2
  %1 = load i16, i16* %text_len2, align 8
  %conv = zext i16 %1 to i64
  %text_buf_size = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 2
  %2 = load i32, i32* %text_buf_size, align 8
  %conv3 = zext i32 %2 to i64
  %text_buf = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  %3 = load i8*, i8** %text_buf, align 8
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %prefix, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %4, i8 0, i64 32, i1 false), !annotation !8
  %cmp = icmp ugt i64 %conv, %conv3
  %spec.select = select i1 %cmp, i64 %conv3, i64 %conv
  %call = call fastcc i64 @info_print_prefix(%struct.printk_info* noundef %0, i1 noundef %syslog, i1 noundef %time, i8* noundef nonnull %4) #23
  %sub29 = add nsw i64 %conv3, -1
  br label %for.cond

for.cond:                                         ; preds = %if.end42, %entry
  %text_len.1 = phi i64 [ %spec.select, %entry ], [ %sub47, %if.end42 ]
  %text.0 = phi i8* [ %3, %entry ], [ %add.ptr45, %if.end42 ]
  %truncated.0.off0 = phi i1 [ false, %entry ], [ %truncated.1.off0, %if.end42 ]
  %len.0 = phi i64 [ 0, %entry ], [ %add37, %if.end42 ]
  %call7 = call i8* @memchr(i8* noundef %text.0, i32 noundef 10, i64 noundef %text_len.1) #24
  %tobool8.not = icmp eq i8* %call7, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %for.cond
  %sub.ptr.lhs.cast = ptrtoint i8* %call7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %text.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end13

if.else:                                          ; preds = %for.cond
  br i1 %truncated.0.off0, label %for.end, label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %line_len.0 = phi i64 [ %sub.ptr.sub, %if.then9 ], [ %text_len.1, %if.else ]
  %add = add i64 %len.0, %call
  %add14 = add i64 %add, 2
  %add16 = add i64 %add14, %text_len.1
  %cmp17 = icmp ugt i64 %add16, %conv3
  br i1 %cmp17, label %if.then19, label %if.end31

if.then19:                                        ; preds = %if.end13
  %add23 = add i64 %add14, %line_len.0
  %cmp24 = icmp ugt i64 %add23, %conv3
  br i1 %cmp24, label %for.end, label %if.end27

if.end27:                                         ; preds = %if.then19
  %5 = xor i64 %add, -1
  %sub30 = add i64 %sub29, %5
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %if.end13
  %text_len.2 = phi i64 [ %sub30, %if.end27 ], [ %text_len.1, %if.end13 ]
  %truncated.1.off0 = phi i1 [ true, %if.end27 ], [ %truncated.0.off0, %if.end13 ]
  %add.ptr = getelementptr i8, i8* %text.0, i64 %call
  %call32 = call i8* @memmove(i8* noundef %add.ptr, i8* noundef %text.0, i64 noundef %text_len.2) #24
  %call34 = call i8* @memcpy(i8* noundef %text.0, i8* noundef nonnull %4, i64 noundef %call) #24
  %add35 = add i64 %line_len.0, %call
  %add36 = add i64 %add35, 1
  %add37 = add i64 %add36, %len.0
  %cmp38 = icmp eq i64 %text_len.2, %line_len.0
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end31
  %arrayidx = getelementptr i8, i8* %text.0, i64 %add35
  store i8 10, i8* %arrayidx, align 1
  br label %for.end

if.end42:                                         ; preds = %if.end31
  %add.ptr45 = getelementptr i8, i8* %text.0, i64 %add36
  %add46.neg = xor i64 %line_len.0, -1
  %sub47 = add i64 %text_len.2, %add46.neg
  br label %for.cond

for.end:                                          ; preds = %if.then19, %if.else, %if.then40
  %len.1 = phi i64 [ %add37, %if.then40 ], [ %len.0, %if.else ], [ %len.0, %if.then19 ]
  %cmp48.not = icmp eq i32 %2, 0
  br i1 %cmp48.not, label %if.end53, label %if.then50

if.then50:                                        ; preds = %for.end
  %6 = load i8*, i8** %text_buf, align 8
  %arrayidx52 = getelementptr i8, i8* %6, i64 %len.1
  store i8 0, i8* %arrayidx52, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %for.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #25
  ret i64 %len.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_enter() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @console_lock_spinning_enable() unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock() #23
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  store %struct.task_struct* %1, %struct.task_struct** @console_owner, align 8
  call fastcc void @__raw_spin_unlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @call_console_drivers(i64 noundef %ext_len, i64 noundef %len) unnamed_addr #1 {
entry:
  %0 = load %struct.console*, %struct.console** @console_drivers, align 8
  %tobool.not = icmp eq %struct.console* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @console_dropped, align 8
  %tobool1.not = icmp eq i64 %1, 0
  br i1 %tobool1.not, label %for.body.lr.ph, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @call_console_drivers.dropped_text, i64 0, i64 0), i64 noundef 64, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0), i64 noundef %1) #24
  %conv = sext i32 %call to i64
  store i64 0, i64* @console_dropped, align 8
  %con.04.pre = load %struct.console*, %struct.console** @console_drivers, align 8
  %cmp.not5 = icmp eq %struct.console* %con.04.pre, null
  br i1 %cmp.not5, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end, %if.end3
  %dropped_len.013 = phi i64 [ %conv, %if.end3 ], [ 0, %if.end ]
  %con.0412 = phi %struct.console* [ %con.04.pre, %if.end3 ], [ %0, %if.end ]
  %conv33 = trunc i64 %ext_len to i32
  %tobool34.not = icmp eq i64 %dropped_len.013, 0
  %conv37 = trunc i64 %dropped_len.013 to i32
  %conv40 = trunc i64 %len to i32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %con.06 = phi %struct.console* [ %con.0412, %for.body.lr.ph ], [ %con.0, %for.inc ]
  %2 = load %struct.console*, %struct.console** @exclusive_console, align 8
  %tobool5.not = icmp eq %struct.console* %2, null
  %cmp6.not = icmp eq %struct.console* %con.06, %2
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %if.end9, label %for.inc

if.end9:                                          ; preds = %for.body
  %flags = getelementptr inbounds %struct.console, %struct.console* %con.06, i64 0, i32 8
  %3 = load i16, i16* %flags, align 8
  %4 = and i16 %3, 4
  %tobool11.not = icmp eq i16 %4, 0
  br i1 %tobool11.not, label %for.inc, label %if.end13

if.end13:                                         ; preds = %if.end9
  %write = getelementptr inbounds %struct.console, %struct.console* %con.06, i64 0, i32 1
  %5 = load void (%struct.console*, i8*, i32)*, void (%struct.console*, i8*, i32)** %write, align 8
  %tobool14.not = icmp eq void (%struct.console*, i8*, i32)* %5, null
  br i1 %tobool14.not, label %for.inc, label %do.body

do.body:                                          ; preds = %if.end13
  %call18 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call18, ptrtoint (i32* @cpu_number to i64)
  %6 = inttoptr i64 %add to i32*
  %7 = load i32, i32* %6, align 4
  %call19 = call fastcc i1 @cpu_online(i32 noundef %7) #23
  %.pre = load i16, i16* %flags, align 8
  %call19.not = xor i1 %call19, true
  %8 = and i16 %.pre, 16
  %tobool24.not = icmp eq i16 %8, 0
  %or.cond14 = select i1 %call19.not, i1 %tobool24.not, i1 false
  br i1 %or.cond14, label %for.inc, label %if.end26

if.end26:                                         ; preds = %do.body
  %9 = and i16 %.pre, 64
  %tobool30.not = icmp eq i16 %9, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end26
  %10 = load void (%struct.console*, i8*, i32)*, void (%struct.console*, i8*, i32)** %write, align 8
  call void %10(%struct.console* noundef nonnull %con.06, i8* noundef getelementptr inbounds ([8192 x i8], [8192 x i8]* @console_unlock.ext_text, i64 0, i64 0), i32 noundef %conv33) #24
  br label %for.inc

if.else:                                          ; preds = %if.end26
  br i1 %tobool34.not, label %if.end38, label %if.then35

if.then35:                                        ; preds = %if.else
  %11 = load void (%struct.console*, i8*, i32)*, void (%struct.console*, i8*, i32)** %write, align 8
  call void %11(%struct.console* noundef nonnull %con.06, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @call_console_drivers.dropped_text, i64 0, i64 0), i32 noundef %conv37) #24
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.else
  %12 = load void (%struct.console*, i8*, i32)*, void (%struct.console*, i8*, i32)** %write, align 8
  call void %12(%struct.console* noundef nonnull %con.06, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @console_unlock.text, i64 0, i64 0), i32 noundef %conv40) #24
  br label %for.inc

for.inc:                                          ; preds = %do.body, %for.body, %if.then31, %if.end38, %if.end13, %if.end9
  %next = getelementptr inbounds %struct.console, %struct.console* %con.06, i64 0, i32 12
  %con.0 = load %struct.console*, %struct.console** %next, align 8
  %cmp.not = icmp eq %struct.console* %con.0, null
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @console_lock_spinning_disable_and_check() unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock() #23
  %0 = load volatile i8, i8* @console_waiter, align 4, !range !16
  %tobool.not = icmp eq i8 %0, 0
  store %struct.task_struct* null, %struct.task_struct** @console_owner, align 8
  call fastcc void @__raw_spin_unlock() #23
  br i1 %tobool.not, label %cleanup, label %do.body10

do.body10:                                        ; preds = %entry
  store volatile i8 0, i8* @console_waiter, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body10
  %retval.0 = phi i32 [ 1, %do.body10 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_exit() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #1 {
entry:
  %call = call i32 @__cond_resched() #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @console_conditional_schedule() local_unnamed_addr #1 section ".sched.text" {
entry:
  %.b = load i1, i1* @console_may_schedule, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @_cond_resched() #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @console_unblank() local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @oops_in_progress, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %cond.end

cond.end:                                         ; preds = %entry
  %call = call fastcc i32 @__down_trylock_console_sem() #23
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end11, label %cleanup

if.else:                                          ; preds = %entry
  call void @console_lock() #23
  br label %if.end11

if.end11:                                         ; preds = %cond.end, %if.else
  store i1 true, i1* @console_locked, align 4
  store i1 false, i1* @console_may_schedule, align 4
  %c.025 = load %struct.console*, %struct.console** @console_drivers, align 8
  %cmp12.not26 = icmp eq %struct.console* %c.025, null
  br i1 %cmp12.not26, label %for.end, label %for.body

for.body:                                         ; preds = %if.end11, %for.inc
  %c.027 = phi %struct.console* [ %c.0, %for.inc ], [ %c.025, %if.end11 ]
  %flags = getelementptr inbounds %struct.console, %struct.console* %c.027, i64 0, i32 8
  %1 = load i16, i16* %flags, align 8
  %2 = and i16 %1, 4
  %tobool14.not = icmp eq i16 %2, 0
  br i1 %tobool14.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %unblank = getelementptr inbounds %struct.console, %struct.console* %c.027, i64 0, i32 4
  %3 = load void ()*, void ()** %unblank, align 8
  %tobool15.not = icmp eq void ()* %3, null
  br i1 %tobool15.not, label %for.inc, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  call void %3() #24
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then16
  %next = getelementptr inbounds %struct.console, %struct.console* %c.027, i64 0, i32 12
  %c.0 = load %struct.console*, %struct.console** %next, align 8
  %cmp12.not = icmp eq %struct.console* %c.0, null
  br i1 %cmp12.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end11
  call void @console_unlock() #23
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @console_flush_on_panic(i32 noundef %mode) local_unnamed_addr #1 {
entry:
  %call = call i32 @console_trylock() #23
  store i1 false, i1* @console_may_schedule, align 4
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call1 = call i64 @prb_first_valid_seq(%struct.printk_ringbuffer* noundef %0) #24
  store i64 %call1, i64* @console_seq, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @console_unlock() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prb_first_valid_seq(%struct.printk_ringbuffer* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.tty_driver* @console_device(i32* noundef %index) local_unnamed_addr #1 {
entry:
  call void @console_lock() #23
  %c.012 = load %struct.console*, %struct.console** @console_drivers, align 8
  %cmp.not13 = icmp eq %struct.console* %c.012, null
  br i1 %cmp.not13, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %c.014 = phi %struct.console* [ %c.0, %for.inc ], [ %c.012, %entry ]
  %device = getelementptr inbounds %struct.console, %struct.console* %c.014, i64 0, i32 3
  %0 = load %struct.tty_driver* (%struct.console*, i32*)*, %struct.tty_driver* (%struct.console*, i32*)** %device, align 8
  %tobool.not = icmp eq %struct.tty_driver* (%struct.console*, i32*)* %0, null
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call = call %struct.tty_driver* %0(%struct.console* noundef nonnull %c.014, i32* noundef %index) #24
  %tobool2.not = icmp eq %struct.tty_driver* %call, null
  br i1 %tobool2.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %if.end, %for.body
  %next = getelementptr inbounds %struct.console, %struct.console* %c.014, i64 0, i32 12
  %c.0 = load %struct.console*, %struct.console** %next, align 8
  %cmp.not = icmp eq %struct.console* %c.0, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end, %entry
  %driver.2 = phi %struct.tty_driver* [ null, %entry ], [ %call, %if.end ], [ null, %for.inc ]
  call void @console_unlock() #23
  ret %struct.tty_driver* %driver.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @console_stop(%struct.console* nocapture noundef %console) local_unnamed_addr #1 {
entry:
  call void @console_lock() #23
  %flags = getelementptr inbounds %struct.console, %struct.console* %console, i64 0, i32 8
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, -5
  store i16 %1, i16* %flags, align 8
  call void @console_unlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @console_start(%struct.console* nocapture noundef %console) local_unnamed_addr #1 {
entry:
  call void @console_lock() #23
  %flags = getelementptr inbounds %struct.console, %struct.console* %console, i64 0, i32 8
  %0 = load i16, i16* %flags, align 8
  %1 = or i16 %0, 4
  store i16 %1, i16* %flags, align 8
  call void @console_unlock() #23
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @keep_bootcon_setup(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i1 true, i1* @keep_bootcon, align 4
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.48, i64 0, i64 0)) #27
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @register_console(%struct.console* noundef %newcon) local_unnamed_addr #1 {
entry:
  %bcon.0266 = load %struct.console*, %struct.console** @console_drivers, align 8
  %cmp.not267 = icmp eq %struct.console* %bcon.0266, null
  br i1 %cmp.not267, label %if.end49.thread, label %for.body

if.end49.thread:                                  ; preds = %entry
  %flags282 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 8
  %0 = load i16, i16* %flags282, align 8
  br label %if.then61

for.body:                                         ; preds = %entry, %for.inc
  %bcon.0268 = phi %struct.console* [ %bcon.0, %for.inc ], [ %bcon.0266, %entry ]
  %cmp1 = icmp eq %struct.console* %bcon.0268, %newcon
  br i1 %cmp1, label %do.end, label %for.inc, !prof !9

do.end:                                           ; preds = %for.body
  %arraydecay = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 0, i64 0
  %index = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 9
  %1 = load i16, i16* %index, align 2
  %conv9 = sext i16 %1 to i32
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %conv9) #24
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk.c\22; .popsection; .long 14472b - 14470b; .short 2937; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !24
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.console, %struct.console* %bcon.0268, i64 0, i32 12
  %bcon.0 = load %struct.console*, %struct.console** %next, align 8
  %cmp.not = icmp eq %struct.console* %bcon.0, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %flags = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 8
  %2 = load i16, i16* %flags, align 8
  %3 = and i16 %2, 8
  %tobool26.not = icmp eq i16 %3, 0
  %or.cond275 = select i1 %tobool26.not, i1 true, i1 %cmp.not267
  br i1 %or.cond275, label %if.end49, label %for.body31

for.cond28:                                       ; preds = %for.body31
  %next47 = getelementptr inbounds %struct.console, %struct.console* %bcon.1271, i64 0, i32 12
  %bcon.1 = load %struct.console*, %struct.console** %next47, align 8
  %cmp29.not = icmp eq %struct.console* %bcon.1, null
  br i1 %cmp29.not, label %if.end49, label %for.body31

for.body31:                                       ; preds = %for.end, %for.cond28
  %bcon.1271 = phi %struct.console* [ %bcon.1, %for.cond28 ], [ %bcon.0266, %for.end ]
  %flags32 = getelementptr inbounds %struct.console, %struct.console* %bcon.1271, i64 0, i32 8
  %4 = load i16, i16* %flags32, align 8
  %5 = and i16 %4, 8
  %tobool35.not = icmp eq i16 %5, 0
  br i1 %tobool35.not, label %do.end39, label %for.cond28

do.end39:                                         ; preds = %for.body31
  %arraydecay42 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 0, i64 0
  %index43 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 9
  %6 = load i16, i16* %index43, align 2
  %conv44 = sext i16 %6 to i32
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* noundef %arraydecay42, i32 noundef %conv44) #27
  br label %cleanup

if.end49:                                         ; preds = %for.cond28, %for.end
  br i1 %cmp.not267, label %if.then61, label %if.end56

if.end56:                                         ; preds = %if.end49
  %flags51 = getelementptr inbounds %struct.console, %struct.console* %bcon.0266, i64 0, i32 8
  %7 = load i16, i16* %flags51, align 8
  %8 = and i16 %7, 8
  %tobool54.not = icmp ne i16 %8, 0
  %9 = load i8, i8* @has_preferred_console, align 4, !range !16
  %tobool57.not255 = icmp eq i8 %9, 0
  %or.cond = select i1 %tobool57.not255, i1 true, i1 %tobool54.not
  br i1 %or.cond, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end49, %if.end49.thread, %if.end56
  %bcon.3300 = phi i1 [ %tobool54.not, %if.end56 ], [ false, %if.end49.thread ], [ false, %if.end49 ]
  %10 = phi i16 [ %2, %if.end56 ], [ %0, %if.end49.thread ], [ %2, %if.end49 ]
  %flags285289298 = phi i16* [ %flags, %if.end56 ], [ %flags282, %if.end49.thread ], [ %flags, %if.end49 ]
  %11 = load i32, i32* @preferred_console, align 4
  %.lobit = lshr i32 %11, 31
  %12 = trunc i32 %.lobit to i8
  %.not = xor i8 %12, 1
  store i8 %.not, i8* @has_preferred_console, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end56, %if.then61
  %bcon.3299 = phi i1 [ %bcon.3300, %if.then61 ], [ %tobool54.not, %if.end56 ]
  %13 = phi i16 [ %10, %if.then61 ], [ %2, %if.end56 ]
  %flags285289297 = phi i16* [ %flags285289298, %if.then61 ], [ %flags, %if.end56 ]
  %14 = phi i8 [ %.not, %if.then61 ], [ %9, %if.end56 ]
  %tobool65.not = icmp eq i8 %14, 0
  br i1 %tobool65.not, label %if.then66, label %if.end93

if.then66:                                        ; preds = %if.end64
  %index67 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 9
  %15 = load i16, i16* %index67, align 2
  %cmp69 = icmp slt i16 %15, 0
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.then66
  store i16 0, i16* %index67, align 2
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.then66
  %setup = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 5
  %16 = load i32 (%struct.console*, i8*)*, i32 (%struct.console*, i8*)** %setup, align 8
  %cmp74 = icmp eq i32 (%struct.console*, i8*)* %16, null
  br i1 %cmp74, label %if.then81, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.end73
  %call78 = call i32 %16(%struct.console* noundef %newcon, i8* noundef null) #24
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %lor.lhs.false76.if.then81_crit_edge, label %if.end93

lor.lhs.false76.if.then81_crit_edge:              ; preds = %lor.lhs.false76
  %.pre = load i16, i16* %flags285289297, align 8
  br label %if.then81

if.then81:                                        ; preds = %lor.lhs.false76.if.then81_crit_edge, %if.end73
  %17 = phi i16 [ %.pre, %lor.lhs.false76.if.then81_crit_edge ], [ %13, %if.end73 ]
  %18 = or i16 %17, 4
  store i16 %18, i16* %flags285289297, align 8
  %device = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 3
  %19 = load %struct.tty_driver* (%struct.console*, i32*)*, %struct.tty_driver* (%struct.console*, i32*)** %device, align 8
  %tobool85.not = icmp eq %struct.tty_driver* (%struct.console*, i32*)* %19, null
  br i1 %tobool85.not, label %if.end93, label %if.then86

if.then86:                                        ; preds = %if.then81
  %20 = or i16 %17, 6
  store i16 %20, i16* %flags285289297, align 8
  store i8 1, i8* @has_preferred_console, align 4
  br label %if.end93

if.end93:                                         ; preds = %lor.lhs.false76, %if.then86, %if.then81, %if.end64
  %call94 = call fastcc i32 @try_enable_new_console(%struct.console* noundef %newcon, i1 noundef true) #23
  %cmp95 = icmp eq i32 %call94, -2
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end93
  %call98 = call fastcc i32 @try_enable_new_console(%struct.console* noundef %newcon, i1 noundef false) #23
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end93
  %err.0 = phi i32 [ %call98, %if.then97 ], [ %call94, %if.end93 ]
  %tobool100.not = icmp eq i32 %err.0, 0
  br i1 %tobool100.not, label %lor.lhs.false101, label %cleanup

lor.lhs.false101:                                 ; preds = %if.end99
  %21 = load i16, i16* %flags285289297, align 8
  %conv103281 = zext i16 %21 to i32
  %and104 = and i32 %conv103281, 32
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end107, label %cleanup

if.end107:                                        ; preds = %lor.lhs.false101
  %and112 = and i32 %conv103281, 10
  %cmp113 = icmp eq i32 %and112, 2
  %or.cond264 = select i1 %bcon.3299, i1 %cmp113, i1 false
  br i1 %or.cond264, label %if.then115, label %if.end120

if.then115:                                       ; preds = %if.end107
  %and118 = and i16 %21, -2
  store i16 %and118, i16* %flags285289297, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.end107
  call void @console_lock() #23
  %22 = load i16, i16* %flags285289297, align 8
  %23 = and i16 %22, 2
  %tobool124 = icmp ne i16 %23, 0
  %24 = load %struct.console*, %struct.console** @console_drivers, align 8
  %cmp126 = icmp eq %struct.console* %24, null
  %or.cond199 = select i1 %tobool124, i1 true, i1 %cmp126
  br i1 %or.cond199, label %if.then128, label %if.else

if.then128:                                       ; preds = %if.end120
  %next129 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 12
  store %struct.console* %24, %struct.console** %next129, align 8
  store %struct.console* %newcon, %struct.console** @console_drivers, align 8
  br i1 %cmp126, label %if.end138, label %if.then132

if.then132:                                       ; preds = %if.then128
  %flags134 = getelementptr inbounds %struct.console, %struct.console* %24, i64 0, i32 8
  %25 = load i16, i16* %flags134, align 8
  %26 = and i16 %25, -3
  store i16 %26, i16* %flags134, align 8
  %.pre279 = load i16, i16* %flags285289297, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then132, %if.then128
  %27 = phi i16 [ %.pre279, %if.then132 ], [ %22, %if.then128 ]
  %28 = or i16 %27, 2
  store i16 %28, i16* %flags285289297, align 8
  br label %if.end146

if.else:                                          ; preds = %if.end120
  %next143 = getelementptr inbounds %struct.console, %struct.console* %24, i64 0, i32 12
  %29 = load %struct.console*, %struct.console** %next143, align 8
  %next144 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 12
  store %struct.console* %29, %struct.console** %next144, align 8
  store %struct.console* %newcon, %struct.console** %next143, align 8
  %.pre280 = load i16, i16* %flags285289297, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.else, %if.end138
  %30 = phi i16 [ %.pre280, %if.else ], [ %28, %if.end138 ]
  %31 = and i16 %30, 64
  %tobool150.not = icmp eq i16 %31, 0
  br i1 %tobool150.not, label %if.end152, label %if.then151

if.then151:                                       ; preds = %if.end146
  %32 = load i32, i32* @nr_ext_console_drivers, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* @nr_ext_console_drivers, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end146
  %33 = and i16 %30, 1
  %tobool156.not = icmp eq i16 %33, 0
  br i1 %tobool156.not, label %if.end158, label %if.then157

if.then157:                                       ; preds = %if.end152
  store %struct.console* %newcon, %struct.console** @exclusive_console, align 8
  %34 = load i64, i64* @console_seq, align 8
  store i64 %34, i64* @exclusive_console_stop_seq, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @syslog_lock) #24
  %35 = load i64, i64* @syslog_seq, align 8
  store i64 %35, i64* @console_seq, align 8
  call void @mutex_unlock(%struct.mutex* noundef nonnull @syslog_lock) #24
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.end152
  call void @console_unlock() #23
  call void @console_sysfs_notify() #24
  %36 = load i16, i16* %flags285289297, align 8
  %37 = and i16 %36, 8
  %tobool166.not = icmp eq i16 %37, 0
  %cond = select i1 %tobool166.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)
  %arraydecay168 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 0, i64 0
  %index169 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 9
  %38 = load i16, i16* %index169, align 2
  %conv170 = sext i16 %38 to i32
  %call171 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* noundef %cond, i8* noundef %arraydecay168, i32 noundef %conv170) #27
  br i1 %bcon.3299, label %land.lhs.true173, label %cleanup

land.lhs.true173:                                 ; preds = %if.end158
  %39 = load i16, i16* %flags285289297, align 8
  %40 = and i16 %39, 10
  %cmp177 = icmp ne i16 %40, 2
  %.b = load i1, i1* @keep_bootcon, align 4
  %or.cond200 = select i1 %cmp177, i1 true, i1 %.b
  %bcon.4272 = load %struct.console*, %struct.console** @console_drivers, align 8
  %cmp183.not273 = icmp eq %struct.console* %bcon.4272, null
  %or.cond276 = select i1 %or.cond200, i1 true, i1 %cmp183.not273
  br i1 %or.cond276, label %cleanup, label %for.body185

for.body185:                                      ; preds = %land.lhs.true173, %for.inc193
  %bcon.4274 = phi %struct.console* [ %bcon.4, %for.inc193 ], [ %bcon.4272, %land.lhs.true173 ]
  %flags186 = getelementptr inbounds %struct.console, %struct.console* %bcon.4274, i64 0, i32 8
  %41 = load i16, i16* %flags186, align 8
  %42 = and i16 %41, 8
  %tobool189.not = icmp eq i16 %42, 0
  br i1 %tobool189.not, label %for.inc193, label %if.then190

if.then190:                                       ; preds = %for.body185
  %call191 = call i32 @unregister_console(%struct.console* noundef nonnull %bcon.4274) #23
  br label %for.inc193

for.inc193:                                       ; preds = %for.body185, %if.then190
  %next194 = getelementptr inbounds %struct.console, %struct.console* %bcon.4274, i64 0, i32 12
  %bcon.4 = load %struct.console*, %struct.console** %next194, align 8
  %cmp183.not = icmp eq %struct.console* %bcon.4, null
  br i1 %cmp183.not, label %cleanup, label %for.body185

cleanup:                                          ; preds = %for.inc193, %do.end, %if.end158, %land.lhs.true173, %if.end99, %lor.lhs.false101, %do.end39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_enable_new_console(%struct.console* noundef %newcon, i1 noundef %user_specified) unnamed_addr #1 {
entry:
  %0 = zext i1 %user_specified to i8
  %match = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 7
  %arraydecay17 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 0, i64 0
  %index23 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 9
  br label %land.rhs

land.rhs:                                         ; preds = %entry, %for.inc
  %i.0129 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %c.0127 = phi %struct.console_cmdline* [ getelementptr inbounds ([8 x %struct.console_cmdline], [8 x %struct.console_cmdline]* @console_cmdline, i64 0, i64 0), %entry ], [ %incdec.ptr, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.0127, i64 0, i32 0, i64 0
  %1 = load i8, i8* %arrayidx, align 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %user_specified1 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.0127, i64 0, i32 2
  %2 = load i8, i8* %user_specified1, align 4, !range !16
  %cmp6.not = icmp eq i8 %2, %0
  br i1 %cmp6.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %3 = load i32 (%struct.console*, i8*, i32, i8*)*, i32 (%struct.console*, i8*, i32, i8*)** %match, align 8
  %tobool8.not = icmp eq i32 (%struct.console*, i8*, i32, i8*)* %3, null
  br i1 %tobool8.not, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %index = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.0127, i64 0, i32 1
  %4 = load i32, i32* %index, align 8
  %options = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.0127, i64 0, i32 3
  %5 = load i8*, i8** %options, align 8
  %call = call i32 %3(%struct.console* noundef %newcon, i8* noundef %arrayidx, i32 noundef %4, i8* noundef %5) #24
  %cmp11.not = icmp eq i32 %call, 0
  br i1 %cmp11.not, label %if.end56, label %do.end

do.end:                                           ; preds = %if.end, %lor.lhs.false
  %call18 = call i32 @strcmp(i8* noundef %arrayidx, i8* noundef %arraydecay17) #24
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end22, label %for.inc

if.end22:                                         ; preds = %do.end
  %6 = load i16, i16* %index23, align 2
  %cmp25 = icmp sgt i16 %6, -1
  br i1 %cmp25, label %land.lhs.true, label %if.then38

land.lhs.true:                                    ; preds = %if.end22
  %conv24116 = zext i16 %6 to i32
  %index29 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.0127, i64 0, i32 1
  %7 = load i32, i32* %index29, align 8
  %cmp30.not = icmp eq i32 %7, %conv24116
  br i1 %cmp30.not, label %if.end42, label %for.inc

if.then38:                                        ; preds = %if.end22
  %index39 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.0127, i64 0, i32 1
  %8 = load i32, i32* %index39, align 8
  %conv40 = trunc i32 %8 to i16
  store i16 %conv40, i16* %index23, align 2
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true, %if.then38
  %setup = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 5
  %9 = load i32 (%struct.console*, i8*)*, i32 (%struct.console*, i8*)** %setup, align 8
  %tobool47.not = icmp eq i32 (%struct.console*, i8*)* %9, null
  br i1 %tobool47.not, label %if.end56, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.end42
  %options50 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.0127, i64 0, i32 3
  %10 = load i8*, i8** %options50, align 8
  %call51 = call i32 %9(%struct.console* noundef %newcon, i8* noundef %10) #24
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %if.end56, label %cleanup

if.end56:                                         ; preds = %lor.lhs.false, %if.end42, %land.lhs.true48
  %flags = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 8
  %11 = load i16, i16* %flags, align 8
  %12 = or i16 %11, 4
  store i16 %12, i16* %flags, align 8
  %13 = load i32, i32* @preferred_console, align 4
  %cmp59 = icmp eq i32 %i.0129, %13
  br i1 %cmp59, label %if.then61, label %cleanup

if.then61:                                        ; preds = %if.end56
  %14 = or i16 %11, 6
  store i16 %14, i16* %flags, align 8
  store i8 1, i8* @has_preferred_console, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true, %do.end, %for.body
  %inc = add nuw nsw i32 %i.0129, 1
  %incdec.ptr = getelementptr %struct.console_cmdline, %struct.console_cmdline* %c.0127, i64 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %for.inc, %land.rhs
  %c.0.lcssa = phi %struct.console_cmdline* [ %incdec.ptr, %for.inc ], [ %c.0127, %land.rhs ]
  %flags67 = getelementptr inbounds %struct.console, %struct.console* %newcon, i64 0, i32 8
  %15 = load i16, i16* %flags67, align 8
  %16 = and i16 %15, 4
  %tobool69.not = icmp eq i16 %16, 0
  br i1 %tobool69.not, label %if.end79, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %for.end
  %user_specified71 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %c.0.lcssa, i64 0, i32 2
  %17 = load i8, i8* %user_specified71, align 4, !range !16
  %cmp76 = icmp eq i8 %17, %0
  br i1 %cmp76, label %cleanup, label %if.end79

if.end79:                                         ; preds = %land.lhs.true70, %for.end
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true70, %if.end56, %if.then61, %land.lhs.true48, %if.end79
  %retval.0 = phi i32 [ -2, %if.end79 ], [ %call51, %land.lhs.true48 ], [ 0, %if.then61 ], [ 0, %if.end56 ], [ 0, %land.lhs.true70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_sysfs_notify() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unregister_console(%struct.console* noundef %console) local_unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.console, %struct.console* %console, i64 0, i32 8
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 8
  %tobool.not = icmp eq i16 %1, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)
  %arraydecay = getelementptr inbounds %struct.console, %struct.console* %console, i64 0, i32 0, i64 0
  %index = getelementptr inbounds %struct.console, %struct.console* %console, i64 0, i32 9
  %2 = load i16, i16* %index, align 2
  %conv1 = sext i16 %2 to i32
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i8* noundef %cond, i8* noundef %arraydecay, i32 noundef %conv1) #27
  call void @console_lock() #23
  %3 = load %struct.console*, %struct.console** @console_drivers, align 8
  %cmp8 = icmp eq %struct.console* %3, %console
  br i1 %cmp8, label %if.then10, label %for.cond

if.then10:                                        ; preds = %entry
  %next = getelementptr inbounds %struct.console, %struct.console* %console, i64 0, i32 12
  %4 = load %struct.console*, %struct.console** %next, align 8
  store %struct.console* %4, %struct.console** @console_drivers, align 8
  br label %if.end24

for.cond:                                         ; preds = %entry, %for.body
  %con.0 = phi %struct.console* [ %5, %for.body ], [ %3, %entry ]
  %cmp11.not = icmp eq %struct.console* %con.0, null
  br i1 %cmp11.not, label %out_disable_unlock, label %for.body

for.body:                                         ; preds = %for.cond
  %next13 = getelementptr inbounds %struct.console, %struct.console* %con.0, i64 0, i32 12
  %5 = load %struct.console*, %struct.console** %next13, align 8
  %cmp14 = icmp eq %struct.console* %5, %console
  br i1 %cmp14, label %if.then16, label %for.cond

if.then16:                                        ; preds = %for.body
  %next13.le = getelementptr inbounds %struct.console, %struct.console* %con.0, i64 0, i32 12
  %next17 = getelementptr inbounds %struct.console, %struct.console* %console, i64 0, i32 12
  %6 = load %struct.console*, %struct.console** %next17, align 8
  store %struct.console* %6, %struct.console** %next13.le, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.then10
  %7 = phi %struct.console* [ %3, %if.then16 ], [ %4, %if.then10 ]
  %8 = load i16, i16* %flags, align 8
  %9 = and i16 %8, 64
  %tobool28.not = icmp eq i16 %9, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end24
  %10 = load i32, i32* @nr_ext_console_drivers, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* @nr_ext_console_drivers, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end24
  %cmp31.not = icmp eq %struct.console* %7, null
  %11 = and i16 %8, 2
  %tobool36.not = icmp eq i16 %11, 0
  %or.cond = select i1 %cmp31.not, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %if.end41, label %if.then37

if.then37:                                        ; preds = %if.end30
  %flags38 = getelementptr inbounds %struct.console, %struct.console* %7, i64 0, i32 8
  %12 = load i16, i16* %flags38, align 8
  %13 = or i16 %12, 2
  store i16 %13, i16* %flags38, align 8
  %.pre = load i16, i16* %flags, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end30
  %14 = phi i16 [ %.pre, %if.then37 ], [ %8, %if.end30 ]
  %15 = and i16 %14, -5
  store i16 %15, i16* %flags, align 8
  call void @console_unlock() #23
  call void @console_sysfs_notify() #24
  %exit = getelementptr inbounds %struct.console, %struct.console* %console, i64 0, i32 6
  %16 = load i32 (%struct.console*)*, i32 (%struct.console*)** %exit, align 8
  %tobool46.not = icmp eq i32 (%struct.console*)* %16, null
  br i1 %tobool46.not, label %cleanup, label %if.then47

if.then47:                                        ; preds = %if.end41
  %call49 = call i32 %16(%struct.console* noundef %console) #24
  br label %cleanup

out_disable_unlock:                               ; preds = %for.cond
  %17 = load i16, i16* %flags, align 8
  %18 = and i16 %17, -5
  store i16 %18, i16* %flags, align 8
  call void @console_unlock() #23
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then47, %out_disable_unlock
  %retval.0 = phi i32 [ -19, %out_disable_unlock ], [ %call49, %if.then47 ], [ 0, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @console_init() local_unnamed_addr #0 section ".init.text" {
entry:
  call void @n_tty_init() #29
  br i1 icmp ult (i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__con_initcall_start, i64 0, i64 0), i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__con_initcall_end, i64 0, i64 0)), label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %ce.010 = phi i32* [ %incdec.ptr, %while.body ], [ getelementptr inbounds ([0 x i32], [0 x i32]* @__con_initcall_start, i64 0, i64 0), %entry ]
  %call1 = call fastcc i32 ()* @initcall_from_entry(i32* noundef %ce.010) #23
  %call2 = call i32 %call1() #24
  %incdec.ptr = getelementptr i32, i32* %ce.010, i64 1
  %cmp = icmp ult i32* %incdec.ptr, getelementptr inbounds ([0 x i32], [0 x i32]* @__con_initcall_end, i64 0, i64 0)
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @n_tty_init() local_unnamed_addr #15 section ".init.text"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 ()* @initcall_from_entry(i32* noundef readonly %entry1) unnamed_addr #5 {
entry:
  %call = call fastcc i8* @offset_to_ptr(i32* noundef %entry1) #23
  %0 = bitcast i8* %call to i32 ()*
  ret i32 ()* %0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @printk_late_init() #0 section ".init.text" {
entry:
  %con.087 = load %struct.console*, %struct.console** @console_drivers, align 8
  %cmp.not88 = icmp eq %struct.console* %con.087, null
  br i1 %cmp.not88, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %con.089 = phi %struct.console* [ %con.0, %for.inc ], [ %con.087, %entry ]
  %flags = getelementptr inbounds %struct.console, %struct.console* %con.089, i64 0, i32 8
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 8
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %2 = getelementptr %struct.console, %struct.console* %con.089, i64 0, i32 0, i64 0
  %call = call fastcc i1 @init_section_intersects(i8* noundef %2) #23
  br i1 %call, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %write = getelementptr inbounds %struct.console, %struct.console* %con.089, i64 0, i32 1
  %3 = bitcast void (%struct.console*, i8*, i32)** %write to i8**
  %4 = load i8*, i8** %3, align 8
  %call2 = call fastcc i1 @init_section_contains(i8* noundef %4) #23
  br i1 %call2, label %do.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %read = getelementptr inbounds %struct.console, %struct.console* %con.089, i64 0, i32 2
  %5 = bitcast i32 (%struct.console*, i8*, i32)** %read to i8**
  %6 = load i8*, i8** %5, align 8
  %call5 = call fastcc i1 @init_section_contains(i8* noundef %6) #23
  br i1 %call5, label %do.end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %device = getelementptr inbounds %struct.console, %struct.console* %con.089, i64 0, i32 3
  %7 = bitcast %struct.tty_driver* (%struct.console*, i32*)** %device to i8**
  %8 = load i8*, i8** %7, align 8
  %call8 = call fastcc i1 @init_section_contains(i8* noundef %8) #23
  br i1 %call8, label %do.end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %unblank = getelementptr inbounds %struct.console, %struct.console* %con.089, i64 0, i32 4
  %9 = bitcast void ()** %unblank to i8**
  %10 = load i8*, i8** %9, align 8
  %call11 = call fastcc i1 @init_section_contains(i8* noundef %10) #23
  br i1 %call11, label %do.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %data = getelementptr inbounds %struct.console, %struct.console* %con.089, i64 0, i32 11
  %11 = load i8*, i8** %data, align 8
  %call14 = call fastcc i1 @init_section_contains(i8* noundef %11) #23
  br i1 %call14, label %do.end, label %for.inc

do.end:                                           ; preds = %if.end, %lor.lhs.false, %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false10, %lor.lhs.false13
  %index = getelementptr inbounds %struct.console, %struct.console* %con.089, i64 0, i32 9
  %12 = load i16, i16* %index, align 2
  %conv17 = sext i16 %12 to i32
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.49, i64 0, i64 0), i8* noundef %2, i32 noundef %conv17) #27
  %call19 = call i32 @unregister_console(%struct.console* noundef nonnull %con.089) #23
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false13, %do.end, %for.body
  %next = getelementptr inbounds %struct.console, %struct.console* %con.089, i64 0, i32 12
  %con.0 = load %struct.console*, %struct.console** %next, align 8
  %cmp.not = icmp eq %struct.console* %con.0, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %call21 = call fastcc i32 @cpuhp_setup_state_nocalls(i32 noundef 28, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 (i32)* noundef null, i32 (i32)* noundef nonnull @console_cpu_notify) #23
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then32, label %if.end33, !prof !9

if.then32:                                        ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk.c\22; .popsection; .long 14472b - 14470b; .short 3197; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !25
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.end
  %call42 = call fastcc i32 @cpuhp_setup_state_nocalls(i32 noundef 192, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i32 (i32)* noundef nonnull @console_cpu_notify, i32 (i32)* noundef null) #23
  %cmp44 = icmp slt i32 %call42, 0
  br i1 %cmp44, label %if.then58, label %if.end59, !prof !9

if.then58:                                        ; preds = %if.end33
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk.c\22; .popsection; .long 14472b - 14470b; .short 3200; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #25, !srcloc !26
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end33
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active() unnamed_addr #16 {
entry:
  %call = call fastcc i32 @list_empty() #23
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_or_case_32(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aorr\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 1, i32* elementtype(i32) %0) #25, !srcloc !27
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #17 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #30, !srcloc !28
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @irq_work_queue(%struct.irq_work* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @defer_console_output() local_unnamed_addr #1 {
entry:
  %call = call i1 @printk_percpu_data_ready() #23
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !29
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call7, ptrtoint (i32* @printk_pending to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %or = or i32 %1, 2
  store i32 %or, i32* %0, align 4
  %call16 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add17 = add i64 %call16, ptrtoint (%struct.irq_work* @wake_up_klogd_work to i64)
  %2 = inttoptr i64 %add17 to %struct.irq_work*
  %call18 = call i1 @irq_work_queue(%struct.irq_work* noundef %2) #24
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !30
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vprintk_deferred(i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %args) local_unnamed_addr #1 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef align 8 dereferenceable(32) %1, i64 32, i1 false)
  %call = call i32 @vprintk_emit(i32 noundef 0, i32 noundef -2, %struct.dev_printk_info* noundef null, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #23
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  call void @defer_console_output() #23
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @_printk_deferred(i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vprintk_deferred(i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #23
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #25
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__printk_ratelimit(i8* noundef %func) local_unnamed_addr #1 {
entry:
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @printk_ratelimit_state, i8* noundef %func) #24
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @printk_timed_ratelimit(i64* nocapture noundef %caller_jiffies, i32 noundef %interval_msecs) local_unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %1 = load i64, i64* %caller_jiffies, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sub = sub i64 %0, %1
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %interval_msecs) #24
  %cmp.not = icmp ugt i64 %sub, %call2.i
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load volatile i64, i64* @jiffies, align 64
  store i64 %2, i64* %caller_jiffies, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kmsg_dump_register(%struct.kmsg_dumper* noundef %dumper) local_unnamed_addr #1 {
entry:
  %dump = getelementptr inbounds %struct.kmsg_dumper, %struct.kmsg_dumper* %dumper, i64 0, i32 1
  %0 = load void (%struct.kmsg_dumper*, i32)*, void (%struct.kmsg_dumper*, i32)** %dump, align 8
  %tobool.not = icmp eq void (%struct.kmsg_dumper*, i32)* %0, null
  br i1 %tobool.not, label %cleanup, label %do.body1

do.body1:                                         ; preds = %entry
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #23
  %registered = getelementptr inbounds %struct.kmsg_dumper, %struct.kmsg_dumper* %dumper, i64 0, i32 3
  %1 = load i8, i8* %registered, align 4, !range !16
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.body1
  store i8 1, i8* %registered, align 4
  %list = getelementptr inbounds %struct.kmsg_dumper, %struct.kmsg_dumper* %dumper, i64 0, i32 0
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %list) #23
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body1
  %err.0 = phi i32 [ -16, %do.body1 ], [ 0, %if.then6 ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i32 [ %err.0, %if.end8 ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #23
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !31
  call fastcc void @do_raw_spin_lock_flags() #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail_rcu(%struct.list_head* noundef %new) unnamed_addr #1 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dump_list, i64 0, i32 1), align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kmsg_dump_unregister(%struct.kmsg_dumper* nocapture noundef %dumper) local_unnamed_addr #1 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #23
  %registered = getelementptr inbounds %struct.kmsg_dumper, %struct.kmsg_dumper* %dumper, i64 0, i32 3
  %0 = load i8, i8* %registered, align 4, !range !16
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %registered, align 4
  %list = getelementptr inbounds %struct.kmsg_dumper, %struct.kmsg_dumper* %dumper, i64 0, i32 0
  call fastcc void @list_del_rcu(%struct.list_head* noundef %list) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %err.0 = phi i32 [ 0, %if.then ], [ -22, %entry ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #24
  call void @synchronize_rcu() #24
  ret i32 %err.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #18 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #23
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8* @kmsg_dump_reason_str(i32 noundef %reason) local_unnamed_addr #19 {
entry:
  %switch.tableidx = add i32 %reason, -1
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table.kmsg_dump_reason_str, i64 0, i64 %1
  %switch.load = load i8*, i8** %switch.gep, align 8
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i8* [ %switch.load, %switch.lookup ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kmsg_dump(i32 noundef %reason) local_unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #24
  %dumper.0.in31 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dump_list, i64 0, i32 0), align 8
  %cmp.not33 = icmp eq %struct.list_head* %dumper.0.in31, @dump_list
  br i1 %cmp.not33, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %.pre37 = load i8, i8* @always_kmsg_dump, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %0 = phi i8 [ %5, %cleanup ], [ %.pre37, %for.body.preheader ]
  %dumper.0.in34 = phi %struct.list_head* [ %dumper.0.in, %cleanup ], [ %dumper.0.in31, %for.body.preheader ]
  %max_reason5 = getelementptr inbounds %struct.list_head, %struct.list_head* %dumper.0.in34, i64 1, i32 1
  %1 = bitcast %struct.list_head** %max_reason5 to i32*
  %2 = load i32, i32* %1, align 8
  %cmp6 = icmp eq i32 %2, 0
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, i32 2, i32 5
  %max_reason.0 = select i1 %cmp6, i32 %cond, i32 %2
  %cmp7 = icmp ult i32 %max_reason.0, %reason
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %for.body
  %dumper.036 = bitcast %struct.list_head* %dumper.0.in34 to %struct.kmsg_dumper*
  %dump = getelementptr inbounds %struct.list_head, %struct.list_head* %dumper.0.in34, i64 1
  %3 = bitcast %struct.list_head* %dump to void (%struct.kmsg_dumper*, i32)**
  %4 = load void (%struct.kmsg_dumper*, i32)*, void (%struct.kmsg_dumper*, i32)** %3, align 8
  call void %4(%struct.kmsg_dumper* noundef %dumper.036, i32 noundef %reason) #24
  %.pre = load i8, i8* @always_kmsg_dump, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end9
  %5 = phi i8 [ %0, %for.body ], [ %.pre, %if.end9 ]
  %next = getelementptr %struct.list_head, %struct.list_head* %dumper.0.in34, i64 0, i32 0
  %dumper.0.in = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp.not = icmp eq %struct.list_head* %dumper.0.in, @dump_list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %entry
  call fastcc void @rcu_read_unlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kmsg_dump_get_line(%struct.kmsg_dump_iter* nocapture noundef %iter, i1 noundef %syslog, i8* noundef %line, i64 noundef %size, i64* noundef writeonly %len) local_unnamed_addr #1 {
entry:
  %info = alloca %struct.printk_info, align 8
  %line_count = alloca i32, align 4
  %r = alloca %struct.printk_record, align 8
  %call = call fastcc i64 @latched_seq_read_nolock() #23
  %0 = bitcast %struct.printk_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !8
  %1 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #25
  store i32 0, i32* %line_count, align 4, !annotation !8
  %2 = bitcast %struct.printk_record* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !8
  %cur_seq = getelementptr inbounds %struct.kmsg_dump_iter, %struct.kmsg_dump_iter* %iter, i64 0, i32 0
  %3 = load i64, i64* %cur_seq, align 8
  %cmp = icmp ult i64 %3, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %call, i64* %cur_seq, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv = trunc i64 %size to i32
  call fastcc void @prb_rec_init_rd(%struct.printk_record* noundef nonnull %r, %struct.printk_info* noundef nonnull %info, i8* noundef %line, i32 noundef %conv) #23
  %tobool.not = icmp eq i8* %line, null
  %4 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %5 = load i64, i64* %cur_seq, align 8
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %4, i64 noundef %5, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call4, label %if.end6, label %out

if.end6:                                          ; preds = %if.then2
  %6 = load i8, i8* @printk_time, align 4, !range !16
  %tobool8 = icmp ne i8 %6, 0
  %call9 = call fastcc i64 @record_print_text(%struct.printk_record* noundef nonnull %r, i1 noundef %syslog, i1 noundef %tobool8) #23
  br label %if.end17

if.else:                                          ; preds = %if.end
  %call11 = call i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %4, i64 noundef %5, %struct.printk_info* noundef nonnull %info, i32* noundef nonnull %line_count) #24
  br i1 %call11, label %if.end13, label %out

if.end13:                                         ; preds = %if.else
  %7 = load i32, i32* %line_count, align 4
  %8 = load i8, i8* @printk_time, align 4, !range !16
  %tobool15 = icmp ne i8 %8, 0
  %call16 = call fastcc i64 @get_record_print_text_size(%struct.printk_info* noundef nonnull %info, i32 noundef %7, i1 noundef %syslog, i1 noundef %tobool15) #23
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.end6
  %l.0 = phi i64 [ %call9, %if.end6 ], [ %call16, %if.end13 ]
  %info18 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  %9 = load %struct.printk_info*, %struct.printk_info** %info18, align 8
  %seq = getelementptr inbounds %struct.printk_info, %struct.printk_info* %9, i64 0, i32 0
  %10 = load i64, i64* %seq, align 8
  %add = add i64 %10, 1
  store i64 %add, i64* %cur_seq, align 8
  br label %out

out:                                              ; preds = %if.else, %if.then2, %if.end17
  %l.1 = phi i64 [ %l.0, %if.end17 ], [ 0, %if.then2 ], [ 0, %if.else ]
  %ret.0.off0 = phi i1 [ true, %if.end17 ], [ false, %if.then2 ], [ false, %if.else ]
  %tobool20.not = icmp eq i64* %len, null
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %out
  store i64 %l.1, i64* %len, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %out
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #25
  ret i1 %ret.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @latched_seq_read_nolock() unnamed_addr #1 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call = call fastcc i32 @raw_read_seqcount_latch() #23
  %and = and i32 %call, 1
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr %struct.latched_seq, %struct.latched_seq* @clear_seq, i64 0, i32 1, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %call3 = call fastcc i32 @read_seqcount_latch_retry(i32 noundef %call) #23
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kmsg_dump_get_buffer(%struct.kmsg_dump_iter* nocapture noundef %iter, i1 noundef %syslog, i8* noundef %buf, i64 noundef %size, i64* noundef writeonly %len_out) local_unnamed_addr #1 {
entry:
  %info = alloca %struct.printk_info, align 8
  %r = alloca %struct.printk_record, align 8
  %call = call fastcc i64 @latched_seq_read_nolock() #23
  %0 = bitcast %struct.printk_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !8
  %1 = bitcast %struct.printk_record* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !8
  %2 = load i8, i8* @printk_time, align 4, !range !16
  %tobool = icmp ne i8 %2, 0
  %tobool2 = icmp ne i8* %buf, null
  %tobool3 = icmp ne i64 %size, 0
  %or.cond = and i1 %tobool2, %tobool3
  br i1 %or.cond, label %if.end, label %out

if.end:                                           ; preds = %entry
  %cur_seq = getelementptr inbounds %struct.kmsg_dump_iter, %struct.kmsg_dump_iter* %iter, i64 0, i32 0
  %3 = load i64, i64* %cur_seq, align 8
  %cmp = icmp ult i64 %3, %call
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  store i64 %call, i64* %cur_seq, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %4 = phi i64 [ %call, %if.then4 ], [ %3, %if.end ]
  %5 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call8 = call i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %5, i64 noundef %4, %struct.printk_info* noundef nonnull %info, i32* noundef null) #24
  br i1 %call8, label %if.then9, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  %.pre = load i64, i64* %cur_seq, align 8
  br label %if.end17

if.then9:                                         ; preds = %if.end6
  %seq10 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 0
  %6 = load i64, i64* %seq10, align 8
  %7 = load i64, i64* %cur_seq, align 8
  %cmp12.not = icmp eq i64 %6, %7
  br i1 %cmp12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.then9
  store i64 %6, i64* %cur_seq, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end6.if.end17_crit_edge, %if.then9, %if.then13
  %8 = phi i64 [ %.pre, %if.end6.if.end17_crit_edge ], [ %6, %if.then9 ], [ %6, %if.then13 ]
  %next_seq19 = getelementptr inbounds %struct.kmsg_dump_iter, %struct.kmsg_dump_iter* %iter, i64 0, i32 1
  %9 = load i64, i64* %next_seq19, align 8
  %cmp20.not = icmp ult i64 %8, %9
  br i1 %cmp20.not, label %if.end22, label %out

if.end22:                                         ; preds = %if.end17
  %sub = add i64 %size, -1
  %call27 = call fastcc i64 @find_first_fitting_seq(i64 noundef %8, i64 noundef %9, i64 noundef %sub, i1 noundef %syslog, i1 noundef %tobool) #23
  %conv = trunc i64 %size to i32
  call fastcc void @prb_rec_init_rd(%struct.printk_record* noundef nonnull %r, %struct.printk_info* noundef nonnull %info, i8* noundef nonnull %buf, i32 noundef %conv) #23
  %info29 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  %10 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call2879 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %10, i64 noundef %call27, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call2879, label %for.body, label %for.end

for.body:                                         ; preds = %if.end22, %if.end35
  %len.080 = phi i64 [ %add, %if.end35 ], [ 0, %if.end22 ]
  %11 = load %struct.printk_info*, %struct.printk_info** %info29, align 8
  %seq30 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %11, i64 0, i32 0
  %12 = load i64, i64* %seq30, align 8
  %13 = load i64, i64* %next_seq19, align 8
  %cmp32.not = icmp ult i64 %12, %13
  br i1 %cmp32.not, label %if.end35, label %for.end

if.end35:                                         ; preds = %for.body
  %call38 = call fastcc i64 @record_print_text(%struct.printk_record* noundef nonnull %r, i1 noundef %syslog, i1 noundef %tobool) #23
  %add = add i64 %call38, %len.080
  %add.ptr = getelementptr i8, i8* %buf, i64 %add
  %sub39 = sub i64 %size, %add
  %conv40 = trunc i64 %sub39 to i32
  call fastcc void @prb_rec_init_rd(%struct.printk_record* noundef nonnull %r, %struct.printk_info* noundef nonnull %info, i8* noundef %add.ptr, i32 noundef %conv40) #23
  %14 = load %struct.printk_info*, %struct.printk_info** %info29, align 8
  %seq42 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %14, i64 0, i32 0
  %15 = load i64, i64* %seq42, align 8
  %add43 = add i64 %15, 1
  %16 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call28 = call i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %16, i64 noundef %add43, %struct.printk_record* noundef nonnull %r) #24
  br i1 %call28, label %for.body, label %for.end

for.end:                                          ; preds = %if.end35, %for.body, %if.end22
  %len.0.lcssa = phi i64 [ 0, %if.end22 ], [ %len.080, %for.body ], [ %add, %if.end35 ]
  store i64 %call27, i64* %next_seq19, align 8
  br label %out

out:                                              ; preds = %if.end17, %entry, %for.end
  %len.1 = phi i64 [ 0, %if.end17 ], [ %len.0.lcssa, %for.end ], [ 0, %entry ]
  %ret.0.off0 = phi i1 [ false, %if.end17 ], [ true, %for.end ], [ false, %entry ]
  %tobool45.not = icmp eq i64* %len_out, null
  br i1 %tobool45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %out
  store i64 %len.1, i64* %len_out, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %out
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #25
  ret i1 %ret.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_fitting_seq(i64 noundef %start_seq, i64 noundef %max_seq, i64 noundef %size, i1 noundef %syslog, i1 noundef %time) unnamed_addr #1 {
entry:
  %info = alloca %struct.printk_info, align 8
  %line_count = alloca i32, align 4
  %0 = bitcast %struct.printk_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !8
  %1 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #25
  store i32 0, i32* %line_count, align 4, !annotation !8
  %seq2 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 0
  %2 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call38 = call i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %2, i64 noundef %start_seq, %struct.printk_info* noundef nonnull %info, i32* noundef nonnull %line_count) #24
  %3 = load i64, i64* %seq2, align 8
  %cmp.not51 = icmp ult i64 %3, %max_seq
  %or.cond60 = select i1 %call38, i1 %cmp.not51, i1 false
  br i1 %or.cond60, label %if.end, label %for.end

if.end:                                           ; preds = %entry, %if.end
  %len.03952 = phi i64 [ %add, %if.end ], [ 0, %entry ]
  %4 = load i32, i32* %line_count, align 4
  %call4 = call fastcc i64 @get_record_print_text_size(%struct.printk_info* noundef nonnull %info, i32 noundef %4, i1 noundef %syslog, i1 noundef %time) #23
  %add = add i64 %call4, %len.03952
  %5 = load i64, i64* %seq2, align 8
  %add6 = add i64 %5, 1
  %6 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call = call i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %6, i64 noundef %add6, %struct.printk_info* noundef nonnull %info, i32* noundef nonnull %line_count) #24
  %7 = load i64, i64* %seq2, align 8
  %cmp.not = icmp ult i64 %7, %max_seq
  %or.cond61 = select i1 %call, i1 %cmp.not, i1 false
  br i1 %or.cond61, label %if.end, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %len.0.lcssa = phi i64 [ 0, %entry ], [ %add, %if.end ]
  %seq.0.lcssa = phi i64 [ %start_seq, %entry ], [ %add6, %if.end ]
  %cmp7 = icmp ult i64 %seq.0.lcssa, %max_seq
  %spec.select = select i1 %cmp7, i64 %seq.0.lcssa, i64 %max_seq
  %8 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call1144 = call i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %8, i64 noundef %start_seq, %struct.printk_info* noundef nonnull %info, i32* noundef nonnull %line_count) #24
  %cmp13.not45 = icmp ugt i64 %len.0.lcssa, %size
  %or.cond46 = select i1 %call1144, i1 %cmp13.not45, i1 false
  %9 = load i64, i64* %seq2, align 8
  %cmp15.not56 = icmp ult i64 %9, %spec.select
  %or.cond62 = select i1 %or.cond46, i1 %cmp15.not56, i1 false
  br i1 %or.cond62, label %if.end17, label %for.end24

if.end17:                                         ; preds = %for.end, %if.end17
  %len.14757 = phi i64 [ %sub, %if.end17 ], [ %len.0.lcssa, %for.end ]
  %10 = load i32, i32* %line_count, align 4
  %call20 = call fastcc i64 @get_record_print_text_size(%struct.printk_info* noundef nonnull %info, i32 noundef %10, i1 noundef %syslog, i1 noundef %time) #23
  %sub = sub i64 %len.14757, %call20
  %11 = load i64, i64* %seq2, align 8
  %add23 = add i64 %11, 1
  %12 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call11 = call i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %12, i64 noundef %add23, %struct.printk_info* noundef nonnull %info, i32* noundef nonnull %line_count) #24
  %cmp13.not = icmp ugt i64 %sub, %size
  %or.cond = select i1 %call11, i1 %cmp13.not, i1 false
  %13 = load i64, i64* %seq2, align 8
  %cmp15.not = icmp ult i64 %13, %spec.select
  %or.cond63 = select i1 %or.cond, i1 %cmp15.not, i1 false
  br i1 %or.cond63, label %if.end17, label %for.end24

for.end24:                                        ; preds = %if.end17, %for.end
  %seq.1.lcssa = phi i64 [ %start_seq, %for.end ], [ %add23, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #25
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #25
  ret i64 %seq.1.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kmsg_dump_rewind(%struct.kmsg_dump_iter* nocapture noundef writeonly %iter) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @latched_seq_read_nolock() #23
  %cur_seq = getelementptr inbounds %struct.kmsg_dump_iter, %struct.kmsg_dump_iter* %iter, i64 0, i32 0
  store i64 %call, i64* %cur_seq, align 8
  %0 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** @prb, align 8
  %call1 = call i64 @prb_next_seq(%struct.printk_ringbuffer* noundef %0) #24
  %next_seq = getelementptr inbounds %struct.kmsg_dump_iter, %struct.kmsg_dump_iter* %iter, i64 0, i32 1
  store i64 %call1, i64* %next_seq, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__printk_wait_on_cpu_lock() local_unnamed_addr #1 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  call fastcc void @cpu_relax() #23
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @printk_cpulock_owner, i64 0, i32 0), align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #1 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #25, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__printk_cpu_trylock() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call11.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.atomic_t* @printk_cpulock_owner to i8*), i32 noundef -1, i32 noundef %1) #24
  %cmp = icmp eq i32 %call11.i.i, -1
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %cmp3 = icmp eq i32 %call11.i.i, %1
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.else
  call fastcc void @__ll_sc_atomic_add() #24
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 1, %entry ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__printk_cpu_unlock() local_unnamed_addr #1 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @printk_cpulock_nested, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__ll_sc_atomic_sub() #24
  br label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @printk_cpulock_owner, i64 0, i32 0), i32 -1) #25, !srcloc !33
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #23
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #23
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #24
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #25, !srcloc !34
  call void asm sideeffect "hint #20", "~{memory}"() #25, !srcloc !35
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal void @devkmsg_emit(i32 noundef %facility, i32 noundef %level, i8* nocapture readnone %fmt, ...) unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #25
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vprintk_emit(i32 noundef %facility, i32 noundef %level, %struct.dev_printk_info* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), %"struct.std::__va_list"* noundef nonnull %byval-temp) #23
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #25
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmalloc_order(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_copy_from_iter(i8* noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.poll_table_struct* noundef %p) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.poll_table_struct* %p, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 0, i32 0
  %0 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %tobool1.not = icmp eq void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %0, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull @log_wait, %struct.poll_table_struct* noundef nonnull %p) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ratelimit_default_init(%struct.ratelimit_state* noundef %rs) unnamed_addr #1 {
entry:
  call fastcc void @ratelimit_state_init(%struct.ratelimit_state* noundef %rs) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @ratelimit_set_flags(%struct.ratelimit_state* nocapture noundef writeonly %rs) unnamed_addr #7 {
entry:
  %flags1 = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 6
  store i64 1, i64* %flags1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ratelimit_state_init(%struct.ratelimit_state* noundef %rs) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.ratelimit_state* %rs to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 40) #24
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %interval1 = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 1
  store i32 1250, i32* %interval1, align 4
  %burst2 = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 2
  store i32 10, i32* %burst2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ratelimit_state_exit(%struct.ratelimit_state* nocapture noundef %rs) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 6
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.end

if.end:                                           ; preds = %entry
  %missed = getelementptr inbounds %struct.ratelimit_state, %struct.ratelimit_state* %rs, i64 0, i32 4
  %1 = load i32, i32* %missed, align 8
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !11
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.28, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %1) #27
  store i32 0, i32* %missed, align 8
  br label %if.end6

if.end6:                                          ; preds = %entry, %do.end, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(i8* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @log_buf_len_update(i64 noundef %size) unnamed_addr #0 section ".init.text" {
entry:
  %cmp = icmp ugt i64 %size, 2147483648
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0)) #27
  br label %cond.false18

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %if.end26, label %cond.false18

cond.false18:                                     ; preds = %if.end, %if.end.thread
  %size.addr.039 = phi i64 [ 2147483648, %if.end.thread ], [ %size, %if.end ]
  %call19 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %size.addr.039) #28
  %0 = load i32, i32* @log_buf_len, align 4
  %conv = zext i32 %0 to i64
  %cmp23 = icmp ugt i64 %call19, %conv
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %cond.false18
  store i64 %call19, i64* @new_log_buf_len, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then25, %cond.false18
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #9 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #23
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #9 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #25, !range !13
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #1 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #24
  ret i32 %call4.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #25, !srcloc !36
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #25, !srcloc !37
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #23
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #25, !srcloc !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #16 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prb_record_text_space(%struct.prb_reserved_entry* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @syslog_action_restricted(i32 noundef %type) unnamed_addr #5 {
entry:
  %0 = load i32, i32* @dmesg_restrict, align 4
  %tobool.not = icmp ne i32 %0, 0
  %cmp = icmp ne i32 %type, 3
  %cmp1 = icmp ne i32 %type, 10
  %1 = and i1 %cmp, %cmp1
  %narrow = or i1 %1, %tobool.not
  %retval.0 = zext i1 %narrow to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #5 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @latched_seq_write(i64 noundef %val) unnamed_addr #1 {
entry:
  call fastcc void @raw_write_seqcount_latch() #23
  store i64 %val, i64* getelementptr inbounds (%struct.latched_seq, %struct.latched_seq* @clear_seq, i64 0, i32 1, i64 0), align 8
  call fastcc void @raw_write_seqcount_latch() #23
  store i64 %val, i64* getelementptr inbounds (%struct.latched_seq, %struct.latched_seq* @clear_seq, i64 0, i32 1, i64 1), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_write_seqcount_latch() unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #25, !srcloc !39
  %0 = load i32, i32* getelementptr inbounds (%struct.latched_seq, %struct.latched_seq* @clear_seq, i64 0, i32 0, i32 0, i32 0), align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.latched_seq, %struct.latched_seq* @clear_seq, i64 0, i32 0, i32 0, i32 0), align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #25, !srcloc !40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @info_print_prefix(%struct.printk_info* nocapture noundef readonly %info, i1 noundef %syslog, i1 noundef %time, i8* noundef %buf) unnamed_addr #1 {
entry:
  br i1 %syslog, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %facility = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 3
  %0 = load i8, i8* %facility, align 2
  %conv = zext i8 %0 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %level = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 4
  %bf.load = load i8, i8* %level, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %conv2 = zext i8 %bf.lshr to i32
  %or = or i32 %shl, %conv2
  %call = call fastcc i64 @print_syslog(i32 noundef %or, i8* noundef %buf) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %len.0 = phi i64 [ %call, %if.then ], [ 0, %entry ]
  br i1 %time, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %ts_nsec = getelementptr inbounds %struct.printk_info, %struct.printk_info* %info, i64 0, i32 1
  %1 = load i64, i64* %ts_nsec, align 8
  %add.ptr = getelementptr i8, i8* %buf, i64 %len.0
  %call5 = call fastcc i64 @print_time(i64 noundef %1, i8* noundef %add.ptr) #23
  %add = add i64 %call5, %len.0
  %inc = add i64 %add, 1
  %arrayidx = getelementptr i8, i8* %buf, i64 %add
  store i8 32, i8* %arrayidx, align 1
  %arrayidx11 = getelementptr i8, i8* %buf, i64 %inc
  store i8 0, i8* %arrayidx11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then10
  %len.2 = phi i64 [ %inc, %if.then10 ], [ %len.0, %if.end ]
  ret i64 %len.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @print_syslog(i32 noundef %level, i8* noundef %buf) unnamed_addr #1 {
entry:
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i32 noundef %level) #24
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @print_time(i64 noundef %ts, i8* noundef %buf) unnamed_addr #1 {
entry:
  %div = udiv i64 %ts, 1000000000
  %0 = mul i64 %div, 1000000000
  %rem.decomposed = sub i64 %ts, %0
  %div4.lhs.trunc = trunc i64 %rem.decomposed to i32
  %div412 = udiv i32 %div4.lhs.trunc, 1000
  %div4.zext = zext i32 %div412 to i64
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 noundef %div, i64 noundef %div4.zext) #24
  %conv5 = sext i32 %call to i64
  ret i64 %conv5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_syslog(i32 noundef %type, i8* noundef %buf, i32 noundef %len) unnamed_addr #1 {
entry:
  %call = call i32 @do_syslog(i32 noundef %type, i8* noundef %buf, i32 noundef %len, i32 noundef 0) #23
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #26, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.10* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__const_udelay(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !41
  call fastcc void @do_raw_spin_lock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef nonnull @console_owner_lock) #23
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #1 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.raw_spinlock* @console_owner_lock to i8*), i32 noundef 0, i32 noundef 1) #24
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @console_owner_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #24
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #25, !srcloc !43
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #25, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #19 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(%struct.semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(%struct.semaphore* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #16 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) #23
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @have_callable_console() unnamed_addr #20 {
entry:
  %con.010 = load %struct.console*, %struct.console** @console_drivers, align 8
  %cmp.not11 = icmp eq %struct.console* %con.010, null
  br i1 %cmp.not11, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct.console, %struct.console* %con.012, i64 0, i32 12
  %con.0 = load %struct.console*, %struct.console** %next, align 8
  %cmp.not = icmp eq %struct.console* %con.0, null
  br i1 %cmp.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %con.012 = phi %struct.console* [ %con.0, %for.cond ], [ %con.010, %entry ]
  %flags = getelementptr inbounds %struct.console, %struct.console* %con.012, i64 0, i32 8
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 20
  %.not = icmp eq i16 %1, 20
  br i1 %.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond ], [ 1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) unnamed_addr #16 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @msg_add_ext_text(i8* noundef %buf, i64 noundef %size, i8* nocapture noundef readonly %text, i64 noundef %text_len, i8 noundef %endc) unnamed_addr #1 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #25
  store i8* %buf, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %buf, i64 %size
  %cmp28.not = icmp eq i64 %text_len, 0
  br i1 %cmp28.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %i.029 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %arrayidx = getelementptr i8, i8* %text, i64 %i.029
  %1 = load i8, i8* %arrayidx, align 1
  %2 = add i8 %1, -127
  %3 = icmp ult i8 %2, -95
  %cmp8 = icmp eq i8 %1, 92
  %or.cond15 = or i1 %cmp8, %3
  br i1 %or.cond15, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %conv = zext i8 %1 to i32
  %4 = load i8*, i8** %p, align 8
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %4, i64 noundef %sub.ptr.sub, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv) #24
  %idx.ext = sext i32 %call to i64
  %add.ptr11 = getelementptr i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr11, i8** %p, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  call fastcc void @append_char(i8** noundef nonnull %p, i8* noundef %add.ptr, i8 noundef %1) #23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inc = add nuw i64 %i.029, 1
  %exitcond.not = icmp eq i64 %inc, %text_len
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  call fastcc void @append_char(i8** noundef nonnull %p, i8* noundef %add.ptr, i8 noundef %endc) #23
  %5 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %buf to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #25
  ret i64 %sub.ptr.sub14
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @msg_add_dict_text(i8* noundef %buf, i64 noundef %size, i8* noundef %key, i8* noundef %val) unnamed_addr #1 {
entry:
  %call = call i64 @strlen(i8* noundef %val) #24
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @msg_add_ext_text(i8* noundef %buf, i64 noundef %size, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i64 noundef 0, i8 noundef 32) #23
  %add.ptr = getelementptr i8, i8* %buf, i64 %call1
  %sub = sub i64 %size, %call1
  %call2 = call i64 @strlen(i8* noundef %key) #24
  %call3 = call fastcc i64 @msg_add_ext_text(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef %key, i64 noundef %call2, i8 noundef 61) #23
  %add = add i64 %call3, %call1
  %add.ptr4 = getelementptr i8, i8* %buf, i64 %add
  %sub5 = sub i64 %size, %add
  %call6 = call fastcc i64 @msg_add_ext_text(i8* noundef %add.ptr4, i64 noundef %sub5, i8* noundef %val, i64 noundef %call, i8 noundef 10) #23
  %add7 = add i64 %add, %call6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %add7, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @append_char(i8** nocapture noundef %pp, i8* noundef readnone %e, i8 noundef %c) unnamed_addr #13 {
entry:
  %0 = load i8*, i8** %pp, align 8
  %cmp = icmp ult i8* %0, %e
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr i8, i8* %0, i64 1
  store i8* %incdec.ptr, i8** %pp, align 8
  store i8 %c, i8* %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @offset_to_ptr(i32* noundef %off) unnamed_addr #5 {
entry:
  %0 = ptrtoint i32* %off to i64
  %1 = load i32, i32* %off, align 4
  %conv = sext i32 %1 to i64
  %add = add i64 %conv, %0
  %2 = inttoptr i64 %add to i8*
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @init_section_intersects(i8* noundef readnone %virt) unnamed_addr #19 {
entry:
  %call = call fastcc i1 @memory_intersects(i8* noundef %virt) #23
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @init_section_contains(i8* noundef readnone %virt) unnamed_addr #19 {
entry:
  %call = call fastcc i1 @memory_contains(i8* noundef %virt) #23
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state_nocalls(i32 noundef %state, i8* noundef %name, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown) unnamed_addr #1 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef %state, i8* noundef %name, i1 noundef false, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown, i1 noundef false) #24
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @console_cpu_notify(i32 noundef %cpu) #1 {
entry:
  %0 = load i8, i8* @cpuhp_tasks_frozen, align 1, !range !16
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = call i32 @console_trylock() #23
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @console_unlock() #23
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2, %entry
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @memory_intersects(i8* noundef readnone %virt) unnamed_addr #19 {
entry:
  %add.ptr = getelementptr i8, i8* %virt, i64 96
  %cmp.not = icmp uge i8* %virt, getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0)
  %cmp1 = icmp ult i8* %virt, getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0)
  %or.cond = and i1 %cmp.not, %cmp1
  br i1 %or.cond, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %cmp2 = icmp uge i8* %add.ptr, getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0)
  %cmp3 = icmp ult i8* %add.ptr, getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0)
  %0 = and i1 %cmp2, %cmp3
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs
  %1 = phi i1 [ %0, %lor.rhs ], [ true, %entry ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @memory_contains(i8* noundef readnone %virt) unnamed_addr #19 {
entry:
  %cmp = icmp uge i8* %virt, getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0)
  %cmp1 = icmp ule i8* %virt, getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0)
  %0 = and i1 %cmp, %cmp1
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty() unnamed_addr #16 {
entry:
  %0 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.wait_queue_head, %struct.wait_queue_head* @log_wait, i64 0, i32 1, i32 0), align 8
  %cmp = icmp eq %struct.list_head* %0, getelementptr inbounds (%struct.wait_queue_head, %struct.wait_queue_head* @log_wait, i64 0, i32 1)
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #21

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @wake_up_klogd_work_func(%struct.irq_work* nocapture noundef readnone %irq_work) #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, ptrtoint (i32* @printk_pending to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  store i32 0, i32* %0, align 4
  %and = and i32 %1, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %call9 = call i32 @console_trylock() #23
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @console_unlock() #23
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then11, %entry
  %and13 = and i32 %1, 1
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @log_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #24
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #1 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.spinlock* @dump_list_lock to i8*), i32 noundef 0, i32 noundef 1) #24
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @dump_list_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #24
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev) unnamed_addr #1 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* @dump_list, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #25, !srcloc !45
  store %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dump_list, i64 0, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @dump_list_lock, i64 0, i32 0, i32 0)) #23
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #23
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !46
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #18 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #18 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !48
  call void @rcu_read_unlock_strict() #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @raw_read_seqcount_latch() unnamed_addr #16 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.latched_seq, %struct.latched_seq* @clear_seq, i64 0, i32 0, i32 0, i32 0), align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqcount_latch_retry(i32 noundef %start) unnamed_addr #1 {
entry:
  %call1 = call fastcc i32 @do_read_seqcount_retry(i32 noundef %start) #23
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(i32 noundef %start) unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #25, !srcloc !49
  %call = call fastcc i32 @do___read_seqcount_retry(i32 noundef %start) #23
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(i32 noundef %start) unnamed_addr #16 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.latched_seq, %struct.latched_seq* @clear_seq, i64 0, i32 0, i32 0, i32 0), align 8
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add() unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @printk_cpulock_nested, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @printk_cpulock_nested, i64 0, i32 0)) #25, !srcloc !50
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub() unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @printk_cpulock_nested, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @printk_cpulock_nested, i64 0, i32 0)) #25, !srcloc !51
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #22

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #16 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #20 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #21 = { nofree nounwind readonly }
attributes #22 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #23 = { nobuiltin "no-builtins" }
attributes #24 = { nobuiltin nounwind "no-builtins" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readnone }
attributes #27 = { cold nobuiltin "no-builtins" }
attributes #28 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #29 = { cold nobuiltin nounwind "no-builtins" }
attributes #30 = { nounwind readonly }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"frame-pointer", i32 1}
!7 = !{!"clang version 14.0.0"}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148957195}
!11 = !{i64 1445132}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 0, i64 65}
!14 = !{i32 0, i32 33}
!15 = !{i64 2149188468, i64 2149188515, i64 2149188521, i64 2149188558, i64 2149188576, i64 2149193948, i64 2149193996, i64 2149194044, i64 2149194107, i64 2149194156, i64 2149188654, i64 2149188679, i64 2149188705, i64 2149188711, i64 2149193614, i64 2149193654, i64 2149193672, i64 2149193704, i64 2149193732, i64 2149193786, i64 2149193806, i64 2149193903, i64 2149188734, i64 2149188748, i64 2149188754, i64 2149188804, i64 2149188850, i64 2149188883}
!16 = !{i8 0, i8 2}
!17 = !{i64 4676669, i64 4676752, i64 4676976, i64 4677196, i64 4677219}
!18 = !{i64 2155214689}
!19 = !{i64 2155214737}
!20 = !{i64 2155276637}
!21 = !{i64 2155279923}
!22 = !{i64 2155280745}
!23 = !{i64 2155282721}
!24 = !{i64 2155259252}
!25 = !{i64 2155264933}
!26 = !{i64 2155266553}
!27 = !{i64 2149238700, i64 2149238742, i64 2149238801, i64 2149238854}
!28 = !{i64 2149204774, i64 2149204821, i64 2149204827, i64 2149204864, i64 2149204882, i64 2149205809, i64 2149205857, i64 2149205905, i64 2149205968, i64 2149206017, i64 2149204960, i64 2149204985, i64 2149205011, i64 2149205017, i64 2149205054, i64 2149205060, i64 2149205110, i64 2149205156, i64 2149205189}
!29 = !{i64 2155282769}
!30 = !{i64 2155292274}
!31 = !{i64 2149616628}
!32 = !{i64 1965625}
!33 = !{i64 2148098746}
!34 = !{i64 4681371, i64 4681395}
!35 = !{i64 2152196210}
!36 = !{i64 2149182455, i64 2149182502, i64 2149182508, i64 2149182545, i64 2149182563, i64 2149183874, i64 2149183922, i64 2149183970, i64 2149184033, i64 2149184082, i64 2149182641, i64 2149182666, i64 2149182692, i64 2149182698, i64 2149183540, i64 2149183580, i64 2149183598, i64 2149183630, i64 2149183658, i64 2149183712, i64 2149183732, i64 2149183829, i64 2149182721, i64 2149182735, i64 2149182741, i64 2149182791, i64 2149182837, i64 2149182870}
!37 = !{i64 2149184634, i64 2149184681, i64 2149184687, i64 2149184724, i64 2149184742, i64 2149185685, i64 2149185733, i64 2149185781, i64 2149185844, i64 2149185893, i64 2149184820, i64 2149184845, i64 2149184871, i64 2149184877, i64 2149184914, i64 2149184920, i64 2149184970, i64 2149185016, i64 2149185049}
!38 = !{i64 2149176752, i64 2149176799, i64 2149176805, i64 2149176842, i64 2149176860, i64 2149178201, i64 2149178249, i64 2149178297, i64 2149178360, i64 2149178409, i64 2149176938, i64 2149176963, i64 2149176989, i64 2149176995, i64 2149177867, i64 2149177907, i64 2149177925, i64 2149177957, i64 2149177985, i64 2149178039, i64 2149178059, i64 2149178156, i64 2149177018, i64 2149177032, i64 2149177038, i64 2149177088, i64 2149177134, i64 2149177167}
!39 = !{i64 2149964023}
!40 = !{i64 2149964095}
!41 = !{i64 2149631629}
!42 = !{i64 2149638910}
!43 = !{i64 2147911333, i64 2147911366, i64 2147911419, i64 2147911478, i64 2147911512, i64 2147911567, i64 2147911596, i64 2147911616}
!44 = !{i64 2149431140}
!45 = !{i64 2150878929}
!46 = !{i64 2149642471}
!47 = !{i64 2150097059}
!48 = !{i64 2150097276}
!49 = !{i64 2149950903}
!50 = !{i64 2147815471, i64 2147815987, i64 2147816017, i64 2147816044, i64 2147816078, i64 2147816108}
!51 = !{i64 2147825192, i64 2147825708, i64 2147825738, i64 2147825765, i64 2147825799, i64 2147825829}
