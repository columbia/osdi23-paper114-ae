; ModuleID = 'kernel/sys.c'
source_filename = "kernel/sys.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.40, %struct.qspinlock }
%union.anon.40 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.79, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.9 }
%union.anon.9 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.11 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.12, [0 x i64] }
%struct.anon.12 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.13, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.13 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.14, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.15, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.14 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.15 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.16, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.84, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.34, %struct.list_head, %struct.list_head, %union.anon.35 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.19, i8* }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.24, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.24 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.25, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.25 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.kmem_cache = type opaque
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.26, %union.anon.27, %union.anon.28, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.33, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.26 = type { %struct.hlist_node }
%union.anon.27 = type { %struct.rb_node }
%union.anon.28 = type { %struct.anon.32 }
%struct.anon.32 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.33 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.30, %union.anon.31, i32 }
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
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
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.82 = type { %struct.callback_head }
%union.anon.83 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.36 }
%union.anon.36 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.37, %union.anon.38 }
%union.anon.37 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.38 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.42 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.42 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.84 = type { %struct.pipe_inode_info* }
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
%union.anon.57 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1, [48 x i8] }
%struct.anon.1 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.2, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.18, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.8 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.8 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type { %struct.user_namespace*, %struct.ucounts*, %struct.ns_common, %struct.timens_offsets, %struct.page*, i8 }
%struct.timens_offsets = type { %struct.timespec64, %struct.timespec64 }
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.76, %struct.anon.77, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.76 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.77 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.75, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.75 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.58 }
%struct.anon.58 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.62 }
%struct.anon.62 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.78, i32, [12 x i8] }
%union.anon.78 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.79 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.80, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.80 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.tms = type { i64, i64, i64, i64 }
%struct.rlimit64 = type { i64, i64 }
%struct.rusage = type { %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_old_timeval = type { i64, i64 }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.prctl_mm_map = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i32, i32 }

