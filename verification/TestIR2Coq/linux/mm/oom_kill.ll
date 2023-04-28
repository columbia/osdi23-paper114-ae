; ModuleID = 'mm/oom_kill.c'
source_filename = "mm/oom_kill.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_oom_kill__441_683_oom_init4:\09\09\09"
module asm ".long\09oom_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.74, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.3 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.4, [0 x i64] }
%struct.anon.4 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.5, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.5 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.6, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.7, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.6 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.7 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.8, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.31, %struct.list_head, %struct.list_head, %union.anon.32 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.16, i32 }
%union.anon.16 = type { %struct.kuid_t }
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
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.17, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.17 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.18, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.18 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type { %struct.kmem_cache_cpu*, i32, i64, i32, i32, %struct.reciprocal_value, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, void (i8*)*, i32, i32, i32, i8*, %struct.list_head, %struct.kobject, i32, i32, [1 x %struct.kmem_cache_node*] }
%struct.kmem_cache_cpu = type { i8**, i64, %struct.page*, %struct.local_lock_t }
%struct.local_lock_t = type {}
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kmem_cache_node = type { %struct.spinlock, i64, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t, %struct.list_head }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.19, %union.anon.20, %union.anon.21, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.26, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.19 = type { %struct.hlist_node }
%union.anon.20 = type { %struct.rb_node }
%union.anon.21 = type { %struct.anon.25 }
%struct.anon.25 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.26 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.23, %union.anon.24, i32 }
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.blk_mq_tag_set = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.33 }
%union.anon.33 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.34, %union.anon.35 }
%union.anon.34 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.35 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.39 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.37, %struct.qspinlock }
%union.anon.37 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.39 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.55 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28, [48 x i8] }
%struct.anon.28 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.29, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.56 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.41 = type { %struct.callback_head }
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
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
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
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.61 }
%struct.anon.61 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.65 }
%struct.anon.65 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.73, i32, [12 x i8] }
%union.anon.73 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.74 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.75, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.75 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.vm_event_state = type { [53 x i64] }
%struct.mmu_notifier_range = type { i64, i64 }
%struct.mmu_gather = type { %struct.mm_struct*, %struct.mmu_table_batch*, i64, i64, i16, i32, %struct.mmu_gather_batch*, %struct.mmu_gather_batch, [8 x %struct.page*] }
%struct.mmu_table_batch = type { %struct.callback_head, i32, [0 x i8*] }
%struct.mmu_gather_batch = type { %struct.mmu_gather_batch*, i32, i32, [0 x %struct.page*] }
%struct.zap_details = type { %struct.address_space*, i64, i64, %struct.page* }
%struct.oom_control = type { %struct.zonelist*, %struct.nodemask_t*, %struct.mem_cgroup*, i32, i32, i64, %struct.task_struct*, i64, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.nodemask_t = type { [1 x i64] }
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@sysctl_oom_dump_tasks = dso_local local_unnamed_addr global i32 1, align 4
@oom_lock = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @oom_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @oom_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@oom_adj_mutex = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @oom_adj_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @oom_adj_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@__UNIQUE_ID___addressable_oom_init442 = internal global i8* bitcast (i32 ()* @oom_init to i8*), section ".discard.addressable", align 8
@oom_victims = internal global %struct.atomic_t zeroinitializer, align 4
@oom_victims_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @oom_victims_wait to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @oom_victims_wait to i8*), i64 8) to %struct.list_head*) } }, align 8
@oom_killer_disabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str = private unnamed_addr constant [23 x i8] c"\016OOM killer enabled.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\016OOM killer disabled.\0A\00", align 1
@oom_notify_list = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.blocking_notifier_head* @oom_notify_list to i8*), i64 24) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.blocking_notifier_head* @oom_notify_list to i8*), i64 24) to %struct.list_head*) } }, %struct.notifier_block* null }, align 8
@sysctl_oom_kill_allocating_task = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Out of memory (oom_kill_allocating_task)\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\014Out of memory and no killable processes...\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"System is deadlocked on memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Memory cgroup out of memory\00", align 1
@sysctl_panic_on_oom = dso_local local_unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"oom_reaper\00", align 1
@oom_reaper_th = internal unnamed_addr global %struct.task_struct* null, align 8
@oom_reaper_list = internal unnamed_addr global %struct.task_struct* null, align 8
@oom_reaper_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @oom_reaper_wait to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @oom_reaper_wait to i8*), i64 8) to %struct.list_head*) } }, align 8
@oom_reaper_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"\016oom_reaper: unable to reap pid:%d (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [91 x i8] c"\016oom_reaper: reaped process %d (%s), now anon-rss:%lukB, file-rss:%lukB, shmem-rss:%lukB\0A\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@.str.10 = private unnamed_addr constant [43 x i8] c"Out of memory: %s panic_on_oom is enabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"compulsory\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"system-wide\00", align 1
@oom_kill_process.oom_rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.oom_kill_process = private unnamed_addr constant [17 x i8] c"oom_kill_process\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"\016%s: OOM victim %d (%s) is already exiting. Skip killing the task\0A\00", align 1
@.str.14 = private unnamed_addr constant [135 x i8] c"\013%s: Killed process %d (%s) total-vm:%lukB, anon-rss:%lukB, file-rss:%lukB, shmem-rss:%lukB, UID:%u pgtables:%lukB oom_score_adj:%hd\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"\016oom killer %d (%s) has mm pinned by %d (%s)\0A\00", align 1
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 8
@.str.16 = private unnamed_addr constant [74 x i8] c"\014%s invoked oom-killer: gfp_mask=%#x(%pGg), order=%d, oom_score_adj=%hd\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"\014COMPACTION is disabled!!!\0A\00", align 1
@vm_node_stat = external dso_local global [38 x %struct.atomic64_t], align 8
@.str.18 = private unnamed_addr constant [41 x i8] c"\016Tasks state (memory values in pages):\0A\00", align 1
@.str.19 = private unnamed_addr constant [86 x i8] c"\016[  pid  ]   uid  tgid total_vm      rss pgtables_bytes swapents oom_score_adj name\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"\016[%7d] %5d %5d %8lu %8lu %8ld %8lu         %5hd %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"\016oom-kill:constraint=%s,nodemask=%*pbl\00", align 1
@oom_constraint_text = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)], align 8
@.str.22 = private unnamed_addr constant [26 x i8] c"\01c,task=%s,pid=%d,uid=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"CONSTRAINT_NONE\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"CONSTRAINT_CPUSET\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"CONSTRAINT_MEMORY_POLICY\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"CONSTRAINT_MEMCG\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_oom_init442 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.task_struct* @find_lock_task_mm(%struct.task_struct* nocapture noundef readonly %p) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %next = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 3, i32 0
  %.pn32 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %t.0.in33 = getelementptr %struct.list_head, %struct.list_head* %.pn32, i64 -70, i32 1
  %thread_node35 = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in33, i64 139
  %1 = bitcast %struct.list_head** %thread_node35 to %struct.list_head*
  %thread_head636 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 3
  %cmp.not37 = icmp eq %struct.list_head* %thread_head636, %1
  br i1 %cmp.not37, label %found, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %thread_node40 = phi %struct.list_head** [ %thread_node, %if.end ], [ %thread_node35, %entry ]
  %t.0.in38 = phi %struct.list_head** [ %t.0.in, %if.end ], [ %t.0.in33, %entry ]
  %t.039 = bitcast %struct.list_head** %t.0.in38 to %struct.task_struct*
  call fastcc void @task_lock(%struct.task_struct* noundef %t.039) #16
  %mm = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in38, i64 93
  %2 = bitcast %struct.list_head** %mm to %struct.mm_struct**
  %3 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %tobool.not = icmp eq %struct.mm_struct* %3, null
  br i1 %tobool.not, label %if.end, label %found.loopexit.split.loop.exit, !prof !8

if.end:                                           ; preds = %for.body
  call fastcc void @task_unlock(%struct.task_struct* noundef %t.039) #16
  %.pn = load volatile %struct.list_head*, %struct.list_head** %thread_node40, align 8
  %t.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in, i64 139
  %4 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %thread_head6 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 3
  %cmp.not = icmp eq %struct.list_head* %thread_head6, %4
  br i1 %cmp.not, label %found, label %for.body

found.loopexit.split.loop.exit:                   ; preds = %for.body
  %t.039.le = bitcast %struct.list_head** %t.0.in38 to %struct.task_struct*
  br label %found

