; ModuleID = 'drivers/base/dd.c'
source_filename = "drivers/base/dd.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init\22, \22a\22\09\09"
module asm "__initcall__kmod_dd__260_352_deferred_probe_initcall7:\09\09\09"
module asm ".long\09deferred_probe_initcall - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.workqueue_struct = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, {}*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.61, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.61 = type { %struct.kernfs_elem_dir }
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
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
%struct.page = type { i64, %union.anon.2, %union.anon.60, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.60 = type { %struct.atomic_t }
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
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.66, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.64 = type { %struct.callback_head }
%union.anon.65 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.53 }
%union.anon.53 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.66 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.54, %struct.qspinlock }
%union.anon.54 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
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
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, {}*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, {}*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, {}*, {}*, {}*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, {}*, i32 (%struct.device*)*, {}*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, {}*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.62, %struct.device* }
%union.anon.62 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, {}*, {}* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, {}*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.va_format = type { i8*, %"struct.std::__va_list"* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.device_attach_data = type { %struct.device*, i8, i8, i8 }

@deferred_probe_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @deferred_probe_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @deferred_probe_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@deferred_probe_pending_list = internal global %struct.list_head { %struct.list_head* @deferred_probe_pending_list, %struct.list_head* @deferred_probe_pending_list }, align 8
@defer_all_probes = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [8 x i8] c"%s: %pV\00", align 1
@__setup_str_deferred_probe_timeout_setup = internal constant [24 x i8] c"deferred_probe_timeout=\00", section ".init.rodata", align 1
@__setup_deferred_probe_timeout_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__setup_str_deferred_probe_timeout_setup, i32 0, i32 0), i32 (i8*)* @deferred_probe_timeout_setup, i32 0 }, section ".init.setup", align 8
@initcalls_done = internal unnamed_addr global i1 false, align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"ignoring dependency for device, assuming no driver\0A\00", align 1
@driver_deferred_probe_timeout = dso_local local_unnamed_addr global i32 0, align 4
@__UNIQUE_ID___addressable_deferred_probe_initcall261 = internal global i8* bitcast (i32 ()* @deferred_probe_initcall to i8*), section ".discard.addressable", align 8
@__exitcall_deferred_probe_exit = internal global void ()* @deferred_probe_exit, section ".exitcall.exit", align 8
@probe_count = internal global %struct.atomic_t zeroinitializer, align 4
@probe_timeout_waitqueue = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @probe_timeout_waitqueue to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @probe_timeout_waitqueue to i8*), i64 8) to %struct.list_head*) } }, align 8
@deferred_probe_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @deferred_probe_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @deferred_probe_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @deferred_probe_work_func }, align 8
@probe_waitqueue = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @probe_waitqueue to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @probe_waitqueue to i8*), i64 8) to %struct.list_head*) } }, align 8
@__setup_str_save_async_options = internal constant [20 x i8] c"driver_async_probe=\00", section ".init.rodata", align 1
@__setup_save_async_options = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__setup_str_save_async_options, i32 0, i32 0), i32 (i8*)* @save_async_options, i32 0 }, section ".init.setup", align 8
@driver_deferred_probe_enable = internal unnamed_addr global i1 false, align 1
@deferred_trigger_count = internal global %struct.atomic_t zeroinitializer, align 4
@deferred_probe_active_list = internal global %struct.list_head { %struct.list_head* @deferred_probe_active_list, %struct.list_head* @deferred_probe_active_list }, align 8
@system_unbound_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@deferred_probe_timeout_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @deferred_probe_timeout_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @deferred_probe_timeout_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @deferred_probe_timeout_work_func }, %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152 }, %struct.workqueue_struct* null, i32 0 }, align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"deferred probe pending\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\014%s: device %s already bound\0A\00", align 1
@__func__.driver_bound = private unnamed_addr constant [13 x i8] c"driver_bound\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"\014Too long list of driver names for 'driver_async_probe'!\0A\00", align 1
@async_probe_drv_names = internal global [256 x i8] zeroinitializer, align 1
@initcall_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Resources present before probing\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\013%s: driver_sysfs_add(%s) failed\0A\00", align 1
@__func__.really_probe = private unnamed_addr constant [13 x i8] c"really_probe\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"device_add_groups() failed\0A\00", align 1
@dev_attr_state_synced = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @state_synced_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.13 = private unnamed_addr constant [31 x i8] c"state_synced sysfs add failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"\014%s: probe of %s failed with error %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"state_synced\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@dev_attr_coredump = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @coredump_store }, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"coredump\00", align 1
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_deferred_probe_initcall261 to i8*), i8* bitcast (void ()** @__exitcall_deferred_probe_exit to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_deferred_probe_timeout_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_save_async_options to i8*), i8* bitcast (void ()* @deferred_probe_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @driver_deferred_probe_add(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #0 {
entry:
  %can_match = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %can_match, align 4
  %0 = and i8 %bf.load, 16
  %bf.cast.not = icmp eq i8 %0, 0
  br i1 %bf.cast.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  %p = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %1 = load %struct.device_private*, %struct.device_private** %p, align 8
  %deferred_probe = getelementptr inbounds %struct.device_private, %struct.device_private* %1, i64 0, i32 5
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %deferred_probe) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  %2 = load %struct.device_private*, %struct.device_private** %p, align 8
  %deferred_probe3 = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i64 0, i32 5
  call fastcc void @list_add_tail(%struct.list_head* noundef %deferred_probe3) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  br label %return

return:                                           ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #3 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @deferred_probe_pending_list, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @driver_deferred_probe_del(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  %p = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %0 = load %struct.device_private*, %struct.device_private** %p, align 8
  %deferred_probe = getelementptr inbounds %struct.device_private, %struct.device_private* %0, i64 0, i32 5
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %deferred_probe) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.device_private*, %struct.device_private** %p, align 8
  %deferred_probe2 = getelementptr inbounds %struct.device_private, %struct.device_private* %1, i64 0, i32 5
  call fastcc void @list_del_init(%struct.list_head* noundef %deferred_probe2) #14
  call fastcc void @__device_set_deferred_probe_reason(%struct.device* noundef %dev, i8* noundef null) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__device_set_deferred_probe_reason(%struct.device* nocapture noundef readonly %dev, i8* noundef %reason) unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %0 = load %struct.device_private*, %struct.device_private** %p, align 8
  %deferred_probe_reason = getelementptr inbounds %struct.device_private, %struct.device_private* %0, i64 0, i32 7
  %1 = load i8*, i8** %deferred_probe_reason, align 8
  call void @kfree(i8* noundef %1) #13
  %2 = load %struct.device_private*, %struct.device_private** %p, align 8
  %deferred_probe_reason2 = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i64 0, i32 7
  store i8* %reason, i8** %deferred_probe_reason2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_block_probing() local_unnamed_addr #0 {
entry:
  store i1 true, i1* @defer_all_probes, align 1
  call void @wait_for_device_probe() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wait_for_device_probe() local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__wq_entry17 = alloca %struct.wait_queue_entry, align 8
  %0 = load i32, i32* @driver_deferred_probe_timeout, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end7, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !7
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call43 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @probe_timeout_waitqueue, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #13
  %2 = load i32, i32* @driver_deferred_probe_timeout, align 4
  %tobool4.not44 = icmp eq i32 %2, 0
  br i1 %tobool4.not44, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup
  call void @schedule() #13
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @probe_timeout_waitqueue, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #13
  %3 = load i32, i32* @driver_deferred_probe_timeout, align 4
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @probe_timeout_waitqueue, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #15
  br label %do.end7