@overflowuid = dso_local local_unnamed_addr global i32 65534, align 4
@overflowgid = dso_local local_unnamed_addr global i32 65534, align 4
@fs_overflowuid = dso_local local_unnamed_addr global i32 65534, align 4
@fs_overflowgid = dso_local local_unnamed_addr global i32 65534, align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@uts_sem = dso_local global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @uts_sem to i8*), i64 24) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @uts_sem to i8*), i64 24) to %struct.list_head*) } }, align 8
@sysctl_nr_open = external dso_local local_unnamed_addr global i32, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@root_user = external dso_local global %struct.user_struct, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"5.15.0+\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"2.6.%u%s\00", align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@mmap_min_addr = external dso_local local_unnamed_addr global i64, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@nr_threads = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setpriority(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_setpriority(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setpriority(i64 noundef %which, i64 noundef %who, i64 noundef %niceval) unnamed_addr #0 {
entry:
  %conv = trunc i64 %which to i32
  %conv1 = trunc i64 %who to i32
  %conv2 = trunc i64 %niceval to i32
  %call = call fastcc i64 @__do_sys_setpriority(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getpriority(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_getpriority(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getpriority(i64 noundef %which, i64 noundef %who) unnamed_addr #0 {
entry:
  %conv = trunc i64 %which to i32
  %conv1 = trunc i64 %who to i32
  %call = call fastcc i64 @__do_sys_getpriority(i32 noundef %conv, i32 noundef %conv1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__sys_setregid(i32 noundef %rgid, i32 noundef %egid) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %rgid, -1
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %coerce.val.ii = zext i32 %rgid to i64
  %call7 = call fastcc i1 @gid_valid(i64 %coerce.val.ii) #11
  br i1 %call7, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp8.not = icmp eq i32 %egid, -1
  br i1 %cmp8.not, label %if.end14, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end
  %coerce.val.ii11 = zext i32 %egid to i64
  %call12 = call fastcc i1 @gid_valid(i64 %coerce.val.ii11) #11
  br i1 %call12, label %if.end14, label %cleanup

if.end14:                                         ; preds = %land.lhs.true9, %if.end
  %call15 = call %struct.cred* @prepare_creds() #12
  %tobool.not = icmp eq %struct.cred* %call15, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end14
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  br i1 %cmp.not, label %if.end38, label %if.then21

if.then21:                                        ; preds = %do.end
  %coerce.dive22 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %3 = load i32, i32* %coerce.dive22, align 8
  %coerce.val.ii23 = zext i32 %3 to i64
  %coerce.val.ii25 = zext i32 %rgid to i64
  %call26 = call fastcc i1 @gid_eq(i64 %coerce.val.ii23, i64 %coerce.val.ii25) #11
  br i1 %call26, label %if.end38.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %coerce.dive28 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 6, i32 0
  %4 = load i32, i32* %coerce.dive28, align 8
  %coerce.val.ii29 = zext i32 %4 to i64
  %call32 = call fastcc i1 @gid_eq(i64 %coerce.val.ii29, i64 %coerce.val.ii25) #11
  br i1 %call32, label %if.end38.thread, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %5 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call34 = call i1 @ns_capable_setid(%struct.user_namespace* noundef %5, i32 noundef 6) #12
  br i1 %call34, label %if.end38.thread, label %error

if.end38:                                         ; preds = %do.end
  br i1 %cmp8.not, label %if.end38.if.end81_crit_edge, label %if.then40

if.end38.if.end81_crit_edge:                      ; preds = %if.end38
  %.phi.trans.insert134 = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 6, i32 0
  %.pre135 = load i32, i32* %.phi.trans.insert134, align 8
  br label %if.end81

if.end38.thread:                                  ; preds = %if.then21, %lor.lhs.false, %lor.lhs.false33
  %krgid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 2, i32 0
  store i32 %rgid, i32* %krgid.sroa.0.0..sroa_idx, align 8
  br i1 %cmp8.not, label %if.end38.thread.if.then78_crit_edge, label %if.then40

if.end38.thread.if.then78_crit_edge:              ; preds = %if.end38.thread
  %.phi.trans.insert = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 6, i32 0
  %.pre = load i32, i32* %.phi.trans.insert, align 8
  br label %if.then78

if.then40:                                        ; preds = %if.end38.thread, %if.end38
  %coerce.dive42 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %6 = load i32, i32* %coerce.dive42, align 8
  %coerce.val.ii43 = zext i32 %6 to i64
  %coerce.val.ii45 = zext i32 %egid to i64
  %call46 = call fastcc i1 @gid_eq(i64 %coerce.val.ii43, i64 %coerce.val.ii45) #11
  br i1 %call46, label %if.end67.thread, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.then40
  %coerce.dive49 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 6, i32 0
  %7 = load i32, i32* %coerce.dive49, align 8
  %coerce.val.ii50 = zext i32 %7 to i64
  %call53 = call fastcc i1 @gid_eq(i64 %coerce.val.ii50, i64 %coerce.val.ii45) #11
  br i1 %call53, label %if.end67.thread, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false47
  %coerce.dive55 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 4, i32 0
  %8 = load i32, i32* %coerce.dive55, align 8
  %coerce.val.ii56 = zext i32 %8 to i64
  %call59 = call fastcc i1 @gid_eq(i64 %coerce.val.ii56, i64 %coerce.val.ii45) #11
  br i1 %call59, label %if.end67.thread, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false54
  %user_ns61 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %9 = load %struct.user_namespace*, %struct.user_namespace** %user_ns61, align 8
  %call62 = call i1 @ns_capable_setid(%struct.user_namespace* noundef %9, i32 noundef 6) #12
  br i1 %call62, label %if.end67.thread, label %error

if.end67.thread:                                  ; preds = %if.then40, %lor.lhs.false47, %lor.lhs.false54, %lor.lhs.false60
  %kegid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 6, i32 0
  store i32 %egid, i32* %kegid.sroa.0.0..sroa_idx, align 8
  br i1 %cmp.not, label %land.lhs.true71, label %if.then78

land.lhs.true71:                                  ; preds = %if.end67.thread
  %10 = load i32, i32* %coerce.dive42, align 8
  %coerce.val.ii76 = zext i32 %10 to i64
  %call77 = call fastcc i1 @gid_eq(i64 %coerce.val.ii45, i64 %coerce.val.ii76) #11
  br i1 %call77, label %if.end81, label %if.then78

if.then78:                                        ; preds = %if.end38.thread.if.then78_crit_edge, %if.end67.thread, %land.lhs.true71
  %11 = phi i32 [ %.pre, %if.end38.thread.if.then78_crit_edge ], [ %egid, %if.end67.thread ], [ %egid, %land.lhs.true71 ]
  %12 = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 4, i32 0
  store i32 %11, i32* %12, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end38.if.end81_crit_edge, %if.then78, %land.lhs.true71
  %13 = phi i32 [ %.pre135, %if.end38.if.end81_crit_edge ], [ %11, %if.then78 ], [ %egid, %land.lhs.true71 ]
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 8, i32 0
  store i32 %13, i32* %14, align 8
  %call87 = call i32 @commit_creds(%struct.cred* noundef nonnull %call15) #12
  %conv = sext i32 %call87 to i64
  br label %cleanup

error:                                            ; preds = %lor.lhs.false60, %lor.lhs.false33
  call void @abort_creds(%struct.cred* noundef nonnull %call15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true9, %land.lhs.true, %error, %if.end81
  %retval.0 = phi i64 [ -1, %error ], [ %conv, %if.end81 ], [ -22, %land.lhs.true ], [ -22, %land.lhs.true9 ], [ -12, %if.end14 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #11
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @prepare_creds() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable_setid(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(%struct.cred* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(%struct.cred* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setregid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_setregid(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setregid(i64 noundef %rgid, i64 noundef %egid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %rgid to i32
  %conv1 = trunc i64 %egid to i32
  %call = call fastcc i64 @__do_sys_setregid(i32 noundef %conv, i32 noundef %conv1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__sys_setgid(i32 noundef %gid) local_unnamed_addr #0 {
entry:
  %coerce.val.ii = zext i32 %gid to i64
  %call4 = call fastcc i1 @gid_valid(i64 %coerce.val.ii) #11
  br i1 %call4, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call %struct.cred* @prepare_creds() #12
  %tobool.not = icmp eq %struct.cred* %call5, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %3 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call10 = call i1 @ns_capable_setid(%struct.user_namespace* noundef %3, i32 noundef 6) #12
  br i1 %call10, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end
  %kgid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 8, i32 0
  store i32 %gid, i32* %kgid.sroa.0.0..sroa_idx, align 8
  %4 = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 4, i32 0
  store i32 %gid, i32* %4, align 8
  %5 = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 6, i32 0
  store i32 %gid, i32* %5, align 8
  %6 = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 2, i32 0
  br label %if.end30

if.else:                                          ; preds = %do.end
  %coerce.dive16 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %7 = load i32, i32* %coerce.dive16, align 8
  %coerce.val.ii17 = zext i32 %7 to i64
  %call18 = call fastcc i1 @gid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii17) #11
  br i1 %call18, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %coerce.dive22 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 4, i32 0
  %8 = load i32, i32* %coerce.dive22, align 8
  %coerce.val.ii23 = zext i32 %8 to i64
  %call24 = call fastcc i1 @gid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii23) #11
  br i1 %call24, label %if.then25, label %error

if.then25:                                        ; preds = %lor.lhs.false, %if.else
  %kgid.sroa.0.0..sroa_idx43 = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 8, i32 0
  store i32 %gid, i32* %kgid.sroa.0.0..sroa_idx43, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 6, i32 0
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.then11
  %.sink = phi i32* [ %9, %if.then25 ], [ %6, %if.then11 ]
  store i32 %gid, i32* %.sink, align 8
  %call34 = call i32 @commit_creds(%struct.cred* noundef nonnull %call5) #12
  %conv = sext i32 %call34 to i64
  br label %cleanup

error:                                            ; preds = %lor.lhs.false
  call void @abort_creds(%struct.cred* noundef nonnull %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %error, %if.end30
  %retval.0 = phi i64 [ -1, %error ], [ %conv, %if.end30 ], [ -22, %entry ], [ -12, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setgid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_setgid(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setgid(i64 noundef %gid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %gid to i32
  %call = call fastcc i64 @__do_sys_setgid(i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__sys_setreuid(i32 noundef %ruid, i32 noundef %euid) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %ruid, -1
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %coerce.val.ii = zext i32 %ruid to i64
  %call7 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #11
  br i1 %call7, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp8.not = icmp eq i32 %euid, -1
  br i1 %cmp8.not, label %if.end14, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end
  %coerce.val.ii11 = zext i32 %euid to i64
  %call12 = call fastcc i1 @uid_valid(i64 %coerce.val.ii11) #11
  br i1 %call12, label %if.end14, label %cleanup

if.end14:                                         ; preds = %land.lhs.true9, %if.end
  %call15 = call %struct.cred* @prepare_creds() #12
  %tobool.not = icmp eq %struct.cred* %call15, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end14
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  br i1 %cmp.not, label %if.end39, label %if.then21

if.then21:                                        ; preds = %do.end
  %kruid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 1, i32 0
  store i32 %ruid, i32* %kruid.sroa.0.0..sroa_idx, align 4
  %coerce.dive23 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %3 = load i32, i32* %coerce.dive23, align 4
  %coerce.val.ii24 = zext i32 %3 to i64
  %coerce.val.ii26 = zext i32 %ruid to i64
  %call27 = call fastcc i1 @uid_eq(i64 %coerce.val.ii24, i64 %coerce.val.ii26) #11
  br i1 %call27, label %if.end39, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.then21
  %coerce.dive30 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %4 = load i32, i32* %coerce.dive30, align 4
  %coerce.val.ii31 = zext i32 %4 to i64
  %call34 = call fastcc i1 @uid_eq(i64 %coerce.val.ii31, i64 %coerce.val.ii26) #11
  br i1 %call34, label %if.end39, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true28
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %5 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call36 = call i1 @ns_capable_setid(%struct.user_namespace* noundef %5, i32 noundef 7) #12
  br i1 %call36, label %if.end39, label %error

if.end39:                                         ; preds = %if.then21, %land.lhs.true28, %land.lhs.true35, %do.end
  br i1 %cmp8.not, label %if.end67, label %if.then41

if.then41:                                        ; preds = %if.end39
  %keuid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 5, i32 0
  store i32 %euid, i32* %keuid.sroa.0.0..sroa_idx, align 4
  %coerce.dive44 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %6 = load i32, i32* %coerce.dive44, align 4
  %coerce.val.ii45 = zext i32 %6 to i64
  %coerce.val.ii47 = zext i32 %euid to i64
  %call48 = call fastcc i1 @uid_eq(i64 %coerce.val.ii45, i64 %coerce.val.ii47) #11
  br i1 %call48, label %if.end67, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %if.then41
  %coerce.dive51 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %7 = load i32, i32* %coerce.dive51, align 4
  %coerce.val.ii52 = zext i32 %7 to i64
  %call55 = call fastcc i1 @uid_eq(i64 %coerce.val.ii52, i64 %coerce.val.ii47) #11
  br i1 %call55, label %if.end67, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true49
  %coerce.dive57 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 3, i32 0
  %8 = load i32, i32* %coerce.dive57, align 4
  %coerce.val.ii58 = zext i32 %8 to i64
  %call61 = call fastcc i1 @uid_eq(i64 %coerce.val.ii58, i64 %coerce.val.ii47) #11
  br i1 %call61, label %if.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true56
  %user_ns63 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %9 = load %struct.user_namespace*, %struct.user_namespace** %user_ns63, align 8
  %call64 = call i1 @ns_capable_setid(%struct.user_namespace* noundef %9, i32 noundef 7) #12
  br i1 %call64, label %if.end67, label %error

if.end67:                                         ; preds = %if.then41, %land.lhs.true49, %land.lhs.true56, %land.lhs.true62, %if.end39
  %coerce.dive70 = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 1, i32 0
  %10 = load i32, i32* %coerce.dive70, align 4
  %coerce.val.ii71 = zext i32 %10 to i64
  %coerce.dive72 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %11 = load i32, i32* %coerce.dive72, align 4
  %coerce.val.ii73 = zext i32 %11 to i64
  %call74 = call fastcc i1 @uid_eq(i64 %coerce.val.ii71, i64 %coerce.val.ii73) #11
  br i1 %call74, label %if.end80, label %if.then75

if.then75:                                        ; preds = %if.end67
  %call76 = call fastcc i32 @set_user(%struct.cred* noundef nonnull %call15) #11
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %error, label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end67
  br i1 %cmp.not, label %lor.lhs.false, label %if.then90

lor.lhs.false:                                    ; preds = %if.end80
  br i1 %cmp8.not, label %if.end93, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %lor.lhs.false
  %coerce.val.ii86 = zext i32 %euid to i64
  %12 = load i32, i32* %coerce.dive72, align 4
  %coerce.val.ii88 = zext i32 %12 to i64
  %call89 = call fastcc i1 @uid_eq(i64 %coerce.val.ii86, i64 %coerce.val.ii88) #11
  br i1 %call89, label %if.end93, label %if.then90

if.then90:                                        ; preds = %land.lhs.true83, %if.end80
  %13 = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 5, i32 0
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 3, i32 0
  %15 = load i32, i32* %13, align 4
  store i32 %15, i32* %14, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %land.lhs.true83, %lor.lhs.false
  %16 = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 5, i32 0
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %call15, i64 0, i32 7, i32 0
  %18 = load i32, i32* %16, align 4
  store i32 %18, i32* %17, align 4
  %call95 = call fastcc i32 @security_task_fix_setuid(%struct.cred* noundef nonnull %call15, %struct.cred* noundef %2, i32 noundef 2) #11
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %error, label %if.end98

if.end98:                                         ; preds = %if.end93
  %call99 = call i32 @set_cred_ucounts(%struct.cred* noundef nonnull %call15) #12
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %error, label %if.end102

if.end102:                                        ; preds = %if.end98
  %call103 = call i32 @commit_creds(%struct.cred* noundef nonnull %call15) #12
  %conv = sext i32 %call103 to i64
  br label %cleanup

error:                                            ; preds = %if.end98, %if.end93, %if.then75, %land.lhs.true62, %land.lhs.true35
  %retval1.0 = phi i32 [ %call95, %if.end93 ], [ %call99, %if.end98 ], [ %call76, %if.then75 ], [ -1, %land.lhs.true62 ], [ -1, %land.lhs.true35 ]
  call void @abort_creds(%struct.cred* noundef nonnull %call15) #12
  %conv104 = sext i32 %retval1.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true9, %land.lhs.true, %error, %if.end102
  %retval.0 = phi i64 [ %conv104, %error ], [ %conv, %if.end102 ], [ -22, %land.lhs.true ], [ -22, %land.lhs.true9 ], [ -12, %if.end14 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #11
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @set_user(%struct.cred* nocapture noundef %new) unnamed_addr #0 {
entry:
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 1, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call %struct.user_struct* @alloc_uid(i64 %coerce.val.ii) #12
  %tobool.not = icmp eq %struct.user_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ucounts = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 17
  %1 = load %struct.ucounts*, %struct.ucounts** %ucounts, align 8
  %call1 = call fastcc i64 @rlimit(i32 noundef 6) #11
  %call2 = call i1 @is_ucounts_overlimit(%struct.ucounts* noundef %1, i32 noundef 8, i64 noundef %call1) #12
  %cmp = icmp ne %struct.user_struct* %call, @root_user
  %or.cond = select i1 %call2, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %if.end
  %call4 = call i1 @capable(i32 noundef 24) #12
  br i1 %call4, label %if.else, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %call6 = call i1 @capable(i32 noundef 21) #12
  br i1 %call6, label %if.else, label %if.then7

if.then7:                                         ; preds = %land.lhs.true5
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 4
  %4 = load i32, i32* %flags, align 4
  %or = or i32 %4, 4096
  store i32 %or, i32* %flags, align 4
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %if.end
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %flags10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 4
  %7 = load i32, i32* %flags10, align 4
  %and = and i32 %7, -4097
  store i32 %and, i32* %flags10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %user = getelementptr inbounds %struct.cred, %struct.cred* %new, i64 0, i32 15
  %8 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  call void @free_uid(%struct.user_struct* noundef %8) #12
  store %struct.user_struct* %call, %struct.user_struct** %user, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -11, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_task_fix_setuid(%struct.cred* noundef %new, %struct.cred* noundef %old, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call i32 @cap_task_fix_setuid(%struct.cred* noundef %new, %struct.cred* noundef %old, i32 noundef %flags) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cred_ucounts(%struct.cred* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setreuid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_setreuid(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setreuid(i64 noundef %ruid, i64 noundef %euid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %ruid to i32
  %conv1 = trunc i64 %euid to i32
  %call = call fastcc i64 @__do_sys_setreuid(i32 noundef %conv, i32 noundef %conv1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__sys_setuid(i32 noundef %uid) local_unnamed_addr #0 {
entry:
  %coerce.val.ii = zext i32 %uid to i64
  %call4 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #11
  br i1 %call4, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call %struct.cred* @prepare_creds() #12
  %tobool.not = icmp eq %struct.cred* %call5, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %3 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call10 = call i1 @ns_capable_setid(%struct.user_namespace* noundef %3, i32 noundef 7) #12
  br i1 %call10, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end
  %kuid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 1, i32 0
  store i32 %uid, i32* %kuid.sroa.0.0..sroa_idx, align 4
  %4 = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 3, i32 0
  store i32 %uid, i32* %4, align 4
  %coerce.dive16 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %5 = load i32, i32* %coerce.dive16, align 4
  %coerce.val.ii17 = zext i32 %5 to i64
  %call18 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii17) #11
  br i1 %call18, label %if.end38, label %if.then19

if.then19:                                        ; preds = %if.then11
  %call20 = call fastcc i32 @set_user(%struct.cred* noundef nonnull %call5) #11
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %error, label %if.end38

if.else:                                          ; preds = %do.end
  %coerce.dive27 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %6 = load i32, i32* %coerce.dive27, align 4
  %coerce.val.ii28 = zext i32 %6 to i64
  %call29 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii28) #11
  br i1 %call29, label %if.end38, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %coerce.dive33 = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 3, i32 0
  %7 = load i32, i32* %coerce.dive33, align 4
  %coerce.val.ii34 = zext i32 %7 to i64
  %call35 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii34) #11
  br i1 %call35, label %if.end38, label %error

if.end38:                                         ; preds = %if.else, %land.lhs.true, %if.then11, %if.then19
  %kuid.sroa.0.0..sroa_idx57 = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 5, i32 0
  store i32 %uid, i32* %kuid.sroa.0.0..sroa_idx57, align 4
  %8 = getelementptr inbounds %struct.cred, %struct.cred* %call5, i64 0, i32 7, i32 0
  store i32 %uid, i32* %8, align 4
  %call39 = call fastcc i32 @security_task_fix_setuid(%struct.cred* noundef nonnull %call5, %struct.cred* noundef %2, i32 noundef 1) #11
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %error, label %if.end42

if.end42:                                         ; preds = %if.end38
  %call43 = call i32 @set_cred_ucounts(%struct.cred* noundef nonnull %call5) #12
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %error, label %if.end46

if.end46:                                         ; preds = %if.end42
  %call47 = call i32 @commit_creds(%struct.cred* noundef nonnull %call5) #12
  %conv = sext i32 %call47 to i64
  br label %cleanup

error:                                            ; preds = %if.end42, %if.end38, %land.lhs.true, %if.then19
  %retval1.0 = phi i32 [ %call39, %if.end38 ], [ %call43, %if.end42 ], [ %call20, %if.then19 ], [ -1, %land.lhs.true ]
  call void @abort_creds(%struct.cred* noundef nonnull %call5) #12
  %conv48 = sext i32 %retval1.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %error, %if.end46
  %retval.0 = phi i64 [ %conv48, %error ], [ %conv, %if.end46 ], [ -22, %entry ], [ -12, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setuid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_setuid(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setuid(i64 noundef %uid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %uid to i32
  %call = call fastcc i64 @__do_sys_setuid(i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__sys_setresuid(i32 noundef %ruid, i32 noundef %euid, i32 noundef %suid) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %ruid, -1
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %coerce.val.ii = zext i32 %ruid to i64
  %call10 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #11
  br i1 %call10, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp11.not = icmp eq i32 %euid, -1
  br i1 %cmp11.not, label %if.end17, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end
  %coerce.val.ii14 = zext i32 %euid to i64
  %call15 = call fastcc i1 @uid_valid(i64 %coerce.val.ii14) #11
  br i1 %call15, label %if.end17, label %cleanup

if.end17:                                         ; preds = %land.lhs.true12, %if.end
  %cmp18.not = icmp eq i32 %suid, -1
  br i1 %cmp18.not, label %if.end24, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end17
  %coerce.val.ii21 = zext i32 %suid to i64
  %call22 = call fastcc i1 @uid_valid(i64 %coerce.val.ii21) #11
  br i1 %call22, label %if.end24, label %cleanup

if.end24:                                         ; preds = %land.lhs.true19, %if.end17
  %call25 = call %struct.cred* @prepare_creds() #12
  %tobool.not = icmp eq %struct.cred* %call25, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end24
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %3 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call30 = call i1 @ns_capable_setid(%struct.user_namespace* noundef %3, i32 noundef 7) #12
  br i1 %call30, label %if.end103, label %if.then31

if.then31:                                        ; preds = %do.end
  br i1 %cmp.not, label %if.end54, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.then31
  %coerce.val.ii35 = zext i32 %ruid to i64
  %coerce.dive36 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %4 = load i32, i32* %coerce.dive36, align 4
  %coerce.val.ii37 = zext i32 %4 to i64
  %call38 = call fastcc i1 @uid_eq(i64 %coerce.val.ii35, i64 %coerce.val.ii37) #11
  br i1 %call38, label %if.end54, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true33
  %coerce.dive43 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %5 = load i32, i32* %coerce.dive43, align 4
  %coerce.val.ii44 = zext i32 %5 to i64
  %call45 = call fastcc i1 @uid_eq(i64 %coerce.val.ii35, i64 %coerce.val.ii44) #11
  br i1 %call45, label %if.end54, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true39
  %coerce.dive50 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 3, i32 0
  %6 = load i32, i32* %coerce.dive50, align 4
  %coerce.val.ii51 = zext i32 %6 to i64
  %call52 = call fastcc i1 @uid_eq(i64 %coerce.val.ii35, i64 %coerce.val.ii51) #11
  br i1 %call52, label %if.end54, label %error

if.end54:                                         ; preds = %land.lhs.true46, %land.lhs.true39, %land.lhs.true33, %if.then31
  br i1 %cmp11.not, label %if.end78, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end54
  %coerce.val.ii59 = zext i32 %euid to i64
  %coerce.dive60 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %7 = load i32, i32* %coerce.dive60, align 4
  %coerce.val.ii61 = zext i32 %7 to i64
  %call62 = call fastcc i1 @uid_eq(i64 %coerce.val.ii59, i64 %coerce.val.ii61) #11
  br i1 %call62, label %if.end78, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true56
  %coerce.dive67 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %8 = load i32, i32* %coerce.dive67, align 4
  %coerce.val.ii68 = zext i32 %8 to i64
  %call69 = call fastcc i1 @uid_eq(i64 %coerce.val.ii59, i64 %coerce.val.ii68) #11
  br i1 %call69, label %if.end78, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %land.lhs.true63
  %coerce.dive74 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 3, i32 0
  %9 = load i32, i32* %coerce.dive74, align 4
  %coerce.val.ii75 = zext i32 %9 to i64
  %call76 = call fastcc i1 @uid_eq(i64 %coerce.val.ii59, i64 %coerce.val.ii75) #11
  br i1 %call76, label %if.end78, label %error

if.end78:                                         ; preds = %land.lhs.true70, %land.lhs.true63, %land.lhs.true56, %if.end54
  br i1 %cmp18.not, label %if.end103, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %if.end78
  %coerce.val.ii83 = zext i32 %suid to i64
  %coerce.dive84 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %10 = load i32, i32* %coerce.dive84, align 4
  %coerce.val.ii85 = zext i32 %10 to i64
  %call86 = call fastcc i1 @uid_eq(i64 %coerce.val.ii83, i64 %coerce.val.ii85) #11
  br i1 %call86, label %if.end103, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %land.lhs.true80
  %coerce.dive91 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %11 = load i32, i32* %coerce.dive91, align 4
  %coerce.val.ii92 = zext i32 %11 to i64
  %call93 = call fastcc i1 @uid_eq(i64 %coerce.val.ii83, i64 %coerce.val.ii92) #11
  br i1 %call93, label %if.end103, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %land.lhs.true87
  %coerce.dive98 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 3, i32 0
  %12 = load i32, i32* %coerce.dive98, align 4
  %coerce.val.ii99 = zext i32 %12 to i64
  %call100 = call fastcc i1 @uid_eq(i64 %coerce.val.ii83, i64 %coerce.val.ii99) #11
  br i1 %call100, label %if.end103, label %error

if.end103:                                        ; preds = %if.end78, %land.lhs.true80, %land.lhs.true87, %land.lhs.true94, %do.end
  br i1 %cmp.not, label %if.end119, label %if.then105

if.then105:                                       ; preds = %if.end103
  %kruid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call25, i64 0, i32 1, i32 0
  store i32 %ruid, i32* %kruid.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii109 = zext i32 %ruid to i64
  %coerce.dive110 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %13 = load i32, i32* %coerce.dive110, align 4
  %coerce.val.ii111 = zext i32 %13 to i64
  %call112 = call fastcc i1 @uid_eq(i64 %coerce.val.ii109, i64 %coerce.val.ii111) #11
  br i1 %call112, label %if.end119, label %if.then113

if.then113:                                       ; preds = %if.then105
  %call114 = call fastcc i32 @set_user(%struct.cred* noundef nonnull %call25) #11
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %error, label %if.end119

if.end119:                                        ; preds = %if.then105, %if.then113, %if.end103
  br i1 %cmp11.not, label %if.end123, label %if.then121

if.then121:                                       ; preds = %if.end119
  %keuid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call25, i64 0, i32 5, i32 0
  store i32 %euid, i32* %keuid.sroa.0.0..sroa_idx, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end119
  br i1 %cmp18.not, label %if.end127, label %if.then125

if.then125:                                       ; preds = %if.end123
  %ksuid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call25, i64 0, i32 3, i32 0
  store i32 %suid, i32* %ksuid.sroa.0.0..sroa_idx, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end123
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %call25, i64 0, i32 5, i32 0
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %call25, i64 0, i32 7, i32 0
  %16 = load i32, i32* %14, align 4
  store i32 %16, i32* %15, align 4
  %call129 = call fastcc i32 @security_task_fix_setuid(%struct.cred* noundef nonnull %call25, %struct.cred* noundef %2, i32 noundef 4) #11
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %error, label %if.end132

if.end132:                                        ; preds = %if.end127
  %call133 = call i32 @set_cred_ucounts(%struct.cred* noundef nonnull %call25) #12
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %error, label %if.end136

if.end136:                                        ; preds = %if.end132
  %call137 = call i32 @commit_creds(%struct.cred* noundef nonnull %call25) #12
  %conv = sext i32 %call137 to i64
  br label %cleanup

error:                                            ; preds = %if.end132, %if.end127, %if.then113, %land.lhs.true94, %land.lhs.true70, %land.lhs.true46
  %retval1.0 = phi i32 [ %call129, %if.end127 ], [ %call133, %if.end132 ], [ %call114, %if.then113 ], [ -1, %land.lhs.true94 ], [ -1, %land.lhs.true70 ], [ -1, %land.lhs.true46 ]
  call void @abort_creds(%struct.cred* noundef nonnull %call25) #12
  %conv138 = sext i32 %retval1.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %land.lhs.true19, %land.lhs.true12, %land.lhs.true, %error, %if.end136
  %retval.0 = phi i64 [ %conv138, %error ], [ %conv, %if.end136 ], [ -22, %land.lhs.true ], [ -22, %land.lhs.true12 ], [ -22, %land.lhs.true19 ], [ -12, %if.end24 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setresuid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_setresuid(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setresuid(i64 noundef %ruid, i64 noundef %euid, i64 noundef %suid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %ruid to i32
  %conv1 = trunc i64 %euid to i32
  %conv2 = trunc i64 %suid to i32
  %call = call fastcc i64 @__do_sys_setresuid(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getresuid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_getresuid(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getresuid(i64 noundef %ruidp, i64 noundef %euidp, i64 noundef %suidp) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %ruidp to i32*
  %1 = inttoptr i64 %euidp to i32*
  %2 = inttoptr i64 %suidp to i32*
  %call = call fastcc i64 @__do_sys_getresuid(i32* noundef %0, i32* noundef %1, i32* noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__sys_setresgid(i32 noundef %rgid, i32 noundef %egid, i32 noundef %sgid) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %rgid, -1
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %coerce.val.ii = zext i32 %rgid to i64
  %call10 = call fastcc i1 @gid_valid(i64 %coerce.val.ii) #11
  br i1 %call10, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp11.not = icmp eq i32 %egid, -1
  br i1 %cmp11.not, label %if.end17, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end
  %coerce.val.ii14 = zext i32 %egid to i64
  %call15 = call fastcc i1 @gid_valid(i64 %coerce.val.ii14) #11
  br i1 %call15, label %if.end17, label %cleanup

if.end17:                                         ; preds = %land.lhs.true12, %if.end
  %cmp18.not = icmp eq i32 %sgid, -1
  br i1 %cmp18.not, label %if.end24, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end17
  %coerce.val.ii21 = zext i32 %sgid to i64
  %call22 = call fastcc i1 @gid_valid(i64 %coerce.val.ii21) #11
  br i1 %call22, label %if.end24, label %cleanup

if.end24:                                         ; preds = %land.lhs.true19, %if.end17
  %call25 = call %struct.cred* @prepare_creds() #12
  %tobool.not = icmp eq %struct.cred* %call25, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end24
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %3 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call30 = call i1 @ns_capable_setid(%struct.user_namespace* noundef %3, i32 noundef 6) #12
  br i1 %call30, label %if.end103, label %if.then31

if.then31:                                        ; preds = %do.end
  br i1 %cmp.not, label %if.end54, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.then31
  %coerce.val.ii35 = zext i32 %rgid to i64
  %coerce.dive36 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %4 = load i32, i32* %coerce.dive36, align 8
  %coerce.val.ii37 = zext i32 %4 to i64
  %call38 = call fastcc i1 @gid_eq(i64 %coerce.val.ii35, i64 %coerce.val.ii37) #11
  br i1 %call38, label %if.end54, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true33
  %coerce.dive43 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 6, i32 0
  %5 = load i32, i32* %coerce.dive43, align 8
  %coerce.val.ii44 = zext i32 %5 to i64
  %call45 = call fastcc i1 @gid_eq(i64 %coerce.val.ii35, i64 %coerce.val.ii44) #11
  br i1 %call45, label %if.end54, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true39
  %coerce.dive50 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 4, i32 0
  %6 = load i32, i32* %coerce.dive50, align 8
  %coerce.val.ii51 = zext i32 %6 to i64
  %call52 = call fastcc i1 @gid_eq(i64 %coerce.val.ii35, i64 %coerce.val.ii51) #11
  br i1 %call52, label %if.end54, label %error

if.end54:                                         ; preds = %land.lhs.true46, %land.lhs.true39, %land.lhs.true33, %if.then31
  br i1 %cmp11.not, label %if.end78, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end54
  %coerce.val.ii59 = zext i32 %egid to i64
  %coerce.dive60 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %7 = load i32, i32* %coerce.dive60, align 8
  %coerce.val.ii61 = zext i32 %7 to i64
  %call62 = call fastcc i1 @gid_eq(i64 %coerce.val.ii59, i64 %coerce.val.ii61) #11
  br i1 %call62, label %if.end78, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true56
  %coerce.dive67 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 6, i32 0
  %8 = load i32, i32* %coerce.dive67, align 8
  %coerce.val.ii68 = zext i32 %8 to i64
  %call69 = call fastcc i1 @gid_eq(i64 %coerce.val.ii59, i64 %coerce.val.ii68) #11
  br i1 %call69, label %if.end78, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %land.lhs.true63
  %coerce.dive74 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 4, i32 0
  %9 = load i32, i32* %coerce.dive74, align 8
  %coerce.val.ii75 = zext i32 %9 to i64
  %call76 = call fastcc i1 @gid_eq(i64 %coerce.val.ii59, i64 %coerce.val.ii75) #11
  br i1 %call76, label %if.end78, label %error

if.end78:                                         ; preds = %land.lhs.true70, %land.lhs.true63, %land.lhs.true56, %if.end54
  br i1 %cmp18.not, label %if.end103, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %if.end78
  %coerce.val.ii83 = zext i32 %sgid to i64
  %coerce.dive84 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %10 = load i32, i32* %coerce.dive84, align 8
  %coerce.val.ii85 = zext i32 %10 to i64
  %call86 = call fastcc i1 @gid_eq(i64 %coerce.val.ii83, i64 %coerce.val.ii85) #11
  br i1 %call86, label %if.end103, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %land.lhs.true80
  %coerce.dive91 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 6, i32 0
  %11 = load i32, i32* %coerce.dive91, align 8
  %coerce.val.ii92 = zext i32 %11 to i64
  %call93 = call fastcc i1 @gid_eq(i64 %coerce.val.ii83, i64 %coerce.val.ii92) #11
  br i1 %call93, label %if.end103, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %land.lhs.true87
  %coerce.dive98 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 4, i32 0
  %12 = load i32, i32* %coerce.dive98, align 8
  %coerce.val.ii99 = zext i32 %12 to i64
  %call100 = call fastcc i1 @gid_eq(i64 %coerce.val.ii83, i64 %coerce.val.ii99) #11
  br i1 %call100, label %if.end103, label %error

if.end103:                                        ; preds = %if.end78, %land.lhs.true80, %land.lhs.true87, %land.lhs.true94, %do.end
  br i1 %cmp.not, label %if.end107, label %if.then105

if.then105:                                       ; preds = %if.end103
  %krgid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call25, i64 0, i32 2, i32 0
  store i32 %rgid, i32* %krgid.sroa.0.0..sroa_idx, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end103
  br i1 %cmp11.not, label %if.end111, label %if.then109

if.then109:                                       ; preds = %if.end107
  %kegid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call25, i64 0, i32 6, i32 0
  store i32 %egid, i32* %kegid.sroa.0.0..sroa_idx, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end107
  br i1 %cmp18.not, label %if.end115, label %if.then113

if.then113:                                       ; preds = %if.end111
  %ksgid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call25, i64 0, i32 4, i32 0
  store i32 %sgid, i32* %ksgid.sroa.0.0..sroa_idx, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end111
  %13 = getelementptr inbounds %struct.cred, %struct.cred* %call25, i64 0, i32 6, i32 0
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %call25, i64 0, i32 8, i32 0
  %15 = load i32, i32* %13, align 8
  store i32 %15, i32* %14, align 8
  %call121 = call i32 @commit_creds(%struct.cred* noundef nonnull %call25) #12
  %conv = sext i32 %call121 to i64
  br label %cleanup

error:                                            ; preds = %land.lhs.true94, %land.lhs.true70, %land.lhs.true46
  call void @abort_creds(%struct.cred* noundef nonnull %call25) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %land.lhs.true19, %land.lhs.true12, %land.lhs.true, %error, %if.end115
  %retval.0 = phi i64 [ -1, %error ], [ %conv, %if.end115 ], [ -22, %land.lhs.true ], [ -22, %land.lhs.true12 ], [ -22, %land.lhs.true19 ], [ -12, %if.end24 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setresgid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_setresgid(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setresgid(i64 noundef %rgid, i64 noundef %egid, i64 noundef %sgid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %rgid to i32
  %conv1 = trunc i64 %egid to i32
  %conv2 = trunc i64 %sgid to i32
  %call = call fastcc i64 @__do_sys_setresgid(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getresgid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_getresgid(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getresgid(i64 noundef %rgidp, i64 noundef %egidp, i64 noundef %sgidp) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %rgidp to i32*
  %1 = inttoptr i64 %egidp to i32*
  %2 = inttoptr i64 %sgidp to i32*
  %call = call fastcc i64 @__do_sys_getresgid(i32* noundef %0, i32* noundef %1, i32* noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__sys_setfsuid(i32 noundef %uid) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 7, i32 0
  %3 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %3 to i64
  %call1 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #11
  %coerce.val.ii7 = zext i32 %uid to i64
  %call8 = call fastcc i1 @uid_valid(i64 %coerce.val.ii7) #11
  br i1 %call8, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call9 = call %struct.cred* @prepare_creds() #12
  %tobool.not = icmp eq %struct.cred* %call9, null
  br i1 %tobool.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %coerce.dive16 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %4 = load i32, i32* %coerce.dive16, align 4
  %coerce.val.ii17 = zext i32 %4 to i64
  %call18 = call fastcc i1 @uid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii17) #11
  br i1 %call18, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %coerce.dive22 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %5 = load i32, i32* %coerce.dive22, align 4
  %coerce.val.ii23 = zext i32 %5 to i64
  %call24 = call fastcc i1 @uid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii23) #11
  br i1 %call24, label %if.then45, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %coerce.dive29 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 3, i32 0
  %6 = load i32, i32* %coerce.dive29, align 4
  %coerce.val.ii30 = zext i32 %6 to i64
  %call31 = call fastcc i1 @uid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii30) #11
  br i1 %call31, label %if.then45, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false26
  %7 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii38 = zext i32 %7 to i64
  %call39 = call fastcc i1 @uid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii38) #11
  br i1 %call39, label %if.then45, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false33
  %8 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call43 = call i1 @ns_capable_setid(%struct.user_namespace* noundef %8, i32 noundef 7) #12
  br i1 %call43, label %if.then45, label %if.end59

if.then45:                                        ; preds = %lor.lhs.false41, %lor.lhs.false33, %lor.lhs.false26, %lor.lhs.false, %if.end12
  %9 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii50 = zext i32 %9 to i64
  %call51 = call fastcc i1 @uid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii50) #11
  br i1 %call51, label %if.end59, label %if.then52

if.then52:                                        ; preds = %if.then45
  %kuid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call9, i64 0, i32 7, i32 0
  store i32 %uid, i32* %kuid.sroa.0.0..sroa_idx, align 4
  %call54 = call fastcc i32 @security_task_fix_setuid(%struct.cred* noundef nonnull %call9, %struct.cred* noundef %2, i32 noundef 8) #11
  %cmp = icmp eq i32 %call54, 0
  br i1 %cmp, label %change_okay, label %if.end59

if.end59:                                         ; preds = %if.then45, %if.then52, %lor.lhs.false41
  call void @abort_creds(%struct.cred* noundef nonnull %call9) #12
  br label %cleanup

change_okay:                                      ; preds = %if.then52
  %call61 = call i32 @commit_creds(%struct.cred* noundef nonnull %call9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %change_okay, %if.end59
  %retval.0 = zext i32 %call1 to i64
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kuid_munged(i64 %kuid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #11
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowuid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setfsuid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_setfsuid(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setfsuid(i64 noundef %uid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %uid to i32
  %call = call fastcc i64 @__do_sys_setfsuid(i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__sys_setfsgid(i32 noundef %gid) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 8, i32 0
  %3 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %3 to i64
  %call1 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii) #11
  %coerce.val.ii7 = zext i32 %gid to i64
  %call8 = call fastcc i1 @gid_valid(i64 %coerce.val.ii7) #11
  br i1 %call8, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call9 = call %struct.cred* @prepare_creds() #12
  %tobool.not = icmp eq %struct.cred* %call9, null
  br i1 %tobool.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %coerce.dive16 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %4 = load i32, i32* %coerce.dive16, align 8
  %coerce.val.ii17 = zext i32 %4 to i64
  %call18 = call fastcc i1 @gid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii17) #11
  br i1 %call18, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %coerce.dive22 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 6, i32 0
  %5 = load i32, i32* %coerce.dive22, align 8
  %coerce.val.ii23 = zext i32 %5 to i64
  %call24 = call fastcc i1 @gid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii23) #11
  br i1 %call24, label %if.then45, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %coerce.dive29 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 4, i32 0
  %6 = load i32, i32* %coerce.dive29, align 8
  %coerce.val.ii30 = zext i32 %6 to i64
  %call31 = call fastcc i1 @gid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii30) #11
  br i1 %call31, label %if.then45, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false26
  %7 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii38 = zext i32 %7 to i64
  %call39 = call fastcc i1 @gid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii38) #11
  br i1 %call39, label %if.then45, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false33
  %8 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call43 = call i1 @ns_capable_setid(%struct.user_namespace* noundef %8, i32 noundef 6) #12
  br i1 %call43, label %if.then45, label %if.end59

if.then45:                                        ; preds = %lor.lhs.false41, %lor.lhs.false33, %lor.lhs.false26, %lor.lhs.false, %if.end12
  %9 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii50 = zext i32 %9 to i64
  %call51 = call fastcc i1 @gid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii50) #11
  br i1 %call51, label %if.end59, label %if.then52

if.then52:                                        ; preds = %if.then45
  %kgid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call9, i64 0, i32 8, i32 0
  store i32 %gid, i32* %kgid.sroa.0.0..sroa_idx, align 8
  %call61 = call i32 @commit_creds(%struct.cred* noundef nonnull %call9) #12
  br label %cleanup

if.end59:                                         ; preds = %if.then45, %lor.lhs.false41
  call void @abort_creds(%struct.cred* noundef nonnull %call9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then52, %if.end59
  %retval.0 = zext i32 %call1 to i64
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kgid_munged(i64 %kgid.coerce) unnamed_addr #6 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @from_kgid(i64 %coerce.val.ii2) #11
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowgid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setfsgid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_setfsgid(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setfsgid(i64 noundef %gid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %gid to i32
  %call = call fastcc i64 @__do_sys_setfsgid(i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getpid(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %1) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 1, %struct.pid_namespace* noundef null) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_gettid(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %1) #11
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getppid(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 52
  %2 = load volatile %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %call5 = call fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %2) #11
  call fastcc void @rcu_read_unlock() #11
  %conv = sext i32 %call5 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #11
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i64 @__arm64_sys_getuid(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #7 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call2 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #11
  %conv = zext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i64 @__arm64_sys_geteuid(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #7 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call2 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #11
  %conv = zext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i64 @__arm64_sys_getgid(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #7 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 8
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call2 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii) #11
  %conv = zext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i64 @__arm64_sys_getegid(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #7 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 6, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 8
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call2 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii) #11
  %conv = zext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_times(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_times(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_times(i64 noundef %tbuf) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %tbuf to %struct.tms*
  %call = call fastcc i64 @__do_sys_times(%struct.tms* noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setpgid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_setpgid(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setpgid(i64 noundef %pid, i64 noundef %pgid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %conv1 = trunc i64 %pgid to i32
  %call = call fastcc i64 @__do_sys_setpgid(i32 noundef %conv, i32 noundef %conv1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getpgid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_getpgid(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getpgid(i64 noundef %pid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %call = call fastcc i64 @__do_sys_getpgid(i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getsid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_getsid(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getsid(i64 noundef %pid) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %call = call fastcc i64 @__do_sys_getsid(i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ksys_setsid() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %group_leader1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 56
  %2 = load %struct.task_struct*, %struct.task_struct** %group_leader1, align 8
  %call2 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %2) #11
  %call3 = call i32 @pid_vnr(%struct.pid* noundef %call2) #12
  call fastcc void @__raw_write_lock_irq() #11
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %leader = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 23
  %4 = load i32, i32* %leader, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.end11

if.end:                                           ; preds = %entry
  %call4 = call %struct.task_struct* @pid_task(%struct.pid* noundef %call2, i32 noundef 2) #12
  %tobool5.not = icmp eq %struct.task_struct* %call4, null
  br i1 %tobool5.not, label %out, label %if.end11

out:                                              ; preds = %if.end
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %leader9 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 23
  store i32 1, i32* %leader9, align 8
  call fastcc void @set_special_pids(%struct.pid* noundef %call2) #11
  call void @proc_clear_tty(%struct.task_struct* noundef %2) #12
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry, %out
  %err.026 = phi i32 [ %call3, %out ], [ -1, %entry ], [ -1, %if.end ]
  call fastcc void @__raw_write_unlock_irq() #11
  ret i32 %err.026
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #6 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  ret %struct.pid* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(%struct.pid* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  call fastcc void @queued_write_lock() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_special_pids(%struct.pid* noundef %pid) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 56
  %2 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  %call1 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %2) #11
  %cmp.not = icmp eq %struct.pid* %call1, %pid
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @change_pid(%struct.task_struct* noundef %2, i32 noundef 3, %struct.pid* noundef %pid) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %2) #11
  %cmp3.not = icmp eq %struct.pid* %call2, %pid
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @change_pid(%struct.task_struct* noundef %2, i32 noundef 2, %struct.pid* noundef %pid) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_clear_tty(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @queued_write_unlock() #11
  call fastcc void @arch_local_irq_enable() #11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setsid(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  %call = call i32 @ksys_setsid() #11
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_newuname(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_newuname(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_newuname(i64 noundef %name) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %name to %struct.new_utsname*
  %call = call fastcc i64 @__do_sys_newuname(%struct.new_utsname* noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sethostname(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_sethostname(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sethostname(i64 noundef %name, i64 noundef %len) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %name to i8*
  %conv = trunc i64 %len to i32
  %call = call fastcc i64 @__do_sys_sethostname(i8* noundef %0, i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setdomainname(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_setdomainname(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setdomainname(i64 noundef %name, i64 noundef %len) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %name to i8*
  %conv = trunc i64 %len to i32
  %call = call fastcc i64 @__do_sys_setdomainname(i8* noundef %0, i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getrlimit(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_getrlimit(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getrlimit(i64 noundef %resource, i64 noundef %rlim) unnamed_addr #0 {
entry:
  %conv = trunc i64 %resource to i32
  %0 = inttoptr i64 %rlim to %struct.rlimit*
  %call = call fastcc i64 @__do_sys_getrlimit(i32 noundef %conv, %struct.rlimit* noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_prlimit(%struct.task_struct* noundef %tsk, i32 noundef %resource, %struct.rlimit* noundef readonly %new_rlim, %struct.rlimit* noundef writeonly %old_rlim) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %resource, 15
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool = icmp ne %struct.rlimit* %new_rlim, null
  br i1 %tobool, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %new_rlim, i64 0, i32 0
  %0 = load i64, i64* %rlim_cur, align 8
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %new_rlim, i64 0, i32 1
  %1 = load i64, i64* %rlim_max, align 8
  %cmp3 = icmp ugt i64 %0, %1
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then2
  %cmp6 = icmp eq i32 %resource, 7
  %2 = load i32, i32* @sysctl_nr_open, align 4
  %conv = zext i32 %2 to i64
  %cmp8 = icmp ugt i64 %1, %conv
  %or.cond85 = select i1 %cmp6, i1 %cmp8, i1 false
  br i1 %or.cond85, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end5, %if.end
  call fastcc void @__raw_read_lock() #11
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %tobool13.not = icmp eq %struct.sighand_struct* %3, null
  br i1 %tobool13.not, label %out, label %if.end15

if.end15:                                         ; preds = %if.end12
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idx.ext = zext i32 %resource to i64
  %add.ptr = getelementptr %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 49, i64 %idx.ext
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 56
  %5 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  call fastcc void @task_lock(%struct.task_struct* noundef %5) #11
  br i1 %tobool, label %if.then18, label %if.then32

if.then18:                                        ; preds = %if.end15
  %rlim_max19 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %new_rlim, i64 0, i32 1
  %6 = load i64, i64* %rlim_max19, align 8
  %rlim_max20 = getelementptr %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 49, i64 %idx.ext, i32 1
  %7 = load i64, i64* %rlim_max20, align 8
  %cmp21 = icmp ugt i64 %6, %7
  br i1 %cmp21, label %land.lhs.true23, label %if.then32

land.lhs.true23:                                  ; preds = %if.then18
  %call = call i1 @capable(i32 noundef 24) #12
  br i1 %call, label %if.then32, label %if.end39

if.then32:                                        ; preds = %land.lhs.true23, %if.then18, %if.end15
  %tobool33.not = icmp eq %struct.rlimit* %old_rlim, null
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.then32
  %8 = bitcast %struct.rlimit* %old_rlim to i8*
  %9 = bitcast %struct.rlimit* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %8, i8* noundef align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then32
  br i1 %tobool, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %10 = bitcast %struct.rlimit* %add.ptr to i8*
  %11 = bitcast %struct.rlimit* %new_rlim to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %10, i8* noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false)
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true23, %if.end35, %if.then37
  %retval1.190 = phi i32 [ 0, %if.end35 ], [ 0, %if.then37 ], [ -1, %land.lhs.true23 ]
  %tobool31.not88 = phi i1 [ true, %if.end35 ], [ true, %if.then37 ], [ false, %land.lhs.true23 ]
  %12 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  call fastcc void @task_unlock(%struct.task_struct* noundef %12) #11
  %or.cond = and i1 %tobool, %tobool31.not88
  %cmp45 = icmp eq i32 %resource, 0
  %or.cond55 = and i1 %cmp45, %or.cond
  br i1 %or.cond55, label %land.lhs.true47, label %out

land.lhs.true47:                                  ; preds = %if.end39
  %rlim_cur48 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %new_rlim, i64 0, i32 0
  %13 = load i64, i64* %rlim_cur48, align 8
  %cmp49.not = icmp eq i64 %13, -1
  br i1 %cmp49.not, label %out, label %if.then51

if.then51:                                        ; preds = %land.lhs.true47
  call void @update_rlimit_cpu(%struct.task_struct* noundef %tsk, i64 noundef %13) #12
  br label %out

out:                                              ; preds = %if.end12, %if.end39, %land.lhs.true47, %if.then51
  %retval1.2 = phi i32 [ 0, %if.then51 ], [ 0, %land.lhs.true47 ], [ %retval1.190, %if.end39 ], [ -3, %if.end12 ]
  call fastcc void @__raw_read_unlock() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2, %entry, %out
  %retval.0 = phi i32 [ %retval1.2, %out ], [ -22, %entry ], [ -22, %if.then2 ], [ -1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  call fastcc void @queued_read_lock() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rlimit_cpu(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_read_unlock() #11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_prlimit64(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_prlimit64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_prlimit64(i64 noundef %pid, i64 noundef %resource, i64 noundef %new_rlim, i64 noundef %old_rlim) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %conv1 = trunc i64 %resource to i32
  %0 = inttoptr i64 %new_rlim to %struct.rlimit64*
  %1 = inttoptr i64 %old_rlim to %struct.rlimit64*
  %call = call fastcc i64 @__do_sys_prlimit64(i32 noundef %conv, i32 noundef %conv1, %struct.rlimit64* noundef %0, %struct.rlimit64* noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_setrlimit(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_setrlimit(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_setrlimit(i64 noundef %resource, i64 noundef %rlim) unnamed_addr #0 {
entry:
  %conv = trunc i64 %resource to i32
  %0 = inttoptr i64 %rlim to %struct.rlimit*
  %call = call fastcc i64 @__do_sys_setrlimit(i32 noundef %conv, %struct.rlimit* noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @getrusage(%struct.task_struct* noundef %p, i32 noundef %who, %struct.rusage* noundef %r) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %tgutime = alloca i64, align 8
  %tgstime = alloca i64, align 8
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %maxrss = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %flags, align 8, !annotation !13
  %1 = bitcast i64* %tgutime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %tgutime, align 8, !annotation !13
  %2 = bitcast i64* %tgstime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store i64 0, i64* %tgstime, align 8, !annotation !13
  %3 = bitcast i64* %utime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  %4 = bitcast i64* %stime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #14
  %5 = bitcast i64* %maxrss to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #14
  %6 = bitcast %struct.rusage* %r to i8*
  %call = call i8* @memset(i8* noundef %6, i32 noundef 0, i64 noundef 144) #12
  store i64 0, i64* %stime, align 8
  store i64 0, i64* %utime, align 8
  %cmp = icmp eq i32 %who, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %8 = inttoptr i64 %7 to %struct.task_struct*
  call void @task_cputime_adjusted(%struct.task_struct* noundef %8, i64* noundef nonnull %utime, i64* noundef nonnull %stime) #12
  call fastcc void @accumulate_thread_rusage(%struct.task_struct* noundef %p, %struct.rusage* noundef %r) #11
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %9 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %maxrss2 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i64 0, i32 45
  %10 = load i64, i64* %maxrss2, align 8
  store i64 %10, i64* %maxrss, align 8
  %.pre = load i64, i64* %utime, align 8
  br label %out

if.end:                                           ; preds = %entry
  %call3 = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %p, i64* noundef nonnull %flags) #11
  %tobool.not = icmp eq %struct.sighand_struct* %call3, null
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  switch i32 %who, label %do.body47 [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb
    i32 0, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end5, %if.end5
  %signal6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %11 = load %struct.signal_struct*, %struct.signal_struct** %signal6, align 8
  %cutime = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %11, i64 0, i32 28
  %12 = load i64, i64* %cutime, align 8
  store i64 %12, i64* %utime, align 8
  %cstime = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %11, i64 0, i32 29
  %13 = load i64, i64* %cstime, align 8
  store i64 %13, i64* %stime, align 8
  %cnvcsw = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %11, i64 0, i32 35
  %14 = load i64, i64* %cnvcsw, align 8
  %ru_nvcsw = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 14
  store i64 %14, i64* %ru_nvcsw, align 8
  %15 = load %struct.signal_struct*, %struct.signal_struct** %signal6, align 8
  %cnivcsw = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %15, i64 0, i32 36
  %16 = load i64, i64* %cnivcsw, align 8
  %ru_nivcsw = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 15
  store i64 %16, i64* %ru_nivcsw, align 8
  %17 = load %struct.signal_struct*, %struct.signal_struct** %signal6, align 8
  %cmin_flt = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %17, i64 0, i32 39
  %18 = load i64, i64* %cmin_flt, align 8
  %ru_minflt = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 6
  store i64 %18, i64* %ru_minflt, align 8
  %19 = load %struct.signal_struct*, %struct.signal_struct** %signal6, align 8
  %cmaj_flt = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %19, i64 0, i32 40
  %20 = load i64, i64* %cmaj_flt, align 8
  %ru_majflt = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 7
  store i64 %20, i64* %ru_majflt, align 8
  %21 = load %struct.signal_struct*, %struct.signal_struct** %signal6, align 8
  %cinblock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %21, i64 0, i32 43
  %22 = load i64, i64* %cinblock, align 8
  %ru_inblock = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 9
  store i64 %22, i64* %ru_inblock, align 8
  %23 = load %struct.signal_struct*, %struct.signal_struct** %signal6, align 8
  %coublock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %23, i64 0, i32 44
  %24 = load i64, i64* %coublock, align 8
  %ru_oublock = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 10
  store i64 %24, i64* %ru_oublock, align 8
  %25 = load %struct.signal_struct*, %struct.signal_struct** %signal6, align 8
  %cmaxrss = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %25, i64 0, i32 46
  %26 = load i64, i64* %cmaxrss, align 8
  store i64 %26, i64* %maxrss, align 8
  %cmp15 = icmp eq i32 %who, -1
  br i1 %cmp15, label %sw.epilog, label %sw.bb18

sw.bb18:                                          ; preds = %sw.bb, %if.end5
  %27 = phi i64 [ %26, %sw.bb ], [ 0, %if.end5 ]
  %28 = phi i64 [ %13, %sw.bb ], [ 0, %if.end5 ]
  %29 = phi i64 [ %12, %sw.bb ], [ 0, %if.end5 ]
  call void @thread_group_cputime_adjusted(%struct.task_struct* noundef %p, i64* noundef nonnull %tgutime, i64* noundef nonnull %tgstime) #12
  %30 = load i64, i64* %tgutime, align 8
  %add = add i64 %29, %30
  store i64 %add, i64* %utime, align 8
  %31 = load i64, i64* %tgstime, align 8
  %add19 = add i64 %28, %31
  store i64 %add19, i64* %stime, align 8
  %signal20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %32 = load %struct.signal_struct*, %struct.signal_struct** %signal20, align 8
  %nvcsw = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %32, i64 0, i32 33
  %33 = load i64, i64* %nvcsw, align 8
  %ru_nvcsw21 = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 14
  %34 = load i64, i64* %ru_nvcsw21, align 8
  %add22 = add i64 %34, %33
  store i64 %add22, i64* %ru_nvcsw21, align 8
  %35 = load %struct.signal_struct*, %struct.signal_struct** %signal20, align 8
  %nivcsw = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %35, i64 0, i32 34
  %36 = load i64, i64* %nivcsw, align 8
  %ru_nivcsw24 = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 15
  %37 = load i64, i64* %ru_nivcsw24, align 8
  %add25 = add i64 %37, %36
  store i64 %add25, i64* %ru_nivcsw24, align 8
  %38 = load %struct.signal_struct*, %struct.signal_struct** %signal20, align 8
  %min_flt = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %38, i64 0, i32 37
  %39 = load i64, i64* %min_flt, align 8
  %ru_minflt27 = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 6
  %40 = load i64, i64* %ru_minflt27, align 8
  %add28 = add i64 %40, %39
  store i64 %add28, i64* %ru_minflt27, align 8
  %41 = load %struct.signal_struct*, %struct.signal_struct** %signal20, align 8
  %maj_flt = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %41, i64 0, i32 38
  %42 = load i64, i64* %maj_flt, align 8
  %ru_majflt30 = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 7
  %43 = load i64, i64* %ru_majflt30, align 8
  %add31 = add i64 %43, %42
  store i64 %add31, i64* %ru_majflt30, align 8
  %44 = load %struct.signal_struct*, %struct.signal_struct** %signal20, align 8
  %inblock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %44, i64 0, i32 41
  %45 = load i64, i64* %inblock, align 8
  %ru_inblock33 = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 9
  %46 = load i64, i64* %ru_inblock33, align 8
  %add34 = add i64 %46, %45
  store i64 %add34, i64* %ru_inblock33, align 8
  %47 = load %struct.signal_struct*, %struct.signal_struct** %signal20, align 8
  %oublock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %47, i64 0, i32 42
  %48 = load i64, i64* %oublock, align 8
  %ru_oublock36 = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 10
  %49 = load i64, i64* %ru_oublock36, align 8
  %add37 = add i64 %49, %48
  store i64 %add37, i64* %ru_oublock36, align 8
  %50 = load %struct.signal_struct*, %struct.signal_struct** %signal20, align 8
  %maxrss39 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %50, i64 0, i32 45
  %51 = load i64, i64* %maxrss39, align 8
  %cmp40 = icmp ult i64 %27, %51
  %spec.store.select = select i1 %cmp40, i64 %51, i64 %27
  store i64 %spec.store.select, i64* %maxrss, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %sw.bb18
  %t.0 = phi %struct.task_struct* [ %p, %sw.bb18 ], [ %call45, %do.body ]
  call fastcc void @accumulate_thread_rusage(%struct.task_struct* noundef %t.0, %struct.rusage* noundef %r) #11
  %call45 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %t.0) #11
  %cmp46.not = icmp eq %struct.task_struct* %call45, %p
  br i1 %cmp46.not, label %sw.epilog, label %do.body

do.body47:                                        ; preds = %if.end5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/sys.c\22; .popsection; .long 14472b - 14470b; .short 1796; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !14
  unreachable

sw.epilog:                                        ; preds = %do.body, %sw.bb
  %52 = phi i64 [ %26, %sw.bb ], [ %spec.store.select, %do.body ]
  %53 = phi i64 [ %12, %sw.bb ], [ %add, %do.body ]
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %p, i64* noundef nonnull %flags) #11
  br label %out

out:                                              ; preds = %sw.epilog, %if.then
  %54 = phi i64 [ %52, %sw.epilog ], [ %10, %if.then ]
  %55 = phi i64 [ %53, %sw.epilog ], [ %.pre, %if.then ]
  %call53 = call [2 x i64] @ns_to_kernel_old_timeval(i64 noundef %55) #12
  %call53.fca.0.extract = extractvalue [2 x i64] %call53, 0
  %call53.fca.1.extract = extractvalue [2 x i64] %call53, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 0, i32 0
  store i64 %call53.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx76 = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 0, i32 1
  store i64 %call53.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx76, align 8
  %56 = load i64, i64* %stime, align 8
  %call55 = call [2 x i64] @ns_to_kernel_old_timeval(i64 noundef %56) #12
  %call55.fca.0.extract = extractvalue [2 x i64] %call55, 0
  %call55.fca.1.extract = extractvalue [2 x i64] %call55, 1
  %tmp54.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 1, i32 0
  store i64 %call55.fca.0.extract, i64* %tmp54.sroa.0.0..sroa_idx, align 8
  %tmp54.sroa.4.0..sroa_idx73 = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 1, i32 1
  store i64 %call55.fca.1.extract, i64* %tmp54.sroa.4.0..sroa_idx73, align 8
  %cmp56.not = icmp eq i32 %who, -1
  br i1 %cmp56.not, label %if.end62, label %if.then57

if.then57:                                        ; preds = %out
  %call58 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef %p) #12
  %tobool59.not = icmp eq %struct.mm_struct* %call58, null
  br i1 %tobool59.not, label %if.end62, label %if.then60

if.then60:                                        ; preds = %if.then57
  call fastcc void @setmax_mm_hiwater_rss(i64* noundef nonnull %maxrss, %struct.mm_struct* noundef nonnull %call58) #11
  call void @mmput(%struct.mm_struct* noundef nonnull %call58) #12
  %.pre124 = load i64, i64* %maxrss, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.then60, %out
  %57 = phi i64 [ %54, %if.then57 ], [ %.pre124, %if.then60 ], [ %54, %out ]
  %mul = shl i64 %57, 2
  %ru_maxrss = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 2
  store i64 %mul, i64* %ru_maxrss, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end62
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_cputime_adjusted(%struct.task_struct* noundef, i64* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @accumulate_thread_rusage(%struct.task_struct* nocapture noundef readonly %t, %struct.rusage* nocapture noundef %r) unnamed_addr #8 {
entry:
  %nvcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 71
  %0 = load i64, i64* %nvcsw, align 8
  %ru_nvcsw = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 14
  %1 = load i64, i64* %ru_nvcsw, align 8
  %add = add i64 %1, %0
  store i64 %add, i64* %ru_nvcsw, align 8
  %nivcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 72
  %2 = load i64, i64* %nivcsw, align 64
  %ru_nivcsw = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 15
  %3 = load i64, i64* %ru_nivcsw, align 8
  %add1 = add i64 %3, %2
  store i64 %add1, i64* %ru_nivcsw, align 8
  %min_flt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 75
  %4 = load i64, i64* %min_flt, align 8
  %ru_minflt = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 6
  %5 = load i64, i64* %ru_minflt, align 8
  %add2 = add i64 %5, %4
  store i64 %add2, i64* %ru_minflt, align 8
  %maj_flt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 76
  %6 = load i64, i64* %maj_flt, align 32
  %ru_majflt = getelementptr inbounds %struct.rusage, %struct.rusage* %r, i64 0, i32 7
  %7 = load i64, i64* %ru_majflt, align 8
  %add3 = add i64 %7, %6
  store i64 %add3, i64* %ru_majflt, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) #12
  ret %struct.sighand_struct* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime_adjusted(%struct.task_struct* noundef, i64* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %0, i64 -69, i32 1
  %1 = bitcast %struct.list_head** %add.ptr to %struct.task_struct*
  ret %struct.task_struct* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_task_sighand(%struct.task_struct* nocapture noundef readonly %task, i64* nocapture noundef readonly %flags) unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %1 = load i64, i64* %flags, align 8
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @ns_to_kernel_old_timeval(i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @setmax_mm_hiwater_rss(i64* nocapture noundef %maxrss, %struct.mm_struct* noundef %mm) unnamed_addr #9 {
entry:
  %call = call fastcc i64 @get_mm_hiwater_rss(%struct.mm_struct* noundef %mm) #11
  %0 = load i64, i64* %maxrss, align 8
  %cmp = icmp ult i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %call, i64* %maxrss, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getrusage(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_getrusage(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getrusage(i64 noundef %who, i64 noundef %ru) unnamed_addr #0 {
entry:
  %conv = trunc i64 %who to i32
  %0 = inttoptr i64 %ru to %struct.rusage*
  %call = call fastcc i64 @__do_sys_getrusage(i32 noundef %conv, %struct.rusage* noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_umask(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_umask(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_umask(i64 noundef %mask) unnamed_addr #0 {
entry:
  %conv = trunc i64 %mask to i32
  %call = call fastcc i64 @__do_sys_umask(i32 noundef %conv) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @arch_prctl_spec_ctrl_get(%struct.task_struct* noundef %t, i64 noundef %which) local_unnamed_addr #0 {
entry:
  ret i32 -22
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @arch_prctl_spec_ctrl_set(%struct.task_struct* noundef %t, i64 noundef %which, i64 noundef %ctrl) local_unnamed_addr #0 {
entry:
  ret i32 -22
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_prctl(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %call = call fastcc i64 @__se_sys_prctl(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_prctl(i64 noundef %option, i64 noundef %arg2, i64 noundef %arg3, i64 noundef %arg4, i64 noundef %arg5) unnamed_addr #0 {
entry:
  %conv = trunc i64 %option to i32
  %call = call fastcc i64 @__do_sys_prctl(i32 noundef %conv, i64 noundef %arg2, i64 noundef %arg3, i64 noundef %arg4, i64 noundef %arg5) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_getcpu(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_getcpu(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_getcpu(i64 noundef %cpup, i64 noundef %nodep, i64 noundef %unused) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %cpup to i32*
  %1 = inttoptr i64 %nodep to i32*
  %call = call fastcc i64 @__do_sys_getcpu(i32* noundef %0, i32* noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sysinfo(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_sysinfo(i64 noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sysinfo(i64 noundef %info) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %info to %struct.sysinfo*
  %call = call fastcc i64 @__do_sys_sysinfo(%struct.sysinfo* noundef %0) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setpriority(i32 noundef %which, i32 noundef %who, i32 noundef %niceval) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %3 = icmp ugt i32 %which, 2
  br i1 %3, label %out, label %if.end

if.end:                                           ; preds = %entry
  %4 = icmp sgt i32 %niceval, -20
  %spec.store.select = select i1 %4, i32 %niceval, i32 -20
  %5 = icmp slt i32 %spec.store.select, 19
  %spec.store.select165 = select i1 %5, i32 %spec.store.select, i32 19
  call fastcc void @__rcu_read_lock() #12
  call fastcc void @__raw_read_lock() #11
  switch i32 %which, label %out_unlock [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb94
  ]

sw.bb:                                            ; preds = %if.end
  %tobool.not = icmp eq i32 %who, 0
  br i1 %tobool.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %sw.bb
  %call10 = call %struct.task_struct* @find_task_by_vpid(i32 noundef %who) #12
  br label %if.end12

if.end12:                                         ; preds = %sw.bb, %if.then9
  %p.0 = phi %struct.task_struct* [ %call10, %if.then9 ], [ %1, %sw.bb ]
  %tobool13.not = icmp eq %struct.task_struct* %p.0, null
  br i1 %tobool13.not, label %out_unlock, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = call fastcc i32 @set_one_prio(%struct.task_struct* noundef nonnull %p.0, i32 noundef %spec.store.select165, i32 noundef -3) #11
  br label %out_unlock

sw.bb17:                                          ; preds = %if.end
  %tobool18.not = icmp eq i32 %who, 0
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %sw.bb17
  %call20 = call %struct.pid* @find_vpid(i32 noundef %who) #12
  br label %do.body25

if.else21:                                        ; preds = %sw.bb17
  %call23 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %1) #11
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %if.else21
  %pgrp.0 = phi %struct.pid* [ %call20, %if.then19 ], [ %call23, %if.else21 ]
  %cmp26.not = icmp eq %struct.pid* %pgrp.0, null
  br i1 %cmp26.not, label %out_unlock, label %if.then27

if.then27:                                        ; preds = %do.body25
  %first = getelementptr %struct.pid, %struct.pid* %pgrp.0, i64 0, i32 3, i64 2, i32 0
  %6 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool34.not = icmp eq %struct.hlist_node* %6, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %6, i64 -67, i32 1
  %tobool39.not243247 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool39.not243 = or i1 %tobool34.not, %tobool39.not243247
  br i1 %tobool39.not243, label %out_unlock, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then27
  %7 = bitcast %struct.hlist_node*** %add.ptr to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.end
  %p.1245 = phi %struct.task_struct* [ %spec.select230, %for.end ], [ %7, %for.body.preheader ]
  %error.0244 = phi i32 [ %error.1.lcssa, %for.end ], [ -3, %for.body.preheader ]
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.1245, i64 0, i32 87
  %8 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %next = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i64 0, i32 3, i32 0
  %.pn234 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %p.2.in235 = getelementptr %struct.list_head, %struct.list_head* %.pn234, i64 -70, i32 1
  %thread_node236 = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.2.in235, i64 139
  %9 = bitcast %struct.list_head** %thread_node236 to %struct.list_head*
  %thread_head52237 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i64 0, i32 3
  %cmp53.not238 = icmp eq %struct.list_head* %thread_head52237, %9
  br i1 %cmp53.not238, label %for.end, label %for.body54

for.body54:                                       ; preds = %for.body, %for.body54
  %thread_node241 = phi %struct.list_head** [ %thread_node, %for.body54 ], [ %thread_node236, %for.body ]
  %p.2.in240 = phi %struct.list_head** [ %p.2.in, %for.body54 ], [ %p.2.in235, %for.body ]
  %error.1239 = phi i32 [ %call55, %for.body54 ], [ %error.0244, %for.body ]
  %p.2 = bitcast %struct.list_head** %p.2.in240 to %struct.task_struct*
  %call55 = call fastcc i32 @set_one_prio(%struct.task_struct* noundef %p.2, i32 noundef %spec.store.select165, i32 noundef %error.1239) #11
  %.pn = load volatile %struct.list_head*, %struct.list_head** %thread_node241, align 8
  %p.2.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.2.in, i64 139
  %10 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %11 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %thread_head52 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %11, i64 0, i32 3
  %cmp53.not = icmp eq %struct.list_head* %thread_head52, %10
  br i1 %cmp53.not, label %for.end, label %for.body54

for.end:                                          ; preds = %for.body54, %for.body
  %error.1.lcssa = phi i32 [ %error.0244, %for.body ], [ %call55, %for.body54 ]
  %next76 = getelementptr %struct.task_struct, %struct.task_struct* %p.1245, i64 0, i32 60, i64 2, i32 0
  %12 = load volatile %struct.hlist_node*, %struct.hlist_node** %next76, align 8
  %tobool79.not = icmp eq %struct.hlist_node* %12, null
  %add.ptr86 = getelementptr %struct.hlist_node, %struct.hlist_node* %12, i64 -67, i32 1
  %13 = bitcast %struct.hlist_node*** %add.ptr86 to %struct.task_struct*
  %spec.select230 = select i1 %tobool79.not, %struct.task_struct* null, %struct.task_struct* %13
  %tobool39.not = icmp eq %struct.task_struct* %spec.select230, null
  br i1 %tobool39.not, label %out_unlock, label %for.body

sw.bb94:                                          ; preds = %if.end
  %user97 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 15
  %14 = load %struct.user_struct*, %struct.user_struct** %user97, align 8
  %tobool98.not = icmp eq i32 %who, 0
  br i1 %tobool98.not, label %if.then99, label %if.else101

if.then99:                                        ; preds = %sw.bb94
  %uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %uid.sroa.0.0.copyload = load i32, i32* %uid.sroa.0.0..sroa_idx, align 4
  br label %if.end115

if.else101:                                       ; preds = %sw.bb94
  %coerce.val.ii = zext i32 %who to i64
  %coerce.dive104 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %15 = load i32, i32* %coerce.dive104, align 4
  %coerce.val.ii105 = zext i32 %15 to i64
  %call106 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii105) #11
  br i1 %call106, label %if.end115, label %if.then107

if.then107:                                       ; preds = %if.else101
  %call110 = call %struct.user_struct* @find_user(i64 %coerce.val.ii) #12
  %tobool111.not = icmp eq %struct.user_struct* %call110, null
  br i1 %tobool111.not, label %out_unlock, label %if.end115

if.end115:                                        ; preds = %if.else101, %if.then107, %if.then99
  %uid.sroa.0.0 = phi i32 [ %who, %if.else101 ], [ %who, %if.then107 ], [ %uid.sroa.0.0.copyload, %if.then99 ]
  %user.0 = phi %struct.user_struct* [ %14, %if.else101 ], [ %call110, %if.then107 ], [ %14, %if.then99 ]
  %16 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr128231 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -42, i32 1
  %cmp129.not232 = icmp eq %struct.list_head** %add.ptr128231, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  %.pre = zext i32 %uid.sroa.0.0 to i64
  br i1 %cmp129.not232, label %for.end156, label %do.body131.preheader

for.cond116.loopexit:                             ; preds = %do.cond152
  %17 = getelementptr inbounds %struct.list_head*, %struct.list_head** %.in, i64 83
  %18 = load volatile %struct.list_head*, %struct.list_head** %17, align 8
  %add.ptr128 = getelementptr %struct.list_head, %struct.list_head* %18, i64 -42, i32 1
  %cmp129.not = icmp eq %struct.list_head** %add.ptr128, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp129.not, label %for.end156, label %do.body131.preheader

do.body131.preheader:                             ; preds = %if.end115, %for.cond116.loopexit
  %.in = phi %struct.list_head** [ %add.ptr128, %for.cond116.loopexit ], [ %add.ptr128231, %if.end115 ]
  %error.2233 = phi i32 [ %error.4, %for.cond116.loopexit ], [ -3, %if.end115 ]
  %19 = bitcast %struct.list_head** %.in to %struct.task_struct*
  br label %do.body131

do.body131:                                       ; preds = %do.body131.preheader, %do.cond152
  %error.3 = phi i32 [ %error.4, %do.cond152 ], [ %error.2233, %do.body131.preheader ]
  %p.3 = phi %struct.task_struct* [ %call153, %do.cond152 ], [ %19, %do.body131.preheader ]
  call fastcc void @__rcu_read_lock() #12
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.3, i64 0, i32 79
  %20 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %20, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #11
  %coerce.val.ii143 = zext i32 %___val.sroa.0.0.copyload to i64
  %call146 = call fastcc i1 @uid_eq(i64 %coerce.val.ii143, i64 %.pre) #11
  br i1 %call146, label %land.lhs.true, label %do.cond152

land.lhs.true:                                    ; preds = %do.body131
  %call147 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %p.3) #11
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %do.cond152, label %if.then149

if.then149:                                       ; preds = %land.lhs.true
  %call150 = call fastcc i32 @set_one_prio(%struct.task_struct* noundef %p.3, i32 noundef %spec.store.select165, i32 noundef %error.3) #11
  br label %do.cond152

do.cond152:                                       ; preds = %do.body131, %land.lhs.true, %if.then149
  %error.4 = phi i32 [ %call150, %if.then149 ], [ %error.3, %land.lhs.true ], [ %error.3, %do.body131 ]
  %call153 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p.3) #11
  %cmp154.not = icmp eq %struct.task_struct* %call153, %19
  br i1 %cmp154.not, label %for.cond116.loopexit, label %do.body131

for.end156:                                       ; preds = %for.cond116.loopexit, %if.end115
  %error.2.lcssa = phi i32 [ -3, %if.end115 ], [ %error.4, %for.cond116.loopexit ]
  %coerce.dive160 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %21 = load i32, i32* %coerce.dive160, align 4
  %coerce.val.ii161 = zext i32 %21 to i64
  %call162 = call fastcc i1 @uid_eq(i64 %.pre, i64 %coerce.val.ii161) #11
  br i1 %call162, label %out_unlock, label %if.then163

if.then163:                                       ; preds = %for.end156
  call void @free_uid(%struct.user_struct* noundef %user.0) #12
  br label %out_unlock

out_unlock:                                       ; preds = %for.end, %if.then27, %if.end, %if.then14, %if.end12, %do.body25, %if.then163, %for.end156, %if.then107
  %error.5 = phi i32 [ -3, %if.end ], [ %error.2.lcssa, %for.end156 ], [ %error.2.lcssa, %if.then163 ], [ -3, %if.then107 ], [ -3, %do.body25 ], [ %call15, %if.then14 ], [ -3, %if.end12 ], [ -3, %if.then27 ], [ %error.1.lcssa, %for.end ]
  call fastcc void @__raw_read_unlock() #11
  call fastcc void @rcu_read_unlock() #11
  br label %out

out:                                              ; preds = %entry, %out_unlock
  %error.6 = phi i32 [ -22, %entry ], [ %error.5, %out_unlock ]
  %conv = sext i32 %error.6 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_task_by_vpid(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @set_one_prio(%struct.task_struct* noundef %p, i32 noundef %niceval, i32 noundef %error) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @set_one_prio_perm(%struct.task_struct* noundef %p) #11
  br i1 %call, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @task_nice(%struct.task_struct* noundef %p) #11
  %cmp = icmp sgt i32 %call1, %niceval
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %call2 = call i32 @can_nice(%struct.task_struct* noundef %p, i32 noundef %niceval) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %out, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %call5 = call fastcc i32 @security_task_setnice(%struct.task_struct* noundef %p, i32 noundef %niceval) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %out

if.end8:                                          ; preds = %if.end4
  %cmp9 = icmp eq i32 %error, -3
  %spec.store.select = select i1 %cmp9, i32 0, i32 %error
  %conv = sext i32 %niceval to i64
  call void @set_user_nice(%struct.task_struct* noundef %p, i64 noundef %conv) #12
  br label %out

out:                                              ; preds = %if.end4, %land.lhs.true, %entry, %if.end8
  %error.addr.0 = phi i32 [ %spec.store.select, %if.end8 ], [ -1, %entry ], [ -13, %land.lhs.true ], [ %call5, %if.end4 ]
  ret i32 %error.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_vpid(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pgrp(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #6 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 2
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.user_struct* @find_user(i64) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(%struct.user_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @set_one_prio_perm(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  %3 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 1, i32 0
  %4 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %4 to i64
  %coerce.dive10 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %5 = load i32, i32* %coerce.dive10, align 4
  %coerce.val.ii11 = zext i32 %5 to i64
  %call12 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii11) #11
  br i1 %call12, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %coerce.dive15 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 5, i32 0
  %6 = load i32, i32* %coerce.dive15, align 4
  %coerce.val.ii16 = zext i32 %6 to i64
  %call19 = call fastcc i1 @uid_eq(i64 %coerce.val.ii16, i64 %coerce.val.ii11) #11
  br i1 %call19, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 16
  %7 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call20 = call i1 @ns_capable(%struct.user_namespace* noundef %7, i32 noundef 23) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call20, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_nice(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #6 {
entry:
  %static_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  %0 = load i32, i32* %static_prio, align 8
  %sub = add i32 %0, -120
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_nice(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_task_setnice(%struct.task_struct* noundef %p, i32 noundef %nice) unnamed_addr #0 {
entry:
  %call = call i32 @cap_task_setnice(%struct.task_struct* noundef %p, i32 noundef %nice) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_setnice(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getpriority(i32 noundef %which, i32 noundef %who) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %3 = icmp ugt i32 %which, 2
  br i1 %3, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #12
  call fastcc void @__raw_read_lock() #11
  switch i32 %which, label %out_unlock [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb102
  ]

sw.bb:                                            ; preds = %if.end
  %tobool.not = icmp eq i32 %who, 0
  br i1 %tobool.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %sw.bb
  %call5 = call %struct.task_struct* @find_task_by_vpid(i32 noundef %who) #12
  br label %if.end7

if.end7:                                          ; preds = %sw.bb, %if.then4
  %p.0 = phi %struct.task_struct* [ %call5, %if.then4 ], [ %1, %sw.bb ]
  %tobool8.not = icmp eq %struct.task_struct* %p.0, null
  br i1 %tobool8.not, label %out_unlock, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = call fastcc i32 @task_nice(%struct.task_struct* noundef nonnull %p.0) #11
  %conv = sext i32 %call10 to i64
  %call11 = call fastcc i64 @nice_to_rlimit(i64 noundef %conv) #11
  %cmp12 = icmp sgt i64 %call11, -3
  %spec.select = select i1 %cmp12, i64 %call11, i64 -3
  br label %out_unlock

sw.bb17:                                          ; preds = %if.end
  %tobool18.not = icmp eq i32 %who, 0
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %sw.bb17
  %call20 = call %struct.pid* @find_vpid(i32 noundef %who) #12
  br label %do.body25

if.else21:                                        ; preds = %sw.bb17
  %call23 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %1) #11
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %if.else21
  %pgrp.0 = phi %struct.pid* [ %call20, %if.then19 ], [ %call23, %if.else21 ]
  %cmp26.not = icmp eq %struct.pid* %pgrp.0, null
  br i1 %cmp26.not, label %out_unlock, label %if.then28

if.then28:                                        ; preds = %do.body25
  %first = getelementptr %struct.pid, %struct.pid* %pgrp.0, i64 0, i32 3, i64 2, i32 0
  %4 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool35.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -67, i32 1
  %tobool40.not270274 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool40.not270 = or i1 %tobool35.not, %tobool40.not270274
  br i1 %tobool40.not270, label %out_unlock, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then28
  %5 = bitcast %struct.hlist_node*** %add.ptr to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.end
  %p.1272 = phi %struct.task_struct* [ %spec.select258, %for.end ], [ %5, %for.body.preheader ]
  %retval2.0271 = phi i64 [ %retval2.1.lcssa, %for.end ], [ -3, %for.body.preheader ]
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.1272, i64 0, i32 87
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %next = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 3, i32 0
  %thread_head53 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 3
  %.pn262 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %p.2.in263 = getelementptr %struct.list_head, %struct.list_head* %.pn262, i64 -70, i32 1
  %thread_node264 = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.2.in263, i64 139
  %7 = bitcast %struct.list_head** %thread_node264 to %struct.list_head*
  %cmp54.not265 = icmp eq %struct.list_head* %thread_head53, %7
  br i1 %cmp54.not265, label %for.end, label %for.body56

for.body56:                                       ; preds = %for.body, %for.body56
  %thread_node268 = phi %struct.list_head** [ %thread_node, %for.body56 ], [ %thread_node264, %for.body ]
  %p.2.in267 = phi %struct.list_head** [ %p.2.in, %for.body56 ], [ %p.2.in263, %for.body ]
  %retval2.1266 = phi i64 [ %spec.select254, %for.body56 ], [ %retval2.0271, %for.body ]
  %p.2 = bitcast %struct.list_head** %p.2.in267 to %struct.task_struct*
  %call57 = call fastcc i32 @task_nice(%struct.task_struct* noundef %p.2) #11
  %conv58 = sext i32 %call57 to i64
  %call59 = call fastcc i64 @nice_to_rlimit(i64 noundef %conv58) #11
  %cmp60 = icmp sgt i64 %call59, %retval2.1266
  %spec.select254 = select i1 %cmp60, i64 %call59, i64 %retval2.1266
  %.pn = load volatile %struct.list_head*, %struct.list_head** %thread_node268, align 8
  %p.2.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.2.in, i64 139
  %8 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %cmp54.not = icmp eq %struct.list_head* %thread_head53, %8
  br i1 %cmp54.not, label %for.end, label %for.body56

for.end:                                          ; preds = %for.body56, %for.body
  %retval2.1.lcssa = phi i64 [ %retval2.0271, %for.body ], [ %spec.select254, %for.body56 ]
  %next84 = getelementptr %struct.task_struct, %struct.task_struct* %p.1272, i64 0, i32 60, i64 2, i32 0
  %9 = load volatile %struct.hlist_node*, %struct.hlist_node** %next84, align 8
  %tobool87.not = icmp eq %struct.hlist_node* %9, null
  %add.ptr94 = getelementptr %struct.hlist_node, %struct.hlist_node* %9, i64 -67, i32 1
  %10 = bitcast %struct.hlist_node*** %add.ptr94 to %struct.task_struct*
  %spec.select258 = select i1 %tobool87.not, %struct.task_struct* null, %struct.task_struct* %10
  %tobool40.not = icmp eq %struct.task_struct* %spec.select258, null
  br i1 %tobool40.not, label %out_unlock, label %for.body

sw.bb102:                                         ; preds = %if.end
  %user105 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 15
  %11 = load %struct.user_struct*, %struct.user_struct** %user105, align 8
  %tobool106.not = icmp eq i32 %who, 0
  br i1 %tobool106.not, label %if.then107, label %if.else109

if.then107:                                       ; preds = %sw.bb102
  %uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %uid.sroa.0.0.copyload = load i32, i32* %uid.sroa.0.0..sroa_idx, align 4
  br label %if.end123

if.else109:                                       ; preds = %sw.bb102
  %coerce.val.ii = zext i32 %who to i64
  %coerce.dive112 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %12 = load i32, i32* %coerce.dive112, align 4
  %coerce.val.ii113 = zext i32 %12 to i64
  %call114 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii113) #11
  br i1 %call114, label %if.end123, label %if.then115

if.then115:                                       ; preds = %if.else109
  %call118 = call %struct.user_struct* @find_user(i64 %coerce.val.ii) #12
  %tobool119.not = icmp eq %struct.user_struct* %call118, null
  br i1 %tobool119.not, label %out_unlock, label %if.end123

if.end123:                                        ; preds = %if.else109, %if.then115, %if.then107
  %uid.sroa.0.0 = phi i32 [ %who, %if.else109 ], [ %who, %if.then115 ], [ %uid.sroa.0.0.copyload, %if.then107 ]
  %user.0 = phi %struct.user_struct* [ %11, %if.else109 ], [ %call118, %if.then115 ], [ %11, %if.then107 ]
  %13 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr136259 = getelementptr %struct.list_head, %struct.list_head* %13, i64 -42, i32 1
  %cmp137.not260 = icmp eq %struct.list_head** %add.ptr136259, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  %.pre = zext i32 %uid.sroa.0.0 to i64
  br i1 %cmp137.not260, label %for.end173, label %do.body140.preheader

for.cond124.loopexit:                             ; preds = %do.cond168
  %14 = getelementptr inbounds %struct.list_head*, %struct.list_head** %.in, i64 83
  %15 = load volatile %struct.list_head*, %struct.list_head** %14, align 8
  %add.ptr136 = getelementptr %struct.list_head, %struct.list_head* %15, i64 -42, i32 1
  %cmp137.not = icmp eq %struct.list_head** %add.ptr136, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp137.not, label %for.end173, label %do.body140.preheader

do.body140.preheader:                             ; preds = %if.end123, %for.cond124.loopexit
  %.in = phi %struct.list_head** [ %add.ptr136, %for.cond124.loopexit ], [ %add.ptr136259, %if.end123 ]
  %retval2.3261 = phi i64 [ %retval2.5, %for.cond124.loopexit ], [ -3, %if.end123 ]
  %16 = bitcast %struct.list_head** %.in to %struct.task_struct*
  br label %do.body140

do.body140:                                       ; preds = %do.body140.preheader, %do.cond168
  %retval2.4 = phi i64 [ %retval2.5, %do.cond168 ], [ %retval2.3261, %do.body140.preheader ]
  %p.3 = phi %struct.task_struct* [ %call169, %do.cond168 ], [ %16, %do.body140.preheader ]
  call fastcc void @__rcu_read_lock() #12
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.3, i64 0, i32 79
  %17 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %17, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #11
  %coerce.val.ii152 = zext i32 %___val.sroa.0.0.copyload to i64
  %call155 = call fastcc i1 @uid_eq(i64 %coerce.val.ii152, i64 %.pre) #11
  br i1 %call155, label %land.lhs.true, label %do.cond168

land.lhs.true:                                    ; preds = %do.body140
  %call157 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %p.3) #11
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %do.cond168, label %if.then159

if.then159:                                       ; preds = %land.lhs.true
  %call160 = call fastcc i32 @task_nice(%struct.task_struct* noundef %p.3) #11
  %conv161 = sext i32 %call160 to i64
  %call162 = call fastcc i64 @nice_to_rlimit(i64 noundef %conv161) #11
  %cmp163 = icmp sgt i64 %call162, %retval2.4
  %spec.select255 = select i1 %cmp163, i64 %call162, i64 %retval2.4
  br label %do.cond168

do.cond168:                                       ; preds = %if.then159, %do.body140, %land.lhs.true
  %retval2.5 = phi i64 [ %retval2.4, %land.lhs.true ], [ %retval2.4, %do.body140 ], [ %spec.select255, %if.then159 ]
  %call169 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p.3) #11
  %cmp170.not = icmp eq %struct.task_struct* %call169, %16
  br i1 %cmp170.not, label %for.cond124.loopexit, label %do.body140

for.end173:                                       ; preds = %for.cond124.loopexit, %if.end123
  %retval2.3.lcssa = phi i64 [ -3, %if.end123 ], [ %retval2.5, %for.cond124.loopexit ]
  %coerce.dive177 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %18 = load i32, i32* %coerce.dive177, align 4
  %coerce.val.ii178 = zext i32 %18 to i64
  %call179 = call fastcc i1 @uid_eq(i64 %.pre, i64 %coerce.val.ii178) #11
  br i1 %call179, label %out_unlock, label %if.then180

if.then180:                                       ; preds = %for.end173
  call void @free_uid(%struct.user_struct* noundef %user.0) #12
  br label %out_unlock

out_unlock:                                       ; preds = %for.end, %if.then28, %if.then9, %if.end, %if.end7, %do.body25, %if.then180, %for.end173, %if.then115
  %retval2.6 = phi i64 [ -3, %if.end ], [ %retval2.3.lcssa, %for.end173 ], [ %retval2.3.lcssa, %if.then180 ], [ -3, %if.then115 ], [ -3, %do.body25 ], [ -3, %if.end7 ], [ %spec.select, %if.then9 ], [ -3, %if.then28 ], [ %retval2.1.lcssa, %for.end ]
  call fastcc void @__raw_read_unlock() #11
  call fastcc void @rcu_read_unlock() #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock
  %retval.0 = phi i64 [ %retval2.6, %out_unlock ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @nice_to_rlimit(i64 noundef %nice) unnamed_addr #4 {
entry:
  %add = sub i64 20, %nice
  ret i64 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setregid(i32 noundef %rgid, i32 noundef %egid) unnamed_addr #0 {
entry:
  %call = call i64 @__sys_setregid(i32 noundef %rgid, i32 noundef %egid) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setgid(i32 noundef %gid) unnamed_addr #0 {
entry:
  %call = call i64 @__sys_setgid(i32 noundef %gid) #11
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.user_struct* @alloc_uid(i64) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_ucounts_overlimit(%struct.ucounts* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit(i32 noundef %limit) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1, i32 noundef %limit) #11
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task, i32 noundef %limit) unnamed_addr #9 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %limit to i64
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 %idxprom, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_fix_setuid(%struct.cred* noundef, %struct.cred* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setreuid(i32 noundef %ruid, i32 noundef %euid) unnamed_addr #0 {
entry:
  %call = call i64 @__sys_setreuid(i32 noundef %ruid, i32 noundef %euid) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setuid(i32 noundef %uid) unnamed_addr #0 {
entry:
  %call = call i64 @__sys_setuid(i32 noundef %uid) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setresuid(i32 noundef %ruid, i32 noundef %euid, i32 noundef %suid) unnamed_addr #0 {
entry:
  %call = call i64 @__sys_setresuid(i32 noundef %ruid, i32 noundef %euid, i32 noundef %suid) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getresuid(i32* noundef %ruidp, i32* noundef %euidp, i32* noundef %suidp) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %3 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %3 to i64
  %call3 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #11
  %coerce.dive6 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %4 = load i32, i32* %coerce.dive6, align 4
  %coerce.val.ii7 = zext i32 %4 to i64
  %call8 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii7) #11
  %coerce.dive11 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 3, i32 0
  %5 = load i32, i32* %coerce.dive11, align 4
  %coerce.val.ii12 = zext i32 %5 to i64
  %call13 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii12) #11
  %6 = bitcast i32* %ruidp to i8*
  %call15 = call fastcc i64 @__range_ok(i8* noundef %6, i64 noundef 4) #11
  %tobool.not = icmp eq i64 %call15, 0
  br i1 %tobool.not, label %if.end75, label %if.end

if.end:                                           ; preds = %entry
  %call16 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %6) #11
  %7 = bitcast i8* %call16 to i32*
  %8 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call3, i32* %7, i32 -14, i32 0) #14, !srcloc !15
  %tobool28.not = icmp eq i32 %8, 0
  br i1 %tobool28.not, label %if.then29, label %if.end75

if.then29:                                        ; preds = %if.end
  %9 = bitcast i32* %euidp to i8*
  %call33 = call fastcc i64 @__range_ok(i8* noundef %9, i64 noundef 4) #11
  %tobool34.not = icmp eq i64 %call33, 0
  br i1 %tobool34.not, label %if.end75, label %if.end47

if.end47:                                         ; preds = %if.then29
  %call36 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %9) #11
  %10 = bitcast i8* %call36 to i32*
  %11 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call8, i32* %10, i32 -14, i32 0) #14, !srcloc !16
  %tobool51.not = icmp eq i32 %11, 0
  br i1 %tobool51.not, label %if.then52, label %if.end75

if.then52:                                        ; preds = %if.end47
  %12 = bitcast i32* %suidp to i8*
  %call56 = call fastcc i64 @__range_ok(i8* noundef %12, i64 noundef 4) #11
  %tobool57.not = icmp eq i64 %call56, 0
  br i1 %tobool57.not, label %cleanup, label %if.then58

if.then58:                                        ; preds = %if.then52
  %call59 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %12) #11
  %13 = bitcast i8* %call59 to i32*
  %14 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call13, i32* %13, i32 -14, i32 0) #14, !srcloc !17
  %phi.cast = sext i32 %14 to i64
  br label %cleanup

if.end75:                                         ; preds = %if.then29, %entry, %if.end47, %if.end
  %retval2.0 = phi i32 [ %8, %if.end ], [ %11, %if.end47 ], [ -14, %entry ], [ -14, %if.then29 ]
  %conv76 = sext i32 %retval2.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.then52, %if.end75
  %retval.0 = phi i64 [ %conv76, %if.end75 ], [ %phi.cast, %if.then58 ], [ -14, %if.then52 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #14, !srcloc !18
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #14, !srcloc !19
  call void asm sideeffect "hint #20", "~{memory}"() #14, !srcloc !20
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setresgid(i32 noundef %rgid, i32 noundef %egid, i32 noundef %sgid) unnamed_addr #0 {
entry:
  %call = call i64 @__sys_setresgid(i32 noundef %rgid, i32 noundef %egid, i32 noundef %sgid) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getresgid(i32* noundef %rgidp, i32* noundef %egidp, i32* noundef %sgidp) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %3 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %3 to i64
  %call3 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii) #11
  %coerce.dive6 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 6, i32 0
  %4 = load i32, i32* %coerce.dive6, align 8
  %coerce.val.ii7 = zext i32 %4 to i64
  %call8 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii7) #11
  %coerce.dive11 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 4, i32 0
  %5 = load i32, i32* %coerce.dive11, align 8
  %coerce.val.ii12 = zext i32 %5 to i64
  %call13 = call fastcc i32 @from_kgid_munged(i64 %coerce.val.ii12) #11
  %6 = bitcast i32* %rgidp to i8*
  %call15 = call fastcc i64 @__range_ok(i8* noundef %6, i64 noundef 4) #11
  %tobool.not = icmp eq i64 %call15, 0
  br i1 %tobool.not, label %if.end75, label %if.end

if.end:                                           ; preds = %entry
  %call16 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %6) #11
  %7 = bitcast i8* %call16 to i32*
  %8 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call3, i32* %7, i32 -14, i32 0) #14, !srcloc !21
  %tobool28.not = icmp eq i32 %8, 0
  br i1 %tobool28.not, label %if.then29, label %if.end75

if.then29:                                        ; preds = %if.end
  %9 = bitcast i32* %egidp to i8*
  %call33 = call fastcc i64 @__range_ok(i8* noundef %9, i64 noundef 4) #11
  %tobool34.not = icmp eq i64 %call33, 0
  br i1 %tobool34.not, label %if.end75, label %if.end47

if.end47:                                         ; preds = %if.then29
  %call36 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %9) #11
  %10 = bitcast i8* %call36 to i32*
  %11 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call8, i32* %10, i32 -14, i32 0) #14, !srcloc !22
  %tobool51.not = icmp eq i32 %11, 0
  br i1 %tobool51.not, label %if.then52, label %if.end75

if.then52:                                        ; preds = %if.end47
  %12 = bitcast i32* %sgidp to i8*
  %call56 = call fastcc i64 @__range_ok(i8* noundef %12, i64 noundef 4) #11
  %tobool57.not = icmp eq i64 %call56, 0
  br i1 %tobool57.not, label %if.end75, label %if.then58

if.then58:                                        ; preds = %if.then52
  %call59 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %12) #11
  %13 = bitcast i8* %call59 to i32*
  %14 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call13, i32* %13, i32 -14, i32 0) #14, !srcloc !23
  br label %if.end75

if.end75:                                         ; preds = %if.then29, %entry, %if.then58, %if.then52, %if.end47, %if.end
  %retval2.0 = phi i32 [ %8, %if.end ], [ %11, %if.end47 ], [ %14, %if.then58 ], [ -14, %if.then52 ], [ -14, %entry ], [ -14, %if.then29 ]
  %conv = sext i32 %retval2.0 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setfsuid(i32 noundef %uid) unnamed_addr #0 {
entry:
  %call = call i64 @__sys_setfsuid(i32 noundef %uid) #11
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setfsgid(i32 noundef %gid) unnamed_addr #0 {
entry:
  %call = call i64 @__sys_setfsgid(i32 noundef %gid) #11
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  call void @rcu_read_unlock_strict() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_times(%struct.tms* noundef %tbuf) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.tms, align 8
  %tobool.not = icmp eq %struct.tms* %tbuf, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.tms* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !13
  call fastcc void @do_sys_times(%struct.tms* noundef nonnull %tmp) #11
  %1 = bitcast %struct.tms* %tbuf to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef nonnull %1, i8* noundef nonnull %0, i64 noundef 32) #12
  %tobool1.not = icmp eq i64 %call2.i, 0
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #14
  br i1 %tobool1.not, label %do.end, label %return

do.end:                                           ; preds = %if.then, %entry
  %call4 = call fastcc i64 @get_jiffies_64() #11
  %call5 = call i64 @jiffies_64_to_clock_t(i64 noundef %call4) #12
  br label %return

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i64 [ -14, %if.then ], [ %call5, %do.end ]
  ret i64 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_sys_times(%struct.tms* nocapture noundef writeonly %tms) unnamed_addr #0 {
entry:
  %tgutime = alloca i64, align 8
  %tgstime = alloca i64, align 8
  %0 = bitcast i64* %tgutime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %tgutime, align 8, !annotation !13
  %1 = bitcast i64* %tgstime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %tgstime, align 8, !annotation !13
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  call void @thread_group_cputime_adjusted(%struct.task_struct* noundef %3, i64* noundef nonnull %tgutime, i64* noundef nonnull %tgstime) #12
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 87
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %cutime2 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 28
  %5 = load i64, i64* %cutime2, align 8
  %cstime5 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 29
  %6 = load i64, i64* %cstime5, align 8
  %7 = load i64, i64* %tgutime, align 8
  %call6 = call i64 @nsec_to_clock_t(i64 noundef %7) #12
  %tms_utime = getelementptr inbounds %struct.tms, %struct.tms* %tms, i64 0, i32 0
  store i64 %call6, i64* %tms_utime, align 8
  %8 = load i64, i64* %tgstime, align 8
  %call7 = call i64 @nsec_to_clock_t(i64 noundef %8) #12
  %tms_stime = getelementptr inbounds %struct.tms, %struct.tms* %tms, i64 0, i32 1
  store i64 %call7, i64* %tms_stime, align 8
  %call8 = call i64 @nsec_to_clock_t(i64 noundef %5) #12
  %tms_cutime = getelementptr inbounds %struct.tms, %struct.tms* %tms, i64 0, i32 2
  store i64 %call8, i64* %tms_cutime, align 8
  %call9 = call i64 @nsec_to_clock_t(i64 noundef %6) #12
  %tms_cstime = getelementptr inbounds %struct.tms, %struct.tms* %tms, i64 0, i32 3
  store i64 %call9, i64* %tms_cstime, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @jiffies_64_to_clock_t(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_jiffies_64() unnamed_addr #9 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #11
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #12
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setpgid(i32 noundef %pid, i32 noundef %pgid) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %group_leader1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 56
  %2 = load %struct.task_struct*, %struct.task_struct** %group_leader1, align 8
  %tobool.not = icmp eq i32 %pid, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pid.addr.0 = phi i32 [ %pid, %entry ], [ %call2, %if.then ]
  %tobool3.not = icmp eq i32 %pgid, 0
  %spec.select = select i1 %tobool3.not, i32 %pid.addr.0, i32 %pgid
  %cmp = icmp slt i32 %spec.select, 0
  br i1 %cmp, label %cleanup52, label %if.end7

if.end7:                                          ; preds = %if.end
  call fastcc void @__rcu_read_lock() #12
  call fastcc void @__raw_write_lock_irq() #11
  %call8 = call %struct.task_struct* @find_task_by_vpid(i32 noundef %pid.addr.0) #12
  %tobool9.not = icmp eq %struct.task_struct* %call8, null
  br i1 %tobool9.not, label %out, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef nonnull %call8) #11
  br i1 %call12, label %if.end14, label %out

if.end14:                                         ; preds = %if.end11
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call8, i64 0, i32 52
  %3 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %call15 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %3, %struct.task_struct* noundef %2) #11
  br i1 %call15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %call17 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef nonnull %call8) #11
  %call18 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %2) #11
  %cmp19.not = icmp eq %struct.pid* %call17, %call18
  br i1 %cmp19.not, label %if.end21, label %out

if.end21:                                         ; preds = %if.then16
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call8, i64 0, i32 4
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 64
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %out, label %if.end28

if.else:                                          ; preds = %if.end14
  %cmp25.not = icmp eq %struct.task_struct* %call8, %2
  br i1 %cmp25.not, label %if.end28, label %out

if.end28:                                         ; preds = %if.else, %if.end21
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call8, i64 0, i32 87
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %leader = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 23
  %6 = load i32, i32* %leader, align 8
  %tobool29.not = icmp eq i32 %6, 0
  br i1 %tobool29.not, label %if.end31, label %out

if.end31:                                         ; preds = %if.end28
  %call32 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef nonnull %call8) #11
  %cmp33.not = icmp eq i32 %spec.select, %pid.addr.0
  br i1 %cmp33.not, label %if.end43, label %if.then34

if.then34:                                        ; preds = %if.end31
  %call35 = call %struct.pid* @find_vpid(i32 noundef %spec.select) #12
  %call36 = call %struct.task_struct* @pid_task(%struct.pid* noundef %call35, i32 noundef 2) #12
  %tobool37.not = icmp eq %struct.task_struct* %call36, null
  br i1 %tobool37.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then34
  %call38 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef nonnull %call36) #11
  %call39 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %2) #11
  %cmp40.not = icmp eq %struct.pid* %call38, %call39
  br i1 %cmp40.not, label %if.end43, label %out

if.end43:                                         ; preds = %lor.lhs.false, %if.end31
  %pgrp.0 = phi %struct.pid* [ %call32, %if.end31 ], [ %call35, %lor.lhs.false ]
  %call48 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef nonnull %call8) #11
  %cmp49.not = icmp eq %struct.pid* %call48, %pgrp.0
  br i1 %cmp49.not, label %out, label %if.then50

if.then50:                                        ; preds = %if.end43
  call void @change_pid(%struct.task_struct* noundef nonnull %call8, i32 noundef 2, %struct.pid* noundef %pgrp.0) #12
  br label %out

out:                                              ; preds = %lor.lhs.false, %if.then34, %if.end43, %if.then50, %if.end28, %if.else, %if.end21, %if.then16, %if.end11, %if.end7
  %err.0 = phi i64 [ -1, %if.then16 ], [ -1, %if.end28 ], [ -13, %if.end21 ], [ -3, %if.else ], [ -22, %if.end11 ], [ -3, %if.end7 ], [ 0, %if.then50 ], [ 0, %if.end43 ], [ -1, %if.then34 ], [ -1, %lor.lhs.false ]
  call fastcc void @__raw_write_unlock_irq() #11
  call fastcc void @rcu_read_unlock() #11
  br label %cleanup52

cleanup52:                                        ; preds = %if.end, %out
  %retval.0 = phi i64 [ %err.0, %out ], [ -22, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @thread_group_leader(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #6 {
entry:
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 41
  %0 = load i32, i32* %exit_signal, align 4
  %cmp = icmp sgt i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @same_thread_group(%struct.task_struct* nocapture noundef readonly %p1, %struct.task_struct* nocapture noundef readonly %p2) unnamed_addr #6 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p1, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p2, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %cmp = icmp eq %struct.signal_struct* %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_session(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #6 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 3
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @change_pid(%struct.task_struct* noundef, i32 noundef, %struct.pid* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getpgid(i32 noundef %pid) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_getpgid(i32 noundef %pid) #11
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_getpgid(i32 noundef %pid) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %tobool.not = icmp eq i32 %pid, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %1) #11
  br label %if.end14

if.else:                                          ; preds = %entry
  %call3 = call %struct.task_struct* @find_task_by_vpid(i32 noundef %pid) #12
  %tobool4.not = icmp eq %struct.task_struct* %call3, null
  br i1 %tobool4.not, label %out, label %if.end

if.end:                                           ; preds = %if.else
  %call6 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef nonnull %call3) #11
  %tobool7.not = icmp eq %struct.pid* %call6, null
  br i1 %tobool7.not, label %out, label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %grp.0 = phi %struct.pid* [ %call2, %if.then ], [ %call6, %if.end ]
  %call15 = call i32 @pid_vnr(%struct.pid* noundef %grp.0) #12
  br label %out

out:                                              ; preds = %if.end, %if.else, %if.end14
  %retval1.0 = phi i32 [ %call15, %if.end14 ], [ -3, %if.end ], [ -3, %if.else ]
  call fastcc void @rcu_read_unlock() #11
  ret i32 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getsid(i32 noundef %pid) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %tobool.not = icmp eq i32 %pid, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %1) #11
  br label %if.end14

if.else:                                          ; preds = %entry
  %call3 = call %struct.task_struct* @find_task_by_vpid(i32 noundef %pid) #12
  %tobool4.not = icmp eq %struct.task_struct* %call3, null
  br i1 %tobool4.not, label %out, label %if.end

if.end:                                           ; preds = %if.else
  %call6 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef nonnull %call3) #11
  %tobool7.not = icmp eq %struct.pid* %call6, null
  br i1 %tobool7.not, label %out, label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %sid.0 = phi %struct.pid* [ %call2, %if.then ], [ %call6, %if.end ]
  %call15 = call i32 @pid_vnr(%struct.pid* noundef %sid.0) #12
  %phi.cast = sext i32 %call15 to i64
  br label %out

out:                                              ; preds = %if.end, %if.else, %if.end14
  %retval1.0 = phi i64 [ %phi.cast, %if.end14 ], [ -3, %if.end ], [ -3, %if.else ]
  call fastcc void @rcu_read_unlock() #11
  ret i64 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #11
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !26

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #14, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.rwlock_t* @tasklist_lock to i8*), i32 noundef 0, i32 noundef 255) #12
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !28

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #9 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #14, !srcloc !29
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.rwlock_t* @tasklist_lock to i8*), i8 0) #14, !srcloc !30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #14, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_newuname(%struct.new_utsname* noundef %name) unnamed_addr #0 {
entry:
  %tmp8 = alloca [390 x i8], align 1
  %tmp8.sub = getelementptr inbounds [390 x i8], [390 x i8]* %tmp8, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 390, i8* nonnull %tmp8.sub) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(390) %tmp8.sub, i8 0, i64 390, i1 false), !annotation !13
  call void @down_read(%struct.rw_semaphore* noundef nonnull @uts_sem) #12
  %call = call fastcc %struct.new_utsname* @utsname() #11
  %0 = getelementptr %struct.new_utsname, %struct.new_utsname* %call, i64 0, i32 0, i64 0
  %call1 = call i8* @memcpy(i8* noundef nonnull %tmp8.sub, i8* noundef %0, i64 noundef 390) #12
  call void @up_read(%struct.rw_semaphore* noundef nonnull @uts_sem) #12
  %1 = getelementptr %struct.new_utsname, %struct.new_utsname* %name, i64 0, i32 0, i64 0
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %1, i8* noundef nonnull %tmp8.sub, i64 noundef 390) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.new_utsname, %struct.new_utsname* %name, i64 0, i32 2, i64 0
  %call3 = call fastcc i32 @override_release(i8* noundef %arraydecay) #11
  %tobool4.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool4.not, i64 0, i64 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ -14, %entry ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 390, i8* nonnull %tmp8.sub) #14
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.new_utsname* @utsname() unnamed_addr #7 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 86
  %2 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %uts_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %2, i64 0, i32 1
  %3 = load %struct.uts_namespace*, %struct.uts_namespace** %uts_ns, align 8
  %name = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %3, i64 0, i32 0
  ret %struct.new_utsname* %name
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @override_release(i8* noundef %release) unnamed_addr #0 {
entry:
  %buf = alloca [65 x i8], align 1
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 44
  %2 = load i32, i32* %personality, align 16
  %and = and i32 %2, 131072
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end29, label %if.then

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds [65 x i8], [65 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 65, i8* nonnull %3) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(65) %3, i8 0, i64 65, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.then
  %ndots.0 = phi i32 [ 0, %if.then ], [ %ndots.15, %if.end14 ]
  %rest.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %if.then ], [ %incdec.ptr, %if.end14 ]
  %4 = load i8, i8* %rest.0, align 1
  switch i8 %4, label %if.end [
    i8 0, label %while.end
    i8 46, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %while.cond
  %inc = add i32 %ndots.0, 1
  %cmp3 = icmp sgt i32 %inc, 2
  br i1 %cmp3, label %while.end, label %if.end14

if.end:                                           ; preds = %while.cond
  %conv6 = zext i8 %4 to i32
  %call7 = call fastcc i32 @isdigit(i32 noundef %conv6) #11
  %tobool8.not.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not.not, label %while.end, label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.end
  %ndots.15 = phi i32 [ %ndots.0, %if.end ], [ %inc, %land.lhs.true ]
  %incdec.ptr = getelementptr i8, i8* %rest.0, i64 1
  br label %while.cond

while.end:                                        ; preds = %if.end, %while.cond, %land.lhs.true
  %call24 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef nonnull %3, i64 noundef 65, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef 75, i8* noundef %rest.0) #12
  %conv25 = sext i32 %call24 to i64
  %add = add nsw i64 %conv25, 1
  %cmp11.i.i = icmp ugt i64 %add, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !26

check_copy_size.exit.i:                           ; preds = %while.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !32
  br label %copy_to_user.exit

if.then.i:                                        ; preds = %while.end
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %release, i8* noundef nonnull %3, i64 noundef %add) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %n.addr.0.i = phi i64 [ %call2.i, %if.then.i ], [ %add, %check_copy_size.exit.i ]
  %conv28 = trunc i64 %n.addr.0.i to i32
  call void @llvm.lifetime.end.p0i8(i64 65, i8* nonnull %3) #14
  br label %if.end29

if.end29:                                         ; preds = %copy_to_user.exit, %entry
  %ret.0 = phi i32 [ %conv28, %copy_to_user.exit ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #4 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sethostname(i8* noundef %name, i32 noundef %len) unnamed_addr #0 {
entry:
  %tmp = alloca [64 x i8], align 1
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !13
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 86
  %3 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %uts_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %3, i64 0, i32 1
  %4 = load %struct.uts_namespace*, %struct.uts_namespace** %uts_ns, align 8
  %user_ns = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %4, i64 0, i32 1
  %5 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef %5, i32 noundef 21) #12
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %6 = icmp ugt i32 %len, 64
  br i1 %6, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %conv27 = zext i32 %len to i64
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %name, i64 noundef %conv27) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @down_write(%struct.rw_semaphore* noundef nonnull @uts_sem) #12
  %call7 = call fastcc %struct.new_utsname* @utsname() #11
  %arraydecay8 = getelementptr inbounds %struct.new_utsname, %struct.new_utsname* %call7, i64 0, i32 1, i64 0
  %call11 = call i8* @memcpy(i8* noundef %arraydecay8, i8* noundef nonnull %0, i64 noundef %conv27) #12
  %add.ptr = getelementptr %struct.new_utsname, %struct.new_utsname* %call7, i64 0, i32 1, i64 %conv27
  %sub = sub nuw nsw i64 65, %conv27
  %call15 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %sub) #12
  call void @uts_proc_notify(i32 noundef 3) #12
  call void @up_write(%struct.rw_semaphore* noundef nonnull @uts_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.end, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ -22, %if.end ], [ -14, %if.end4 ], [ 0, %if.then6 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @uts_proc_notify(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #11
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !26

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #11
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !28

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setdomainname(i8* noundef %name, i32 noundef %len) unnamed_addr #0 {
entry:
  %tmp = alloca [64 x i8], align 1
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !13
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 86
  %3 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %uts_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %3, i64 0, i32 1
  %4 = load %struct.uts_namespace*, %struct.uts_namespace** %uts_ns, align 8
  %user_ns = getelementptr inbounds %struct.uts_namespace, %struct.uts_namespace* %4, i64 0, i32 1
  %5 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef %5, i32 noundef 21) #12
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %6 = icmp ugt i32 %len, 64
  br i1 %6, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %conv27 = zext i32 %len to i64
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %name, i64 noundef %conv27) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @down_write(%struct.rw_semaphore* noundef nonnull @uts_sem) #12
  %call7 = call fastcc %struct.new_utsname* @utsname() #11
  %arraydecay8 = getelementptr inbounds %struct.new_utsname, %struct.new_utsname* %call7, i64 0, i32 5, i64 0
  %call11 = call i8* @memcpy(i8* noundef %arraydecay8, i8* noundef nonnull %0, i64 noundef %conv27) #12
  %add.ptr = getelementptr %struct.new_utsname, %struct.new_utsname* %call7, i64 0, i32 5, i64 %conv27
  %sub = sub nuw nsw i64 65, %conv27
  %call15 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %sub) #12
  call void @uts_proc_notify(i32 noundef 4) #12
  call void @up_write(%struct.rw_semaphore* noundef nonnull @uts_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then6, %if.end, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ -22, %if.end ], [ -14, %if.end4 ], [ 0, %if.then6 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getrlimit(i32 noundef %resource, %struct.rlimit* noundef %rlim) unnamed_addr #0 {
entry:
  %value = alloca %struct.rlimit, align 8
  %0 = bitcast %struct.rlimit* %value to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !13
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call1 = call i32 @do_prlimit(%struct.task_struct* noundef %2, i32 noundef %resource, %struct.rlimit* noundef null, %struct.rlimit* noundef nonnull %value) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.rlimit* %rlim to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %3, i8* noundef nonnull %0, i64 noundef 16) #12
  %tobool3.not = icmp eq i64 %call2.i, 0
  %cond = select i1 %tobool3.not, i32 0, i32 -14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call1, %entry ], [ %cond, %if.then ]
  %conv = sext i32 %ret.0 to i64
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #12
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !28

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #14, !srcloc !33
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !28

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #14, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #14, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_prlimit64(i32 noundef %pid, i32 noundef %resource, %struct.rlimit64* noundef %new_rlim, %struct.rlimit64* noundef %old_rlim) unnamed_addr #0 {
entry:
  %old64 = alloca %struct.rlimit64, align 8
  %new64 = alloca %struct.rlimit64, align 8
  %old = alloca %struct.rlimit, align 8
  %new = alloca %struct.rlimit, align 8
  %0 = bitcast %struct.rlimit64* %old64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !13
  %1 = bitcast %struct.rlimit64* %new64 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !13
  %2 = bitcast %struct.rlimit* %old to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !13
  %3 = bitcast %struct.rlimit* %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !13
  %tobool = icmp ne %struct.rlimit64* %old_rlim, null
  %tobool1.not = icmp eq %struct.rlimit64* %new_rlim, null
  br i1 %tobool1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %entry
  %4 = bitcast %struct.rlimit64* %new_rlim to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef nonnull %4, i64 noundef 16) #12
  %tobool3.not = icmp eq i64 %call2.i, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.then2
  call fastcc void @rlim64_to_rlim(%struct.rlimit64* noundef nonnull %new64, %struct.rlimit* noundef nonnull %new) #11
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %entry
  call fastcc void @__rcu_read_lock() #12
  %tobool8.not = icmp eq i32 %pid, 0
  br i1 %tobool8.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end7
  %call9 = call %struct.task_struct* @find_task_by_vpid(i32 noundef %pid) #12
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %6 = inttoptr i64 %5 to %struct.task_struct*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.task_struct* [ %call9, %cond.true ], [ %6, %cond.false ]
  %tobool11.not = icmp eq %struct.task_struct* %cond, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %cond.end
  call fastcc void @rcu_read_unlock() #11
  br label %cleanup

if.end13:                                         ; preds = %cond.end
  %call14 = call fastcc i32 @check_prlimit_permission(%struct.task_struct* noundef nonnull %cond) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  call fastcc void @rcu_read_unlock() #11
  %conv = sext i32 %call14 to i64
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call fastcc void @get_task_struct(%struct.task_struct* noundef nonnull %cond) #11
  call fastcc void @rcu_read_unlock() #11
  %new. = select i1 %tobool1.not, %struct.rlimit* null, %struct.rlimit* %new
  %cond28 = select i1 %tobool, %struct.rlimit* %old, %struct.rlimit* null
  %call29 = call i32 @do_prlimit(%struct.task_struct* noundef nonnull %cond, i32 noundef %resource, %struct.rlimit* noundef %new., %struct.rlimit* noundef %cond28) #11
  %tobool30 = icmp eq i32 %call29, 0
  %or.cond = and i1 %tobool, %tobool30
  br i1 %or.cond, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.end17
  call fastcc void @rlim_to_rlim64(%struct.rlimit* noundef nonnull %old, %struct.rlimit64* noundef nonnull %old64) #11
  %7 = bitcast %struct.rlimit64* %old_rlim to i8*
  %call2.i63 = call fastcc i64 @_copy_to_user(i8* noundef nonnull %7, i8* noundef nonnull %0, i64 noundef 16) #12
  %tobool34.not = icmp eq i64 %call2.i63, 0
  %spec.select = select i1 %tobool34.not, i32 0, i32 -14
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end17
  %ret.0 = phi i32 [ %call29, %if.end17 ], [ %spec.select, %if.then32 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %cond) #11
  %conv38 = sext i32 %ret.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end37, %if.then16, %if.then12
  %retval.0 = phi i64 [ %conv, %if.then16 ], [ %conv38, %if.end37 ], [ -3, %if.then12 ], [ -14, %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rlim64_to_rlim(%struct.rlimit64* nocapture noundef readonly %rlim64, %struct.rlimit* nocapture noundef writeonly %rlim) unnamed_addr #8 {
entry:
  %rlim_cur = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %rlim64, i64 0, i32 0
  %0 = load i64, i64* %rlim_cur, align 8
  %call = call fastcc i1 @rlim64_is_infinity(i64 noundef %0) #11
  %spec.select = select i1 %call, i64 -1, i64 %0
  %1 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i64 0, i32 0
  store i64 %spec.select, i64* %1, align 8
  %rlim_max = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %rlim64, i64 0, i32 1
  %2 = load i64, i64* %rlim_max, align 8
  %call4 = call fastcc i1 @rlim64_is_infinity(i64 noundef %2) #11
  %.sink17 = select i1 %call4, i64 -1, i64 %2
  %3 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i64 0, i32 1
  store i64 %.sink17, i64* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_prlimit_permission(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %cmp = icmp eq %struct.task_struct* %1, %task
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 79
  %3 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %4 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %4 to i64
  %coerce.dive11 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 5, i32 0
  %5 = load i32, i32* %coerce.dive11, align 4
  %coerce.val.ii12 = zext i32 %5 to i64
  %call13 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii12) #11
  br i1 %call13, label %land.lhs.true, label %land.lhs.true48

land.lhs.true:                                    ; preds = %if.end
  %coerce.dive17 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 3, i32 0
  %6 = load i32, i32* %coerce.dive17, align 4
  %coerce.val.ii18 = zext i32 %6 to i64
  %call19 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii18) #11
  br i1 %call19, label %land.lhs.true20, label %land.lhs.true48

land.lhs.true20:                                  ; preds = %land.lhs.true
  %coerce.dive25 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 1, i32 0
  %7 = load i32, i32* %coerce.dive25, align 4
  %coerce.val.ii26 = zext i32 %7 to i64
  %call27 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii26) #11
  br i1 %call27, label %land.lhs.true28, label %land.lhs.true48

land.lhs.true28:                                  ; preds = %land.lhs.true20
  %coerce.dive29 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %8 = load i32, i32* %coerce.dive29, align 8
  %coerce.val.ii30 = zext i32 %8 to i64
  %coerce.dive31 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 6, i32 0
  %9 = load i32, i32* %coerce.dive31, align 8
  %coerce.val.ii32 = zext i32 %9 to i64
  %call33 = call fastcc i1 @gid_eq(i64 %coerce.val.ii30, i64 %coerce.val.ii32) #11
  br i1 %call33, label %land.lhs.true34, label %land.lhs.true48

land.lhs.true34:                                  ; preds = %land.lhs.true28
  %coerce.dive38 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 4, i32 0
  %10 = load i32, i32* %coerce.dive38, align 8
  %coerce.val.ii39 = zext i32 %10 to i64
  %call40 = call fastcc i1 @gid_eq(i64 %coerce.val.ii30, i64 %coerce.val.ii39) #11
  br i1 %call40, label %land.rhs, label %land.lhs.true48

land.rhs:                                         ; preds = %land.lhs.true34
  %coerce.dive45 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 2, i32 0
  %11 = load i32, i32* %coerce.dive45, align 8
  %coerce.val.ii46 = zext i32 %11 to i64
  %call47 = call fastcc i1 @gid_eq(i64 %coerce.val.ii30, i64 %coerce.val.ii46) #11
  br i1 %call47, label %if.end51, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.end, %land.lhs.true, %land.lhs.true20, %land.lhs.true28, %land.lhs.true34, %land.rhs
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 16
  %12 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call49 = call i1 @ns_capable(%struct.user_namespace* noundef %12, i32 noundef 24) #12
  br i1 %call49, label %if.end51, label %cleanup

if.end51:                                         ; preds = %land.lhs.true48, %land.rhs
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true48, %entry, %if.end51
  %retval.0 = phi i32 [ 0, %if.end51 ], [ 0, %entry ], [ -1, %land.lhs.true48 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @rlim_to_rlim64(%struct.rlimit* nocapture noundef readonly %rlim, %struct.rlimit64* nocapture noundef writeonly %rlim64) unnamed_addr #8 {
entry:
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i64 0, i32 0
  %0 = load i64, i64* %rlim_cur, align 8
  %1 = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %rlim64, i64 0, i32 0
  store i64 %0, i64* %1, align 8
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i64 0, i32 1
  %2 = load i64, i64* %rlim_max, align 8
  %3 = getelementptr inbounds %struct.rlimit64, %struct.rlimit64* %rlim64, i64 0, i32 1
  store i64 %2, i64* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #11
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @rlim64_is_infinity(i64 noundef %rlim64) unnamed_addr #4 {
entry:
  %cmp = icmp eq i64 %rlim64, -1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #12
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !26

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !28

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #12
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !38
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #11
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #11
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #12
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #14, !srcloc !39
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !28

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !40
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_setrlimit(i32 noundef %resource, %struct.rlimit* noundef %rlim) unnamed_addr #0 {
entry:
  %new_rlim = alloca %struct.rlimit, align 8
  %0 = bitcast %struct.rlimit* %new_rlim to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !13
  %1 = bitcast %struct.rlimit* %rlim to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 16) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call2 = call i32 @do_prlimit(%struct.task_struct* noundef %3, i32 noundef %resource, %struct.rlimit* noundef nonnull %new_rlim, %struct.rlimit* noundef null) #11
  %conv = sext i32 %call2 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #14, !srcloc !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_hiwater_rss(%struct.mm_struct* noundef %mm) unnamed_addr #9 {
entry:
  %hiwater_rss = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 17
  %0 = load i64, i64* %hiwater_rss, align 8
  %call = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) #11
  %cmp = icmp ugt i64 %0, %call
  %cond = select i1 %cmp, i64 %0, i64 %call
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) unnamed_addr #9 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #11
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #11
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #11
  %add3 = add i64 %add, %call2
  ret i64 %add3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #9 {
entry:
  %0 = zext i32 %member to i64
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = icmp sgt i64 %1, 0
  %spec.store.select = select i1 %2, i64 %1, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getrusage(i32 noundef %who, %struct.rusage* noundef %ru) unnamed_addr #0 {
entry:
  %r = alloca %struct.rusage, align 8
  %0 = bitcast %struct.rusage* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false), !annotation !13
  %1 = add i32 %who, -2
  %2 = icmp ult i32 %1, -3
  br i1 %2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %4 = inttoptr i64 %3 to %struct.task_struct*
  call void @getrusage(%struct.task_struct* noundef %4, i32 noundef %who, %struct.rusage* noundef nonnull %r) #11
  %5 = bitcast %struct.rusage* %ru to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %5, i8* noundef nonnull %0, i64 noundef 144) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  %conv = select i1 %tobool.not, i64 0, i64 -14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_umask(i32 noundef %mask) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 83
  %2 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %umask = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %2, i64 0, i32 3
  %3 = bitcast i32* %umask to i8*
  %and = and i32 %mask, 511
  %call8.i = call fastcc i32 @__xchg_case_mb_32(i32 noundef %and, i8* noundef %3) #12
  %conv4 = sext i32 %call8.i to i64
  ret i64 %conv4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xchg_case_mb_32(i32 noundef %x, i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i32, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09stlxr\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i32* elementtype(i32) %0, i32 %x, i32* elementtype(i32) %0) #14, !srcloc !43
  %asmresult = extractvalue { i32, i64 } %1, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_prctl(i32 noundef %option, i64 noundef %arg2, i64 noundef %arg3, i64 noundef %arg4, i64 noundef %arg5) unnamed_addr #0 {
entry:
  %comm = alloca [16 x i8], align 1
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %comm, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !13
  %call1 = call fastcc i32 @security_task_prctl(i32 noundef %option, i64 noundef %arg2, i64 noundef %arg3, i64 noundef %arg4, i64 noundef %arg5) #11
  %cmp.not = icmp eq i32 %call1, -38
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call1 to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %option, label %sw.epilog382 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb23
    i32 4, label %sw.bb26
    i32 44, label %cleanup
    i32 58, label %sw.bb359
    i32 57, label %sw.bb333
    i32 56, label %sw.bb323
    i32 55, label %sw.bb315
    i32 61, label %sw.bb305
    i32 13, label %sw.bb41
    i32 14, label %sw.bb42
    i32 15, label %sw.bb47
    i32 16, label %do.end57
    i32 60, label %sw.bb299
    i32 54, label %sw.bb291
    i32 43, label %cleanup
    i32 41, label %sw.bb242
    i32 53, label %sw.bb283
    i32 52, label %sw.bb273
    i32 42, label %sw.bb223
    i32 39, label %sw.bb208
    i32 30, label %sw.bb80
    i32 29, label %sw.bb89
    i32 33, label %sw.bb100
    i32 34, label %sw.bb138
    i32 35, label %sw.bb157
    i32 38, label %sw.bb197
    i32 36, label %sw.bb164
    i32 37, label %sw.bb170
  ]

sw.bb:                                            ; preds = %if.end
  %call3 = call fastcc i32 @valid_signal(i64 noundef %arg2) #11
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %sw.epilog382, label %if.end5

if.end5:                                          ; preds = %sw.bb
  %conv6 = trunc i64 %arg2 to i32
  %pdeath_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 42
  store i32 %conv6, i32* %pdeath_signal, align 64
  br label %sw.epilog382

sw.bb7:                                           ; preds = %if.end
  %3 = inttoptr i64 %arg2 to i8*
  %call8 = call fastcc i64 @__range_ok(i8* noundef %3, i64 noundef 4) #11
  %tobool9.not = icmp eq i64 %call8, 0
  br i1 %tobool9.not, label %sw.epilog382, label %if.then10

if.then10:                                        ; preds = %sw.bb7
  %call11 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %3) #11
  %4 = bitcast i8* %call11 to i32*
  %pdeath_signal15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 42
  %5 = load i32, i32* %pdeath_signal15, align 64
  %6 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %5, i32* %4, i32 -14, i32 0) #14, !srcloc !44
  %phi.cast547 = sext i32 %6 to i64
  br label %sw.epilog382

sw.bb23:                                          ; preds = %if.end
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %7 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call24 = call fastcc i32 @get_dumpable(%struct.mm_struct* noundef %7) #11
  %8 = zext i32 %call24 to i64
  br label %sw.epilog382

sw.bb26:                                          ; preds = %if.end
  %.not546 = icmp ult i64 %arg2, 2
  br i1 %.not546, label %if.end32, label %sw.epilog382

if.end32:                                         ; preds = %sw.bb26
  %mm33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %9 = load %struct.mm_struct*, %struct.mm_struct** %mm33, align 8
  %conv34 = trunc i64 %arg2 to i32
  call void @set_dumpable(%struct.mm_struct* noundef %9, i32 noundef %conv34) #12
  br label %sw.epilog382

sw.bb41:                                          ; preds = %if.end
  br label %sw.epilog382

sw.bb42:                                          ; preds = %if.end
  %cmp43.not = icmp eq i64 %arg2, 0
  %spec.select = select i1 %cmp43.not, i64 0, i64 -22
  br label %sw.epilog382

sw.bb47:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %comm, i64 0, i64 15
  store i8 0, i8* %arrayidx, align 1
  %10 = inttoptr i64 %arg2 to i8*
  %call48 = call i64 @strncpy_from_user(i8* noundef nonnull %2, i8* noundef %10, i64 noundef 15) #12
  %cmp49 = icmp slt i64 %call48, 0
  br i1 %cmp49, label %cleanup, label %if.end52

if.end52:                                         ; preds = %sw.bb47
  call fastcc void @set_task_comm(%struct.task_struct* noundef %1, i8* noundef nonnull %2) #11
  br label %sw.epilog382

do.end57:                                         ; preds = %if.end
  %call60 = call i8* @__get_task_comm(i8* noundef nonnull %2, i64 noundef 16, %struct.task_struct* noundef %1) #12
  %11 = inttoptr i64 %arg2 to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %11, i8* noundef nonnull %2, i64 noundef 16) #12
  %tobool63.not = icmp eq i64 %call2.i, 0
  br i1 %tobool63.not, label %sw.epilog382, label %cleanup

sw.bb80:                                          ; preds = %if.end
  %timer_slack_ns87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 131
  %12 = load i64, i64* %timer_slack_ns87, align 64
  br label %sw.epilog382

sw.bb89:                                          ; preds = %if.end
  %cmp90 = icmp eq i64 %arg2, 0
  br i1 %cmp90, label %if.then92, label %if.else96

if.then92:                                        ; preds = %sw.bb89
  %default_timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 132
  %13 = load i64, i64* %default_timer_slack_ns, align 8
  %timer_slack_ns95 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 131
  store i64 %13, i64* %timer_slack_ns95, align 64
  br label %sw.epilog382

if.else96:                                        ; preds = %sw.bb89
  %timer_slack_ns98 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 131
  store i64 %arg2, i64* %timer_slack_ns98, align 64
  br label %sw.epilog382

sw.bb100:                                         ; preds = %if.end
  %or = or i64 %arg5, %arg4
  %tobool101.not = icmp eq i64 %or, 0
  br i1 %tobool101.not, label %if.end103, label %cleanup

if.end103:                                        ; preds = %sw.bb100
  switch i64 %arg2, label %cleanup [
    i64 0, label %sw.bb104
    i64 1, label %sw.bb110
  ]

sw.bb104:                                         ; preds = %if.end103
  %cmp105.not = icmp eq i64 %arg3, 0
  br i1 %cmp105.not, label %if.end108, label %cleanup

if.end108:                                        ; preds = %sw.bb104
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %14 = load i32, i32* %flags, align 4
  %and = and i32 %14, -129
  store i32 %and, i32* %flags, align 4
  br label %sw.epilog382

sw.bb110:                                         ; preds = %if.end103
  %flags112 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %15 = load i32, i32* %flags112, align 4
  %or113 = or i32 %15, 128
  store i32 %or113, i32* %flags112, align 4
  switch i64 %arg3, label %cleanup [
    i64 1, label %if.then116
    i64 0, label %if.then123
    i64 2, label %if.then130
  ]

if.then116:                                       ; preds = %sw.bb110
  %or119 = or i32 %15, 134217856
  store i32 %or119, i32* %flags112, align 4
  br label %sw.epilog382

if.then123:                                       ; preds = %sw.bb110
  %and126 = and i32 %or113, -134217729
  store i32 %and126, i32* %flags112, align 4
  br label %sw.epilog382

if.then130:                                       ; preds = %sw.bb110
  %and133 = and i32 %15, -134217857
  store i32 %and133, i32* %flags112, align 4
  br label %sw.epilog382

sw.bb138:                                         ; preds = %if.end
  %or139 = or i64 %arg5, %arg4
  %or140 = or i64 %or139, %arg2
  %or141 = or i64 %or140, %arg3
  %tobool142.not = icmp eq i64 %or141, 0
  br i1 %tobool142.not, label %if.end144, label %cleanup

if.end144:                                        ; preds = %sw.bb138
  %flags146 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %16 = load i32, i32* %flags146, align 4
  %and147 = and i32 %16, 128
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %sw.epilog382, label %if.then149

if.then149:                                       ; preds = %if.end144
  %and152 = lshr i32 %16, 27
  %and152.lobit = and i32 %and152, 1
  %17 = zext i32 %and152.lobit to i64
  br label %sw.epilog382

sw.bb157:                                         ; preds = %if.end
  %conv158 = trunc i64 %arg2 to i32
  %call159 = call fastcc i32 @prctl_set_mm(i32 noundef %conv158, i64 noundef %arg3, i64 noundef %arg4, i64 noundef %arg5) #11
  %conv160 = sext i32 %call159 to i64
  br label %sw.epilog382

sw.bb164:                                         ; preds = %if.end
  %tobool165 = icmp ne i64 %arg2, 0
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %18 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %is_child_subreaper = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %18, i64 0, i32 13
  %19 = zext i1 %tobool165 to i8
  %bf.load = load i8, i8* %is_child_subreaper, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %19
  store i8 %bf.set, i8* %is_child_subreaper, align 8
  br i1 %tobool165, label %if.end169, label %sw.epilog382

if.end169:                                        ; preds = %sw.bb164
  call void @walk_process_tree(%struct.task_struct* noundef %1, i32 (%struct.task_struct*, i8*)* noundef nonnull @propagate_has_child_subreaper, i8* noundef null) #12
  br label %sw.epilog382

sw.bb170:                                         ; preds = %if.end
  %20 = inttoptr i64 %arg2 to i8*
  %call174 = call fastcc i64 @__range_ok(i8* noundef %20, i64 noundef 4) #11
  %tobool175.not = icmp eq i64 %call174, 0
  br i1 %tobool175.not, label %sw.epilog382, label %if.then176

if.then176:                                       ; preds = %sw.bb170
  %call177 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %20) #11
  %21 = bitcast i8* %call177 to i32*
  %signal182 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %22 = load %struct.signal_struct*, %struct.signal_struct** %signal182, align 8
  %is_child_subreaper183 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %22, i64 0, i32 13
  %bf.load184 = load i8, i8* %is_child_subreaper183, align 8
  %bf.clear185 = and i8 %bf.load184, 1
  %bf.cast = zext i8 %bf.clear185 to i32
  %23 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %bf.cast, i32* %21, i32 -14, i32 0) #14, !srcloc !45
  %phi.cast = sext i32 %23 to i64
  br label %sw.epilog382

sw.bb197:                                         ; preds = %if.end
  %cmp198 = icmp ne i64 %arg2, 1
  %24 = or i64 %arg5, %arg4
  %25 = or i64 %24, %arg3
  %26 = icmp ne i64 %25, 0
  %27 = or i1 %cmp198, %26
  br i1 %27, label %cleanup, label %if.end206

if.end206:                                        ; preds = %sw.bb197
  call fastcc void @task_set_no_new_privs(%struct.task_struct* noundef %1) #11
  br label %sw.epilog382

sw.bb208:                                         ; preds = %if.end
  %28 = or i64 %arg5, %arg4
  %29 = or i64 %28, %arg2
  %30 = or i64 %29, %arg3
  %.not545 = icmp eq i64 %30, 0
  br i1 %.not545, label %if.end217, label %cleanup

if.end217:                                        ; preds = %sw.bb208
  %call219 = call fastcc i1 @task_no_new_privs(%struct.task_struct* noundef %1) #11
  %31 = zext i1 %call219 to i64
  br label %cleanup

sw.bb223:                                         ; preds = %if.end
  %32 = or i64 %arg5, %arg4
  %33 = or i64 %32, %arg2
  %34 = or i64 %33, %arg3
  %.not544 = icmp eq i64 %34, 0
  br i1 %.not544, label %if.end232, label %cleanup

if.end232:                                        ; preds = %sw.bb223
  %mm233 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %35 = load %struct.mm_struct*, %struct.mm_struct** %mm233, align 8
  %flags234 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i64 0, i32 0, i32 43
  %36 = load volatile i64, i64* %flags234, align 8
  %37 = lshr i64 %36, 24
  %.lobit = and i64 %37, 1
  br label %sw.epilog382

sw.bb242:                                         ; preds = %if.end
  %38 = or i64 %arg5, %arg4
  %39 = or i64 %38, %arg3
  %.not543 = icmp eq i64 %39, 0
  br i1 %.not543, label %if.end249, label %cleanup

if.end249:                                        ; preds = %sw.bb242
  %mm250 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %40 = load %struct.mm_struct*, %struct.mm_struct** %mm250, align 8
  %call251 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %40) #11
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.end254, label %cleanup

if.end254:                                        ; preds = %if.end249
  %tobool255.not = icmp eq i64 %arg2, 0
  %41 = load %struct.mm_struct*, %struct.mm_struct** %mm250, align 8
  %flags261 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i64 0, i32 0, i32 43
  br i1 %tobool255.not, label %if.else259, label %if.then256

if.then256:                                       ; preds = %if.end254
  call fastcc void @set_bit(i64 noundef 24, i64* noundef %flags261) #11
  br label %if.end262

if.else259:                                       ; preds = %if.end254
  call fastcc void @clear_bit(i64* noundef %flags261) #11
  br label %if.end262

if.end262:                                        ; preds = %if.else259, %if.then256
  %42 = load %struct.mm_struct*, %struct.mm_struct** %mm250, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %42) #11
  br label %sw.epilog382

sw.bb273:                                         ; preds = %if.end
  %43 = or i64 %arg5, %arg4
  %44 = or i64 %43, %arg3
  %.not542 = icmp eq i64 %44, 0
  br i1 %.not542, label %if.end280, label %cleanup

if.end280:                                        ; preds = %sw.bb273
  %call281 = call i32 @arch_prctl_spec_ctrl_get(%struct.task_struct* noundef %1, i64 noundef %arg2) #11
  %conv282 = sext i32 %call281 to i64
  br label %sw.epilog382

sw.bb283:                                         ; preds = %if.end
  %45 = or i64 %arg5, %arg4
  %.not541 = icmp eq i64 %45, 0
  br i1 %.not541, label %if.end288, label %cleanup

if.end288:                                        ; preds = %sw.bb283
  %call289 = call i32 @arch_prctl_spec_ctrl_set(%struct.task_struct* noundef %1, i64 noundef %arg2, i64 noundef %arg3) #11
  %conv290 = sext i32 %call289 to i64
  br label %sw.epilog382

sw.bb291:                                         ; preds = %if.end
  %46 = or i64 %arg5, %arg4
  %47 = or i64 %46, %arg3
  %.not540 = icmp eq i64 %47, 0
  br i1 %.not540, label %sw.epilog382, label %cleanup

sw.bb299:                                         ; preds = %if.end
  %48 = or i64 %arg5, %arg4
  %.not539 = icmp eq i64 %48, 0
  br i1 %.not539, label %sw.epilog382, label %cleanup

sw.bb305:                                         ; preds = %if.end
  %49 = or i64 %arg5, %arg4
  %50 = or i64 %49, %arg2
  %51 = or i64 %50, %arg3
  %.not538 = icmp eq i64 %51, 0
  br i1 %.not538, label %sw.epilog382, label %cleanup

sw.bb315:                                         ; preds = %if.end
  %52 = or i64 %arg5, %arg4
  %53 = or i64 %52, %arg3
  %.not537 = icmp eq i64 %53, 0
  br i1 %.not537, label %sw.epilog382, label %cleanup

sw.bb323:                                         ; preds = %if.end
  %54 = or i64 %arg5, %arg4
  %55 = or i64 %54, %arg2
  %56 = or i64 %55, %arg3
  %.not536 = icmp eq i64 %56, 0
  br i1 %.not536, label %sw.epilog382, label %cleanup

sw.bb333:                                         ; preds = %if.end
  %call334 = call i1 @capable(i32 noundef 24) #12
  br i1 %call334, label %if.end336, label %cleanup

if.end336:                                        ; preds = %sw.bb333
  %57 = or i64 %arg5, %arg4
  %58 = or i64 %57, %arg3
  %.not535 = icmp eq i64 %58, 0
  br i1 %.not535, label %if.end343, label %cleanup

if.end343:                                        ; preds = %if.end336
  switch i64 %arg2, label %cleanup [
    i64 1, label %if.then346
    i64 0, label %if.then352
  ]

if.then346:                                       ; preds = %if.end343
  %flags348 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %59 = load i32, i32* %flags348, align 4
  %or349 = or i32 %59, 1572864
  store i32 %or349, i32* %flags348, align 4
  br label %sw.epilog382

if.then352:                                       ; preds = %if.end343
  %flags354 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %60 = load i32, i32* %flags354, align 4
  %and355 = and i32 %60, -1572865
  store i32 %and355, i32* %flags354, align 4
  br label %sw.epilog382

sw.bb359:                                         ; preds = %if.end
  %call360 = call i1 @capable(i32 noundef 24) #12
  br i1 %call360, label %if.end362, label %cleanup

if.end362:                                        ; preds = %sw.bb359
  %61 = or i64 %arg5, %arg4
  %62 = or i64 %61, %arg2
  %63 = or i64 %62, %arg3
  %.not = icmp eq i64 %63, 0
  br i1 %.not, label %if.end371, label %cleanup

if.end371:                                        ; preds = %if.end362
  %flags373 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %64 = load i32, i32* %flags373, align 4
  %and374 = and i32 %64, 1572864
  %cmp375 = icmp eq i32 %and374, 1572864
  %65 = zext i1 %cmp375 to i64
  br label %sw.epilog382

sw.epilog382:                                     ; preds = %sw.bb42, %if.end, %sw.bb323, %sw.bb315, %sw.bb305, %sw.bb299, %sw.bb291, %if.then176, %sw.bb170, %if.end144, %sw.bb26, %if.then10, %sw.bb7, %sw.bb, %if.then346, %if.then352, %sw.bb164, %if.then149, %if.end108, %if.then123, %if.then130, %if.then116, %if.then92, %if.else96, %sw.bb80, %do.end57, %if.end371, %if.end288, %if.end280, %if.end262, %if.end232, %if.end206, %if.end169, %sw.bb157, %if.end52, %sw.bb41, %if.end32, %sw.bb23, %if.end5
  %error.0 = phi i64 [ %65, %if.end371 ], [ 0, %if.then346 ], [ 0, %if.then352 ], [ %conv290, %if.end288 ], [ %conv282, %if.end280 ], [ 0, %if.end262 ], [ %.lobit, %if.end232 ], [ 0, %if.end206 ], [ 0, %if.end169 ], [ 0, %sw.bb164 ], [ %conv160, %sw.bb157 ], [ %17, %if.then149 ], [ 0, %if.then116 ], [ 0, %if.then123 ], [ 0, %if.then130 ], [ 0, %if.end108 ], [ 0, %if.then92 ], [ 0, %if.else96 ], [ %12, %sw.bb80 ], [ 0, %do.end57 ], [ 0, %if.end52 ], [ 0, %sw.bb41 ], [ 0, %if.end32 ], [ %8, %sw.bb23 ], [ 0, %if.end5 ], [ -22, %sw.bb ], [ %phi.cast547, %if.then10 ], [ -14, %sw.bb7 ], [ -22, %sw.bb26 ], [ %spec.select, %sw.bb42 ], [ 2, %if.end144 ], [ %phi.cast, %if.then176 ], [ -14, %sw.bb170 ], [ -22, %sw.bb291 ], [ -22, %sw.bb299 ], [ -22, %sw.bb305 ], [ -22, %sw.bb315 ], [ -22, %sw.bb323 ], [ -22, %if.end ]
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end, %if.end362, %sw.bb359, %if.end343, %if.end336, %sw.bb333, %sw.bb323, %sw.bb315, %sw.bb305, %sw.bb299, %sw.bb291, %sw.bb283, %sw.bb273, %if.end249, %sw.bb242, %sw.bb223, %sw.bb208, %sw.bb197, %sw.bb138, %if.end103, %sw.bb110, %sw.bb104, %sw.bb100, %do.end57, %sw.bb47, %sw.epilog382, %if.end217, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %error.0, %sw.epilog382 ], [ %31, %if.end217 ], [ -14, %sw.bb47 ], [ -14, %do.end57 ], [ -22, %sw.bb100 ], [ -22, %sw.bb104 ], [ -22, %sw.bb110 ], [ -22, %if.end103 ], [ -22, %sw.bb138 ], [ -22, %sw.bb197 ], [ -22, %sw.bb208 ], [ -22, %sw.bb223 ], [ -22, %sw.bb242 ], [ -4, %if.end249 ], [ -22, %if.end ], [ -22, %if.end ], [ -22, %sw.bb273 ], [ -22, %sw.bb283 ], [ -22, %sw.bb291 ], [ -22, %sw.bb299 ], [ -22, %sw.bb305 ], [ -22, %sw.bb315 ], [ -22, %sw.bb323 ], [ -1, %sw.bb333 ], [ -22, %if.end336 ], [ -22, %if.end343 ], [ -1, %sw.bb359 ], [ -22, %if.end362 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_task_prctl(i32 noundef %option, i64 noundef %arg2, i64 noundef %arg3, i64 noundef %arg4, i64 noundef %arg5) unnamed_addr #0 {
entry:
  %call = call i32 @cap_task_prctl(i32 noundef %option, i64 noundef %arg2, i64 noundef %arg3, i64 noundef %arg4, i64 noundef %arg5) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @valid_signal(i64 noundef %sig) unnamed_addr #4 {
entry:
  %cmp = icmp ult i64 %sig, 65
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_dumpable(%struct.mm_struct* nocapture noundef readonly %mm) unnamed_addr #6 {
entry:
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  %0 = load i64, i64* %flags, align 8
  %call = call fastcc i32 @__get_dumpable(i64 noundef %0) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_dumpable(%struct.mm_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strncpy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_task_comm(%struct.task_struct* noundef %tsk, i8* noundef %from) unnamed_addr #0 {
entry:
  call void @__set_task_comm(%struct.task_struct* noundef %tsk, i8* noundef %from, i1 noundef false) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__get_task_comm(i8* noundef, i64 noundef, %struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @prctl_set_mm(i32 noundef %opt, i64 noundef %addr, i64 noundef %arg4, i64 noundef %arg5) unnamed_addr #0 {
entry:
  %prctl_map = alloca %struct.prctl_mm_map, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast %struct.prctl_mm_map* %prctl_map to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %3) #14
  %4 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 11
  %5 = bitcast i64** %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(104) %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 13
  store i32 -1, i32* %6, align 4
  %tobool.not = icmp eq i64 %arg5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tobool2.not = icmp eq i64 %arg4, 0
  br i1 %tobool2.not, label %if.end, label %switch.early.test

switch.early.test:                                ; preds = %lor.lhs.false
  switch i32 %opt, label %cleanup [
    i32 15, label %if.end
    i32 14, label %if.end
    i32 12, label %if.end
  ]

if.end:                                           ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %lor.lhs.false
  %call7 = call i1 @capable(i32 noundef 24) #12
  br i1 %call7, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end
  switch i32 %opt, label %if.end18 [
    i32 13, label %if.then11
    i32 12, label %if.then16
  ]

if.then11:                                        ; preds = %if.end9
  %conv = trunc i64 %addr to i32
  %call12 = call fastcc i32 @prctl_set_mm_exe_file(%struct.mm_struct* noundef %2, i32 noundef %conv) #11
  br label %cleanup

if.then16:                                        ; preds = %if.end9
  %call17 = call fastcc i32 @prctl_set_auxv(%struct.mm_struct* noundef %2, i64 noundef %addr, i64 noundef %arg4) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %7 = load i64, i64* @vabits_actual, align 8
  %addr.highbits = lshr i64 %addr, %7
  %cmp19.not = icmp ne i64 %addr.highbits, 0
  %8 = load i64, i64* @mmap_min_addr, align 8
  %cmp22 = icmp ugt i64 %8, %addr
  %or.cond = select i1 %cmp19.not, i1 true, i1 %cmp22
  br i1 %or.cond, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end18
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %2) #11
  %call26 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %2, i64 noundef %addr) #12
  %rlock.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 27, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %start_code = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 28
  %9 = load i64, i64* %start_code, align 8
  %start_code27 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 0
  store i64 %9, i64* %start_code27, align 8
  %end_code = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 29
  %10 = load i64, i64* %end_code, align 8
  %end_code28 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 1
  store i64 %10, i64* %end_code28, align 8
  %start_data = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 30
  %11 = load i64, i64* %start_data, align 8
  %start_data29 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 2
  store i64 %11, i64* %start_data29, align 8
  %end_data = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 31
  %12 = load i64, i64* %end_data, align 8
  %end_data30 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 3
  store i64 %12, i64* %end_data30, align 8
  %start_brk = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 32
  %13 = load i64, i64* %start_brk, align 8
  %start_brk31 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 4
  store i64 %13, i64* %start_brk31, align 8
  %brk = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 33
  %14 = load i64, i64* %brk, align 8
  %brk32 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 5
  store i64 %14, i64* %brk32, align 8
  %start_stack = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 34
  %15 = load i64, i64* %start_stack, align 8
  %start_stack33 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 6
  store i64 %15, i64* %start_stack33, align 8
  %arg_start = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 35
  %16 = load i64, i64* %arg_start, align 8
  %arg_start34 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 7
  store i64 %16, i64* %arg_start34, align 8
  %arg_end = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 36
  %17 = load i64, i64* %arg_end, align 8
  %arg_end35 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 8
  store i64 %17, i64* %arg_end35, align 8
  %env_start = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 37
  %18 = load i64, i64* %env_start, align 8
  %env_start36 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 9
  store i64 %18, i64* %env_start36, align 8
  %env_end = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 38
  %19 = load i64, i64* %env_end, align 8
  %env_end37 = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 10
  store i64 %19, i64* %env_end37, align 8
  switch i32 %opt, label %out [
    i32 1, label %sw.bb
    i32 2, label %sw.bb39
    i32 3, label %sw.bb41
    i32 4, label %sw.bb43
    i32 5, label %sw.bb45
    i32 6, label %sw.bb47
    i32 7, label %sw.bb49
    i32 8, label %sw.bb51
    i32 9, label %sw.bb53
    i32 10, label %sw.bb55
    i32 11, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.end25
  store i64 %addr, i64* %start_code27, align 8
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end25
  store i64 %addr, i64* %end_code28, align 8
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end25
  store i64 %addr, i64* %start_data29, align 8
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end25
  store i64 %addr, i64* %end_data30, align 8
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end25
  store i64 %addr, i64* %start_stack33, align 8
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end25
  store i64 %addr, i64* %start_brk31, align 8
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end25
  store i64 %addr, i64* %brk32, align 8
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end25
  store i64 %addr, i64* %arg_start34, align 8
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end25
  store i64 %addr, i64* %arg_end35, align 8
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end25
  store i64 %addr, i64* %env_start36, align 8
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end25
  store i64 %addr, i64* %env_end37, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb
  %20 = phi i64 [ %addr, %sw.bb57 ], [ %19, %sw.bb55 ], [ %19, %sw.bb53 ], [ %19, %sw.bb51 ], [ %19, %sw.bb49 ], [ %19, %sw.bb47 ], [ %19, %sw.bb45 ], [ %19, %sw.bb43 ], [ %19, %sw.bb41 ], [ %19, %sw.bb39 ], [ %19, %sw.bb ]
  %21 = phi i64 [ %18, %sw.bb57 ], [ %addr, %sw.bb55 ], [ %18, %sw.bb53 ], [ %18, %sw.bb51 ], [ %18, %sw.bb49 ], [ %18, %sw.bb47 ], [ %18, %sw.bb45 ], [ %18, %sw.bb43 ], [ %18, %sw.bb41 ], [ %18, %sw.bb39 ], [ %18, %sw.bb ]
  %22 = phi i64 [ %17, %sw.bb57 ], [ %17, %sw.bb55 ], [ %addr, %sw.bb53 ], [ %17, %sw.bb51 ], [ %17, %sw.bb49 ], [ %17, %sw.bb47 ], [ %17, %sw.bb45 ], [ %17, %sw.bb43 ], [ %17, %sw.bb41 ], [ %17, %sw.bb39 ], [ %17, %sw.bb ]
  %23 = phi i64 [ %16, %sw.bb57 ], [ %16, %sw.bb55 ], [ %16, %sw.bb53 ], [ %addr, %sw.bb51 ], [ %16, %sw.bb49 ], [ %16, %sw.bb47 ], [ %16, %sw.bb45 ], [ %16, %sw.bb43 ], [ %16, %sw.bb41 ], [ %16, %sw.bb39 ], [ %16, %sw.bb ]
  %24 = phi i64 [ %15, %sw.bb57 ], [ %15, %sw.bb55 ], [ %15, %sw.bb53 ], [ %15, %sw.bb51 ], [ %15, %sw.bb49 ], [ %15, %sw.bb47 ], [ %addr, %sw.bb45 ], [ %15, %sw.bb43 ], [ %15, %sw.bb41 ], [ %15, %sw.bb39 ], [ %15, %sw.bb ]
  %25 = phi i64 [ %14, %sw.bb57 ], [ %14, %sw.bb55 ], [ %14, %sw.bb53 ], [ %14, %sw.bb51 ], [ %addr, %sw.bb49 ], [ %14, %sw.bb47 ], [ %14, %sw.bb45 ], [ %14, %sw.bb43 ], [ %14, %sw.bb41 ], [ %14, %sw.bb39 ], [ %14, %sw.bb ]
  %26 = phi i64 [ %13, %sw.bb57 ], [ %13, %sw.bb55 ], [ %13, %sw.bb53 ], [ %13, %sw.bb51 ], [ %13, %sw.bb49 ], [ %addr, %sw.bb47 ], [ %13, %sw.bb45 ], [ %13, %sw.bb43 ], [ %13, %sw.bb41 ], [ %13, %sw.bb39 ], [ %13, %sw.bb ]
  %27 = phi i64 [ %12, %sw.bb57 ], [ %12, %sw.bb55 ], [ %12, %sw.bb53 ], [ %12, %sw.bb51 ], [ %12, %sw.bb49 ], [ %12, %sw.bb47 ], [ %12, %sw.bb45 ], [ %addr, %sw.bb43 ], [ %12, %sw.bb41 ], [ %12, %sw.bb39 ], [ %12, %sw.bb ]
  %28 = phi i64 [ %11, %sw.bb57 ], [ %11, %sw.bb55 ], [ %11, %sw.bb53 ], [ %11, %sw.bb51 ], [ %11, %sw.bb49 ], [ %11, %sw.bb47 ], [ %11, %sw.bb45 ], [ %11, %sw.bb43 ], [ %addr, %sw.bb41 ], [ %11, %sw.bb39 ], [ %11, %sw.bb ]
  %29 = phi i64 [ %10, %sw.bb57 ], [ %10, %sw.bb55 ], [ %10, %sw.bb53 ], [ %10, %sw.bb51 ], [ %10, %sw.bb49 ], [ %10, %sw.bb47 ], [ %10, %sw.bb45 ], [ %10, %sw.bb43 ], [ %10, %sw.bb41 ], [ %addr, %sw.bb39 ], [ %10, %sw.bb ]
  %30 = phi i64 [ %9, %sw.bb57 ], [ %9, %sw.bb55 ], [ %9, %sw.bb53 ], [ %9, %sw.bb51 ], [ %9, %sw.bb49 ], [ %9, %sw.bb47 ], [ %9, %sw.bb45 ], [ %9, %sw.bb43 ], [ %9, %sw.bb41 ], [ %9, %sw.bb39 ], [ %addr, %sw.bb ]
  %call59 = call fastcc i32 @validate_prctl_map_addr(%struct.prctl_mm_map* noundef nonnull %prctl_map) #11
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %out

if.end62:                                         ; preds = %sw.epilog
  switch i32 %opt, label %sw.epilog67 [
    i32 5, label %sw.bb63
    i32 8, label %sw.bb63
    i32 9, label %sw.bb63
    i32 10, label %sw.bb63
    i32 11, label %sw.bb63
  ]

sw.bb63:                                          ; preds = %if.end62, %if.end62, %if.end62, %if.end62, %if.end62
  %tobool64.not = icmp eq %struct.vm_area_struct* %call26, null
  br i1 %tobool64.not, label %out, label %sw.epilog67

sw.epilog67:                                      ; preds = %sw.bb63, %if.end62
  store i64 %30, i64* %start_code, align 8
  store i64 %29, i64* %end_code, align 8
  store i64 %28, i64* %start_data, align 8
  store i64 %27, i64* %end_data, align 8
  store i64 %26, i64* %start_brk, align 8
  store i64 %25, i64* %brk, align 8
  store i64 %24, i64* %start_stack, align 8
  store i64 %23, i64* %arg_start, align 8
  store i64 %22, i64* %arg_end, align 8
  store i64 %21, i64* %env_start, align 8
  store i64 %20, i64* %env_end, align 8
  br label %out

out:                                              ; preds = %sw.bb63, %sw.epilog, %if.end25, %sw.epilog67
  %error.0 = phi i32 [ -22, %if.end25 ], [ %call59, %sw.epilog ], [ 0, %sw.epilog67 ], [ -14, %sw.bb63 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end, %entry, %switch.early.test, %out, %if.then16, %if.then11
  %retval.0 = phi i32 [ %call12, %if.then11 ], [ %call17, %if.then16 ], [ %error.0, %out ], [ -22, %switch.early.test ], [ -22, %entry ], [ -1, %if.end ], [ -22, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %3) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @walk_process_tree(%struct.task_struct* noundef, i32 (%struct.task_struct*, i8*)* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @propagate_has_child_subreaper(%struct.task_struct* nocapture noundef readonly %p, i8* nocapture noundef readnone %data) #8 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %has_child_subreaper = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 13
  %bf.load = load i8, i8* %has_child_subreaper, align 8
  %1 = and i8 %bf.load, 2
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %p) #11
  %call1 = call fastcc i1 @is_child_reaper(%struct.pid* noundef %call) #11
  br i1 %call1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, i8* %has_child_subreaper, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_set_no_new_privs(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %atomic_flags) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @task_no_new_privs(%struct.task_struct* noundef %p) unnamed_addr #9 {
entry:
  %atomic_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 48
  %0 = load volatile i64, i64* %atomic_flags, align 8
  %conv.i1 = and i64 %0, 1
  %tobool = icmp ne i64 %conv.i1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_prctl(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__get_dumpable(i64 noundef %mm_flags) unnamed_addr #4 {
entry:
  %0 = trunc i64 %mm_flags to i32
  %conv = and i32 %0, 3
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(%struct.task_struct* noundef, i8* noundef, i1 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @prctl_set_mm_exe_file(%struct.mm_struct* noundef %mm, i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #11
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %0) #11
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 0
  %1 = load i16, i16* %i_mode, align 8
  %2 = and i16 %1, -4096
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %lor.lhs.false, label %exit

lor.lhs.false:                                    ; preds = %if.end
  %f_path = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %call5 = call i1 @path_noexec(%struct.path* noundef %f_path) #12
  br i1 %call5, label %exit, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  %call10 = call fastcc i32 @file_permission(%struct.file* noundef nonnull %0) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %exit

if.end13:                                         ; preds = %if.end8
  %call15 = call i32 @replace_mm_exe_file(%struct.mm_struct* noundef %mm, %struct.file* noundef nonnull %0) #12
  br label %exit

exit:                                             ; preds = %if.end8, %if.end, %lor.lhs.false, %if.end13
  %err.0 = phi i32 [ -13, %lor.lhs.false ], [ %call10, %if.end8 ], [ %call15, %if.end13 ], [ -13, %if.end ]
  call fastcc void @fdput([2 x i64] %call) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %exit
  %retval.0 = phi i32 [ %err.0, %exit ], [ -9, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @prctl_set_auxv(%struct.mm_struct* noundef %mm, i64 noundef %addr, i64 noundef %len) unnamed_addr #0 {
entry:
  %user_auxv = alloca [46 x i64], align 8
  %0 = bitcast [46 x i64]* %user_auxv to i8*
  call void @llvm.lifetime.start.p0i8(i64 368, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(368) %0, i8 0, i64 368, i1 false)
  %cmp = icmp ugt i64 %len, 368
  br i1 %cmp, label %cleanup, label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %entry
  %1 = inttoptr i64 %addr to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef %len) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %copy_from_user.exit
  %arrayidx = getelementptr inbounds [46 x i64], [46 x i64]* %user_auxv, i64 0, i64 44
  store i64 0, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds [46 x i64], [46 x i64]* %user_auxv, i64 0, i64 45
  store i64 0, i64* %arrayidx3, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  call fastcc void @task_lock(%struct.task_struct* noundef %3) #11
  %arraydecay5 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 39, i64 0
  %4 = bitcast i64* %arraydecay5 to i8*
  %call7 = call i8* @memcpy(i8* noundef %4, i8* noundef nonnull %0, i64 noundef %len) #12
  call fastcc void @task_unlock(%struct.task_struct* noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %copy_from_user.exit, %entry, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry ], [ -14, %copy_from_user.exit ]
  call void @llvm.lifetime.end.p0i8(i64 368, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_read(%struct.rw_semaphore* noundef %mmap_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @validate_prctl_map_addr(%struct.prctl_mm_map* nocapture noundef readonly %prctl_map) unnamed_addr #0 {
entry:
  %0 = load i64, i64* @vabits_actual, align 8
  %1 = load i64, i64* @mmap_min_addr, align 8
  %2 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 0
  %3 = load i64, i64* %2, align 8
  %.highbits = lshr i64 %3, %0
  %cmp3.not = icmp eq i64 %.highbits, 0
  %cmp5 = icmp uge i64 %3, %1
  %or.cond = select i1 %cmp3.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %for.cond, label %cleanup34

for.cond:                                         ; preds = %entry
  %add.ptr.1 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 1
  %4 = load i64, i64* %add.ptr.1, align 8
  %.highbits.1 = lshr i64 %4, %0
  %cmp3.not.1 = icmp eq i64 %.highbits.1, 0
  %cmp5.1 = icmp uge i64 %4, %1
  %or.cond.1 = select i1 %cmp3.not.1, i1 %cmp5.1, i1 false
  br i1 %or.cond.1, label %for.cond.1, label %cleanup34

for.cond.1:                                       ; preds = %for.cond
  %add.ptr.2 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 2
  %5 = load i64, i64* %add.ptr.2, align 8
  %.highbits.2 = lshr i64 %5, %0
  %cmp3.not.2 = icmp eq i64 %.highbits.2, 0
  %cmp5.2 = icmp uge i64 %5, %1
  %or.cond.2 = select i1 %cmp3.not.2, i1 %cmp5.2, i1 false
  br i1 %or.cond.2, label %for.cond.2, label %cleanup34

for.cond.2:                                       ; preds = %for.cond.1
  %add.ptr.3 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 3
  %6 = load i64, i64* %add.ptr.3, align 8
  %.highbits.3 = lshr i64 %6, %0
  %cmp3.not.3 = icmp eq i64 %.highbits.3, 0
  %cmp5.3 = icmp uge i64 %6, %1
  %or.cond.3 = select i1 %cmp3.not.3, i1 %cmp5.3, i1 false
  br i1 %or.cond.3, label %for.cond.3, label %cleanup34

for.cond.3:                                       ; preds = %for.cond.2
  %add.ptr.4 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 4
  %7 = load i64, i64* %add.ptr.4, align 8
  %.highbits.4 = lshr i64 %7, %0
  %cmp3.not.4 = icmp eq i64 %.highbits.4, 0
  %cmp5.4 = icmp uge i64 %7, %1
  %or.cond.4 = select i1 %cmp3.not.4, i1 %cmp5.4, i1 false
  br i1 %or.cond.4, label %for.cond.4, label %cleanup34

for.cond.4:                                       ; preds = %for.cond.3
  %add.ptr.5 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 5
  %8 = load i64, i64* %add.ptr.5, align 8
  %.highbits.5 = lshr i64 %8, %0
  %cmp3.not.5 = icmp eq i64 %.highbits.5, 0
  %cmp5.5 = icmp uge i64 %8, %1
  %or.cond.5 = select i1 %cmp3.not.5, i1 %cmp5.5, i1 false
  br i1 %or.cond.5, label %for.cond.5, label %cleanup34

for.cond.5:                                       ; preds = %for.cond.4
  %add.ptr.6 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 6
  %9 = load i64, i64* %add.ptr.6, align 8
  %.highbits.6 = lshr i64 %9, %0
  %cmp3.not.6 = icmp eq i64 %.highbits.6, 0
  %cmp5.6 = icmp uge i64 %9, %1
  %or.cond.6 = select i1 %cmp3.not.6, i1 %cmp5.6, i1 false
  br i1 %or.cond.6, label %for.cond.6, label %cleanup34

for.cond.6:                                       ; preds = %for.cond.5
  %add.ptr.7 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 7
  %10 = load i64, i64* %add.ptr.7, align 8
  %.highbits.7 = lshr i64 %10, %0
  %cmp3.not.7 = icmp eq i64 %.highbits.7, 0
  %cmp5.7 = icmp uge i64 %10, %1
  %or.cond.7 = select i1 %cmp3.not.7, i1 %cmp5.7, i1 false
  br i1 %or.cond.7, label %for.cond.7, label %cleanup34

for.cond.7:                                       ; preds = %for.cond.6
  %add.ptr.8 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 8
  %11 = load i64, i64* %add.ptr.8, align 8
  %.highbits.8 = lshr i64 %11, %0
  %cmp3.not.8 = icmp eq i64 %.highbits.8, 0
  %cmp5.8 = icmp uge i64 %11, %1
  %or.cond.8 = select i1 %cmp3.not.8, i1 %cmp5.8, i1 false
  br i1 %or.cond.8, label %for.cond.8, label %cleanup34

for.cond.8:                                       ; preds = %for.cond.7
  %add.ptr.9 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 9
  %12 = load i64, i64* %add.ptr.9, align 8
  %.highbits.9 = lshr i64 %12, %0
  %cmp3.not.9 = icmp eq i64 %.highbits.9, 0
  %cmp5.9 = icmp uge i64 %12, %1
  %or.cond.9 = select i1 %cmp3.not.9, i1 %cmp5.9, i1 false
  br i1 %or.cond.9, label %for.cond.9, label %cleanup34

for.cond.9:                                       ; preds = %for.cond.8
  %add.ptr.10 = getelementptr %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 10
  %13 = load i64, i64* %add.ptr.10, align 8
  %.highbits.10 = lshr i64 %13, %0
  %cmp3.not.10 = icmp eq i64 %.highbits.10, 0
  %cmp5.10 = icmp uge i64 %13, %1
  %or.cond.10 = select i1 %cmp3.not.10, i1 %cmp5.10, i1 false
  br i1 %or.cond.10, label %for.cond.10, label %cleanup34

for.cond.10:                                      ; preds = %for.cond.9
  %cmp7 = icmp ult i64 %3, %4
  %cmp9.not = icmp ugt i64 %5, %6
  %cond11 = select i1 %cmp9.not, i32 -22, i32 0
  %or = select i1 %cmp7, i32 %cond11, i32 -22
  %cmp12.not = icmp ugt i64 %7, %8
  %cmp16.not = icmp ugt i64 %10, %11
  %cmp20.not = icmp ugt i64 %12, %13
  %14 = select i1 %cmp20.not, i1 true, i1 %cmp16.not
  %15 = select i1 %14, i1 true, i1 %cmp12.not
  %or23 = select i1 %15, i32 -22, i32 %or
  %tobool.not = icmp eq i32 %or23, 0
  br i1 %tobool.not, label %if.end25, label %cleanup34

if.end25:                                         ; preds = %for.cond.10
  %brk = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 5
  %start_brk = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 4
  %end_data = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 3
  %start_data = getelementptr inbounds %struct.prctl_mm_map, %struct.prctl_mm_map* %prctl_map, i64 0, i32 2
  %call = call fastcc i64 @rlimit(i32 noundef 2) #11
  %16 = load i64, i64* %brk, align 8
  %17 = load i64, i64* %start_brk, align 8
  %18 = load i64, i64* %end_data, align 8
  %19 = load i64, i64* %start_data, align 8
  %call30 = call fastcc i32 @check_data_rlimit(i64 noundef %call, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19) #11
  %tobool31.not = icmp eq i32 %call30, 0
  %spec.select = select i1 %tobool31.not, i32 0, i32 -22
  br label %cleanup34

cleanup34:                                        ; preds = %entry, %for.cond, %for.cond.1, %for.cond.2, %for.cond.3, %for.cond.4, %for.cond.5, %for.cond.6, %for.cond.7, %for.cond.8, %for.cond.9, %if.end25, %for.cond.10
  %retval.0 = phi i32 [ %or23, %for.cond.10 ], [ %spec.select, %if.end25 ], [ -22, %for.cond.9 ], [ -22, %for.cond.8 ], [ -22, %for.cond.7 ], [ -22, %for.cond.6 ], [ -22, %for.cond.5 ], [ -22, %for.cond.4 ], [ -22, %for.cond.3 ], [ -22, %for.cond.2 ], [ -22, %for.cond.1 ], [ -22, %for.cond ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #12
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #11
  ret [2 x i64] %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #6 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @path_noexec(%struct.path* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @file_permission(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %file) #11
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #11
  %call2 = call i32 @inode_permission(%struct.user_namespace* noundef %call, %struct.inode* noundef %call1, i32 noundef 1) #12
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @replace_mm_exe_file(%struct.mm_struct* noundef, %struct.file* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #0 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #4 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #11
  ret %struct.user_namespace* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #14, !srcloc !46
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @check_data_rlimit(i64 noundef %rlim, i64 noundef %new, i64 noundef %start, i64 noundef %end_data, i64 noundef %start_data) unnamed_addr #4 {
entry:
  %cmp.not = icmp eq i64 %rlim, -1
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %0 = add i64 %new, %end_data
  %1 = add i64 %start, %start_data
  %add = sub i64 %0, %1
  %cmp2 = icmp ugt i64 %add, %rlim
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  br label %return

return:                                           ; preds = %if.then, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -28, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_child_reaper(%struct.pid* nocapture noundef readonly %pid) unnamed_addr #6 {
entry:
  %level = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 1
  %0 = load i32, i32* %level, align 4
  %idxprom = zext i32 %0 to i64
  %nr = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 %idxprom, i32 0
  %1 = load i32, i32* %nr, align 8
  %cmp = icmp eq i32 %1, 1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 16777216, i64* elementtype(i64) %counter) #14, !srcloc !48
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_getcpu(i32* noundef %cpup, i32* noundef %nodep) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %tobool.not = icmp eq i32* %cpup, null
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %cpup to i8*
  %call3 = call fastcc i64 @__range_ok(i8* noundef nonnull %2, i64 noundef 4) #11
  %tobool4.not = icmp eq i64 %call3, 0
  br i1 %tobool4.not, label %if.end18, label %if.then5

if.then5:                                         ; preds = %if.then
  %call6 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %2) #11
  %3 = bitcast i8* %call6 to i32*
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %1, i32* %3, i32 -14, i32 0) #14, !srcloc !49
  br label %if.end18

if.end18:                                         ; preds = %if.then5, %if.then, %entry
  %err.0 = phi i32 [ 0, %entry ], [ %4, %if.then5 ], [ -14, %if.then ]
  %tobool19.not = icmp eq i32* %nodep, null
  br i1 %tobool19.not, label %if.end43, label %if.then20

if.then20:                                        ; preds = %if.end18
  %5 = bitcast i32* %nodep to i8*
  %call24 = call fastcc i64 @__range_ok(i8* noundef nonnull %5, i64 noundef 4) #11
  %tobool25.not = icmp eq i64 %call24, 0
  br i1 %tobool25.not, label %if.end38, label %if.then26

if.then26:                                        ; preds = %if.then20
  %call27 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %5) #11
  %6 = bitcast i8* %call27 to i32*
  %7 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 0, i32* %6, i32 -14, i32 0) #14, !srcloc !50
  br label %if.end38

if.end38:                                         ; preds = %if.then20, %if.then26
  %__pu_err21.0 = phi i32 [ %7, %if.then26 ], [ -14, %if.then20 ]
  %or42 = or i32 %__pu_err21.0, %err.0
  br label %if.end43

if.end43:                                         ; preds = %if.end38, %if.end18
  %err.1 = phi i32 [ %or42, %if.end38 ], [ %err.0, %if.end18 ]
  %tobool44.not = icmp eq i32 %err.1, 0
  %cond = select i1 %tobool44.not, i64 0, i64 -14
  ret i64 %cond
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #15, !srcloc !51
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sysinfo(%struct.sysinfo* noundef %info) unnamed_addr #0 {
entry:
  %val = alloca %struct.sysinfo, align 8
  %0 = bitcast %struct.sysinfo* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %0, i8 0, i64 112, i1 false), !annotation !13
  call fastcc void @do_sysinfo(%struct.sysinfo* noundef nonnull %val) #11
  %1 = bitcast %struct.sysinfo* %info to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %1, i8* noundef nonnull %0, i64 noundef 112) #12
  %tobool.not = icmp eq i64 %call2.i, 0
  %. = select i1 %tobool.not, i64 0, i64 -14
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #14
  ret i64 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_sysinfo(%struct.sysinfo* noundef %info) unnamed_addr #0 {
entry:
  %tp = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %tp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !13
  %1 = bitcast %struct.sysinfo* %info to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 112) #12
  call fastcc void @ktime_get_boottime_ts64(%struct.timespec64* noundef nonnull %tp) #11
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tp, i64 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tp, i64 0, i32 1
  %3 = load i64, i64* %tv_nsec, align 8
  %tobool.not = icmp ne i64 %3, 0
  %4 = zext i1 %tobool.not to i64
  %add = add i64 %2, %4
  %uptime = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 0
  store i64 %add, i64* %uptime, align 8
  %arraydecay = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 1, i64 0
  call void @get_avenrun(i64* noundef %arraydecay, i64 noundef 0, i32 noundef 5) #12
  %5 = load i32, i32* @nr_threads, align 4
  %conv1 = trunc i32 %5 to i16
  %procs = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 8
  store i16 %conv1, i16* %procs, align 8
  call void @si_meminfo(%struct.sysinfo* noundef %info) #12
  %totalswap = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 6
  store i64 0, i64* %totalswap, align 8
  %freeswap = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 7
  store i64 0, i64* %freeswap, align 8
  %totalram = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 2
  %6 = load i64, i64* %totalram, align 8
  %mem_unit9 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 12
  %7 = load i32, i32* %mem_unit9, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %mem_total.0 = phi i64 [ %6, %entry ], [ %shl, %while.body ]
  %mem_unit.0 = phi i32 [ %7, %entry ], [ %shr, %while.body ]
  %bitcount.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %cmp10 = icmp ugt i32 %mem_unit.0, 1
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nuw nsw i32 %bitcount.0, 1
  %shr = lshr i32 %mem_unit.0, 1
  %shl = shl i64 %mem_total.0, 1
  %cmp12 = icmp ult i64 %shl, %mem_total.0
  br i1 %cmp12, label %out, label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %mem_unit9, align 8
  %sh_prom = zext i32 %bitcount.0 to i64
  %shl18 = shl i64 %6, %sh_prom
  store i64 %shl18, i64* %totalram, align 8
  %freeram = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 3
  %8 = load i64, i64* %freeram, align 8
  %shl20 = shl i64 %8, %sh_prom
  store i64 %shl20, i64* %freeram, align 8
  %sharedram = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 4
  %9 = load i64, i64* %sharedram, align 8
  %shl22 = shl i64 %9, %sh_prom
  store i64 %shl22, i64* %sharedram, align 8
  %bufferram = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 5
  %10 = load i64, i64* %bufferram, align 8
  %shl24 = shl i64 %10, %sh_prom
  store i64 %shl24, i64* %bufferram, align 8
  store i64 0, i64* %freeswap, align 8
  %totalhigh = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 10
  %11 = load i64, i64* %totalhigh, align 8
  %shl32 = shl i64 %11, %sh_prom
  store i64 %shl32, i64* %totalhigh, align 8
  %freehigh = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %info, i64 0, i32 11
  %12 = load i64, i64* %freehigh, align 8
  %shl34 = shl i64 %12, %sh_prom
  store i64 %shl34, i64* %freehigh, align 8
  br label %out

out:                                              ; preds = %while.body, %while.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ktime_get_boottime_ts64(%struct.timespec64* nocapture noundef writeonly %ts) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @ktime_get_boottime() #11
  %call1 = call [2 x i64] @ns_to_timespec64(i64 noundef %call) #12
  %call1.fca.0.extract = extractvalue [2 x i64] %call1, 0
  %call1.fca.1.extract = extractvalue [2 x i64] %call1, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  store i64 %call1.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 %call1.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_avenrun(i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(%struct.sysinfo* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @ns_to_timespec64(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_boottime() unnamed_addr #0 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 1) #12
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind }
attributes #15 = { nounwind readonly }

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
!8 = !{i64 1413646}
!9 = !{i64 2149681674}
!10 = !{i64 2149723328}
!11 = !{i64 2149648581}
!12 = !{i64 2149703535}
!13 = !{!"auto-init"}
!14 = !{i64 2156163683}
!15 = !{i64 2156015086, i64 2156015124, i64 2156015141, i64 2156015175, i64 2156015197, i64 2156015223, i64 2156015241, i64 2156015399, i64 2156015440, i64 2156015462, i64 2156015508}
!16 = !{i64 2156018999, i64 2156019037, i64 2156019054, i64 2156019088, i64 2156019110, i64 2156019136, i64 2156019154, i64 2156019312, i64 2156019353, i64 2156019375, i64 2156019421}
!17 = !{i64 2156022912, i64 2156022950, i64 2156022967, i64 2156023001, i64 2156023023, i64 2156023049, i64 2156023067, i64 2156023225, i64 2156023266, i64 2156023288, i64 2156023334}
!18 = !{i64 4645112, i64 4645195, i64 4645419, i64 4645639, i64 4645662}
!19 = !{i64 4649814, i64 4649838}
!20 = !{i64 2152164653}
!21 = !{i64 2156046394, i64 2156046432, i64 2156046449, i64 2156046483, i64 2156046505, i64 2156046531, i64 2156046549, i64 2156046707, i64 2156046748, i64 2156046770, i64 2156046816}
!22 = !{i64 2156050307, i64 2156050345, i64 2156050362, i64 2156050396, i64 2156050418, i64 2156050444, i64 2156050462, i64 2156050620, i64 2156050661, i64 2156050683, i64 2156050729}
!23 = !{i64 2156054220, i64 2156054258, i64 2156054275, i64 2156054309, i64 2156054331, i64 2156054357, i64 2156054375, i64 2156054533, i64 2156054574, i64 2156054596, i64 2156054642}
!24 = !{i64 2150065502}
!25 = !{i64 2150065719}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2149145195, i64 2149145242, i64 2149145248, i64 2149145285, i64 2149145303, i64 2149146644, i64 2149146692, i64 2149146740, i64 2149146803, i64 2149146852, i64 2149145381, i64 2149145406, i64 2149145432, i64 2149145438, i64 2149146310, i64 2149146350, i64 2149146368, i64 2149146400, i64 2149146428, i64 2149146482, i64 2149146502, i64 2149146599, i64 2149145461, i64 2149145475, i64 2149145481, i64 2149145531, i64 2149145577, i64 2149145610}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2148110349, i64 2148110382, i64 2148110435, i64 2148110494, i64 2148110528, i64 2148110583, i64 2148110612, i64 2148110632}
!30 = !{i64 2149563865}
!31 = !{i64 2149135739, i64 2149135786, i64 2149135792, i64 2149135829, i64 2149135847, i64 2149137187, i64 2149137235, i64 2149137283, i64 2149137346, i64 2149137395, i64 2149135925, i64 2149135950, i64 2149135976, i64 2149135982, i64 2149136853, i64 2149136893, i64 2149136911, i64 2149136943, i64 2149136971, i64 2149137025, i64 2149137045, i64 2149137142, i64 2149136005, i64 2149136019, i64 2149136025, i64 2149136075, i64 2149136121, i64 2149136154}
!32 = !{i64 2148925709}
!33 = !{i64 2148013310, i64 2148013976, i64 2148014006, i64 2148014039, i64 2148014073, i64 2148014108, i64 2148014133}
!34 = !{i64 2149600072}
!35 = !{i64 2149607353}
!36 = !{i64 2149399583}
!37 = !{i64 2148024058, i64 2148024724, i64 2148024754, i64 2148024786, i64 2148024820, i64 2148024856, i64 2148024881}
!38 = !{i64 2148016390, i64 2148017054, i64 2148017084, i64 2148017116, i64 2148017150, i64 2148017185, i64 2148017210}
!39 = !{i64 2150279553}
!40 = !{i64 2148028172, i64 2148028846, i64 2148028876, i64 2148028908, i64 2148028942, i64 2148028978, i64 2148029003}
!41 = !{i64 2149610914}
!42 = !{i64 2149156911, i64 2149156958, i64 2149156964, i64 2149157001, i64 2149157019, i64 2149158330, i64 2149158378, i64 2149158426, i64 2149158489, i64 2149158538, i64 2149157097, i64 2149157122, i64 2149157148, i64 2149157154, i64 2149157996, i64 2149158036, i64 2149158054, i64 2149158086, i64 2149158114, i64 2149158168, i64 2149158188, i64 2149158285, i64 2149157177, i64 2149157191, i64 2149157197, i64 2149157247, i64 2149157293, i64 2149157326}
!43 = !{i64 2148144205, i64 2148144237, i64 2148144282, i64 2148144330, i64 2148144356}
!44 = !{i64 2156197515, i64 2156197553, i64 2156197570, i64 2156197604, i64 2156197626, i64 2156197652, i64 2156197670, i64 2156197828, i64 2156197869, i64 2156197891, i64 2156197937}
!45 = !{i64 2156203199, i64 2156203237, i64 2156203254, i64 2156203288, i64 2156203310, i64 2156203336, i64 2156203354, i64 2156203512, i64 2156203553, i64 2156203575, i64 2156203621}
!46 = !{i64 2152386403}
!47 = !{i64 2148079506, i64 2148080017, i64 2148080047, i64 2148080073, i64 2148080105, i64 2148080134}
!48 = !{i64 2148090076, i64 2148090597, i64 2148090627, i64 2148090653, i64 2148090685, i64 2148090714}
!49 = !{i64 2156224140, i64 2156224178, i64 2156224195, i64 2156224229, i64 2156224251, i64 2156224277, i64 2156224295, i64 2156224453, i64 2156224494, i64 2156224516, i64 2156224562}
!50 = !{i64 2156228125, i64 2156228163, i64 2156228180, i64 2156228214, i64 2156228236, i64 2156228262, i64 2156228280, i64 2156228438, i64 2156228479, i64 2156228501, i64 2156228547}
!51 = !{i64 2149173217, i64 2149173264, i64 2149173270, i64 2149173307, i64 2149173325, i64 2149174252, i64 2149174300, i64 2149174348, i64 2149174411, i64 2149174460, i64 2149173403, i64 2149173428, i64 2149173454, i64 2149173460, i64 2149173497, i64 2149173503, i64 2149173553, i64 2149173599, i64 2149173632}