found:                                            ; preds = %if.end, %found.loopexit.split.loop.exit, %entry
  %t.1 = phi %struct.task_struct* [ null, %entry ], [ %t.039.le, %found.loopexit.split.loop.exit ], [ null, %if.end ]
  call fastcc void @rcu_read_unlock() #16
  ret %struct.task_struct* %t.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @oom_badness(%struct.task_struct* nocapture noundef readonly %p, i64 noundef %totalpages) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @oom_unkillable_task(%struct.task_struct* noundef %p) #16
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.task_struct* @find_lock_task_mm(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 51
  %1 = load i16, i16* %oom_score_adj, align 2
  %conv = sext i16 %1 to i64
  %cmp = icmp eq i16 %1, -1000
  br i1 %cmp, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 43
  %3 = load volatile i64, i64* %flags, align 8
  %4 = and i64 %3, 2097152
  %tobool6.not = icmp eq i64 %4, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %if.then10

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call fastcc i1 @in_vfork(%struct.task_struct* noundef nonnull %call1) #16
  br i1 %call8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end3
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call1) #16
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7
  %5 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call13 = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %5) #16
  %6 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call15 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %6, i32 noundef 2) #16
  %7 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call17 = call fastcc i64 @mm_pgtables_bytes(%struct.mm_struct* noundef %7) #16
  %div = lshr i64 %call17, 12
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call1) #16
  %div19 = udiv i64 %totalpages, 1000
  %mul = mul i64 %div19, %conv
  %add = add i64 %call13, %mul
  %add18 = add i64 %add, %call15
  %add20 = add i64 %add18, %div
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end11, %if.then10
  %retval.0 = phi i64 [ -9223372036854775808, %if.then10 ], [ %add20, %if.end11 ], [ -9223372036854775808, %entry ], [ -9223372036854775808, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @oom_unkillable_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @is_global_init(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 2097152
  %tobool1.not = icmp ne i32 %and, 0
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %tobool1.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @in_vfork(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %vfork_done = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 63
  %0 = load %struct.completion*, %struct.completion** %vfork_done, align 8
  %tobool.not = icmp eq %struct.completion* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 52
  %1 = load volatile %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %mm5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm5, align 8
  %cmp = icmp eq %struct.mm_struct* %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  call fastcc void @rcu_read_unlock() #16
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #16
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #16
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #16
  %add3 = add i64 %add, %call2
  ret i64 %add3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #3 {
entry:
  %0 = zext i32 %member to i64
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = icmp sgt i64 %1, 0
  %spec.store.select = select i1 %2, i64 %1, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @mm_pgtables_bytes(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %counter.i.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 12, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i1 @process_shares_mm(%struct.task_struct* nocapture noundef readonly %p, %struct.mm_struct* noundef readnone %mm) local_unnamed_addr #4 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %next = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 3, i32 0
  %thread_head6 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %.pn.in = phi %struct.list_head** [ %next, %entry ], [ %thread_node, %for.body ]
  %.pn = load volatile %struct.list_head*, %struct.list_head** %.pn.in, align 8
  %t.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in, i64 139
  %1 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %thread_head6, %1
  br i1 %cmp.not, label %cleanup25, label %for.body

for.body:                                         ; preds = %for.cond
  %mm11 = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in, i64 93
  %2 = bitcast %struct.list_head** %mm11 to %struct.mm_struct**
  %3 = load volatile %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %tobool.not = icmp eq %struct.mm_struct* %3, null
  br i1 %tobool.not, label %for.cond, label %cleanup25.split.loop.exit34

cleanup25.split.loop.exit34:                      ; preds = %for.body
  %cmp12.le = icmp eq %struct.mm_struct* %3, %mm
  br label %cleanup25

cleanup25:                                        ; preds = %for.cond, %cleanup25.split.loop.exit34
  %retval.2 = phi i1 [ %cmp12.le, %cleanup25.split.loop.exit34 ], [ false, %for.cond ]
  ret i1 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @__oom_reap_task_mm(%struct.mm_struct* noundef %mm) local_unnamed_addr #0 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 8
  %tlb = alloca %struct.mmu_gather, align 8
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  call fastcc void @set_bit(i64 noundef 22, i64* noundef %flags) #16
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %vma.023 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  %tobool.not24 = icmp eq %struct.vm_area_struct* %vma.023, null
  br i1 %tobool.not24, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %0 = bitcast %struct.mmu_notifier_range* %range to i8*
  %1 = bitcast %struct.mmu_gather* %tlb to i8*
  %start = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 0
  %end = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %vma.025 = phi %struct.vm_area_struct* [ %vma.023, %for.body.lr.ph ], [ %vma.0, %for.inc ]
  %call = call fastcc i1 @can_madv_lru_vma(%struct.vm_area_struct* noundef nonnull %vma.025) #16
  br i1 %call, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call1 = call fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* noundef nonnull %vma.025) #16
  br i1 %call1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.025, i64 0, i32 8
  %2 = load i64, i64* %vm_flags, align 8
  %and = and i64 %2, 8
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.then3, label %for.inc

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !9
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.025, i64 0, i32 0
  %3 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.025, i64 0, i32 1
  %4 = load i64, i64* %vm_end, align 8
  call fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* noundef nonnull %range, i64 noundef %3, i64 noundef %4) #16
  call void @tlb_gather_mmu(%struct.mmu_gather* noundef nonnull %tlb, %struct.mm_struct* noundef %mm) #15
  %5 = load i64, i64* %start, align 8
  %6 = load i64, i64* %end, align 8
  call void @unmap_page_range(%struct.mmu_gather* noundef nonnull %tlb, %struct.vm_area_struct* noundef nonnull %vma.025, i64 noundef %5, i64 noundef %6, %struct.zap_details* noundef null) #15
  call void @tlb_finish_mmu(%struct.mmu_gather* noundef nonnull %tlb) #15
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %lor.lhs.false, %for.body
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.025, i64 0, i32 2
  %vma.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %vma.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret i1 true
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @can_madv_lru_vma(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #2 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 4203520
  %tobool.not = icmp eq i64 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #2 {
entry:
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %0 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %0, null
  ret i1 %tobool.not
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @_mmu_notifier_range_init(%struct.mmu_notifier_range* nocapture noundef writeonly %range, i64 noundef %start, i64 noundef %end) unnamed_addr #6 {
entry:
  %start1 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 0
  store i64 %start, i64* %start1, align 8
  %end2 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %range, i64 0, i32 1
  store i64 %end, i64* %end2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(%struct.mmu_gather* noundef, %struct.mm_struct* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(%struct.mmu_gather* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_page_range(%struct.mmu_gather* noundef, %struct.vm_area_struct* noundef, i64 noundef, i64 noundef, %struct.zap_details* noundef) local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @oom_init() #8 section ".init.text" {
entry:
  %call = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* noundef nonnull @oom_reaper, i8* noundef null, i32 noundef -1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)) #15
  %0 = bitcast %struct.task_struct* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #16
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 @wake_up_process(%struct.task_struct* noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.task_struct* %call, %struct.task_struct** @oom_reaper_th, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exit_oom_victim() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %2) #16
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef nonnull @oom_victims) #15
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @oom_victims_wait, i32 noundef 3, i32 noundef 0, i8* noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @oom_killer_enable() local_unnamed_addr #0 {
entry:
  store i1 false, i1* @oom_killer_disabled, align 1
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #19
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @oom_killer_disable(i64 noundef %timeout) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %call = call i32 @mutex_lock_killable(%struct.mutex* noundef nonnull @oom_lock) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup51

if.end:                                           ; preds = %entry
  store i1 true, i1* @oom_killer_disabled, align 1
  call void @mutex_unlock(%struct.mutex* noundef nonnull @oom_lock) #15
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @oom_victims, i64 0, i32 0), align 4
  %tobool5 = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool5, true
  %tobool7 = icmp ne i64 %timeout, 0
  %or.cond = or i1 %tobool7, %tobool5
  %spec.store.select = select i1 %or.cond, i64 %timeout, i64 1
  %tobool11.not = icmp eq i64 %spec.store.select, 0
  %1 = select i1 %lnot, i1 true, i1 %tobool11.not
  br i1 %1, label %if.end42, label %if.then14

if.then14:                                        ; preds = %if.end
  %2 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !9
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call1676 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @oom_victims_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #15
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @oom_victims, i64 0, i32 0), align 4
  %tobool1977 = icmp ne i32 %3, 0
  %lnot2078 = xor i1 %tobool1977, true
  %or.cond5280 = or i1 %tobool1977, %tobool7
  %spec.store.select5381 = select i1 %or.cond5280, i64 %timeout, i64 1
  %tobool30.not82 = icmp eq i64 %spec.store.select5381, 0
  %4 = select i1 %lnot2078, i1 true, i1 %tobool30.not82
  br i1 %4, label %for.end, label %if.end36