do.end7:                                          ; preds = %entry, %for.end
  %call8 = call i1 @flush_work(%struct.work_struct* noundef nonnull @deferred_probe_work) #13
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @probe_count, i64 0, i32 0), align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.end32, label %if.end16

if.end16:                                         ; preds = %do.end7
  %5 = bitcast %struct.wait_queue_entry* %__wq_entry17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !7
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry17, i32 noundef 0) #13
  %call2145 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @probe_waitqueue, %struct.wait_queue_entry* noundef nonnull %__wq_entry17, i32 noundef 2) #13
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @probe_count, i64 0, i32 0), align 4
  %cmp2346 = icmp eq i32 %6, 0
  br i1 %cmp2346, label %for.end29, label %cleanup26

cleanup26:                                        ; preds = %if.end16, %cleanup26
  call void @schedule() #13
  %call21 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @probe_waitqueue, %struct.wait_queue_entry* noundef nonnull %__wq_entry17, i32 noundef 2) #13
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @probe_count, i64 0, i32 0), align 4
  %cmp23 = icmp eq i32 %7, 0
  br i1 %cmp23, label %for.end29, label %cleanup26

for.end29:                                        ; preds = %cleanup26, %if.end16
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @probe_waitqueue, %struct.wait_queue_entry* noundef nonnull %__wq_entry17) #13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #15
  br label %do.end32

do.end32:                                         ; preds = %do.end7, %for.end29
  call void @async_synchronize_full() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_unblock_probing() local_unnamed_addr #0 {
entry:
  store i1 false, i1* @defer_all_probes, align 1
  call fastcc void @driver_deferred_probe_trigger() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @driver_deferred_probe_trigger() unnamed_addr #0 {
entry:
  %.b1 = load i1, i1* @driver_deferred_probe_enable, align 1
  br i1 %.b1, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef nonnull @deferred_trigger_count) #13
  call fastcc void @list_splice_tail_init() #14
  call void @mutex_unlock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_unbound_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_set_deferred_probe_reason(%struct.device* noundef %dev, %struct.va_format* noundef %vaf) local_unnamed_addr #0 {
entry:
  %call = call i8* @dev_driver_string(%struct.device* noundef %dev) #13
  call void @mutex_lock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  %call1 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef %call, %struct.va_format* noundef %vaf) #13
  call fastcc void @__device_set_deferred_probe_reason(%struct.device* noundef %dev, i8* noundef %call1) #14
  call void @mutex_unlock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dev_driver_string(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @deferred_probe_timeout_setup(i8* noundef %str) #5 section ".init.text" {
entry:
  %timeout = alloca i32, align 4
  %0 = bitcast i32* %timeout to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 0, i32* %timeout, align 4, !annotation !7
  %call = call i32 @kstrtoint(i8* noundef %str, i32 noundef 10, i32* noundef nonnull %timeout) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %timeout, align 4
  store i32 %1, i32* @driver_deferred_probe_timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @driver_deferred_probe_check_state(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %.b8 = load i1, i1* @initcalls_done, align 1
  br i1 %.b8, label %do.end, label %return

do.end:                                           ; preds = %entry
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0)) #16
  br label %return

return:                                           ; preds = %entry, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -517, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @deferred_probe_initcall() #0 {
entry:
  store i1 true, i1* @driver_deferred_probe_enable, align 1
  call fastcc void @driver_deferred_probe_trigger() #14
  %call1 = call i1 @flush_work(%struct.work_struct* noundef nonnull @deferred_probe_work) #13
  store i1 true, i1* @initcalls_done, align 1
  call void @fw_devlink_drivers_done() #13
  call fastcc void @driver_deferred_probe_trigger() #14
  %call2 = call i1 @flush_work(%struct.work_struct* noundef nonnull @deferred_probe_work) #13
  %0 = load i32, i32* @driver_deferred_probe_timeout, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = mul i32 %0, 250
  %conv = sext i32 %mul to i64
  call fastcc void @schedule_delayed_work(i64 noundef %conv) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define internal void @deferred_probe_exit() #7 section ".exit.text" {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @device_is_bound(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %0 = load %struct.device_private*, %struct.device_private** %p, align 8
  %tobool.not = icmp eq %struct.device_private* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %knode_driver = getelementptr inbounds %struct.device_private, %struct.device_private* %0, i64 0, i32 2
  %call = call i32 @klist_node_attached(%struct.klist_node* noundef %knode_driver) #13
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @klist_node_attached(%struct.klist_node* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_bind_driver(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @driver_sysfs_add(%struct.device* noundef %dev) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @device_links_force_bind(%struct.device* noundef %dev) #13
  call fastcc void @driver_bound(%struct.device* noundef %dev) #14
  br label %if.end5

if.else:                                          ; preds = %entry
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool1.not = icmp eq %struct.bus_type* %0, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.else
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 7
  %2 = bitcast %struct.device* %dev to i8*
  %call4 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef %bus_notifier, i64 noundef 8, i8* noundef %2) #13
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2, %if.then
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @driver_sysfs_add(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool.not = icmp eq %struct.bus_type* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 20
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 7
  %2 = bitcast %struct.device* %dev to i8*
  %call = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef %bus_notifier, i64 noundef 4, i8* noundef %2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %3 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %p2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i64 0, i32 18
  %4 = load %struct.driver_private*, %struct.driver_private** %p2, align 8
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %4, i64 0, i32 0
  %kobj3 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call5 = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj3) #14
  %call6 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj3, i8* noundef %call5) #13
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %p12 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %5, i64 0, i32 18
  %6 = load %struct.driver_private*, %struct.driver_private** %p12, align 8
  %kobj13 = getelementptr inbounds %struct.driver_private, %struct.driver_private* %6, i64 0, i32 0
  %call14 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj3, %struct.kobject* noundef %kobj13, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %rm_dev

rm_dev:                                           ; preds = %if.end9
  %7 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %p19 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %7, i64 0, i32 18
  %8 = load %struct.driver_private*, %struct.driver_private** %p19, align 8
  %kobj20 = getelementptr inbounds %struct.driver_private, %struct.driver_private* %8, i64 0, i32 0
  %call22 = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj3) #14
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj20, i8* noundef %call22) #13
  br label %cleanup

cleanup:                                          ; preds = %rm_dev, %if.end, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call6, %if.end ], [ %call14, %rm_dev ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_force_bind(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @driver_bound(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %call = call i1 @device_is_bound(%struct.device* noundef %dev) #14
  br i1 %call, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call1 = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #14
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.driver_bound, i64 0, i64 0), i8* noundef %call1) #16
  br label %return

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %0 = load %struct.device_private*, %struct.device_private** %p, align 8
  %knode_driver = getelementptr inbounds %struct.device_private, %struct.device_private* %0, i64 0, i32 2
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %p4 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %1, i64 0, i32 18
  %2 = load %struct.driver_private*, %struct.driver_private** %p4, align 8
  %klist_devices = getelementptr inbounds %struct.driver_private, %struct.driver_private* %2, i64 0, i32 1
  call void @klist_add_tail(%struct.klist_node* noundef %knode_driver, %struct.klist* noundef %klist_devices) #13
  call void @device_links_driver_bound(%struct.device* noundef %dev) #13
  call void @driver_deferred_probe_del(%struct.device* noundef %dev) #14
  call fastcc void @driver_deferred_probe_trigger() #14
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %3 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool.not = icmp eq %struct.bus_type* %3, null
  br i1 %tobool.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  %p7 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %3, i64 0, i32 20
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p7, align 8
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i64 0, i32 7
  %5 = bitcast %struct.device* %dev to i8*
  %call8 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef %bus_notifier, i64 noundef 5, i8* noundef %5) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %kobj10 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call11 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj10, i32 noundef 6) #13
  br label %return