if.end36:                                         ; preds = %if.then14, %cleanup
  %spec.store.select5384 = phi i64 [ %spec.store.select53, %cleanup ], [ %spec.store.select5381, %if.then14 ]
  %call1683 = phi i64 [ %call16, %cleanup ], [ %call1676, %if.then14 ]
  %tobool37.not = icmp eq i64 %call1683, 0
  br i1 %tobool37.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end36
  %call40 = call i64 @schedule_timeout(i64 noundef %spec.store.select5384) #15
  %call16 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @oom_victims_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #15
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @oom_victims, i64 0, i32 0), align 4
  %tobool19 = icmp ne i32 %5, 0
  %lnot20 = xor i1 %tobool19, true
  %tobool24 = icmp ne i64 %call40, 0
  %or.cond52 = select i1 %tobool19, i1 true, i1 %tobool24
  %spec.store.select53 = select i1 %or.cond52, i64 %call40, i64 1
  %tobool30.not = icmp eq i64 %spec.store.select53, 0
  %6 = select i1 %lnot20, i1 true, i1 %tobool30.not
  br i1 %6, label %for.end, label %if.end36

for.end:                                          ; preds = %cleanup, %if.then14
  %spec.store.select53.lcssa = phi i64 [ %spec.store.select5381, %if.then14 ], [ %spec.store.select53, %cleanup ]
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @oom_victims_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #15
  br label %__out

__out:                                            ; preds = %if.end36, %for.end
  %__ret15.169 = phi i64 [ %spec.store.select53.lcssa, %for.end ], [ %call1683, %if.end36 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #17
  br label %if.end42

if.end42:                                         ; preds = %__out, %if.end
  %__ret.0 = phi i64 [ %spec.store.select, %if.end ], [ %__ret15.169, %__out ]
  %cmp = icmp slt i64 %__ret.0, 1
  br i1 %cmp, label %if.then44, label %do.end48

if.then44:                                        ; preds = %if.end42
  call void @oom_killer_enable() #16
  br label %cleanup51

do.end48:                                         ; preds = %if.end42
  %call50 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)) #19
  br label %cleanup51

cleanup51:                                        ; preds = %entry, %do.end48, %if.then44
  %retval.0 = phi i1 [ false, %if.then44 ], [ true, %do.end48 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable(%struct.mutex* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_oom_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef nonnull @oom_notify_list, %struct.notifier_block* noundef %nb) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unregister_oom_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef nonnull @oom_notify_list, %struct.notifier_block* noundef %nb) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @out_of_memory(%struct.oom_control* noundef %oc) local_unnamed_addr #0 {
entry:
  %freed = alloca i64, align 8
  %0 = bitcast i64* %freed to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %freed, align 8
  %.b91 = load i1, i1* @oom_killer_disabled, align 1
  br i1 %.b91, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @is_memcg_oom(%struct.oom_control* noundef %oc) #16
  br i1 %call, label %if.end5, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef nonnull @oom_notify_list, i64 noundef 0, i8* noundef nonnull %0) #15
  %1 = load i64, i64* %freed, align 8
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.then1, %if.end
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !10
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call7 = call fastcc i1 @task_will_free_mem(%struct.task_struct* noundef %3) #16
  br i1 %call7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  call fastcc void @mark_oom_victim(%struct.task_struct* noundef %3) #16
  call fastcc void @wake_oom_reaper(%struct.task_struct* noundef %3) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %gfp_mask = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 3
  %4 = load i32, i32* %gfp_mask, align 8
  %tobool12.not = icmp ne i32 %4, 0
  %and = and i32 %4, 128
  %tobool14.not = icmp eq i32 %and, 0
  %or.cond92 = and i1 %tobool12.not, %tobool14.not
  br i1 %or.cond92, label %land.lhs.true15, label %if.end18

land.lhs.true15:                                  ; preds = %if.end11
  %call16 = call fastcc i1 @is_memcg_oom(%struct.oom_control* noundef %oc) #16
  br i1 %call16, label %if.end18, label %cleanup

if.end18:                                         ; preds = %land.lhs.true15, %if.end11
  %call19 = call fastcc i32 @constrained_alloc(%struct.oom_control* noundef %oc) #16
  %constraint = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 8
  store i32 %call19, i32* %constraint, align 8
  %cmp21.not = icmp eq i32 %call19, 2
  br i1 %cmp21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end18
  %nodemask = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 1
  store %struct.nodemask_t* null, %struct.nodemask_t** %nodemask, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18
  call fastcc void @check_panic_on_oom(%struct.oom_control* noundef %oc) #16
  %call24 = call fastcc i1 @is_memcg_oom(%struct.oom_control* noundef %oc) #16
  %call24.not = xor i1 %call24, true
  %5 = load i32, i32* @sysctl_oom_kill_allocating_task, align 4
  %tobool26 = icmp ne i32 %5, 0
  %or.cond = select i1 %call24.not, i1 %tobool26, i1 false
  br i1 %or.cond, label %land.lhs.true27, label %if.end44

land.lhs.true27:                                  ; preds = %if.end23
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 35
  %6 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool29.not = icmp eq %struct.mm_struct* %6, null
  br i1 %tobool29.not, label %if.end44, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %call32 = call fastcc i1 @oom_unkillable_task(%struct.task_struct* noundef %3) #16
  br i1 %call32, label %if.end44, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 87
  %7 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 51
  %8 = load i16, i16* %oom_score_adj, align 2
  %cmp38.not = icmp eq i16 %8, -1000
  br i1 %cmp38.not, label %if.end44, label %if.then40

if.then40:                                        ; preds = %land.lhs.true33
  call fastcc void @get_task_struct(%struct.task_struct* noundef %3) #16
  %chosen = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 6
  store %struct.task_struct* %3, %struct.task_struct** %chosen, align 8
  call fastcc void @oom_kill_process(%struct.oom_control* noundef %oc, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0)) #16
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true33, %land.lhs.true30, %land.lhs.true27, %if.end23
  call fastcc void @select_bad_process(%struct.oom_control* noundef %oc) #16
  %chosen45 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 6
  %9 = load %struct.task_struct*, %struct.task_struct** %chosen45, align 8
  %tobool46.not = icmp eq %struct.task_struct* %9, null
  br i1 %tobool46.not, label %if.then47, label %if.end54

if.then47:                                        ; preds = %if.end44
  call fastcc void @dump_header(%struct.oom_control* noundef %oc, %struct.task_struct* noundef null) #16
  %call48 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0)) #19
  %call49 = call fastcc i1 @is_sysrq_oom(%struct.oom_control* noundef %oc) #16
  br i1 %call49, label %if.end54, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %if.then47
  %call51 = call fastcc i1 @is_memcg_oom(%struct.oom_control* noundef %oc) #16
  br i1 %call51, label %if.end54, label %if.then52

if.then52:                                        ; preds = %land.lhs.true50
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0)) #20
  unreachable

if.end54:                                         ; preds = %if.then47, %land.lhs.true50, %if.end44
  %10 = load %struct.task_struct*, %struct.task_struct** %chosen45, align 8
  %magicptr = ptrtoint %struct.task_struct* %10 to i64
  switch i64 %magicptr, label %if.then61 [
    i64 0, label %if.end63
    i64 -1, label %if.end63
  ]

if.then61:                                        ; preds = %if.end54
  %call62 = call fastcc i1 @is_memcg_oom(%struct.oom_control* noundef %oc) #16
  %cond = select i1 %call62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)
  call fastcc void @oom_kill_process(%struct.oom_control* noundef %oc, i8* noundef %cond) #16
  %.pre = load %struct.task_struct*, %struct.task_struct** %chosen45, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.end54, %if.end54, %if.then61
  %11 = phi %struct.task_struct* [ %10, %if.end54 ], [ %10, %if.end54 ], [ %.pre, %if.then61 ]
  %tobool65 = icmp ne %struct.task_struct* %11, null
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true15, %if.then1, %entry, %if.end63, %if.then40, %if.then8
  %retval.0 = phi i1 [ true, %if.then8 ], [ %tobool65, %if.end63 ], [ true, %if.then40 ], [ false, %entry ], [ true, %if.then1 ], [ true, %land.lhs.true15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_memcg_oom(%struct.oom_control* nocapture noundef readonly %oc) unnamed_addr #2 {
entry:
  %memcg = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 2
  %0 = load %struct.mem_cgroup*, %struct.mem_cgroup** %memcg, align 8
  %cmp = icmp ne %struct.mem_cgroup* %0, null
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @task_will_free_mem(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 35
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %tobool.not = icmp eq %struct.mm_struct* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @__task_will_free_mem(%struct.task_struct* noundef %task) #16
  br i1 %call, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 43
  %1 = load volatile i64, i64* %flags, align 8
  %2 = and i64 %1, 2097152
  %tobool5.not = icmp eq i64 %2, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 10, i32 0
  %3 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end7
  call fastcc void @__rcu_read_lock() #15
  %4 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr44 = getelementptr %struct.list_head, %struct.list_head* %4, i64 -42, i32 1
  %cmp15.not45 = icmp eq %struct.list_head** %add.ptr44, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp15.not45, label %for.end, label %for.body

for.body:                                         ; preds = %if.end10, %for.cond.backedge
  %.in = phi %struct.list_head** [ %add.ptr, %for.cond.backedge ], [ %add.ptr44, %if.end10 ]
  %5 = bitcast %struct.list_head** %.in to %struct.task_struct*
  %call16 = call i1 @process_shares_mm(%struct.task_struct* noundef %5, %struct.mm_struct* noundef nonnull %0) #16
  br i1 %call16, label %if.end18, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %if.end18, %if.end21
  %6 = getelementptr inbounds %struct.list_head*, %struct.list_head** %.in, i64 83
  %7 = load volatile %struct.list_head*, %struct.list_head** %6, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %7, i64 -42, i32 1
  %cmp15.not = icmp eq %struct.list_head** %add.ptr, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp15.not, label %for.end, label %for.body

if.end18:                                         ; preds = %for.body
  %call19 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %task, %struct.task_struct* noundef %5) #16
  br i1 %call19, label %for.cond.backedge, label %if.end21

if.end21:                                         ; preds = %if.end18
  %call22 = call fastcc i1 @__task_will_free_mem(%struct.task_struct* noundef %5) #16
  br i1 %call22, label %for.cond.backedge, label %for.end

for.end:                                          ; preds = %for.cond.backedge, %if.end21, %if.end10
  %cmp15.not.lcssa = phi i1 [ true, %if.end10 ], [ false, %if.end21 ], [ true, %for.cond.backedge ]
  call fastcc void @rcu_read_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3, %if.end, %entry, %for.end
  %retval.0 = phi i1 [ %cmp15.not.lcssa, %for.end ], [ false, %entry ], [ false, %if.end ], [ false, %if.end3 ], [ true, %if.end7 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_oom_victim(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 35
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %.b39 = load i1, i1* @oom_killer_disabled, align 1
  br i1 %.b39, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/oom_kill.c\22; .popsection; .long 14472b - 14470b; .short 704; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i32 @test_and_set_tsk_thread_flag(%struct.task_struct* noundef %tsk) #16
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_mm = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 53
  %2 = bitcast %struct.mm_struct** %oom_mm to i8*
  %3 = ptrtoint %struct.mm_struct* %0 to i64
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %2, i64 noundef 0, i64 noundef %3) #15
  %tobool22.not = icmp eq i64 %call14.i, 0
  br i1 %tobool22.not, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_mm25 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 53
  %5 = load %struct.mm_struct*, %struct.mm_struct** %oom_mm25, align 8
  call fastcc void @mmgrab(%struct.mm_struct* noundef %5) #16
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 43
  call fastcc void @set_bit(i64 noundef 25, i64* noundef %flags) #16
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end18
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef nonnull @oom_victims) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wake_oom_reaper(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_mm = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 53
  %1 = load %struct.mm_struct*, %struct.mm_struct** %oom_mm, align 8
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 43
  %call = call fastcc i1 @test_and_set_bit(i64 noundef 26, i64* noundef %flags) #16
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @get_task_struct(%struct.task_struct* noundef %tsk) #16
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @oom_reaper_lock, i64 0, i32 0, i32 0)) #15
  %2 = load %struct.task_struct*, %struct.task_struct** @oom_reaper_list, align 8
  %oom_reaper_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 135
  store %struct.task_struct* %2, %struct.task_struct** %oom_reaper_list, align 8
  store %struct.task_struct* %tsk, %struct.task_struct** @oom_reaper_list, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @oom_reaper_lock, i64 0, i32 0, i32 0)) #15
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @oom_reaper_wait, i32 noundef 3, i32 noundef 1, i8* noundef null) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @constrained_alloc(%struct.oom_control* nocapture noundef %oc) unnamed_addr #3 {
entry:
  %call1 = call fastcc i1 @is_memcg_oom(%struct.oom_control* noundef %oc) #16
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i64 @totalram_pages() #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %call3.sink = phi i64 [ %call3, %if.end ], [ 1, %entry ]
  %retval.0 = phi i32 [ 0, %if.end ], [ 3, %entry ]
  %0 = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 5
  store i64 %call3.sink, i64* %0, align 8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_panic_on_oom(%struct.oom_control* noundef %oc) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @sysctl_panic_on_oom, align 4
  switch i32 %0, label %if.then5 [
    i32 0, label %return
    i32 2, label %if.end10
  ], !prof !12

if.then5:                                         ; preds = %entry
  %constraint = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 8
  %1 = load i32, i32* %constraint, align 8
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %if.end10, label %return

if.end10:                                         ; preds = %entry, %if.then5
  %call = call fastcc i1 @is_sysrq_oom(%struct.oom_control* noundef %oc) #16
  br i1 %call, label %return, label %if.end12

if.end12:                                         ; preds = %if.end10
  call fastcc void @dump_header(%struct.oom_control* noundef %oc, %struct.task_struct* noundef null) #16
  %2 = load i32, i32* @sysctl_panic_on_oom, align 4
  %cmp13 = icmp eq i32 %2, 2
  %cond = select i1 %cmp13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0)
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* noundef %cond) #20
  unreachable

return:                                           ; preds = %entry, %if.end10, %if.then5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @oom_kill_process(%struct.oom_control* noundef %oc, i8* noundef %message) unnamed_addr #0 {
entry:
  %chosen = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 6
  %0 = load %struct.task_struct*, %struct.task_struct** %chosen, align 8
  call fastcc void @task_lock(%struct.task_struct* noundef %0) #16
  %call = call fastcc i1 @task_will_free_mem(%struct.task_struct* noundef %0) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @mark_oom_victim(%struct.task_struct* noundef %0) #16
  call fastcc void @wake_oom_reaper(%struct.task_struct* noundef %0) #16
  call fastcc void @task_unlock(%struct.task_struct* noundef %0) #16
  call fastcc void @put_task_struct(%struct.task_struct* noundef %0) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @task_unlock(%struct.task_struct* noundef %0) #16
  %call1 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @oom_kill_process.oom_rs, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.oom_kill_process, i64 0, i64 0)) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @dump_header(%struct.oom_control* noundef %oc, %struct.task_struct* noundef %0) #16
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  call fastcc void @__oom_kill_process(%struct.task_struct* noundef %0, i8* noundef %message) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @select_bad_process(%struct.oom_control* nocapture noundef %oc) unnamed_addr #0 {
entry:
  %chosen_points = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 7
  store i64 -9223372036854775808, i64* %chosen_points, align 8
  %call = call fastcc i1 @is_memcg_oom(%struct.oom_control* noundef %oc) #16
  br i1 %call, label %if.end8, label %if.else

if.else:                                          ; preds = %entry
  call fastcc void @__rcu_read_lock() #15
  %0 = bitcast %struct.oom_control* %oc to i8*
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.else
  %p.0 = phi %struct.task_struct* [ @init_task, %if.else ], [ %2, %for.body ]
  %next = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.0, i64 0, i32 32, i32 0
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %1, i64 -42, i32 1
  %2 = bitcast %struct.list_head** %add.ptr to %struct.task_struct*
  %cmp.not = icmp eq %struct.list_head** %add.ptr, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call6 = call fastcc i32 @oom_evaluate_task(%struct.task_struct* noundef %2, i8* noundef %0) #16
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body, %for.cond
  call fastcc void @rcu_read_unlock() #16
  br label %if.end8

if.end8:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dump_header(%struct.oom_control* noundef %oc, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %gfp_mask = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 3
  %2 = load i32, i32* %gfp_mask, align 8
  %order = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 4
  %3 = load i32, i32* %order, align 4
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 51
  %5 = load i16, i16* %oom_score_adj, align 2
  %conv = sext i16 %5 to i32
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %2, i32* noundef %gfp_mask, i32 noundef %3, i32 noundef %conv) #19
  %6 = load i32, i32* %order, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %do.end6