return:                                           ; preds = %if.end9, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @driver_probe_done() local_unnamed_addr #2 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @probe_count, i64 0, i32 0), align 4
  %tobool.not = icmp eq i32 %0, 0
  %. = select i1 %tobool.not, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @flush_work(%struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @save_async_options(i8* noundef %buf) #5 section ".init.text" {
entry:
  %call = call i64 @strlen(i8* noundef %buf) #13
  %cmp = icmp ugt i64 %call, 255
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0)) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %call2 = call i64 @strlcpy(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @async_probe_drv_names, i64 0, i64 0), i8* noundef %buf, i64 noundef 256) #13
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @driver_allows_async_probing(%struct.device_driver* nocapture noundef readonly %drv) local_unnamed_addr #0 {
entry:
  %probe_type = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 5
  %0 = load i32, i32* %probe_type, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %return
    i32 2, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call fastcc i1 @cmdline_requested_async_probing(i8* noundef %1) #14
  br label %return

return:                                           ; preds = %sw.default, %entry, %sw.bb1
  %retval.0 = phi i1 [ false, %sw.bb1 ], [ true, %entry ], [ %call, %sw.default ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cmdline_requested_async_probing(i8* noundef %drv_name) unnamed_addr #0 {
entry:
  %call = call i1 @parse_option_str(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @async_probe_drv_names, i64 0, i64 0), i8* noundef %drv_name) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_attach(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__device_attach(%struct.device* noundef %dev, i1 noundef false) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__device_attach(%struct.device* noundef %dev, i1 noundef %allow_async) unnamed_addr #0 {
entry:
  %data = alloca %struct.device_attach_data, align 8
  %frombool = zext i1 %allow_async to i8
  call fastcc void @device_lock(%struct.device* noundef %dev) #14
  %p = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %0 = load %struct.device_private*, %struct.device_private** %p, align 8
  %dead = getelementptr inbounds %struct.device_private, %struct.device_private* %0, i64 0, i32 9
  %bf.load = load i8, i8* %dead, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.else, label %out_unlock

if.else:                                          ; preds = %entry
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool1.not = icmp eq %struct.device_driver* %1, null
  br i1 %tobool1.not, label %if.else9, label %if.then2

if.then2:                                         ; preds = %if.else
  %call = call i1 @device_is_bound(%struct.device* noundef %dev) #14
  br i1 %call, label %out_unlock, label %if.end

if.end:                                           ; preds = %if.then2
  %call4 = call i32 @device_bind_driver(%struct.device* noundef %dev) #14
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %out_unlock, label %if.else6

if.else6:                                         ; preds = %if.end
  store %struct.device_driver* null, %struct.device_driver** %driver, align 8
  br label %out_unlock

if.else9:                                         ; preds = %if.else
  %2 = bitcast %struct.device_attach_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15
  %3 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %data, i64 0, i32 1
  %4 = bitcast i8* %3 to i64*, !annotation !7
  store i64 0, i64* %4, align 8, !annotation !7
  %dev10 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %data, i64 0, i32 0
  store %struct.device* %dev, %struct.device** %dev10, align 8
  %check_async = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %data, i64 0, i32 1
  store i8 %frombool, i8* %check_async, align 8
  %have_async = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %data, i64 0, i32 3
  store i8 0, i8* %have_async, align 2
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %5 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %call18 = call i32 @bus_for_each_drv(%struct.bus_type* noundef %5, %struct.device_driver* noundef null, i8* noundef nonnull %2, i32 (%struct.device_driver*, i8*)* noundef nonnull @__device_attach_driver) #13
  %tobool19.not = icmp ne i32 %call18, 0
  %allow_async.not = xor i1 %allow_async, true
  %brmerge = or i1 %tobool19.not, %allow_async.not
  %6 = load i8, i8* %have_async, align 2
  %tobool23.not = icmp eq i8 %6, 0
  %or.cond = select i1 %brmerge, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %if.end35, label %if.then24

if.then24:                                        ; preds = %if.else9
  %call25 = call %struct.device* @get_device(%struct.device* noundef %dev) #13
  call fastcc void @async_schedule_dev(void (i8*, i64)* noundef nonnull @__device_attach_async_helper, %struct.device* noundef %dev) #14
  br label %if.end35

if.end35:                                         ; preds = %if.then24, %if.else9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %if.then2, %if.else6, %if.end35, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.else6 ], [ %call18, %if.end35 ], [ 1, %if.then2 ], [ 1, %if.end ]
  call fastcc void @device_unlock(%struct.device* noundef %dev) #14
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_initial_probe(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__device_attach(%struct.device* noundef %dev, i1 noundef true) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_driver_attach(%struct.device_driver* noundef %drv, %struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %0 = load %struct.device*, %struct.device** %parent, align 8
  call fastcc void @__device_driver_lock(%struct.device* noundef %dev, %struct.device* noundef %0) #14
  %call = call fastcc i32 @__driver_probe_device(%struct.device_driver* noundef %drv, %struct.device* noundef %dev) #14
  %1 = load %struct.device*, %struct.device** %parent, align 8
  call fastcc void @__device_driver_unlock(%struct.device* noundef %dev, %struct.device* noundef %1) #14
  %2 = call i32 @llvm.abs.i32(i32 %call, i1 false)
  %spec.select = sub i32 0, %2
  %cmp2 = icmp eq i32 %2, 517
  %retval.0 = select i1 %cmp2, i32 -11, i32 %spec.select
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__device_driver_lock(%struct.device* noundef %dev, %struct.device* noundef %parent) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %parent, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %need_parent_lock = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 22
  %1 = load i8, i8* %need_parent_lock, align 8, !range !8
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @device_lock(%struct.device* noundef nonnull %parent) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call fastcc void @device_lock(%struct.device* noundef %dev) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__driver_probe_device(%struct.device_driver* noundef %drv, %struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %p = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %0 = load %struct.device_private*, %struct.device_private** %p, align 8
  %dead = getelementptr inbounds %struct.device_private, %struct.device_private* %0, i64 0, i32 9
  %bf.load = load i8, i8* %dead, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i32 @device_is_registered(%struct.device* noundef %dev) #14
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool2.not = icmp eq %struct.device_driver* %1, null
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %can_match = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load5 = load i8, i8* %can_match, align 4
  %bf.set = or i8 %bf.load5, 16
  store i8 %bf.set, i8* %can_match, align 4
  %2 = load i8, i8* @initcall_debug, align 1, !range !8
  %tobool13.not = icmp eq i8 %2, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end4
  %call15 = call fastcc i32 @really_probe_debug(%struct.device* noundef %dev, %struct.device_driver* noundef %drv) #14
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %call16 = call fastcc i32 @really_probe(%struct.device* noundef %dev, %struct.device_driver* noundef %drv) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.else, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -19, %lor.lhs.false ], [ -19, %entry ], [ -16, %if.end ], [ %call15, %if.then14 ], [ %call16, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__device_driver_unlock(%struct.device* noundef %dev, %struct.device* noundef %parent) unnamed_addr #0 {
entry:
  call fastcc void @device_unlock(%struct.device* noundef %dev) #14
  %tobool.not = icmp eq %struct.device* %parent, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %need_parent_lock = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 22
  %1 = load i8, i8* %need_parent_lock, align 8, !range !8
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @device_unlock(%struct.device* noundef nonnull %parent) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @driver_attach(%struct.device_driver* noundef %drv) local_unnamed_addr #0 {
entry:
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 1
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %1 = bitcast %struct.device_driver* %drv to i8*
  %call = call i32 @bus_for_each_dev(%struct.bus_type* noundef %0, %struct.device* noundef null, i8* noundef %1, i32 (%struct.device*, i8*)* noundef nonnull @__driver_attach) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(%struct.bus_type* noundef, %struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__driver_attach(%struct.device* noundef %dev, i8* noundef %data) #0 {
entry:
  %0 = bitcast i8* %data to %struct.device_driver*
  %call = call fastcc i32 @driver_match_device(%struct.device_driver* noundef %0, %struct.device* noundef %dev) #14
  switch i32 %call, label %if.else3 [
    i32 0, label %cleanup
    i32 -517, label %if.then2
  ]

if.then2:                                         ; preds = %entry
  %can_match = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %can_match, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, i8* %can_match, align 4
  call void @driver_deferred_probe_add(%struct.device* noundef %dev) #14
  br label %if.end7

if.else3:                                         ; preds = %entry
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then2, %if.else3
  %call8 = call i1 @driver_allows_async_probing(%struct.device_driver* noundef %0) #14
  br i1 %call8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end7
  call fastcc void @device_lock(%struct.device* noundef %dev) #14
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool.not = icmp eq %struct.device_driver* %1, null
  br i1 %tobool.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then9
  %call11 = call %struct.device* @get_device(%struct.device* noundef %dev) #13
  %p = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %2 = load %struct.device_private*, %struct.device_private** %p, align 8
  %async_driver = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i64 0, i32 6
  %3 = bitcast %struct.device_driver** %async_driver to i8**
  store i8* %data, i8** %3, align 8
  call fastcc void @async_schedule_dev(void (i8*, i64)* noundef nonnull @__driver_attach_async_helper, %struct.device* noundef %dev) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then9
  call fastcc void @device_unlock(%struct.device* noundef %dev) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %4 = load %struct.device*, %struct.device** %parent, align 8
  call fastcc void @__device_driver_lock(%struct.device* noundef %dev, %struct.device* noundef %4) #14
  %call15 = call fastcc i32 @driver_probe_device(%struct.device_driver* noundef %0, %struct.device* noundef %dev) #14
  %5 = load %struct.device*, %struct.device** %parent, align 8
  call fastcc void @__device_driver_unlock(%struct.device* noundef %dev, %struct.device* noundef %5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else3, %entry, %if.end14, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %if.end14 ], [ %call, %entry ], [ %call, %if.else3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_release_driver_internal(%struct.device* noundef %dev, %struct.device_driver* noundef readnone %drv, %struct.device* noundef %parent) local_unnamed_addr #0 {
entry:
  call fastcc void @__device_driver_lock(%struct.device* noundef %dev, %struct.device* noundef %parent) #14
  %tobool.not = icmp eq %struct.device_driver* %drv, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %cmp = icmp eq %struct.device_driver* %0, %drv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call fastcc void @__device_release_driver(%struct.device* noundef %dev, %struct.device* noundef %parent) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  call fastcc void @__device_driver_unlock(%struct.device* noundef %dev, %struct.device* noundef %parent) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__device_release_driver(%struct.device* noundef %dev, %struct.device* noundef %parent) unnamed_addr #0 {
entry:
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool.not = icmp eq %struct.device_driver* %0, null
  br i1 %tobool.not, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.body
  %call1 = call i1 @device_links_busy(%struct.device* noundef %dev) #13
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call fastcc void @__device_driver_unlock(%struct.device* noundef %dev, %struct.device* noundef %parent) #14
  call void @device_links_unbind_consumers(%struct.device* noundef %dev) #13
  call fastcc void @__device_driver_lock(%struct.device* noundef %dev, %struct.device* noundef %parent) #14
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %cmp.not = icmp eq %struct.device_driver* %1, %0
  br i1 %cmp.not, label %while.cond, label %cleanup

while.end:                                        ; preds = %while.cond
  call fastcc void @driver_sysfs_remove(%struct.device* noundef %dev) #14
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool5.not = icmp eq %struct.bus_type* %2, null
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %while.end
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i64 0, i32 20
  %3 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %3, i64 0, i32 7
  %4 = bitcast %struct.device* %dev to i8*
  %call8 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef %bus_notifier, i64 noundef 6, i8* noundef %4) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %while.end
  call void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_state_synced) #13
  %dev_groups = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 0, i32 15
  %5 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8
  call void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %5) #13
  %6 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool12.not = icmp eq %struct.bus_type* %6, null
  br i1 %tobool12.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %remove = getelementptr inbounds %struct.bus_type, %struct.bus_type* %6, i64 0, i32 10
  %remove14 = bitcast {}** %remove to void (%struct.device*)**
  %7 = load void (%struct.device*)*, void (%struct.device*)** %remove14, align 8
  %tobool15.not = icmp eq void (%struct.device*)* %7, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  call void %7(%struct.device* noundef %dev) #13
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true, %if.end9
  %remove20 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 0, i32 10
  %8 = load i32 (%struct.device*)*, i32 (%struct.device*)** %remove20, align 8
  %tobool21.not = icmp eq i32 (%struct.device*)* %8, null
  br i1 %tobool21.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.else
  %call24 = call i32 %8(%struct.device* noundef %dev) #13
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22, %if.then16
  call void @device_links_driver_cleanup(%struct.device* noundef %dev) #13
  %call27 = call i32 @devres_release_all(%struct.device* noundef %dev) #13
  store %struct.device_driver* null, %struct.device_driver** %driver, align 8
  call fastcc void @dev_set_drvdata(%struct.device* noundef %dev) #14
  %pm_domain = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 12
  %9 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pm_domain, align 8
  %tobool29.not = icmp eq %struct.dev_pm_domain* %9, null
  br i1 %tobool29.not, label %if.end38, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end26
  %dismiss = getelementptr inbounds %struct.dev_pm_domain, %struct.dev_pm_domain* %9, i64 0, i32 5
  %dismiss32 = bitcast {}** %dismiss to void (%struct.device*)**
  %10 = load void (%struct.device*)*, void (%struct.device*)** %dismiss32, align 8
  %tobool33.not = icmp eq void (%struct.device*)* %10, null
  br i1 %tobool33.not, label %if.end38, label %if.then34

if.then34:                                        ; preds = %land.lhs.true30
  call void %10(%struct.device* noundef %dev) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %land.lhs.true30, %if.end26
  call fastcc void @dev_pm_set_driver_flags(%struct.device* noundef %dev) #14
  %p39 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %11 = load %struct.device_private*, %struct.device_private** %p39, align 8
  %knode_driver = getelementptr inbounds %struct.device_private, %struct.device_private* %11, i64 0, i32 2
  call void @klist_remove(%struct.klist_node* noundef %knode_driver) #13
  %12 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool41.not = icmp eq %struct.bus_type* %12, null
  br i1 %tobool41.not, label %if.end47, label %if.then42

if.then42:                                        ; preds = %if.end38
  %p44 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %12, i64 0, i32 20
  %13 = load %struct.subsys_private*, %struct.subsys_private** %p44, align 8
  %bus_notifier45 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %13, i64 0, i32 7
  %14 = bitcast %struct.device* %dev to i8*
  %call46 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef %bus_notifier45, i64 noundef 7, i8* noundef %14) #13
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end38
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call48 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 7) #13
  br label %cleanup

cleanup:                                          ; preds = %while.body, %entry, %if.end47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_release_driver(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call void @device_release_driver_internal(%struct.device* noundef %dev, %struct.device_driver* noundef null, %struct.device* noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_driver_detach(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %0 = load %struct.device*, %struct.device** %parent, align 8
  call void @device_release_driver_internal(%struct.device* noundef %dev, %struct.device_driver* noundef null, %struct.device* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @driver_detach(%struct.device_driver* noundef %drv) local_unnamed_addr #0 {
entry:
  %call = call i1 @driver_allows_async_probing(%struct.device_driver* noundef %drv) #14
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @async_synchronize_full() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 18
  %0 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %rlock.i30 = getelementptr inbounds %struct.driver_private, %struct.driver_private* %0, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i30) #13
  %1 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %k_list31 = getelementptr inbounds %struct.driver_private, %struct.driver_private* %1, i64 0, i32 1, i32 1
  %call332 = call fastcc i32 @list_empty(%struct.list_head* noundef %k_list31) #14
  %tobool.not33 = icmp eq i32 %call332, 0
  br i1 %tobool.not33, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end8, %if.end
  %2 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %rlock.i28 = getelementptr inbounds %struct.driver_private, %struct.driver_private* %2, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i28) #13
  ret void

if.end8:                                          ; preds = %if.end, %if.end8
  %3 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %prev = getelementptr inbounds %struct.driver_private, %struct.driver_private* %3, i64 0, i32 1, i32 1, i32 1
  %4 = bitcast %struct.list_head** %prev to i8**
  %5 = load i8*, i8** %4, align 8
  %device = getelementptr i8, i8* %5, i64 120
  %6 = bitcast i8* %device to %struct.device**
  %7 = load %struct.device*, %struct.device** %6, align 8
  %call12 = call %struct.device* @get_device(%struct.device* noundef %7) #13
  %8 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %rlock.i29 = getelementptr inbounds %struct.driver_private, %struct.driver_private* %8, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i29) #13
  %parent = getelementptr inbounds %struct.device, %struct.device* %7, i64 0, i32 1
  %9 = load %struct.device*, %struct.device** %parent, align 8
  call void @device_release_driver_internal(%struct.device* noundef %7, %struct.device_driver* noundef %drv, %struct.device* noundef %9) #14
  call void @put_device(%struct.device* noundef %7) #13
  %10 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %rlock.i = getelementptr inbounds %struct.driver_private, %struct.driver_private* %10, i64 0, i32 1, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #13
  %11 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %k_list = getelementptr inbounds %struct.driver_private, %struct.driver_private* %11, i64 0, i32 1, i32 1
  %call3 = call fastcc i32 @list_empty(%struct.list_head* noundef %k_list) #14
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end8, label %if.then4
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev) unnamed_addr #3 {
entry:
  store %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @deferred_probe_pending_list, i64 0, i32 1), align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* @deferred_probe_pending_list, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_tail_init() unnamed_addr #3 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @deferred_probe_pending_list) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @deferred_probe_active_list, i64 0, i32 1), align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %0) #14
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull @deferred_probe_pending_list) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef nonnull @deferred_probe_work) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* noundef %prev) unnamed_addr #9 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @deferred_probe_pending_list, i64 0, i32 0), align 8
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @deferred_probe_pending_list, i64 0, i32 1), align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next4, align 8
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* @deferred_probe_active_list, %struct.list_head** %next5, align 8
  store %struct.list_head* %1, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @deferred_probe_active_list, i64 0, i32 1), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_devlink_drivers_done() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_delayed_work(i64 noundef %delay) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %0, i64 noundef %delay) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #10 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #10 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq, i64 noundef %delay) unnamed_addr #0 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef nonnull @deferred_probe_timeout_work, i64 noundef %delay) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @deferred_probe_timeout_work_func(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  call void @fw_devlink_drivers_done() #13
  store i32 0, i32* @driver_deferred_probe_timeout, align 4
  call fastcc void @driver_deferred_probe_trigger() #14
  %call = call i1 @flush_work(%struct.work_struct* noundef nonnull @deferred_probe_work) #13
  call void @mutex_lock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  %.pn16 = load i8*, i8** bitcast (%struct.list_head* @deferred_probe_pending_list to i8**), align 8
  %cmp.not17 = icmp eq i8* %.pn16, bitcast (%struct.list_head* @deferred_probe_pending_list to i8*)
  br i1 %cmp.not17, label %for.end, label %do.end3