do.end6:                                          ; preds = %entry
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0)) #19
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry
  call void @dump_stack() #19
  %call9 = call fastcc i1 @is_memcg_oom(%struct.oom_control* noundef %oc) #16
  br i1 %call9, label %if.end14, label %if.else

if.else:                                          ; preds = %if.end
  %nodemask = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 1
  %7 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  call void @show_mem(i32 noundef 1, %struct.nodemask_t* noundef %7) #15
  %call11 = call fastcc i1 @should_dump_unreclaim_slab() #16
  br i1 %call11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else
  call void @dump_unreclaimable_slab() #15
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.else, %if.then12
  %8 = load i32, i32* @sysctl_oom_dump_tasks, align 4
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end14
  call fastcc void @dump_tasks(%struct.oom_control* noundef %oc) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %tobool18.not = icmp eq %struct.task_struct* %p, null
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end17
  call fastcc void @dump_oom_summary(%struct.oom_control* noundef %oc, %struct.task_struct* noundef nonnull %p) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_sysrq_oom(%struct.oom_control* nocapture noundef readonly %oc) unnamed_addr #2 {
entry:
  %order = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 4
  %0 = load i32, i32* %order, align 4
  %cmp = icmp eq i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pagefault_out_of_memory() local_unnamed_addr #0 {
entry:
  %oc = alloca %struct.oom_control, align 8
  %0 = bitcast %struct.oom_control* %oc to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %call1 = call i32 @mutex_trylock(%struct.mutex* noundef nonnull @oom_lock) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %call4 = call i1 @out_of_memory(%struct.oom_control* noundef nonnull %oc) #16
  call void @mutex_unlock(%struct.mutex* noundef nonnull @oom_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_process_mrelease(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_process_mrelease(i64 noundef %0, i64 noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_process_mrelease(i64 noundef %pidfd, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pidfd to i32
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_process_mrelease(i32 noundef %conv, i32 noundef %conv1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !15

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #17, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #17, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  call void @rcu_read_unlock_strict() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_global_init(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @task_tgid_nr(%struct.task_struct* noundef %tsk) #16
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_tgid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #2 {
entry:
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 51
  %0 = load i32, i32* %tgid, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)* noundef, i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal i32 @oom_reaper(i8* nocapture noundef readnone %unused) #11 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %entry
  %1 = load %struct.task_struct*, %struct.task_struct** @oom_reaper_list, align 8
  %cmp.not = icmp eq %struct.task_struct* %1, null
  br i1 %cmp.not, label %if.then, label %if.end9

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !9
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call32 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @oom_reaper_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #15
  %2 = load %struct.task_struct*, %struct.task_struct** @oom_reaper_list, align 8
  %cmp5.not33 = icmp eq %struct.task_struct* %2, null
  br i1 %cmp5.not33, label %if.end, label %for.end

if.end:                                           ; preds = %if.then, %cleanup
  %call34 = phi i64 [ %call, %cleanup ], [ %call32, %if.then ]
  %tobool.not = icmp eq i64 %call34, 0
  br i1 %tobool.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #15
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @oom_reaper_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #15
  %3 = load %struct.task_struct*, %struct.task_struct** @oom_reaper_list, align 8
  %cmp5.not = icmp eq %struct.task_struct* %3, null
  br i1 %cmp5.not, label %if.end, label %for.end

for.end:                                          ; preds = %cleanup, %if.then
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @oom_reaper_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #15
  br label %__out

__out:                                            ; preds = %if.end, %for.end
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #17
  br label %if.end9

if.end9:                                          ; preds = %__out, %while.body
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @oom_reaper_lock, i64 0, i32 0, i32 0)) #15
  %4 = load %struct.task_struct*, %struct.task_struct** @oom_reaper_list, align 8
  %cmp11.not = icmp eq %struct.task_struct* %4, null
  br i1 %cmp11.not, label %if.end14.thread, label %if.then16

if.end14.thread:                                  ; preds = %if.end9
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @oom_reaper_lock, i64 0, i32 0, i32 0)) #15
  br label %while.body.backedge

while.body.backedge:                              ; preds = %if.end14.thread, %if.then16
  br label %while.body

if.then16:                                        ; preds = %if.end9
  %oom_reaper_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 135
  %5 = load %struct.task_struct*, %struct.task_struct** %oom_reaper_list, align 8
  store %struct.task_struct* %5, %struct.task_struct** @oom_reaper_list, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @oom_reaper_lock, i64 0, i32 0, i32 0)) #15
  call fastcc void @oom_reap_task(%struct.task_struct* noundef nonnull %4) #16
  br label %while.body.backedge
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #12 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @oom_reap_task(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_mm = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 53
  %1 = load %struct.mm_struct*, %struct.mm_struct** %oom_mm, align 8
  %call = call fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %1) #16
  br i1 %call, label %done, label %while.body

while.body:                                       ; preds = %entry
  %call1 = call i64 @schedule_timeout_idle(i64 noundef 25) #15
  %call.1 = call fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %1) #16
  br i1 %call.1, label %done, label %while.body.1

while.body.1:                                     ; preds = %while.body
  %call1.1 = call i64 @schedule_timeout_idle(i64 noundef 25) #15
  %call.2 = call fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %1) #16
  br i1 %call.2, label %done, label %while.body.2

while.body.2:                                     ; preds = %while.body.1
  %call1.2 = call i64 @schedule_timeout_idle(i64 noundef 25) #15
  %call.3 = call fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %1) #16
  br i1 %call.3, label %done, label %while.body.3

while.body.3:                                     ; preds = %while.body.2
  %call1.3 = call i64 @schedule_timeout_idle(i64 noundef 25) #15
  %call.4 = call fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %1) #16
  br i1 %call.4, label %done, label %while.body.4

while.body.4:                                     ; preds = %while.body.3
  %call1.4 = call i64 @schedule_timeout_idle(i64 noundef 25) #15
  %call.5 = call fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %1) #16
  br i1 %call.5, label %done, label %while.body.5

while.body.5:                                     ; preds = %while.body.4
  %call1.5 = call i64 @schedule_timeout_idle(i64 noundef 25) #15
  %call.6 = call fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %1) #16
  br i1 %call.6, label %done, label %while.body.6

while.body.6:                                     ; preds = %while.body.5
  %call1.6 = call i64 @schedule_timeout_idle(i64 noundef 25) #15
  %call.7 = call fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %1) #16
  br i1 %call.7, label %done, label %while.body.7

while.body.7:                                     ; preds = %while.body.6
  %call1.7 = call i64 @schedule_timeout_idle(i64 noundef 25) #15
  %call.8 = call fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %1) #16
  br i1 %call.8, label %done, label %while.body.8

while.body.8:                                     ; preds = %while.body.7
  %call1.8 = call i64 @schedule_timeout_idle(i64 noundef 25) #15
  %call.9 = call fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %1) #16
  br i1 %call.9, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.8
  %call1.9 = call i64 @schedule_timeout_idle(i64 noundef 25) #15
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 43
  %2 = load volatile i64, i64* %flags, align 8
  %3 = and i64 %2, 2097152
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %do.end, label %done

do.end:                                           ; preds = %lor.lhs.false
  %call4 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %tsk) #16
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 81, i64 0
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call4, i8* noundef %arraydecay) #19
  call void @sched_show_task(%struct.task_struct* noundef %tsk) #15
  br label %done