do.end3:                                          ; preds = %entry, %do.end3
  %.pn18 = phi i8* [ %.pn, %do.end3 ], [ %.pn16, %entry ]
  %device = getelementptr i8, i8* %.pn18, i64 32
  %0 = bitcast i8* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)) #16
  %2 = bitcast i8* %.pn18 to i8**
  %.pn = load i8*, i8** %2, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @deferred_probe_pending_list to i8*)
  br i1 %cmp.not, label %for.end, label %do.end3

for.end:                                          ; preds = %do.end3, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @probe_timeout_waitqueue, i32 noundef 3, i32 noundef 0, i8* noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(%struct.kobject* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(%struct.klist_node* noundef, %struct.klist* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_driver_bound(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @deferred_probe_work_func(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  %call10 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @deferred_probe_active_list) #14
  %tobool.not11 = icmp eq i32 %call10, 0
  br i1 %tobool.not11, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %0 = load i8*, i8** bitcast (%struct.list_head* @deferred_probe_active_list to i8**), align 8
  %device = getelementptr i8, i8* %0, i64 32
  %1 = bitcast i8* %device to %struct.device**
  %2 = load %struct.device*, %struct.device** %1, align 8
  %3 = bitcast i8* %0 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %3) #14
  %call1 = call %struct.device* @get_device(%struct.device* noundef %2) #13
  call fastcc void @__device_set_deferred_probe_reason(%struct.device* noundef %2, i8* noundef null) #14
  call void @mutex_unlock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  call void @device_pm_move_to_tail(%struct.device* noundef %2) #13
  call void @bus_probe_device(%struct.device* noundef %2) #13
  call void @mutex_lock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  call void @put_device(%struct.device* noundef %2) #13
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @deferred_probe_active_list) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @deferred_probe_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_move_to_tail(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_probe_device(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @parse_option_str(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_lock(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @mutex_lock(%struct.mutex* noundef %mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_drv(%struct.bus_type* noundef, %struct.device_driver* noundef, i8* noundef, i32 (%struct.device_driver*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__device_attach_driver(%struct.device_driver* noundef %drv, i8* nocapture noundef %_data) #0 {
entry:
  %dev1 = bitcast i8* %_data to %struct.device**
  %0 = load %struct.device*, %struct.device** %dev1, align 8
  %call = call fastcc i32 @driver_match_device(%struct.device_driver* noundef %drv, %struct.device* noundef %0) #14
  switch i32 %call, label %if.else4 [
    i32 0, label %cleanup
    i32 -517, label %if.then3
  ]

if.then3:                                         ; preds = %entry
  %can_match = getelementptr inbounds %struct.device, %struct.device* %0, i64 0, i32 37
  %bf.load = load i8, i8* %can_match, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, i8* %can_match, align 4
  call void @driver_deferred_probe_add(%struct.device* noundef %0) #14
  br label %if.end8

if.else4:                                         ; preds = %entry
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.then3, %if.else4
  %call9 = call i1 @driver_allows_async_probing(%struct.device_driver* noundef %drv) #14
  br i1 %call9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %1 = getelementptr inbounds i8, i8* %_data, i64 10
  store i8 1, i8* %1, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %2 = getelementptr inbounds i8, i8* %_data, i64 8
  %3 = load i8, i8* %2, align 8, !range !8
  %tobool12.not = icmp eq i8 %3, 0
  br i1 %tobool12.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %4 = getelementptr inbounds i8, i8* %_data, i64 9
  %5 = load i8, i8* %4, align 1, !range !8
  %6 = zext i1 %call9 to i8
  %cmp16.not = icmp eq i8 %5, %6
  br i1 %cmp16.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %land.lhs.true, %if.end11
  %call20 = call fastcc i32 @driver_probe_device(%struct.device_driver* noundef %drv, %struct.device* noundef %0) #14
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end19
  %cmp25 = icmp eq i32 %call20, 0
  %conv26 = zext i1 %cmp25 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %land.lhs.true, %if.else4, %entry, %if.end24
  %retval.0 = phi i32 [ %conv26, %if.end24 ], [ %call, %entry ], [ %call, %if.else4 ], [ 0, %land.lhs.true ], [ %call20, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @async_schedule_dev(void (i8*, i64)* noundef %func, %struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.device* %dev to i8*
  %call1 = call i64 @async_schedule_node(void (i8*, i64)* noundef %func, i8* noundef %0, i32 noundef -1) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @__device_attach_async_helper(i8* noundef %_dev, i64 noundef %cookie) #0 {
entry:
  %data = alloca %struct.device_attach_data, align 8
  %0 = bitcast i8* %_dev to %struct.device*
  %1 = bitcast %struct.device_attach_data* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #15
  %2 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %data, i64 0, i32 1
  %3 = bitcast i8* %2 to i64*, !annotation !7
  store i64 0, i64* %3, align 8, !annotation !7
  %4 = bitcast %struct.device_attach_data* %data to i8**
  store i8* %_dev, i8** %4, align 8
  %check_async = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %data, i64 0, i32 1
  store i8 1, i8* %check_async, align 8
  %want_async = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %data, i64 0, i32 2
  store i8 1, i8* %want_async, align 1
  call fastcc void @device_lock(%struct.device* noundef %0) #14
  %p = getelementptr inbounds i8, i8* %_dev, i64 72
  %5 = bitcast i8* %p to %struct.device_private**
  %6 = load %struct.device_private*, %struct.device_private** %5, align 8
  %dead = getelementptr inbounds %struct.device_private, %struct.device_private* %6, i64 0, i32 9
  %bf.load = load i8, i8* %dead, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %lor.lhs.false, label %out_unlock

lor.lhs.false:                                    ; preds = %entry
  %driver = getelementptr inbounds i8, i8* %_dev, i64 104
  %7 = bitcast i8* %driver to %struct.device_driver**
  %8 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %tobool2.not = icmp eq %struct.device_driver* %8, null
  br i1 %tobool2.not, label %if.end6, label %out_unlock

if.end6:                                          ; preds = %lor.lhs.false
  %bus = getelementptr inbounds i8, i8* %_dev, i64 96
  %9 = bitcast i8* %bus to %struct.bus_type**
  %10 = load %struct.bus_type*, %struct.bus_type** %9, align 8
  %call7 = call i32 @bus_for_each_drv(%struct.bus_type* noundef %10, %struct.device_driver* noundef null, i8* noundef nonnull %1, i32 (%struct.device_driver*, i8*)* noundef nonnull @__device_attach_driver) #13
  br label %out_unlock

out_unlock:                                       ; preds = %if.end6, %entry, %lor.lhs.false
  call fastcc void @device_unlock(%struct.device* noundef %0) #14
  call void @put_device(%struct.device* noundef %0) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_unlock(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @driver_match_device(%struct.device_driver* noundef %drv, %struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 1
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %match = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 6
  %1 = load i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.device_driver*)** %match, align 8
  %tobool.not = icmp eq i32 (%struct.device*, %struct.device_driver*)* %1, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call i32 %1(%struct.device* noundef %dev, %struct.device_driver* noundef %drv) #13
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 1, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @driver_probe_device(%struct.device_driver* noundef %drv, %struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @deferred_trigger_count, i64 0, i32 0), align 4
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef nonnull @probe_count) #13
  %call1 = call fastcc i32 @__driver_probe_device(%struct.device_driver* noundef %drv, %struct.device* noundef %dev) #14
  switch i32 %call1, label %if.end6 [
    i32 -517, label %if.then
    i32 517, label %if.then
  ]

if.then:                                          ; preds = %entry, %entry
  call void @driver_deferred_probe_add(%struct.device* noundef %dev) #14
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @deferred_trigger_count, i64 0, i32 0), align 4
  %cmp4.not = icmp eq i32 %0, %1
  br i1 %cmp4.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %.b12 = load i1, i1* @defer_all_probes, align 1
  br i1 %.b12, label %if.end6, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  call fastcc void @driver_deferred_probe_trigger() #14
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then, %land.lhs.true, %if.then5
  call fastcc void @__ll_sc_atomic_sub() #13
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @probe_waitqueue, i32 noundef 3, i32 noundef 0, i8* noundef null) #13
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @probe_count, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @probe_count, i64 0, i32 0)) #15, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node(void (i8*, i64)* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @device_is_registered(%struct.device* nocapture noundef readonly %dev) unnamed_addr #10 {
entry:
  %state_in_sysfs = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @really_probe_debug(%struct.device* noundef %dev, %struct.device_driver* noundef %drv) unnamed_addr #0 {
entry:
  %call = call i64 @ktime_get() #13
  %call1 = call fastcc i32 @really_probe(%struct.device* noundef %dev, %struct.device_driver* noundef %drv) #14
  %call2 = call i64 @ktime_get() #13
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @really_probe(%struct.device* noundef %dev, %struct.device_driver* noundef %drv) unnamed_addr #0 {
entry:
  %.b240 = load i1, i1* @defer_all_probes, align 1
  br i1 %.b240, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @device_links_check_suppliers(%struct.device* noundef %dev) #13
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30
  %call4 = call fastcc i32 @list_empty(%struct.list_head* noundef %devres_head) #14
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end, label %re_probe

do.end:                                           ; preds = %if.end3
  call void (%struct.device*, i8*, ...) @_dev_crit(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0)) #16
  br label %cleanup

re_probe:                                         ; preds = %if.end3
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  store %struct.device_driver* %drv, %struct.device_driver** %driver, align 8
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %dma_configure = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 17
  %1 = load i32 (%struct.device*)*, i32 (%struct.device*)** %dma_configure, align 8
  %tobool12.not = icmp eq i32 (%struct.device*)* %1, null
  br i1 %tobool12.not, label %if.end20, label %if.then13

if.then13:                                        ; preds = %re_probe
  %call16 = call i32 %1(%struct.device* noundef %dev) #13
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %probe_failed

if.end20:                                         ; preds = %if.then13, %re_probe
  %call21 = call fastcc i32 @driver_sysfs_add(%struct.device* noundef %dev) #14
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end30, label %do.end26

do.end26:                                         ; preds = %if.end20
  %call28 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #14
  %call29 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.really_probe, i64 0, i64 0), i8* noundef %call28) #16
  br label %probe_failed

if.end30:                                         ; preds = %if.end20
  %pm_domain = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 12
  %2 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pm_domain, align 8
  %tobool31.not = icmp eq %struct.dev_pm_domain* %2, null
  br i1 %tobool31.not, label %if.end41, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end30
  %activate = getelementptr inbounds %struct.dev_pm_domain, %struct.dev_pm_domain* %2, i64 0, i32 3
  %3 = load i32 (%struct.device*)*, i32 (%struct.device*)** %activate, align 8
  %tobool33.not = icmp eq i32 (%struct.device*)* %3, null
  br i1 %tobool33.not, label %if.end41, label %if.then34

if.then34:                                        ; preds = %land.lhs.true
  %call37 = call i32 %3(%struct.device* noundef %dev) #13
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end41, label %probe_failed

if.end41:                                         ; preds = %if.then34, %land.lhs.true, %if.end30
  %call42 = call fastcc i32 @call_driver_probe(%struct.device* noundef %dev, %struct.device_driver* noundef %drv) #14
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  %sub = sub i32 0, %call42
  br label %probe_failed

if.end45:                                         ; preds = %if.end41
  %dev_groups = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 15
  %4 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8
  %call46 = call i32 @device_add_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %4) #13
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end52, label %do.end51

do.end51:                                         ; preds = %if.end45
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0)) #16
  br label %dev_groups_failed

if.end52:                                         ; preds = %if.end45
  %call53 = call fastcc i1 @dev_has_sync_state(%struct.device* noundef %dev) #14
  br i1 %call53, label %if.then54, label %if.end93

if.then54:                                        ; preds = %if.end52
  %call55 = call i32 @device_create_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_state_synced) #13
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end93, label %do.end60

do.end60:                                         ; preds = %if.then54
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0)) #16
  %5 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8
  call void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %5) #13
  br label %dev_groups_failed

if.end93:                                         ; preds = %if.end52, %if.then54
  %6 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pm_domain, align 8
  %tobool96.not = icmp eq %struct.dev_pm_domain* %6, null
  br i1 %tobool96.not, label %if.end105, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %if.end93
  %sync = getelementptr inbounds %struct.dev_pm_domain, %struct.dev_pm_domain* %6, i64 0, i32 4
  %sync99 = bitcast {}** %sync to void (%struct.device*)**
  %7 = load void (%struct.device*)*, void (%struct.device*)** %sync99, align 8
  %tobool100.not = icmp eq void (%struct.device*)* %7, null
  br i1 %tobool100.not, label %if.end105, label %if.then101

if.then101:                                       ; preds = %land.lhs.true97
  call void %7(%struct.device* noundef %dev) #13
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %land.lhs.true97, %if.end93
  call fastcc void @driver_bound(%struct.device* noundef %dev) #14
  br label %cleanup