done:                                             ; preds = %entry, %while.body, %while.body.1, %while.body.2, %while.body.3, %while.body.4, %while.body.5, %while.body.6, %while.body.7, %while.body.8, %lor.lhs.false, %do.end
  %oom_reaper_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 135
  store %struct.task_struct* null, %struct.task_struct** %oom_reaper_list, align 8
  %flags6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 43
  call fastcc void @set_bit(i64 noundef 21, i64* noundef %flags6) #16
  call fastcc void @put_task_struct(%struct.task_struct* noundef %tsk) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @oom_reap_task_mm(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @mmap_read_trylock(%struct.mm_struct* noundef %mm) #16
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 2097152
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end4, label %out_unlock

if.end4:                                          ; preds = %if.end
  %call6 = call i1 @__oom_reap_task_mm(%struct.mm_struct* noundef %mm) #16
  %call10 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %tsk) #16
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 81, i64 0
  %call11 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #16
  %shl = shl i64 %call11, 2
  %call12 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #16
  %shl13 = shl i64 %call12, 2
  %call14 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #16
  %shl15 = shl i64 %call14, 2
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9, i64 0, i64 0), i32 noundef %call10, i8* noundef %arraydecay, i64 noundef %shl, i64 noundef %shl13, i64 noundef %shl15) #19
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %if.end4
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout_idle(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #2 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_show_task(%struct.task_struct* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mmap_read_trylock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_read_trylock(%struct.rw_semaphore* noundef %mmap_lock) #15
  %cmp = icmp ne i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #16
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #16
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #15
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #17, !srcloc !21
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !15

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !22
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 262144, i64* elementtype(i64) %counter) #17, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !24
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__task_will_free_mem(%struct.task_struct* noundef %task) unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 12
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 4
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %call = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %task) #16
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %flags7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 4
  %2 = load i32, i32* %flags7, align 4
  %and8 = and i32 %2, 4
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %land.lhs.true, %if.end5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end, %entry, %if.end11
  %retval.0 = phi i1 [ false, %if.end11 ], [ false, %entry ], [ true, %if.end ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @same_thread_group(%struct.task_struct* nocapture noundef readonly %p1, %struct.task_struct* nocapture noundef readonly %p2) unnamed_addr #2 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p1, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p2, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %cmp = icmp eq %struct.signal_struct* %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @thread_group_empty(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %thread_group = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %thread_group) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_and_set_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #16
  %call1 = call fastcc i32 @test_and_set_ti_thread_flag(%struct.thread_info* noundef %call) #16
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmgrab(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %mm_count) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_and_set_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %call = call fastcc i1 @test_and_set_bit(i64 noundef 18, i64* noundef %flags) #16
  %conv1 = zext i1 %call to i32
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #12 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #15
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !25
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #17, !srcloc !26
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #17, !srcloc !27
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @totalram_pages() unnamed_addr #3 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0), align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #15
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !8

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !15

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #15
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !29
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__oom_kill_process(%struct.task_struct* noundef %victim, i8* noundef %message) unnamed_addr #0 {
entry:
  %call = call %struct.task_struct* @find_lock_task_mm(%struct.task_struct* noundef %victim) #16
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %victim) #16
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %victim, i64 0, i32 81, i64 0
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8* noundef %message, i32 noundef %call1, i8* noundef %arraydecay) #19
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp.not = icmp eq %struct.task_struct* %call, %victim
  br i1 %cmp.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.else
  call fastcc void @get_task_struct(%struct.task_struct* noundef nonnull %call) #16
  call fastcc void @put_task_struct(%struct.task_struct* noundef %victim) #16
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %victim.addr.0 = phi %struct.task_struct* [ %call, %if.then3 ], [ %victim, %if.else ]
  %mm6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %victim.addr.0, i64 0, i32 35
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm6, align 8
  call fastcc void @mmgrab(%struct.mm_struct* noundef %0) #16
  call fastcc void @count_vm_event() #16
  %call7 = call i32 @do_send_sig_info(i32 noundef 9, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %victim.addr.0, i32 noundef 1) #15
  call fastcc void @mark_oom_victim(%struct.task_struct* noundef %victim.addr.0) #16
  %call12 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %victim.addr.0) #16
  %arraydecay14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %victim.addr.0, i64 0, i32 81, i64 0
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 19
  %1 = load i64, i64* %total_vm, align 8
  %shl = shl i64 %1, 2
  %call15 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %0, i32 noundef 1) #16
  %shl16 = shl i64 %call15, 2
  %call17 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %0, i32 noundef 0) #16
  %shl18 = shl i64 %call17, 2
  %call19 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %0, i32 noundef 3) #16
  %shl20 = shl i64 %call19, 2
  call fastcc void @__rcu_read_lock() #15
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %victim.addr.0, i64 0, i32 79
  %2 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #16
  %coerce.val.ii = zext i32 %___val.sroa.0.0.copyload to i64
  %call29 = call fastcc i32 @from_kuid(i64 %coerce.val.ii) #16
  %call30 = call fastcc i64 @mm_pgtables_bytes(%struct.mm_struct* noundef %0) #16
  %shr = lshr i64 %call30, 10
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %victim.addr.0, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 51
  %4 = load i16, i16* %oom_score_adj, align 2
  %conv = sext i16 %4 to i32
  %call31 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @.str.14, i64 0, i64 0), i8* noundef %message, i32 noundef %call12, i8* noundef %arraydecay14, i64 noundef %shl, i64 noundef %shl16, i64 noundef %shl18, i64 noundef %shl20, i32 noundef %call29, i64 noundef %shr, i32 noundef %conv) #19
  call fastcc void @task_unlock(%struct.task_struct* noundef %victim.addr.0) #16
  call fastcc void @__rcu_read_lock() #15
  %5 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr125129 = getelementptr %struct.list_head, %struct.list_head* %5, i64 -42, i32 1
  %cmp40.not126130 = icmp eq %struct.list_head** %add.ptr125129, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp40.not126130, label %if.then72.critedge, label %for.body.lr.ph.lr.ph

for.body.lr.ph.lr.ph:                             ; preds = %if.end5
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 43
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.then50
  %add.ptr125132 = phi %struct.list_head** [ %add.ptr125129, %for.body.lr.ph.lr.ph ], [ %add.ptr125, %if.then50 ]
  %can_oom_reap.0.off0.ph131 = phi i1 [ true, %for.body.lr.ph.lr.ph ], [ false, %if.then50 ]
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %add.ptr127 = phi %struct.list_head** [ %add.ptr125132, %for.body.lr.ph ], [ %add.ptr, %for.cond.backedge ]
  %6 = bitcast %struct.list_head** %add.ptr127 to %struct.task_struct*
  %call42 = call i1 @process_shares_mm(%struct.task_struct* noundef %6, %struct.mm_struct* noundef %0) #16
  br i1 %call42, label %if.end44, label %for.cond.backedge

if.end44:                                         ; preds = %for.body
  %call45 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %6, %struct.task_struct* noundef %victim.addr.0) #16
  br i1 %call45, label %for.cond.backedge, label %if.end47

if.end47:                                         ; preds = %if.end44
  %call48 = call fastcc i32 @is_global_init(%struct.task_struct* noundef %6) #16
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end62, label %if.then50

if.then50:                                        ; preds = %if.end47
  %7 = bitcast %struct.list_head** %add.ptr127 to %struct.task_struct*
  call fastcc void @set_bit(i64 noundef 21, i64* noundef %flags) #16
  %call55 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %victim.addr.0) #16
  %call58 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %7) #16
  %comm59 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr127, i64 170
  %call61 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call55, i8* noundef %arraydecay14, i32 noundef %call58, %struct.list_head** noundef %comm59) #19
  %8 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr127, i64 83
  %9 = load volatile %struct.list_head*, %struct.list_head** %8, align 8
  %add.ptr125 = getelementptr %struct.list_head, %struct.list_head* %9, i64 -42, i32 1
  %cmp40.not126 = icmp eq %struct.list_head** %add.ptr125, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp40.not126, label %if.end73.critedge, label %for.body.lr.ph

if.end62:                                         ; preds = %if.end47
  %flags63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 4
  %10 = load i32, i32* %flags63, align 4
  %and = and i32 %10, 2097152
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %if.end69, label %for.cond.backedge, !prof !15

if.end69:                                         ; preds = %if.end62
  %call70 = call i32 @do_send_sig_info(i32 noundef 9, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %6, i32 noundef 1) #15
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end69, %for.body, %if.end44, %if.end62
  %11 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr127, i64 83
  %12 = load volatile %struct.list_head*, %struct.list_head** %11, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %12, i64 -42, i32 1
  %cmp40.not = icmp eq %struct.list_head** %add.ptr, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp40.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.cond.backedge
  call fastcc void @rcu_read_unlock() #16
  br i1 %can_oom_reap.0.off0.ph131, label %if.then72, label %if.end73

if.then72.critedge:                               ; preds = %if.end5
  call fastcc void @rcu_read_unlock() #16
  br label %if.then72

if.then72:                                        ; preds = %if.then72.critedge, %for.end
  call fastcc void @wake_oom_reaper(%struct.task_struct* noundef %victim.addr.0) #16
  br label %if.end73

if.end73.critedge:                                ; preds = %if.then50
  call fastcc void @rcu_read_unlock() #16
  br label %if.end73