dev_groups_failed:                                ; preds = %do.end60, %do.end51
  %ret.1 = phi i32 [ %call46, %do.end51 ], [ %call55, %do.end60 ]
  %8 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %remove109 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %8, i64 0, i32 10
  %remove110 = bitcast {}** %remove109 to void (%struct.device*)**
  %9 = load void (%struct.device*)*, void (%struct.device*)** %remove110, align 8
  %tobool111.not = icmp eq void (%struct.device*)* %9, null
  br i1 %tobool111.not, label %if.else116, label %if.then112

if.then112:                                       ; preds = %dev_groups_failed
  call void %9(%struct.device* noundef %dev) #13
  br label %probe_failed

if.else116:                                       ; preds = %dev_groups_failed
  %remove117 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 10
  %10 = load i32 (%struct.device*)*, i32 (%struct.device*)** %remove117, align 8
  %tobool118.not = icmp eq i32 (%struct.device*)* %10, null
  br i1 %tobool118.not, label %probe_failed, label %if.then119

if.then119:                                       ; preds = %if.else116
  %call121 = call i32 %10(%struct.device* noundef %dev) #13
  br label %probe_failed

probe_failed:                                     ; preds = %if.then112, %if.then119, %if.else116, %if.then34, %if.then13, %if.then44, %do.end26
  %ret.2 = phi i32 [ %call16, %if.then13 ], [ %call21, %do.end26 ], [ %call37, %if.then34 ], [ %sub, %if.then44 ], [ %ret.1, %if.then112 ], [ %ret.1, %if.then119 ], [ %ret.1, %if.else116 ]
  %11 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool125.not = icmp eq %struct.bus_type* %11, null
  br i1 %tobool125.not, label %pinctrl_bind_failed, label %if.then126

if.then126:                                       ; preds = %probe_failed
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %11, i64 0, i32 20
  %12 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %12, i64 0, i32 7
  %13 = bitcast %struct.device* %dev to i8*
  %call128 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef %bus_notifier, i64 noundef 8, i8* noundef %13) #13
  br label %pinctrl_bind_failed

pinctrl_bind_failed:                              ; preds = %probe_failed, %if.then126
  call void @device_links_no_driver(%struct.device* noundef %dev) #13
  %call130 = call i32 @devres_release_all(%struct.device* noundef %dev) #13
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 19
  %14 = bitcast %struct.bus_dma_region** %dma_range_map to i8**
  %15 = load i8*, i8** %14, align 8
  call void @kfree(i8* noundef %15) #13
  store %struct.bus_dma_region* null, %struct.bus_dma_region** %dma_range_map, align 8
  call fastcc void @driver_sysfs_remove(%struct.device* noundef %dev) #14
  store %struct.device_driver* null, %struct.device_driver** %driver, align 8
  call fastcc void @dev_set_drvdata(%struct.device* noundef %dev) #14
  %pm_domain133 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 12
  %16 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %pm_domain133, align 8
  %tobool134.not = icmp eq %struct.dev_pm_domain* %16, null
  br i1 %tobool134.not, label %if.end144, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %pinctrl_bind_failed
  %dismiss137 = getelementptr inbounds %struct.dev_pm_domain, %struct.dev_pm_domain* %16, i64 0, i32 5
  %dismiss138 = bitcast {}** %dismiss137 to void (%struct.device*)**
  %17 = load void (%struct.device*)*, void (%struct.device*)** %dismiss138, align 8
  %tobool139.not = icmp eq void (%struct.device*)* %17, null
  br i1 %tobool139.not, label %if.end144, label %if.then140

if.then140:                                       ; preds = %land.lhs.true135
  call void %17(%struct.device* noundef %dev) #13
  br label %if.end144

if.end144:                                        ; preds = %if.then140, %land.lhs.true135, %pinctrl_bind_failed
  call fastcc void @dev_pm_set_driver_flags(%struct.device* noundef %dev) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end105, %if.end144, %if.end, %entry
  %retval.0 = phi i32 [ -517, %entry ], [ %call, %if.end ], [ %ret.2, %if.end144 ], [ 0, %if.end105 ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_links_check_suppliers(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @call_driver_probe(%struct.device* noundef %dev, %struct.device_driver* nocapture noundef readonly %drv) unnamed_addr #0 {
entry:
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %probe = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 8
  %1 = load i32 (%struct.device*)*, i32 (%struct.device*)** %probe, align 8
  %tobool.not = icmp eq i32 (%struct.device*)* %1, null
  br i1 %tobool.not, label %if.else, label %if.end8

if.else:                                          ; preds = %entry
  %probe3 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 8
  %2 = load i32 (%struct.device*)*, i32 (%struct.device*)** %probe3, align 8
  %tobool4.not = icmp eq i32 (%struct.device*)* %2, null
  br i1 %tobool4.not, label %sw.epilog, label %if.end8

if.end8:                                          ; preds = %if.else, %entry
  %.sink = phi i32 (%struct.device*)* [ %1, %entry ], [ %2, %if.else ]
  %call7 = call i32 %.sink(%struct.device* noundef %dev) #13
  switch i32 %call7, label %do.end [
    i32 0, label %sw.epilog
    i32 -517, label %sw.epilog
    i32 -19, label %sw.epilog
    i32 -6, label %sw.epilog
  ]

do.end:                                           ; preds = %if.end8
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %drv, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call11 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #14
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* noundef %3, i8* noundef %call11, i32 noundef %call7) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.end8, %if.end8, %if.end8, %do.end, %if.end8
  %ret.024 = phi i32 [ %call7, %if.end8 ], [ %call7, %if.end8 ], [ %call7, %if.end8 ], [ %call7, %do.end ], [ %call7, %if.end8 ], [ 0, %if.else ]
  ret i32 %ret.024
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(%struct.device* noundef, %struct.attribute_group** noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dev_has_sync_state(%struct.device* noundef readonly %dev) unnamed_addr #10 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool1.not = icmp eq %struct.device_driver* %0, null
  br i1 %tobool1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %sync_state = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 0, i32 9
  %sync_state3 = bitcast {}** %sync_state to void (%struct.device*)**
  %1 = load void (%struct.device*)*, void (%struct.device*)** %sync_state3, align 8
  %tobool4.not = icmp eq void (%struct.device*)* %1, null
  br i1 %tobool4.not, label %if.end6, label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool7.not = icmp eq %struct.bus_type* %2, null
  br i1 %tobool7.not, label %if.end14, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.end6
  %sync_state10 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i64 0, i32 9
  %sync_state11 = bitcast {}** %sync_state10 to void (%struct.device*)**
  %3 = load void (%struct.device*)*, void (%struct.device*)** %sync_state11, align 8
  %tobool12.not = icmp eq void (%struct.device*)* %3, null
  br i1 %tobool12.not, label %if.end14, label %return

if.end14:                                         ; preds = %land.lhs.true8, %if.end6
  br label %return

return:                                           ; preds = %land.lhs.true8, %land.lhs.true, %entry, %if.end14
  %retval.0 = phi i1 [ false, %if.end14 ], [ false, %entry ], [ true, %land.lhs.true ], [ true, %land.lhs.true8 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(%struct.device* noundef, %struct.attribute_group** noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_all(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @driver_sysfs_remove(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool.not = icmp eq %struct.device_driver* %0, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %coredump = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 0, i32 17
  %coredump1 = bitcast {}** %coredump to void (%struct.device*)**
  %1 = load void (%struct.device*)*, void (%struct.device*)** %coredump1, align 8
  %tobool2.not = icmp eq void (%struct.device*)* %1, null
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_coredump) #13
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %p = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 0, i32 18
  %2 = load %struct.driver_private*, %struct.driver_private** %p, align 8
  %kobj = getelementptr inbounds %struct.driver_private, %struct.driver_private* %2, i64 0, i32 0
  %kobj4 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj4) #14
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef %call) #13
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #13
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @dev_set_drvdata(%struct.device* nocapture noundef writeonly %dev) unnamed_addr #11 {
entry:
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 8
  store i8* null, i8** %driver_data, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_no_driver(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @dev_pm_set_driver_flags(%struct.device* nocapture noundef writeonly %dev) unnamed_addr #11 {
entry:
  %driver_flags = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 11, i32 2
  store i32 0, i32* %driver_flags, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @state_synced_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  call fastcc void @device_lock(%struct.device* noundef %dev) #14
  %state_synced = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %state_synced, align 4
  call fastcc void @device_unlock(%struct.device* noundef %dev) #14
  %0 = lshr i8 %bf.load, 3
  %.lobit = and i8 %0, 1
  %1 = zext i8 %.lobit to i32
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 noundef %1) #13
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @coredump_store(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* nocapture noundef readnone %buf, i64 noundef returned %count) #0 {
entry:
  call fastcc void @device_lock(%struct.device* noundef %dev) #14
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %coredump = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 0, i32 17
  %coredump1 = bitcast {}** %coredump to void (%struct.device*)**
  %1 = load void (%struct.device*)*, void (%struct.device*)** %coredump1, align 8
  call void %1(%struct.device* noundef %dev) #13
  call fastcc void @device_unlock(%struct.device* noundef %dev) #14
  ret i64 %count
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @__driver_attach_async_helper(i8* noundef %_dev, i64 noundef %cookie) #0 {
entry:
  %0 = bitcast i8* %_dev to %struct.device*
  %parent = getelementptr inbounds i8, i8* %_dev, i64 64
  %1 = bitcast i8* %parent to %struct.device**
  %2 = load %struct.device*, %struct.device** %1, align 8
  call fastcc void @__device_driver_lock(%struct.device* noundef %0, %struct.device* noundef %2) #14
  %p = getelementptr inbounds i8, i8* %_dev, i64 72
  %3 = bitcast i8* %p to %struct.device_private**
  %4 = load %struct.device_private*, %struct.device_private** %3, align 8
  %async_driver = getelementptr inbounds %struct.device_private, %struct.device_private* %4, i64 0, i32 6
  %5 = load %struct.device_driver*, %struct.device_driver** %async_driver, align 8
  %call = call fastcc i32 @driver_probe_device(%struct.device_driver* noundef %5, %struct.device* noundef %0) #14
  %6 = load %struct.device*, %struct.device** %1, align 8
  call fastcc void @__device_driver_unlock(%struct.device* noundef %0, %struct.device* noundef %6) #14
  call void @put_device(%struct.device* noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @device_links_busy(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_unbind_consumers(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_driver_cleanup(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_remove(%struct.klist_node* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #13
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #13
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #15, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #15, !srcloc !15
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2147975293, i64 2147975809, i64 2147975839, i64 2147975866, i64 2147975900, i64 2147975930}
!10 = !{i64 2147985014, i64 2147985530, i64 2147985560, i64 2147985587, i64 2147985621, i64 2147985651}
!11 = !{i64 2149578370}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148071155, i64 2148071188, i64 2148071241, i64 2148071300, i64 2148071334, i64 2148071389, i64 2148071418, i64 2148071438}
!14 = !{i64 2149585651}
!15 = !{i64 2149377881}