if.end73:                                         ; preds = %if.end73.critedge, %if.then72, %for.end
  call fastcc void @mmdrop(%struct.mm_struct* noundef %0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end
  %victim.addr.0.sink = phi %struct.task_struct* [ %victim.addr.0, %if.end73 ], [ %victim, %do.end ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef %victim.addr.0.sink) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @count_vm_event() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (i64* getelementptr inbounds (%struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 45) to i64)
  %0 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %0) #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_send_sig_info(i32 noundef, %struct.kernel_siginfo* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #12 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmdrop(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_count) #15
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void @__mmdrop(%struct.mm_struct* noundef %mm) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 1, i64* elementtype(i64) %0) #17, !srcloc !32
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #13 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #21, !srcloc !33
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #12 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(%struct.mm_struct* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @oom_evaluate_task(%struct.task_struct* noundef %task, i8* nocapture noundef %arg) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @oom_unkillable_task(%struct.task_struct* noundef %task) #16
  br i1 %call, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry
  %0 = bitcast i8* %arg to %struct.oom_control*
  %call5 = call fastcc i1 @is_sysrq_oom(%struct.oom_control* noundef %0) #16
  br i1 %call5, label %if.end12, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end4
  %call7 = call fastcc i1 @tsk_is_oom_victim(%struct.task_struct* noundef %task) #16
  br i1 %call7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %land.lhs.true6
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_mm = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 53
  %2 = load %struct.mm_struct*, %struct.mm_struct** %oom_mm, align 8
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 43
  %3 = load volatile i64, i64* %flags, align 8
  %4 = and i64 %3, 2097152
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %abort, label %cleanup

if.end12:                                         ; preds = %land.lhs.true6, %if.end4
  %call13 = call fastcc i1 @oom_task_origin(%struct.task_struct* noundef %task) #16
  br i1 %call13, label %select, label %if.end15

if.end15:                                         ; preds = %if.end12
  %totalpages = getelementptr inbounds i8, i8* %arg, i64 32
  %5 = bitcast i8* %totalpages to i64*
  %6 = load i64, i64* %5, align 8
  %call16 = call i64 @oom_badness(%struct.task_struct* noundef %task, i64 noundef %6) #16
  %cmp = icmp eq i64 %call16, -9223372036854775808
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %chosen_points = getelementptr inbounds i8, i8* %arg, i64 48
  %7 = bitcast i8* %chosen_points to i64*
  %8 = load i64, i64* %7, align 8
  %cmp17 = icmp slt i64 %call16, %8
  br i1 %cmp17, label %cleanup, label %select

select:                                           ; preds = %if.end12, %lor.lhs.false
  %points.0 = phi i64 [ %call16, %lor.lhs.false ], [ 9223372036854775807, %if.end12 ]
  %chosen = getelementptr inbounds i8, i8* %arg, i64 40
  %9 = bitcast i8* %chosen to %struct.task_struct**
  %10 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %tobool20.not = icmp eq %struct.task_struct* %10, null
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %select
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %10) #16
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %select
  call fastcc void @get_task_struct(%struct.task_struct* noundef %task) #16
  store %struct.task_struct* %task, %struct.task_struct** %9, align 8
  %chosen_points26 = getelementptr inbounds i8, i8* %arg, i64 48
  %11 = bitcast i8* %chosen_points26 to i64*
  store i64 %points.0, i64* %11, align 8
  br label %cleanup

abort:                                            ; preds = %if.then8
  %chosen27 = getelementptr inbounds i8, i8* %arg, i64 40
  %12 = bitcast i8* %chosen27 to %struct.task_struct**
  %13 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %tobool28.not = icmp eq %struct.task_struct* %13, null
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %abort
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %13) #16
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %abort
  store %struct.task_struct* inttoptr (i64 -1 to %struct.task_struct*), %struct.task_struct** %12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry, %if.then8, %lor.lhs.false, %if.end15, %if.end31
  %retval.0 = phi i32 [ 1, %if.end31 ], [ 0, %if.end15 ], [ 0, %lor.lhs.false ], [ 0, %if.then8 ], [ 0, %entry ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @tsk_is_oom_victim(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #2 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_mm = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 53
  %1 = load %struct.mm_struct*, %struct.mm_struct** %oom_mm, align 8
  %tobool = icmp ne %struct.mm_struct* %1, null
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @oom_task_origin(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_flag_origin = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 50
  %1 = load i8, i8* %oom_flag_origin, align 8, !range !34
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @should_dump_unreclaim_slab() unnamed_addr #3 {
entry:
  %call = call fastcc i64 @global_node_page_state(i32 noundef 1) #16
  %call1 = call fastcc i64 @global_node_page_state(i32 noundef 0) #16
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @global_node_page_state(i32 noundef 3) #16
  %add3 = add i64 %add, %call2
  %call4 = call fastcc i64 @global_node_page_state(i32 noundef 2) #16
  %add5 = add i64 %add3, %call4
  %call6 = call fastcc i64 @global_node_page_state(i32 noundef 7) #16
  %add7 = add i64 %add5, %call6
  %call8 = call fastcc i64 @global_node_page_state(i32 noundef 8) #16
  %add9 = add i64 %add7, %call8
  %call10 = call fastcc i64 @global_node_page_state(i32 noundef 4) #16
  %add11 = add i64 %add9, %call10
  %call12 = call fastcc i64 @global_node_page_state_pages(i32 noundef 6) #16
  %cmp = icmp ugt i64 %call12, %add11
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_unreclaimable_slab() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dump_tasks(%struct.oom_control* nocapture noundef readonly %oc) unnamed_addr #0 {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0)) #19
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.19, i64 0, i64 0)) #19
  %call5 = call fastcc i1 @is_memcg_oom(%struct.oom_control* noundef %oc) #16
  br i1 %call5, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  call fastcc void @__rcu_read_lock() #15
  %0 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr21 = getelementptr %struct.list_head, %struct.list_head* %0, i64 -42, i32 1
  %cmp.not22 = icmp eq %struct.list_head** %add.ptr21, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp.not22, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else
  %1 = bitcast %struct.oom_control* %oc to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %.in = phi %struct.list_head** [ %add.ptr21, %for.body.lr.ph ], [ %add.ptr, %for.body ]
  %2 = bitcast %struct.list_head** %.in to %struct.task_struct*
  %call14 = call fastcc i32 @dump_task(%struct.task_struct* noundef %2, i8* noundef %1) #16
  %3 = getelementptr inbounds %struct.list_head*, %struct.list_head** %.in, i64 83
  %4 = load volatile %struct.list_head*, %struct.list_head** %3, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %4, i64 -42, i32 1
  %cmp.not = icmp eq %struct.list_head** %add.ptr, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.else
  call fastcc void @rcu_read_unlock() #16
  br label %if.end

if.end:                                           ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dump_oom_summary(%struct.oom_control* nocapture noundef readonly %oc, %struct.task_struct* noundef %victim) unnamed_addr #0 {
entry:
  %constraint = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 8
  %0 = load i32, i32* %constraint, align 8
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @oom_constraint_text, i64 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  %nodemask = getelementptr inbounds %struct.oom_control, %struct.oom_control* %oc, i64 0, i32 1
  %2 = load %struct.nodemask_t*, %struct.nodemask_t** %nodemask, align 8
  %call = call fastcc i32 @__nodemask_pr_numnodes(%struct.nodemask_t* noundef %2) #16
  %call2 = call fastcc i64* @__nodemask_pr_bits(%struct.nodemask_t* noundef %2) #16
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* noundef %1, i32 noundef %call, i64* noundef %call2) #19
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %victim, i64 0, i32 81, i64 0
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %victim, i64 0, i32 50
  %3 = load i32, i32* %pid, align 32
  call fastcc void @__rcu_read_lock() #15
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %victim, i64 0, i32 79
  %4 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %4, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #16
  %coerce.val.ii = zext i32 %___val.sroa.0.0.copyload to i64
  %call14 = call fastcc i32 @from_kuid(i64 %coerce.val.ii) #16
  %call15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %3, i32 noundef %call14) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state(i32 noundef %item) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @global_node_page_state_pages(i32 noundef %item) #16
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @global_node_page_state_pages(i32 noundef %item) unnamed_addr #3 {
entry:
  %idxprom = zext i32 %item to i64
  %counter.i.i = getelementptr [38 x %struct.atomic64_t], [38 x %struct.atomic64_t]* @vm_node_stat, i64 0, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %1 = icmp sgt i64 %0, 0
  %spec.store.select = select i1 %1, i64 %0, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dump_task(%struct.task_struct* nocapture noundef readonly %p, i8* nocapture noundef readonly %arg) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @oom_unkillable_task(%struct.task_struct* noundef %p) #16
  br i1 %call, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry
  %call5 = call %struct.task_struct* @find_lock_task_mm(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq %struct.task_struct* %call5, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end4
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call5, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  call fastcc void @__rcu_read_lock() #15
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call5, i64 0, i32 79
  %1 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %1, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #16
  %coerce.val.ii = zext i32 %___val.sroa.0.0.copyload to i64
  %call16 = call fastcc i32 @from_kuid(i64 %coerce.val.ii) #16
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call5, i64 0, i32 51
  %2 = load i32, i32* %tgid, align 4
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call5, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 19
  %4 = load i64, i64* %total_vm, align 8
  %call18 = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %3) #16
  %5 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call20 = call fastcc i64 @mm_pgtables_bytes(%struct.mm_struct* noundef %5) #16
  %6 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call22 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %6, i32 noundef 2) #16
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call5, i64 0, i32 87
  %7 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 51
  %8 = load i16, i16* %oom_score_adj, align 2
  %conv = sext i16 %8 to i32
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call5, i64 0, i32 81, i64 0
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i32 noundef %0, i32 noundef %call16, i32 noundef %2, i64 noundef %4, i64 noundef %call18, i64 noundef %call20, i64 noundef %call22, i32 noundef %conv, i8* noundef %arraydecay) #19
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call5) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry, %do.end
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__nodemask_pr_numnodes(%struct.nodemask_t* noundef readnone %m) unnamed_addr #12 {
entry:
  %tobool.not = icmp ne %struct.nodemask_t* %m, null
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64* @__nodemask_pr_bits(%struct.nodemask_t* noundef readnone %m) unnamed_addr #12 {
entry:
  %arraydecay = getelementptr %struct.nodemask_t, %struct.nodemask_t* %m, i64 0, i32 0, i64 0
  ret i64* %arraydecay
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_process_mrelease(i32 noundef %pidfd, i32 noundef %flags) unnamed_addr #0 {
entry:
  %f_flags = alloca i32, align 4
  %0 = bitcast i32* %f_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %f_flags, align 4, !annotation !9
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call %struct.pid* @pidfd_get_pid(i32 noundef %pidfd, i32* noundef nonnull %f_flags) #15
  %1 = bitcast %struct.pid* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #16
  br i1 %call1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %1) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.task_struct* @get_pid_task(%struct.pid* noundef %call, i32 noundef 1) #15
  %tobool6.not = icmp eq %struct.task_struct* %call5, null
  br i1 %tobool6.not, label %put_pid, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = call %struct.task_struct* @find_lock_task_mm(%struct.task_struct* noundef nonnull %call5) #16
  %tobool10.not = icmp eq %struct.task_struct* %call9, null
  br i1 %tobool10.not, label %put_task, label %if.end12

if.end12:                                         ; preds = %if.end8
  %mm13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call9, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm13, align 8
  %call14 = call fastcc i1 @mmget_not_zero(%struct.mm_struct* noundef %2) #16
  br i1 %call14, label %if.then15, label %if.end25.thread

if.then15:                                        ; preds = %if.end12
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm13, align 8
  %call17 = call fastcc i1 @task_will_free_mem(%struct.task_struct* noundef nonnull %call9) #16
  br i1 %call17, label %if.end28, label %if.else

if.else:                                          ; preds = %if.then15
  %flags19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 43
  %4 = load volatile i64, i64* %flags19, align 8
  %5 = and i64 %4, 2097152
  %tobool21.not = icmp eq i64 %5, 0
  %spec.select = select i1 %tobool21.not, i64 -22, i64 0
  br label %if.end25.thread

if.end25.thread:                                  ; preds = %if.end12, %if.else
  %mm.0.ph = phi %struct.mm_struct* [ %3, %if.else ], [ null, %if.end12 ]
  %ret.0.ph = phi i64 [ %spec.select, %if.else ], [ 0, %if.end12 ]
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call9) #16
  br label %drop_mm

if.end28:                                         ; preds = %if.then15
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call9) #16
  %call29 = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %3) #16
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %drop_mm

if.end32:                                         ; preds = %if.end28
  %call33 = call i1 @__oom_reap_task_mm(%struct.mm_struct* noundef %3) #16
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %3) #16
  br label %drop_mm

drop_mm:                                          ; preds = %if.end25.thread, %if.end28, %if.end32
  %mm.067 = phi %struct.mm_struct* [ %3, %if.end32 ], [ %3, %if.end28 ], [ %mm.0.ph, %if.end25.thread ]
  %ret.2 = phi i64 [ 0, %if.end32 ], [ -4, %if.end28 ], [ %ret.0.ph, %if.end25.thread ]
  %tobool36.not = icmp eq %struct.mm_struct* %mm.067, null
  br i1 %tobool36.not, label %put_task, label %if.then37

if.then37:                                        ; preds = %drop_mm
  call void @mmput(%struct.mm_struct* noundef nonnull %mm.067) #15
  br label %put_task

put_task:                                         ; preds = %if.end8, %drop_mm, %if.then37
  %ret.3 = phi i64 [ %ret.2, %if.then37 ], [ %ret.2, %drop_mm ], [ -3, %if.end8 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call5) #16
  br label %put_pid

put_pid:                                          ; preds = %if.end4, %put_task
  %ret.4 = phi i64 [ %ret.3, %put_task ], [ -3, %if.end4 ]
  call void @put_pid(%struct.pid* noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %put_pid, %if.then2
  %retval.0 = phi i64 [ %call3, %if.then2 ], [ %ret.4, %put_pid ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @pidfd_get_pid(i32 noundef, i32* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #12 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @get_pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mmget_not_zero(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_users = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 10
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %mm_users, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i.i.i, align 4
  %1 = bitcast %struct.atomic_t* %mm_users to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %entry
  %c.0.i.i.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %atomic_inc_not_zero.exit, label %do.cond.i.i.i.i, !prof !8

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %c.0.i.i.i.i, 1
  %call11.i.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i.i.i, i32 noundef %add.i.i.i.i) #15
  %cmp.not.i.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, %call11.i.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %atomic_inc_not_zero.exit, label %do.body.i.i.i.i, !prof !15

atomic_inc_not_zero.exit:                         ; preds = %do.body.i.i.i.i, %do.cond.i.i.i.i
  %2 = xor i1 %cmp.i.i.i.i, true
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_read_killable(%struct.rw_semaphore* noundef %mmap_lock) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }
attributes #20 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #21 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 1483437}
!11 = !{i64 2155968072}
!12 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!13 = !{i64 2149411058}
!14 = !{i64 2149780178}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2147934521, i64 2147934554, i64 2147934607, i64 2147934666, i64 2147934700, i64 2147934755, i64 2147934784, i64 2147934804}
!17 = !{i64 2149791520}
!18 = !{i64 2149734307}
!19 = !{i64 2149411275}
!20 = !{i64 2147907739, i64 2147908250, i64 2147908280, i64 2147908306, i64 2147908338, i64 2147908367}
!21 = !{i64 2149939483}
!22 = !{i64 2147856405, i64 2147857079, i64 2147857109, i64 2147857141, i64 2147857175, i64 2147857211, i64 2147857236}
!23 = !{i64 2147918309, i64 2147918830, i64 2147918860, i64 2147918886, i64 2147918918, i64 2147918947}
!24 = !{i64 2147849232, i64 2147849880, i64 2147849910, i64 2147849942, i64 2147849976, i64 2147850012, i64 2147850037}
!25 = !{i64 2147908585, i64 2147909237, i64 2147909267, i64 2147909298, i64 2147909330, i64 2147909365, i64 2147909390}
!26 = !{i64 2147951729, i64 2147951762, i64 2147951814, i64 2147951873, i64 2147951907, i64 2147951963, i64 2147951992, i64 2147952019}
!27 = !{i64 2147953379, i64 2147953412, i64 2147953463, i64 2147953519, i64 2147953552, i64 2147953607, i64 2147953636, i64 2147953663}
!28 = !{i64 2147838659, i64 2147839175, i64 2147839205, i64 2147839232, i64 2147839266, i64 2147839296}
!29 = !{i64 2147844623, i64 2147845287, i64 2147845317, i64 2147845349, i64 2147845383, i64 2147845418, i64 2147845443}
!30 = !{i64 2152524674}
!31 = !{i64 2152525626}
!32 = !{i64 2149063617, i64 2149063658, i64 2149063714, i64 2149063766}
!33 = !{i64 2149037671, i64 2149037718, i64 2149037724, i64 2149037761, i64 2149037779, i64 2149038706, i64 2149038754, i64 2149038802, i64 2149038865, i64 2149038914, i64 2149037857, i64 2149037882, i64 2149037908, i64 2149037914, i64 2149037951, i64 2149037957, i64 2149038007, i64 2149038053, i64 2149038086}
!34 = !{i8 0, i8 2}
