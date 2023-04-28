; ModuleID = 'fs/coredump.c'
source_filename = "fs/coredump.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.76, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.17, %union.anon.67, %struct.atomic_t, [8 x i8] }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.81, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.43, %struct.list_head, %struct.list_head, %union.anon.44 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.24, i8* }
%union.anon.24 = type { i64 }
%struct.lockref = type { %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.43 = type { %struct.list_head }
%union.anon.44 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.28, i32 }
%union.anon.28 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.29, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.29 = type { %struct.kernfs_elem_dir }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.30, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.30 = type {}
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.31, %union.anon.32, %union.anon.33, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.38, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.31 = type { %struct.hlist_node }
%union.anon.32 = type { %struct.rb_node }
%union.anon.33 = type { %struct.anon.37 }
%struct.anon.37 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.38 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.35, %union.anon.36, i32 }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
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
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.79 = type { %struct.callback_head }
%union.anon.80 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.45 }
%union.anon.45 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.46, %union.anon.49 }
%union.anon.46 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.49 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.51 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.47, %struct.qspinlock }
%union.anon.47 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.51 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.81 = type { %struct.pipe_inode_info* }
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
%union.anon.67 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.68, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.68 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40, [48 x i8] }
%struct.anon.40 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.41, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.23, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.53 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.53 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
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
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon }
%struct.anon = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.75, i32, [12 x i8] }
%union.anon.75 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.76 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.77, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.77 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.core_name = type { i8*, i32, i32 }
%struct.subprocess_info = type { %struct.work_struct, %struct.completion*, i8*, i8**, i8**, i32, i32, i32 (%struct.subprocess_info*, %struct.cred*)*, void (%struct.subprocess_info*)*, i8* }
%struct.filename = type { i8*, i8*, i32, %struct.audit_names*, [0 x i8] }
%struct.audit_names = type opaque
%struct.core_vma_metadata = type { i64, i64, i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@core_pattern = dso_local local_unnamed_addr global [128 x i8] c"core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 4
@do_coredump.core_dump_count = internal global %struct.atomic_t zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"\014format_corename failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\014Aborting core\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\014Process %d(%s) has RLIMIT_CORE set to 1\0A\00", align 1
@core_pipe_limit = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\014Pid %d(%s) over core_pipe_limit\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\014Skipping core dump\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\014%s failed to allocate memory\0A\00", align 1
@__func__.do_coredump = private unnamed_addr constant [12 x i8] c"do_coredump\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\016Core dump to |%s pipe failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"\014Pid %d(%s) can only dump core to fully qualified path!\0A\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@do_coredump._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@.str.8 = private unnamed_addr constant [55 x i8] c"\016Core dump to %s aborted: cannot preserve file owner\0A\00", align 1
@do_coredump._rs.9 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@.str.10 = private unnamed_addr constant [61 x i8] c"\016Core dump to %s aborted: cannot preserve file permissions\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"\016Core dump to |%s disabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@core_uses_pid = dso_local local_unnamed_addr global i32 0, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@core_name_size = internal unnamed_addr global i32 128, align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@uts_sem = external dso_local global %struct.rw_semaphore, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"%s (path unknown)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@__dump_skip.zeroes = internal global [4096 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_coredump(%struct.kernel_siginfo* noundef %siginfo) local_unnamed_addr #0 {
entry:
  %core_state = alloca %struct.core_state, align 8
  %cn = alloca %struct.core_name, align 8
  %argv = alloca i64*, align 8
  %argc = alloca i32, align 4
  %cprm = alloca %struct.coredump_params, align 8
  %root = alloca %struct.path, align 8
  %0 = bitcast %struct.core_state* %core_state to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false), !annotation !8
  %1 = bitcast %struct.core_name* %cn to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 35
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %5 = bitcast i64** %argv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #16
  store i64* null, i64** %argv, align 8
  %6 = bitcast i32* %argc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16
  store i32 0, i32* %argc, align 4
  %7 = bitcast %struct.coredump_params* %cprm to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #16
  %siginfo2 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 0
  store %struct.kernel_siginfo* %siginfo, %struct.kernel_siginfo** %siginfo2, align 8
  %regs = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 1
  %call4 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %3) #18
  %add.ptr5 = getelementptr i8, i8* %call4, i64 16048
  %8 = bitcast %struct.pt_regs** %regs to i8**
  store i8* %add.ptr5, i8** %8, align 8
  %file = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 2
  store %struct.file* null, %struct.file** %file, align 8
  %limit = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 3
  %call6 = call fastcc i64 @rlimit() #18
  store i64 %call6, i64* %limit, align 8
  %mm_flags = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 4
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i64 0, i32 0, i32 43
  %9 = load i64, i64* %flags, align 8
  store i64 %9, i64* %mm_flags, align 8
  %written = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 5
  store i64 0, i64* %written, align 8
  %pos = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 6
  store i64 0, i64* %pos, align 8
  %to_skip = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 7
  store i64 0, i64* %to_skip, align 8
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %siginfo, i64 0, i32 0, i32 0
  %binfmt7 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i64 0, i32 0, i32 41
  %10 = load %struct.linux_binfmt*, %struct.linux_binfmt** %binfmt7, align 8
  %tobool.not = icmp eq %struct.linux_binfmt* %10, null
  br i1 %tobool.not, label %cleanup292, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %core_dump = getelementptr inbounds %struct.linux_binfmt, %struct.linux_binfmt* %10, i64 0, i32 4
  %11 = load i32 (%struct.coredump_params*)*, i32 (%struct.coredump_params*)** %core_dump, align 8
  %tobool8.not = icmp eq i32 (%struct.coredump_params*)* %11, null
  br i1 %tobool8.not, label %cleanup292, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call10 = call fastcc i32 @__get_dumpable(i64 noundef %9) #18
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup292, label %if.end13

if.end13:                                         ; preds = %if.end
  %call14 = call %struct.cred* @prepare_creds() #19
  %tobool15.not = icmp eq %struct.cred* %call14, null
  br i1 %tobool15.not, label %cleanup292, label %if.end17

if.end17:                                         ; preds = %if.end13
  %cmp = icmp eq i32 %call10, 2
  br i1 %cmp, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call14, i64 0, i32 7, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %12 = load i32, i32* %si_signo, align 8
  %call24 = call fastcc i32 @coredump_wait(i32 noundef %12, %struct.core_state* noundef nonnull %core_state) #18
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %fail_creds, label %if.end28

if.end28:                                         ; preds = %if.end22
  %call29 = call %struct.cred* @override_creds(%struct.cred* noundef nonnull %call14) #19
  %call30 = call fastcc i32 @format_corename(%struct.core_name* noundef nonnull %cn, %struct.coredump_params* noundef nonnull %cprm, i64** noundef nonnull %argv, i32* noundef nonnull %argc) #18
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end28
  %cmp33 = icmp slt i32 %call30, 0
  br i1 %cmp33, label %do.end, label %if.end42

do.end:                                           ; preds = %if.then32
  %call36 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #20
  %call41 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #20
  br label %fail_unlock

if.end42:                                         ; preds = %if.then32
  %13 = load i64, i64* %limit, align 8
  %cmp44 = icmp eq i64 %13, 1
  br i1 %cmp44, label %do.end49, label %if.end60

do.end49:                                         ; preds = %if.end42
  %call52 = call fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %3) #18
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %call54 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 noundef %call52, i8* noundef %arraydecay) #20
  %call59 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #20
  br label %fail_unlock

if.end60:                                         ; preds = %if.end42
  store i64 -1, i64* %limit, align 8
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return() #19
  %14 = load i32, i32* @core_pipe_limit, align 4
  %tobool63.not = icmp ne i32 %14, 0
  %cmp64 = icmp ult i32 %14, %call.i.i.i
  %or.cond357 = select i1 %tobool63.not, i1 %cmp64, i1 false
  br i1 %or.cond357, label %do.end69, label %if.end82

do.end69:                                         ; preds = %if.end60
  %call72 = call fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %3) #18
  %arraydecay75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %call76 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call72, i8* noundef %arraydecay75) #20
  %call81 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #20
  br label %if.then288

if.end82:                                         ; preds = %if.end60
  %15 = load i32, i32* %argc, align 4
  %add = add i32 %15, 1
  %conv83 = sext i32 %add to i64
  %call84 = call fastcc i8* @kmalloc_array(i64 noundef %conv83) #18
  %16 = bitcast i8* %call84 to i8**
  %tobool85.not = icmp eq i8* %call84, null
  br i1 %tobool85.not, label %do.end89, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end82
  %cmp93371 = icmp sgt i32 %15, 0
  br i1 %cmp93371, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %corename = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %17 = load i64*, i64** %argv, align 8
  %wide.trip.count = zext i32 %15 to i64
  br label %for.body

do.end89:                                         ; preds = %if.end82
  %call91 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.do_coredump, i64 0, i64 0)) #20
  br label %if.then288

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %18 = load i8*, i8** %corename, align 8
  %arrayidx = getelementptr i64, i64* %17, i64 %indvars.iv
  %19 = load i64, i64* %arrayidx, align 8
  %add.ptr95 = getelementptr i8, i8* %18, i64 %19
  %arrayidx97 = getelementptr i8*, i8** %16, i64 %indvars.iv
  store i8* %add.ptr95, i8** %arrayidx97, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  %phi.cast = zext i32 %15 to i64
  br label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.end.loopexit
  %argi.0.lcssa = phi i64 [ %phi.cast, %for.end.loopexit ], [ 0, %for.cond.preheader ]
  %arrayidx99 = getelementptr i8*, i8** %16, i64 %argi.0.lcssa
  store i8* null, i8** %arrayidx99, align 8
  %20 = load i8*, i8** %16, align 8
  %call101 = call %struct.subprocess_info* @call_usermodehelper_setup(i8* noundef %20, i8** noundef nonnull %16, i8** noundef null, i32 noundef 3264, i32 (%struct.subprocess_info*, %struct.cred*)* noundef nonnull @umh_pipe_setup, void (%struct.subprocess_info*)* noundef null, i8* noundef nonnull %7) #19
  %tobool102.not = icmp eq %struct.subprocess_info* %call101, null
  br i1 %tobool102.not, label %do.end110.critedge, label %if.then103

if.then103:                                       ; preds = %for.end
  %call104 = call i32 @call_usermodehelper_exec(%struct.subprocess_info* noundef nonnull %call101, i32 noundef 1) #19
  %phi.cmp = icmp eq i32 %call104, 0
  call void @kfree(i8* noundef nonnull %call84) #19
  br i1 %phi.cmp, label %if.end246, label %cleanup

do.end110.critedge:                               ; preds = %for.end
  call void @kfree(i8* noundef nonnull %call84) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %do.end110.critedge
  %corename112 = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %21 = load i8*, i8** %corename112, align 8
  %call113 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* noundef %21) #20
  br label %close_failthread-pre-split

if.else:                                          ; preds = %if.end28
  %22 = load i64, i64* %limit, align 8
  %min_coredump = getelementptr inbounds %struct.linux_binfmt, %struct.linux_binfmt* %10, i64 0, i32 5
  %23 = load i64, i64* %min_coredump, align 8
  %cmp119 = icmp ult i64 %22, %23
  br i1 %cmp119, label %fail_unlock, label %if.end122

if.end122:                                        ; preds = %if.else
  %corename126 = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %24 = load i8*, i8** %corename126, align 8
  br i1 %cmp, label %land.lhs.true125, label %if.else159

land.lhs.true125:                                 ; preds = %if.end122
  %25 = load i8, i8* %24, align 1
  %cmp129.not = icmp eq i8 %25, 47
  br i1 %cmp129.not, label %if.then155, label %do.end134

do.end134:                                        ; preds = %land.lhs.true125
  %call137 = call fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %3) #18
  %arraydecay140 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %call141 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call137, i8* noundef %arraydecay140) #20
  %call146 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #20
  br label %fail_unlock

if.then155:                                       ; preds = %land.lhs.true125
  %26 = bitcast %struct.path* %root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false), !annotation !8
  call fastcc void @task_lock() #18
  %27 = load %struct.fs_struct*, %struct.fs_struct** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 83), align 8
  call fastcc void @get_fs_root(%struct.fs_struct* noundef %27, %struct.path* noundef nonnull %root) #18
  call fastcc void @task_unlock() #18
  %28 = load i8*, i8** %corename126, align 8
  %call157 = call %struct.file* @file_open_root(%struct.path* noundef nonnull %root, i8* noundef %28, i32 noundef 164034, i16 noundef 384) #19
  store %struct.file* %call157, %struct.file** %file, align 8
  call void @path_put(%struct.path* noundef nonnull %root) #19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #16
  br label %if.end163

if.else159:                                       ; preds = %if.end122
  %call151.c = call %struct.filename* @getname_kernel(i8* noundef %24) #19
  %call152.c = call i32 @do_unlinkat(i32 noundef -100, %struct.filename* noundef %call151.c) #19
  %29 = load i8*, i8** %corename126, align 8
  %call161 = call %struct.file* @filp_open(i8* noundef %29, i32 noundef 164034, i16 noundef 384) #19
  store %struct.file* %call161, %struct.file** %file, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.else159, %if.then155
  %30 = phi %struct.file* [ %call161, %if.else159 ], [ %call157, %if.then155 ]
  %31 = bitcast %struct.file* %30 to i8*
  %call165 = call fastcc i1 @IS_ERR(i8* noundef %31) #18
  br i1 %call165, label %fail_unlock, label %if.end167

if.end167:                                        ; preds = %if.end163
  %call169 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %30) #18
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %call169, i64 0, i32 9, i32 0
  %32 = load i32, i32* %i_nlink, align 8
  %cmp170 = icmp ugt i32 %32, 1
  br i1 %cmp170, label %close_fail, label %if.end173

if.end173:                                        ; preds = %if.end167
  %dentry = getelementptr inbounds %struct.file, %struct.file* %30, i64 0, i32 1, i32 1
  %33 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call175 = call fastcc i32 @d_unhashed(%struct.dentry* noundef %33) #18
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %close_failthread-pre-split

if.end178:                                        ; preds = %if.end173
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call169, i64 0, i32 0
  %34 = load i16, i16* %i_mode, align 8
  %35 = and i16 %34, -4096
  %cmp180 = icmp eq i16 %35, -32768
  br i1 %cmp180, label %if.end183, label %close_failthread-pre-split

if.end183:                                        ; preds = %if.end178
  %call185 = call fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* noundef %30) #18
  %call186 = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %call169) #18
  %cred193 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 80
  %36 = load %struct.cred*, %struct.cred** %cred193, align 8
  %agg.tmp187.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %36, i64 0, i32 7, i32 0
  %agg.tmp187.sroa.0.0.copyload = load i32, i32* %agg.tmp187.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %call186 to i64
  %coerce.val.ii197 = zext i32 %agg.tmp187.sroa.0.0.copyload to i64
  %call198 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii197) #18
  br i1 %call198, label %if.end210, label %if.then199

if.then199:                                       ; preds = %if.end183
  %call200 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @do_coredump._rs, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.do_coredump, i64 0, i64 0)) #19
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %close_failthread-pre-split, label %do.end205

do.end205:                                        ; preds = %if.then199
  %corename207 = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %37 = load i8*, i8** %corename207, align 8
  %call208 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* noundef %37) #20
  br label %close_failthread-pre-split

if.end210:                                        ; preds = %if.end183
  %38 = load i16, i16* %i_mode, align 8
  %39 = and i16 %38, 447
  %cmp214.not = icmp eq i16 %39, 384
  br i1 %cmp214.not, label %if.end227, label %if.then216

if.then216:                                       ; preds = %if.end210
  %call217 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @do_coredump._rs.9, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.do_coredump, i64 0, i64 0)) #19
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %close_failthread-pre-split, label %do.end222

do.end222:                                        ; preds = %if.then216
  %corename224 = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %40 = load i8*, i8** %corename224, align 8
  %call225 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i8* noundef %40) #20
  br label %close_failthread-pre-split

if.end227:                                        ; preds = %if.end210
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %30, i64 0, i32 8
  %41 = load i32, i32* %f_mode, align 4
  %and229 = and i32 %41, 262144
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %close_fail, label %if.end232

if.end232:                                        ; preds = %if.end227
  %42 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call237 = call i32 @do_truncate(%struct.user_namespace* noundef %call185, %struct.dentry* noundef %42, i64 noundef 0, i32 noundef 0, %struct.file* noundef %30) #19
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end246, label %close_failthread-pre-split

if.end246:                                        ; preds = %if.then103, %if.end232
  %call247 = call i32 @unshare_files() #19
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end250, label %close_failthread-pre-split

if.end250:                                        ; preds = %if.end246
  %call251 = call fastcc i1 @dump_interrupted() #18
  br i1 %call251, label %if.end274, label %if.then252

if.then252:                                       ; preds = %if.end250
  %43 = load %struct.file*, %struct.file** %file, align 8
  %tobool254.not = icmp eq %struct.file* %43, null
  br i1 %tobool254.not, label %do.end258, label %if.end262

do.end258:                                        ; preds = %if.then252
  %corename260 = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %44 = load i8*, i8** %corename260, align 8
  %call261 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* noundef %44) #20
  br label %close_failthread-pre-split

if.end262:                                        ; preds = %if.then252
  call fastcc void @file_start_write(%struct.file* noundef nonnull %43) #18
  %45 = load i32 (%struct.coredump_params*)*, i32 (%struct.coredump_params*)** %core_dump, align 8
  %call265 = call i32 %45(%struct.coredump_params* noundef nonnull %cprm) #19
  %tobool266 = icmp ne i32 %call265, 0
  %frombool = zext i1 %tobool266 to i8
  %46 = load i64, i64* %to_skip, align 8
  %tobool268.not = icmp eq i64 %46, 0
  br i1 %tobool268.not, label %if.end272, label %if.then269

if.then269:                                       ; preds = %if.end262
  %dec = add i64 %46, -1
  store i64 %dec, i64* %to_skip, align 8
  %call271 = call i32 @dump_emit(%struct.coredump_params* noundef nonnull %cprm, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1) #18
  br label %if.end272

if.end272:                                        ; preds = %if.then269, %if.end262
  %47 = load %struct.file*, %struct.file** %file, align 8
  call fastcc void @file_end_write(%struct.file* noundef %47) #18
  br label %if.end274

if.end274:                                        ; preds = %if.end272, %if.end250
  %core_dumped.0 = phi i8 [ 0, %if.end250 ], [ %frombool, %if.end272 ]
  %48 = load i32, i32* @core_pipe_limit, align 4
  %tobool277 = icmp ne i32 %48, 0
  %or.cond = select i1 %tobool31, i1 %tobool277, i1 false
  br i1 %or.cond, label %if.then278, label %close_failthread-pre-split

if.then278:                                       ; preds = %if.end274
  %49 = load %struct.file*, %struct.file** %file, align 8
  call fastcc void @wait_for_dump_helpers(%struct.file* noundef %49) #18
  br label %close_failthread-pre-split

close_failthread-pre-split:                       ; preds = %do.end258, %if.end246, %if.then278, %if.end274, %cleanup, %if.end173, %if.end178, %do.end205, %if.then199, %do.end222, %if.then216, %if.end232
  %core_dumped.1.ph = phi i8 [ 0, %if.end232 ], [ 0, %if.then216 ], [ 0, %do.end222 ], [ 0, %if.then199 ], [ 0, %do.end205 ], [ 0, %if.end178 ], [ 0, %if.end173 ], [ 0, %do.end258 ], [ %core_dumped.0, %if.end274 ], [ %core_dumped.0, %if.then278 ], [ 0, %if.end246 ], [ 0, %cleanup ]
  %.pr = load %struct.file*, %struct.file** %file, align 8
  br label %close_fail

close_fail:                                       ; preds = %close_failthread-pre-split, %if.end227, %if.end167
  %50 = phi %struct.file* [ %.pr, %close_failthread-pre-split ], [ %30, %if.end227 ], [ %30, %if.end167 ]
  %core_dumped.1 = phi i8 [ %core_dumped.1.ph, %close_failthread-pre-split ], [ 0, %if.end227 ], [ 0, %if.end167 ]
  %tobool282.not = icmp eq %struct.file* %50, null
  br i1 %tobool282.not, label %fail_dropcount, label %if.then283

if.then283:                                       ; preds = %close_fail
  %call285 = call i32 @filp_close(%struct.file* noundef nonnull %50, i8* noundef null) #19
  br label %fail_dropcount

fail_dropcount:                                   ; preds = %close_fail, %if.then283
  %extract.t356 = icmp ne i8 %core_dumped.1, 0
  br i1 %tobool31, label %if.then288, label %fail_unlock

if.then288:                                       ; preds = %do.end69, %do.end89, %fail_dropcount
  %extract.t356370 = phi i1 [ %extract.t356, %fail_dropcount ], [ false, %do.end89 ], [ false, %do.end69 ]
  call fastcc void @__ll_sc_atomic_sub() #19
  br label %fail_unlock

fail_unlock:                                      ; preds = %if.end163, %if.else, %do.end134, %do.end49, %do.end, %fail_dropcount, %if.then288
  %core_dumped.3.off0 = phi i1 [ %extract.t356370, %if.then288 ], [ %extract.t356, %fail_dropcount ], [ false, %do.end ], [ false, %do.end49 ], [ false, %do.end134 ], [ false, %if.else ], [ false, %if.end163 ]
  %51 = bitcast i64** %argv to i8**
  %52 = load i8*, i8** %51, align 8
  call void @kfree(i8* noundef %52) #19
  %corename290 = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %53 = load i8*, i8** %corename290, align 8
  call void @kfree(i8* noundef %53) #19
  call fastcc void @coredump_finish(%struct.mm_struct* noundef %4, i1 noundef %core_dumped.3.off0) #18
  call void @revert_creds(%struct.cred* noundef %call29) #19
  br label %fail_creds

fail_creds:                                       ; preds = %if.end22, %fail_unlock
  call fastcc void @put_cred(%struct.cred* noundef nonnull %call14) #18
  br label %cleanup292

cleanup292:                                       ; preds = %fail_creds, %lor.lhs.false, %entry, %if.end, %if.end13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #3 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #18
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__get_dumpable(i64 noundef %mm_flags) unnamed_addr #4 {
entry:
  %0 = trunc i64 %mm_flags to i32
  %conv = and i32 %0, 3
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @prepare_creds() local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @coredump_wait(i32 noundef %exit_code, %struct.core_state* noundef %core_state) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %startup = getelementptr inbounds %struct.core_state, %struct.core_state* %core_state, i64 0, i32 2
  call fastcc void @init_completion(%struct.completion* noundef %startup) #18
  %task = getelementptr inbounds %struct.core_state, %struct.core_state* %core_state, i64 0, i32 1, i32 0
  store %struct.task_struct* %1, %struct.task_struct** %task, align 8
  %next = getelementptr inbounds %struct.core_state, %struct.core_state* %core_state, i64 0, i32 1, i32 1
  store %struct.core_thread* null, %struct.core_thread** %next, align 8
  %call3 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #18
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %core_state4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 44
  %3 = load %struct.core_state*, %struct.core_state** %core_state4, align 8
  %tobool5.not = icmp eq %struct.core_state* %3, null
  br i1 %tobool5.not, label %if.end8, label %if.end8.thread

if.end8.thread:                                   ; preds = %if.end
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call7 = call fastcc i32 @zap_threads(%struct.task_struct* noundef %1, %struct.mm_struct* noundef %2, %struct.core_state* noundef %core_state, i32 noundef %exit_code) #18
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  %cmp = icmp sgt i32 %call7, 0
  br i1 %cmp, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end8
  call void @wait_for_completion(%struct.completion* noundef %startup) #19
  %ptr.039 = load %struct.core_thread*, %struct.core_thread** %next, align 8
  %cmp13.not40 = icmp eq %struct.core_thread* %ptr.039, null
  br i1 %cmp13.not40, label %cleanup, label %while.body

while.body:                                       ; preds = %if.then9, %while.body
  %ptr.041 = phi %struct.core_thread* [ %ptr.0, %while.body ], [ %ptr.039, %if.then9 ]
  %task14 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %ptr.041, i64 0, i32 0
  %4 = load %struct.task_struct*, %struct.task_struct** %task14, align 8
  %call15 = call i64 @wait_task_inactive(%struct.task_struct* noundef %4, i32 noundef 0) #19
  %next16 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %ptr.041, i64 0, i32 1
  %ptr.0 = load %struct.core_thread*, %struct.core_thread** %next16, align 8
  %cmp13.not = icmp eq %struct.core_thread* %ptr.0, null
  br i1 %cmp13.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %while.body, %if.then9, %if.end8.thread, %if.end8, %entry
  %retval.0 = phi i32 [ -4, %entry ], [ %call7, %if.end8 ], [ -16, %if.end8.thread ], [ %call7, %if.then9 ], [ %call7, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @override_creds(%struct.cred* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @format_corename(%struct.core_name* noundef %cn, %struct.coredump_params* nocapture noundef readonly %cprm, i64** nocapture noundef %argv, i32* nocapture noundef %argc) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %3 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @core_pattern, i64 0, i64 0), align 4
  %cmp = icmp eq i8 %3, 124
  %conv2 = zext i1 %cmp to i32
  %used = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 1
  store i32 0, i32* %used, align 8
  %corename = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  store i8* null, i8** %corename, align 8
  %4 = load i32, i32* @core_name_size, align 4
  %call3 = call fastcc i32 @expand_corename(%struct.core_name* noundef %cn, i32 noundef %4) #18
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %cleanup123

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %corename, align 8
  store i8 0, i8* %5, align 1
  br i1 %cmp, label %if.then6, label %if.end16

if.then6:                                         ; preds = %if.end
  %call8 = call fastcc i8* @kmalloc_array(i64 noundef 64) #18
  %6 = bitcast i64** %argv to i8**
  store i8* %call8, i8** %6, align 8
  %tobool9.not = icmp eq i8* %call8, null
  br i1 %tobool9.not, label %cleanup123, label %cleanup

cleanup:                                          ; preds = %if.then6
  %7 = bitcast i8* %call8 to i64*
  %8 = load i32, i32* %argc, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %argc, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx12 = getelementptr i64, i64* %7, i64 %idxprom
  store i64 0, i64* %arrayidx12, align 8
  %9 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @core_pattern, i64 0, i64 1), align 1
  %tobool13.not.not = icmp eq i8 %9, 0
  br i1 %tobool13.not.not, label %cleanup123, label %if.end16

if.end16:                                         ; preds = %cleanup, %if.end
  %pat_ptr.1 = phi i8* [ getelementptr inbounds ([128 x i8], [128 x i8]* @core_pattern, i64 0, i64 1), %cleanup ], [ getelementptr inbounds ([128 x i8], [128 x i8]* @core_pattern, i64 0, i64 0), %if.end ]
  %arraydecay97 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %siginfo = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 0
  %mm_flags = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 4
  %coerce.dive79 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 2, i32 0
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end107, %if.end16
  %pat_ptr.2.ph = phi i8* [ %pat_ptr.3, %if.end107 ], [ %pat_ptr.1, %if.end16 ]
  %pid_in_pattern.0.ph = phi i32 [ %pid_in_pattern.2, %if.end107 ], [ 0, %if.end16 ]
  %10 = load i8, i8* %pat_ptr.2.ph, align 1
  %tobool17.not201 = icmp eq i8 %10, 0
  br i1 %tobool17.not201, label %out, label %while.body

while.body:                                       ; preds = %while.cond.outer, %if.then26
  %11 = phi i8 [ %16, %if.then26 ], [ %10, %while.cond.outer ]
  %was_space.0.off0203 = phi i1 [ %spec.select, %if.then26 ], [ false, %while.cond.outer ]
  %pat_ptr.2202 = phi i8* [ %incdec.ptr32, %if.then26 ], [ %pat_ptr.2.ph, %while.cond.outer ]
  br i1 %cmp, label %if.then19, label %if.end46

if.then19:                                        ; preds = %while.body
  %12 = zext i8 %11 to i64
  %arrayidx22 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %12
  %13 = load i8, i8* %arrayidx22, align 1
  %14 = and i8 %13, 32
  %cmp24.not = icmp eq i8 %14, 0
  br i1 %cmp24.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then19
  %15 = load i32, i32* %used, align 8
  %cmp28.not = icmp ne i32 %15, 0
  %spec.select = select i1 %cmp28.not, i1 true, i1 %was_space.0.off0203
  %incdec.ptr32 = getelementptr i8, i8* %pat_ptr.2202, i64 1
  %16 = load i8, i8* %incdec.ptr32, align 1
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %if.end122, label %while.body

if.else:                                          ; preds = %if.then19
  br i1 %was_space.0.off0203, label %if.then34, label %if.end46

if.then34:                                        ; preds = %if.else
  %call35 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef 0) #18
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %cleanup123

if.end38:                                         ; preds = %if.then34
  %17 = load i32, i32* %used, align 8
  %conv40 = sext i32 %17 to i64
  %18 = load i64*, i64** %argv, align 8
  %19 = load i32, i32* %argc, align 4
  %inc41 = add i32 %19, 1
  store i32 %inc41, i32* %argc, align 4
  %idxprom42 = sext i32 %19 to i64
  %arrayidx43 = getelementptr i64, i64* %18, i64 %idxprom42
  store i64 %conv40, i64* %arrayidx43, align 8
  %.pr.pre = load i8, i8* %pat_ptr.2202, align 1
  br label %if.end46

if.end46:                                         ; preds = %while.body, %if.end38, %if.else
  %pat_ptr.2202208 = phi i8* [ %pat_ptr.2202, %if.else ], [ %pat_ptr.2202, %if.end38 ], [ %pat_ptr.2.ph, %while.body ]
  %20 = phi i8 [ %11, %if.else ], [ %.pr.pre, %if.end38 ], [ %10, %while.body ]
  %cmp48.not = icmp eq i8 %20, 37
  br i1 %cmp48.not, label %if.else54, label %if.then50

if.then50:                                        ; preds = %if.end46
  %conv47 = zext i8 %20 to i32
  %incdec.ptr51 = getelementptr i8, i8* %pat_ptr.2202208, i64 1
  %call53 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv47) #18
  br label %if.end107

if.else54:                                        ; preds = %if.end46
  %incdec.ptr55 = getelementptr i8, i8* %pat_ptr.2202208, i64 1
  %21 = load i8, i8* %incdec.ptr55, align 1
  switch i8 %21, label %sw.epilog [
    i8 0, label %out
    i8 37, label %sw.bb57
    i8 112, label %sw.bb59
    i8 80, label %sw.bb63
    i8 105, label %sw.bb67
    i8 73, label %sw.bb71
    i8 117, label %sw.bb75
    i8 103, label %sw.bb78
    i8 100, label %sw.bb83
    i8 115, label %sw.bb86
    i8 116, label %sw.bb88
    i8 104, label %sw.bb92
    i8 101, label %sw.bb95
    i8 102, label %sw.bb99
    i8 69, label %sw.bb101
    i8 99, label %sw.bb103
  ]

sw.bb57:                                          ; preds = %if.else54
  %call58 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef 37) #18
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.else54
  %call61 = call fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %1) #18
  %call62 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call61) #18
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.else54
  %call65 = call fastcc i32 @task_tgid_nr(%struct.task_struct* noundef %1) #18
  %call66 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call65) #18
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.else54
  %call69 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %1) #18
  %call70 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call69) #18
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.else54
  %call73 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %1) #18
  %call74 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call73) #18
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.else54
  %22 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %22 to i64
  %call76 = call fastcc i32 @from_kuid(i64 %coerce.val.ii) #18
  %call77 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef %call76) #18
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.else54
  %23 = load i32, i32* %coerce.dive79, align 8
  %coerce.val.ii80 = zext i32 %23 to i64
  %call81 = call fastcc i32 @from_kgid(i64 %coerce.val.ii80) #18
  %call82 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef %call81) #18
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.else54
  %24 = load i64, i64* %mm_flags, align 8
  %call84 = call fastcc i32 @__get_dumpable(i64 noundef %24) #18, !range !10
  %call85 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call84) #18
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.else54
  %25 = load %struct.kernel_siginfo*, %struct.kernel_siginfo** %siginfo, align 8
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %25, i64 0, i32 0, i32 0
  %26 = load i32, i32* %si_signo, align 8
  %call87 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 noundef %26) #18
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.else54
  %call89 = call i64 @ktime_get_real_seconds() #19
  %call90 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 noundef %call89) #18
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.else54
  call void @down_read(%struct.rw_semaphore* noundef nonnull @uts_sem) #19
  %call93 = call fastcc %struct.new_utsname* @utsname() #18
  %arraydecay = getelementptr inbounds %struct.new_utsname, %struct.new_utsname* %call93, i64 0, i32 1, i64 0
  %call94 = call i32 (%struct.core_name*, i8*, ...) @cn_esc_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* noundef %arraydecay) #18
  call void @up_read(%struct.rw_semaphore* noundef nonnull @uts_sem) #19
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.else54
  %call98 = call i32 (%struct.core_name*, i8*, ...) @cn_esc_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* noundef %arraydecay97) #18
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.else54
  %call100 = call fastcc i32 @cn_print_exe_file(%struct.core_name* noundef %cn, i1 noundef true) #18
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.else54
  %call102 = call fastcc i32 @cn_print_exe_file(%struct.core_name* noundef %cn, i1 noundef false) #18
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.else54
  %call104 = call fastcc i64 @rlimit() #18
  %call105 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i64 noundef %call104) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else54, %sw.bb103, %sw.bb101, %sw.bb99, %sw.bb95, %sw.bb92, %sw.bb88, %sw.bb86, %sw.bb83, %sw.bb78, %sw.bb75, %sw.bb71, %sw.bb67, %sw.bb63, %sw.bb59, %sw.bb57
  %pid_in_pattern.1 = phi i32 [ %pid_in_pattern.0.ph, %if.else54 ], [ %pid_in_pattern.0.ph, %sw.bb103 ], [ %pid_in_pattern.0.ph, %sw.bb101 ], [ %pid_in_pattern.0.ph, %sw.bb99 ], [ %pid_in_pattern.0.ph, %sw.bb95 ], [ %pid_in_pattern.0.ph, %sw.bb92 ], [ %pid_in_pattern.0.ph, %sw.bb88 ], [ %pid_in_pattern.0.ph, %sw.bb86 ], [ %pid_in_pattern.0.ph, %sw.bb83 ], [ %pid_in_pattern.0.ph, %sw.bb78 ], [ %pid_in_pattern.0.ph, %sw.bb75 ], [ %pid_in_pattern.0.ph, %sw.bb71 ], [ %pid_in_pattern.0.ph, %sw.bb67 ], [ %pid_in_pattern.0.ph, %sw.bb63 ], [ 1, %sw.bb59 ], [ %pid_in_pattern.0.ph, %sw.bb57 ]
  %err.2 = phi i32 [ 0, %if.else54 ], [ %call105, %sw.bb103 ], [ %call102, %sw.bb101 ], [ %call100, %sw.bb99 ], [ %call98, %sw.bb95 ], [ %call94, %sw.bb92 ], [ %call90, %sw.bb88 ], [ %call87, %sw.bb86 ], [ %call85, %sw.bb83 ], [ %call82, %sw.bb78 ], [ %call77, %sw.bb75 ], [ %call74, %sw.bb71 ], [ %call70, %sw.bb67 ], [ %call66, %sw.bb63 ], [ %call62, %sw.bb59 ], [ %call58, %sw.bb57 ]
  %incdec.ptr106 = getelementptr i8, i8* %pat_ptr.2202208, i64 2
  br label %if.end107

if.end107:                                        ; preds = %sw.epilog, %if.then50
  %pat_ptr.3 = phi i8* [ %incdec.ptr51, %if.then50 ], [ %incdec.ptr106, %sw.epilog ]
  %pid_in_pattern.2 = phi i32 [ %pid_in_pattern.0.ph, %if.then50 ], [ %pid_in_pattern.1, %sw.epilog ]
  %err.3 = phi i32 [ %call53, %if.then50 ], [ %err.2, %sw.epilog ]
  %tobool108.not = icmp eq i32 %err.3, 0
  br i1 %tobool108.not, label %while.cond.outer, label %cleanup123

out:                                              ; preds = %if.else54, %while.cond.outer
  %tobool112 = icmp eq i32 %pid_in_pattern.0.ph, 0
  %not.cmp = xor i1 %cmp, true
  %or.cond = select i1 %not.cmp, i1 %tobool112, i1 false
  %27 = load i32, i32* @core_uses_pid, align 4
  %tobool114 = icmp ne i32 %27, 0
  %or.cond129 = select i1 %or.cond, i1 %tobool114, i1 false
  br i1 %or.cond129, label %if.then115, label %if.end122

if.then115:                                       ; preds = %out
  %call117 = call fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %1) #18
  %call118 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call117) #18
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end122, label %cleanup123

if.end122:                                        ; preds = %if.then26, %if.then115, %out
  br label %cleanup123

cleanup123:                                       ; preds = %if.end107, %if.then34, %if.then6, %if.then115, %entry, %cleanup, %if.end122
  %retval.1 = phi i32 [ %conv2, %if.end122 ], [ -12, %cleanup ], [ -12, %entry ], [ %call118, %if.then115 ], [ -12, %if.then6 ], [ %err.3, %if.end107 ], [ %call35, %if.then34 ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 1, %struct.pid_namespace* noundef null) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !11

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.subprocess_info* @call_usermodehelper_setup(i8* noundef, i8** noundef, i8** noundef, i32 noundef, i32 (%struct.subprocess_info*, %struct.cred*)* noundef, void (%struct.subprocess_info*)* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @umh_pipe_setup(%struct.subprocess_info* nocapture noundef readonly %info, %struct.cred* nocapture noundef readnone %new) #0 {
entry:
  %files = alloca [2 x %struct.file*], align 8
  %0 = bitcast [2 x %struct.file*]* %files to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !8
  %data = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %info, i64 0, i32 9
  %1 = bitcast i8** %data to %struct.coredump_params**
  %2 = load %struct.coredump_params*, %struct.coredump_params** %1, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %files, i64 0, i64 0
  %call = call i32 @create_pipe_files(%struct.file** noundef nonnull %arraydecay, i32 noundef 0) #19
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %files, i64 0, i64 1
  %3 = load %struct.file*, %struct.file** %arrayidx, align 8
  %file = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %2, i64 0, i32 2
  store %struct.file* %3, %struct.file** %file, align 8
  %4 = load %struct.file*, %struct.file** %arraydecay, align 8
  %call2 = call i32 @replace_fd(i32 noundef 0, %struct.file* noundef %4, i32 noundef 0) #19
  %5 = load %struct.file*, %struct.file** %arraydecay, align 8
  call void @fput(%struct.file* noundef %5) #19
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 87
  %8 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i64 0, i32 49, i64 4, i32 0
  store i64 1, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx8 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i64 0, i32 49, i64 4, i32 1
  store i64 1, i64* %.compoundliteral.sroa.2.0..sroa_idx8, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper_exec(%struct.subprocess_info* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_unlinkat(i32 noundef, %struct.filename* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.filename* @getname_kernel(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock() unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 101, i32 0, i32 0)) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_fs_root(%struct.fs_struct* noundef %fs, %struct.path* noundef %root) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #19
  %root1 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 5
  %0 = bitcast %struct.path* %root to i8*
  %1 = bitcast %struct.path* %root1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %root) #19
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 101, i32 0, i32 0)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @file_open_root(%struct.path* noundef, i8* noundef, i32 noundef, i16 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @filp_open(i8* noundef, i32 noundef, i16 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #3 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_unhashed(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #3 {
entry:
  %d_hash = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 2
  %call = call fastcc i1 @hlist_bl_unhashed(%struct.hlist_bl_node* noundef %d_hash) #18
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @file_mnt_user_ns(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %0) #18
  ret %struct.user_namespace* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #18
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #18
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_uid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #3 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kuid_into_mnt(i64 %coerce.val.ii) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_truncate(%struct.user_namespace* noundef, %struct.dentry* noundef, i64 noundef, i32 noundef, %struct.file* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_files() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dump_interrupted() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #18
  %tobool.not = icmp ne i32 %call1, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_start_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #18
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_start_write(%struct.super_block* noundef %2) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dump_emit(%struct.coredump_params* nocapture noundef %cprm, i8* noundef %addr, i32 noundef %nr) local_unnamed_addr #0 {
entry:
  %to_skip = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 7
  %0 = load i64, i64* %to_skip, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @__dump_skip(%struct.coredump_params* noundef %cprm, i64 noundef %0) #18
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  store i64 0, i64* %to_skip, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call fastcc i32 @__dump_emit(%struct.coredump_params* noundef %cprm, i8* noundef %addr, i32 noundef %nr) #18
  br label %return

return:                                           ; preds = %if.then, %if.end5
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_end_write(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #18
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @__sb_end_write(%struct.super_block* noundef %2) #18
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_for_dump_helpers(%struct.file* nocapture noundef readonly %file) unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %0, align 8
  call void @pipe_lock(%struct.pipe_inode_info* noundef %1) #19
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 8
  %2 = load i32, i32* %readers, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %readers, align 4
  %writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 9
  %3 = load i32, i32* %writers, align 8
  %dec = add i32 %3, -1
  store i32 %dec, i32* %writers, align 8
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 1
  call void @__wake_up_sync(%struct.wait_queue_head* noundef %rd_wait, i32 noundef 1) #19
  %fasync_readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 15
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync_readers, i32 noundef 29, i32 noundef 1) #19
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %1) #19
  %4 = load i32, i32* %readers, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !8
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #19
  %call42 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %rd_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #19
  %6 = load i32, i32* %readers, align 4
  %cmp843 = icmp eq i32 %6, 1
  br i1 %cmp843, label %for.end, label %if.end

if.end:                                           ; preds = %if.then, %cleanup
  %call44 = phi i64 [ %call, %cleanup ], [ %call42, %if.then ]
  %tobool.not = icmp eq i64 %call44, 0
  br i1 %tobool.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #19
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %rd_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #19
  %7 = load i32, i32* %readers, align 4
  %cmp8 = icmp eq i32 %7, 1
  br i1 %cmp8, label %for.end, label %if.end

for.end:                                          ; preds = %cleanup, %if.then
  call void @finish_wait(%struct.wait_queue_head* noundef %rd_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #19
  br label %__out

__out:                                            ; preds = %if.end, %for.end
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #16
  br label %if.end13

if.end13:                                         ; preds = %__out, %entry
  call void @pipe_lock(%struct.pipe_inode_info* noundef %1) #19
  %8 = load i32, i32* %readers, align 4
  %dec16 = add i32 %8, -1
  store i32 %dec16, i32* %readers, align 4
  %9 = load i32, i32* %writers, align 8
  %inc18 = add i32 %9, 1
  store i32 %inc18, i32* %writers, align 8
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %1) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(%struct.file* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @coredump_finish(%struct.mm_struct* nocapture noundef %mm, i1 noundef %core_dumped) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  br i1 %core_dumped, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %1) #18
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %group_exit_code = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 8
  %4 = load i32, i32* %group_exit_code, align 8
  %or = or i32 %4, 128
  store i32 %or, i32* %group_exit_code, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %signal6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal6, align 8
  %group_exit_task = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 10
  store %struct.task_struct* null, %struct.task_struct** %group_exit_task, align 8
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal6, align 8
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 12
  store i32 4, i32* %flags, align 4
  %7 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i24 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %7, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i24) #19
  %core_state = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 44
  %8 = load %struct.core_state*, %struct.core_state** %core_state, align 8
  %next12 = getelementptr inbounds %struct.core_state, %struct.core_state* %8, i64 0, i32 1, i32 1
  %9 = load %struct.core_thread*, %struct.core_thread** %next12, align 8
  %cmp.not25 = icmp eq %struct.core_thread* %9, null
  br i1 %cmp.not25, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %while.body
  %next.026 = phi %struct.core_thread* [ %10, %while.body ], [ %9, %if.end ]
  %next13 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %next.026, i64 0, i32 1
  %10 = load %struct.core_thread*, %struct.core_thread** %next13, align 8
  %task14 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %next.026, i64 0, i32 0
  %11 = load %struct.task_struct*, %struct.task_struct** %task14, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  store %struct.task_struct* null, %struct.task_struct** %task14, align 8
  %call16 = call i32 @wake_up_process(%struct.task_struct* noundef %11) #19
  %cmp.not = icmp eq %struct.core_thread* %10, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end
  store %struct.core_state* null, %struct.core_state** %core_state, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(%struct.cred* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_cred(%struct.cred* noundef %_cred) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.cred* %_cred, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %usage = getelementptr inbounds %struct.cred, %struct.cred* %_cred, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %usage) #19
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__put_cred(%struct.cred* noundef nonnull %_cred) #19
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.then1, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__dump_skip(%struct.coredump_params* nocapture noundef %cprm, i64 noundef %nr) unnamed_addr #0 {
entry:
  %file1 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 2
  %0 = load %struct.file*, %struct.file** %file1, align 8
  %f_op = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %1 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %llseek = getelementptr inbounds %struct.file_operations, %struct.file_operations* %1, i64 0, i32 1
  %2 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %llseek, align 8
  %tobool.not = icmp eq i64 (%struct.file*, i64, i32)* %2, null
  %cmp.not = icmp eq i64 (%struct.file*, i64, i32)* %2, @no_llseek
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %cmp927 = icmp ugt i64 %nr, 4096
  br i1 %cmp927, label %while.body, label %while.end

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @dump_interrupted() #18
  br i1 %call, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %llseek5 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %3, i64 0, i32 1
  %4 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %llseek5, align 8
  %call6 = call i64 %4(%struct.file* noundef %0, i64 noundef %nr, i32 noundef 1) #19
  %cmp7 = icmp slt i64 %call6, 0
  br i1 %cmp7, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %pos = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 6
  %5 = load i64, i64* %pos, align 8
  %add = add i64 %5, %nr
  store i64 %add, i64* %pos, align 8
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader, %if.end13
  %nr.addr.028 = phi i64 [ %sub, %if.end13 ], [ %nr, %while.cond.preheader ]
  %call10 = call fastcc i32 @__dump_emit(%struct.coredump_params* noundef %cprm, i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @__dump_skip.zeroes, i64 0, i64 0), i32 noundef 4096) #18
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %while.body
  %sub = add i64 %nr.addr.028, -4096
  %cmp9 = icmp ugt i64 %sub, 4096
  br i1 %cmp9, label %while.body, label %while.end

while.end:                                        ; preds = %if.end13, %while.cond.preheader
  %nr.addr.0.lcssa = phi i64 [ %nr, %while.cond.preheader ], [ %sub, %if.end13 ]
  %conv = trunc i64 %nr.addr.0.lcssa to i32
  %call14 = call fastcc i32 @__dump_emit(%struct.coredump_params* noundef %cprm, i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @__dump_skip.zeroes, i64 0, i64 0), i32 noundef %conv) #18
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.then, %lor.lhs.false, %while.end, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ %call14, %while.end ], [ 0, %lor.lhs.false ], [ 0, %if.then ], [ 0, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__dump_emit(%struct.coredump_params* nocapture noundef %cprm, i8* noundef %addr, i32 noundef %nr) unnamed_addr #0 {
entry:
  %pos = alloca i64, align 8
  %file1 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 2
  %0 = load %struct.file*, %struct.file** %file1, align 8
  %1 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 10
  %2 = load i64, i64* %f_pos, align 8
  store i64 %2, i64* %pos, align 8
  %written = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 5
  %3 = load i64, i64* %written, align 8
  %conv = sext i32 %nr to i64
  %add = add i64 %3, %conv
  %limit = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 3
  %4 = load i64, i64* %limit, align 8
  %cmp = icmp ugt i64 %add, %4
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @dump_interrupted() #18
  br i1 %call, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call6 = call i64 @__kernel_write(%struct.file* noundef %0, i8* noundef %addr, i64 noundef %conv, i64* noundef nonnull %pos) #19
  %cmp8.not = icmp eq i64 %call6, %conv
  br i1 %cmp8.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end4
  %5 = load i64, i64* %pos, align 8
  store i64 %5, i64* %f_pos, align 8
  %6 = load i64, i64* %written, align 8
  %add14 = add i64 %6, %conv
  store i64 %add14, i64* %written, align 8
  %pos15 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 6
  %7 = load i64, i64* %pos15, align 8
  %add16 = add i64 %7, %conv
  store i64 %add16, i64* %pos15, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @dump_skip_to(%struct.coredump_params* nocapture noundef %cprm, i64 noundef %pos) local_unnamed_addr #8 {
entry:
  %pos1 = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 6
  %0 = load i64, i64* %pos1, align 8
  %sub = sub i64 %pos, %0
  %to_skip = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 7
  store i64 %sub, i64* %to_skip, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @dump_skip(%struct.coredump_params* nocapture noundef %cprm, i64 noundef %nr) local_unnamed_addr #8 {
entry:
  %to_skip = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 7
  %0 = load i64, i64* %to_skip, align 8
  %add = add i64 %0, %nr
  store i64 %add, i64* %to_skip, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dump_user_range(%struct.coredump_params* nocapture noundef %cprm, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %add = add i64 %len, %start
  %cmp29 = icmp ugt i64 %add, %start
  br i1 %cmp29, label %for.body, label %cleanup15

for.body:                                         ; preds = %entry, %if.end9
  %addr.030 = phi i64 [ %add14, %if.end9 ], [ %start, %entry ]
  %call = call %struct.page* @get_dump_page(i64 noundef %addr.030) #19
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %call1 = call fastcc i8* @kmap_local_page(%struct.page* noundef nonnull %call) #18
  %call2 = call i32 @dump_emit(%struct.coredump_params* noundef %cprm, i8* noundef %call1, i32 noundef 4096) #18
  %tobool3.not = icmp eq i32 %call2, 0
  call fastcc void @put_page(%struct.page* noundef nonnull %call) #18
  br i1 %tobool3.not, label %cleanup15, label %if.end9

if.else:                                          ; preds = %for.body
  call void @dump_skip(%struct.coredump_params* noundef %cprm, i64 noundef 4096) #18
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.else
  %add14 = add i64 %addr.030, 4096
  %cmp = icmp ult i64 %add14, %add
  br i1 %cmp, label %for.body, label %cleanup15

cleanup15:                                        ; preds = %if.end9, %if.then, %entry
  %retval.4 = phi i32 [ 1, %entry ], [ 0, %if.then ], [ 1, %if.end9 ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @get_dump_page(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @kmap_local_page(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %0 = ptrtoint %struct.page* %page to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  ret i8* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #18
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #18
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #19
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @dump_align(%struct.coredump_params* nocapture noundef %cprm, i32 noundef %align) local_unnamed_addr #9 {
entry:
  %pos = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 6
  %0 = load i64, i64* %pos, align 8
  %to_skip = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 7
  %1 = load i64, i64* %to_skip, align 8
  %add = add i64 %1, %0
  %sub = add i32 %align, -1
  %2 = trunc i64 %add to i32
  %conv1 = and i32 %sub, %2
  %3 = call i32 @llvm.ctpop.i32(i32 %align), !range !13
  %tobool.not = icmp ult i32 %3, 2
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq i32 %conv1, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  %sub6 = sub i32 %align, %conv1
  %conv7 = zext i32 %sub6 to i64
  %add9 = add i64 %1, %conv7
  store i64 %add9, i64* %to_skip, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then5 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dump_vma_snapshot(%struct.coredump_params* nocapture noundef readonly %cprm, i32* nocapture noundef %vma_count, %struct.core_vma_metadata** nocapture noundef %vma_meta, i64* nocapture noundef writeonly %vma_data_size_ptr) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %call2 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #18
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 13
  %3 = load i32, i32* %map_count, align 8
  store i32 %3, i32* %vma_count, align 4
  %conv = sext i32 %3 to i64
  %call5 = call fastcc i8* @kvmalloc_array(i64 noundef %conv) #18
  %4 = bitcast %struct.core_vma_metadata** %vma_meta to i8**
  store i8* %call5, i8** %4, align 8
  %tobool6.not = icmp eq i8* %call5, null
  %5 = bitcast i8* %call5 to %struct.core_vma_metadata*
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call fastcc %struct.vm_area_struct* @first_vma(%struct.task_struct* noundef %1) #18
  %cmp.not73 = icmp eq %struct.vm_area_struct* %call10, null
  br i1 %cmp.not73, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end8
  %mm_flags = getelementptr inbounds %struct.coredump_params, %struct.coredump_params* %cprm, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %6 = phi %struct.core_vma_metadata* [ %5, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %vma.076 = phi %struct.vm_area_struct* [ %call10, %for.body.lr.ph ], [ %call15, %for.body.for.body_crit_edge ]
  %vma_data_size.075 = phi i64 [ 0, %for.body.lr.ph ], [ %add14, %for.body.for.body_crit_edge ]
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %idx.ext = sext i32 %i.074 to i64
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.076, i64 0, i32 0
  %7 = load i64, i64* %vm_start, align 8
  %start = getelementptr %struct.core_vma_metadata, %struct.core_vma_metadata* %6, i64 %idx.ext, i32 0
  store i64 %7, i64* %start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.076, i64 0, i32 1
  %8 = load i64, i64* %vm_end, align 8
  %end = getelementptr %struct.core_vma_metadata, %struct.core_vma_metadata* %6, i64 %idx.ext, i32 1
  store i64 %8, i64* %end, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.076, i64 0, i32 8
  %9 = load i64, i64* %vm_flags, align 8
  %flags = getelementptr %struct.core_vma_metadata, %struct.core_vma_metadata* %6, i64 %idx.ext, i32 2
  store i64 %9, i64* %flags, align 8
  %10 = load i64, i64* %mm_flags, align 8
  %call12 = call fastcc i64 @vma_dump_size(%struct.vm_area_struct* noundef nonnull %vma.076, i64 noundef %10) #18
  %dump_size = getelementptr %struct.core_vma_metadata, %struct.core_vma_metadata* %6, i64 %idx.ext, i32 3
  store i64 %call12, i64* %dump_size, align 8
  %add14 = add i64 %call12, %vma_data_size.075
  %call15 = call fastcc %struct.vm_area_struct* @next_vma(%struct.vm_area_struct* noundef nonnull %vma.076) #18
  %inc = add i32 %i.074, 1
  %cmp.not = icmp eq %struct.vm_area_struct* %call15, null
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.core_vma_metadata*, %struct.core_vma_metadata** %vma_meta, align 8
  br label %for.body

for.end:                                          ; preds = %for.body, %if.end8
  %i.0.lcssa = phi i32 [ 0, %if.end8 ], [ %inc, %for.body ]
  %vma_data_size.0.lcssa = phi i64 [ 0, %if.end8 ], [ %add14, %for.body ]
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %2) #18
  %11 = load i32, i32* %vma_count, align 4
  %cmp16.not = icmp eq i32 %i.0.lcssa, %11
  br i1 %cmp16.not, label %if.end37, label %if.then26, !prof !14

if.then26:                                        ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/coredump.c\22; .popsection; .long 14472b - 14470b; .short 1137; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !15
  %12 = load i8*, i8** %4, align 8
  call void @kvfree(i8* noundef %12) #19
  br label %cleanup

if.end37:                                         ; preds = %for.end
  store i64 %vma_data_size.0.lcssa, i64* %vma_data_size_ptr, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end37, %if.then26, %if.then7
  %retval.0 = phi i32 [ -14, %if.then26 ], [ 0, %if.end37 ], [ -12, %if.then7 ], [ -4, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 32)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end, !prof !11

if.end:                                           ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call6 = call fastcc i8* @kvmalloc(i64 noundef %2) #18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call6, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.vm_area_struct* @first_vma(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #3 {
entry:
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 35
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 0
  %1 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  ret %struct.vm_area_struct* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @vma_dump_size(%struct.vm_area_struct* noundef %vma, i64 noundef %mm_flags) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @always_dump_vma(%struct.vm_area_struct* noundef %vma) #18
  br i1 %call, label %whole, label %if.end

if.end:                                           ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %1 = and i64 %0, 67125248
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %if.end44, label %return

if.end44:                                         ; preds = %if.end
  %and46 = and i64 %0, 8
  %tobool47.not = icmp eq i64 %and46, 0
  br i1 %tobool47.not, label %if.end56, label %if.then48

if.then48:                                        ; preds = %if.end44
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %3 = load %struct.file*, %struct.file** %vm_file, align 8
  %call49 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %3) #18
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %call49, i64 0, i32 9, i32 0
  %4 = load i32, i32* %i_nlink, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then48
  %and50 = and i64 %mm_flags, 8
  %tobool51.not = icmp eq i64 %and50, 0
  br i1 %tobool51.not, label %return, label %whole

cond.false:                                       ; preds = %if.then48
  %and52 = and i64 %mm_flags, 32
  %tobool53.not = icmp eq i64 %and52, 0
  br i1 %tobool53.not, label %return, label %whole

if.end56:                                         ; preds = %if.end44
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %5 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %tobool57.not = icmp eq %struct.anon_vma* %5, null
  %and59 = and i64 %mm_flags, 4
  %tobool60.not = icmp eq i64 %and59, 0
  %or.cond = or i1 %tobool60.not, %tobool57.not
  br i1 %or.cond, label %if.end62, label %whole

if.end62:                                         ; preds = %if.end56
  %vm_file63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %6 = load %struct.file*, %struct.file** %vm_file63, align 8
  %cmp64 = icmp eq %struct.file* %6, null
  br i1 %cmp64, label %return, label %if.end66

if.end66:                                         ; preds = %if.end62
  %and67 = and i64 %mm_flags, 16
  %tobool68.not = icmp eq i64 %and67, 0
  br i1 %tobool68.not, label %if.end70, label %whole

if.end70:                                         ; preds = %if.end66
  %and71 = and i64 %mm_flags, 64
  %tobool72.not = icmp eq i64 %and71, 0
  br i1 %tobool72.not, label %if.end86, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %if.end70
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %7 = load i64, i64* %vm_pgoff, align 8
  %cmp74 = icmp ne i64 %7, 0
  %and77 = and i64 %0, 1
  %tobool78.not = icmp eq i64 %and77, 0
  %or.cond113 = select i1 %cmp74, i1 true, i1 %tobool78.not
  br i1 %or.cond113, label %if.end86, label %do.end

do.end:                                           ; preds = %land.lhs.true73
  %call81 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %6) #18
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call81, i64 0, i32 0
  %8 = load volatile i16, i16* %i_mode, align 8
  %9 = and i16 %8, 73
  %cmp83.not = icmp eq i16 %9, 0
  br i1 %cmp83.not, label %if.end86, label %return

if.end86:                                         ; preds = %do.end, %land.lhs.true73, %if.end70
  br label %return

whole:                                            ; preds = %if.end56, %if.end66, %cond.true, %cond.false, %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %10 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %11 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %10, %11
  br label %return

return:                                           ; preds = %do.end, %if.end62, %cond.true, %cond.false, %if.end, %whole, %if.end86
  %retval.0 = phi i64 [ %sub, %whole ], [ 0, %if.end86 ], [ 0, %if.end ], [ 0, %cond.false ], [ 0, %cond.true ], [ 0, %if.end62 ], [ 4096, %do.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.vm_area_struct* @next_vma(%struct.vm_area_struct* nocapture noundef readonly %this_vma) unnamed_addr #3 {
entry:
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %this_vma, i64 0, i32 2
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  ret %struct.vm_area_struct* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #10 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 4, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @zap_threads(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %mm, %struct.core_state* noundef %core_state, i32 noundef %exit_code) unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %flags, align 8, !annotation !8
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %1 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %call = call fastcc i32 @signal_group_exit(%struct.signal_struct* noundef %2) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i125129 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i125129) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %core_state1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 44
  store %struct.core_state* %core_state, %struct.core_state** %core_state1, align 8
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %group_exit_task = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 10
  store %struct.task_struct* %tsk, %struct.task_struct** %group_exit_task, align 8
  %call3 = call fastcc i32 @zap_process(%struct.task_struct* noundef %tsk, i32 noundef %exit_code, i32 noundef 0) #18
  call fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) #18
  %5 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i125 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %5, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i125) #19
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %cleanup, label %if.end9, !prof !11

if.end9:                                          ; preds = %if.end
  %flags10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 4
  %6 = load i32, i32* %flags10, align 4
  %or = or i32 %6, 512
  store i32 %or, i32* %flags10, align 4
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 10, i32 0
  %7 = load volatile i32, i32* %counter.i, align 4
  %add = add nuw i32 %call3, 1
  %cmp12 = icmp eq i32 %7, %add
  br i1 %cmp12, label %done, label %if.end15

if.end15:                                         ; preds = %if.end9
  call fastcc void @__rcu_read_lock() #19
  %8 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr135139 = getelementptr %struct.list_head, %struct.list_head* %8, i64 -42, i32 1
  %cmp20.not136140 = icmp eq %struct.list_head** %add.ptr135139, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp20.not136140, label %for.end88, label %for.body.lr.ph.lr.ph

for.body.lr.ph.lr.ph:                             ; preds = %if.end15
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 56
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %for.end
  %add.ptr135142 = phi %struct.list_head** [ %add.ptr135139, %for.body.lr.ph.lr.ph ], [ %add.ptr135, %for.end ]
  %nr.1.ph141 = phi i32 [ %call3, %for.body.lr.ph.lr.ph ], [ %nr.2, %for.end ]
  %9 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %add.ptr137 = phi %struct.list_head** [ %add.ptr135142, %for.body.lr.ph ], [ %add.ptr, %for.cond.backedge ]
  %10 = bitcast %struct.list_head** %add.ptr137 to %struct.task_struct*
  %cmp22 = icmp eq %struct.task_struct* %9, %10
  br i1 %cmp22, label %for.cond.backedge, label %if.end25

for.cond.backedge:                                ; preds = %for.body, %if.end25
  %11 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr137, i64 83
  %12 = load volatile %struct.list_head*, %struct.list_head** %11, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %12, i64 -42, i32 1
  %cmp20.not = icmp eq %struct.list_head** %add.ptr, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp20.not, label %for.end88, label %for.body

if.end25:                                         ; preds = %for.body
  %flags26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i64 0, i32 4
  %13 = load i32, i32* %flags26, align 4
  %and = and i32 %13, 2097152
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end29, label %for.cond.backedge

if.end29:                                         ; preds = %if.end25
  %signal35 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr137, i64 177
  %14 = bitcast %struct.list_head** %signal35 to %struct.signal_struct**
  %15 = load %struct.signal_struct*, %struct.signal_struct** %14, align 8
  %next36 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %15, i64 0, i32 3, i32 0
  %thread_head44 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %15, i64 0, i32 3
  br label %for.cond42

for.cond42:                                       ; preds = %for.body47, %if.end29
  %.pn.in = phi %struct.list_head** [ %next36, %if.end29 ], [ %thread_node, %for.body47 ]
  %.pn = load volatile %struct.list_head*, %struct.list_head** %.pn.in, align 8
  %p.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.0.in, i64 139
  %16 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %cmp45.not = icmp eq %struct.list_head* %thread_head44, %16
  br i1 %cmp45.not, label %for.end, label %for.body47

for.body47:                                       ; preds = %for.cond42
  %mm48 = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.0.in, i64 93
  %17 = bitcast %struct.list_head** %mm48 to %struct.mm_struct**
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  %tobool49.not = icmp eq %struct.mm_struct* %18, null
  br i1 %tobool49.not, label %for.cond42, label %if.end60, !prof !11

if.end60:                                         ; preds = %for.body47
  %p.0.le = bitcast %struct.list_head** %p.0.in to %struct.task_struct*
  %cmp62 = icmp eq %struct.mm_struct* %18, %mm
  br i1 %cmp62, label %if.then71, label %for.end, !prof !11

if.then71:                                        ; preds = %if.end60
  call fastcc void @lock_task_sighand(%struct.task_struct* noundef %p.0.le, i64* noundef nonnull %flags) #18
  %call73 = call fastcc i32 @zap_process(%struct.task_struct* noundef %p.0.le, i32 noundef %exit_code, i32 noundef 4) #18
  %add74 = add i32 %call73, %nr.1.ph141
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %p.0.le, i64* noundef nonnull %flags) #18
  br label %for.end

for.end:                                          ; preds = %for.cond42, %if.end60, %if.then71
  %nr.2 = phi i32 [ %add74, %if.then71 ], [ %nr.1.ph141, %if.end60 ], [ %nr.1.ph141, %for.cond42 ]
  %19 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr137, i64 83
  %20 = load volatile %struct.list_head*, %struct.list_head** %19, align 8
  %add.ptr135 = getelementptr %struct.list_head, %struct.list_head* %20, i64 -42, i32 1
  %cmp20.not136 = icmp eq %struct.list_head** %add.ptr135, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp20.not136, label %for.end88, label %for.body.lr.ph

for.end88:                                        ; preds = %for.end, %for.cond.backedge, %if.end15
  %nr.1.ph.lcssa = phi i32 [ %call3, %if.end15 ], [ %nr.1.ph141, %for.cond.backedge ], [ %nr.2, %for.end ]
  call fastcc void @rcu_read_unlock() #18
  br label %done

done:                                             ; preds = %if.end9, %for.end88
  %nr.3 = phi i32 [ %call3, %if.end9 ], [ %nr.1.ph.lcssa, %for.end88 ]
  %counter.i126 = getelementptr inbounds %struct.core_state, %struct.core_state* %core_state, i64 0, i32 0, i32 0
  store volatile i32 %nr.3, i32* %counter.i126, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.thread, %if.end, %done
  %retval.0 = phi i32 [ %nr.3, %done ], [ %call3, %if.end ], [ -11, %if.end.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @wait_task_inactive(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @signal_group_exit(%struct.signal_struct* nocapture noundef readonly %sig) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 12
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %group_exit_task = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 10
  %1 = load %struct.task_struct*, %struct.task_struct** %group_exit_task, align 8
  %cmp = icmp ne %struct.task_struct* %1, null
  %phi.cast = zext i1 %cmp to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @zap_process(%struct.task_struct* nocapture noundef readonly %start, i32 noundef %exit_code, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %start, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 12
  store i32 %or, i32* %flags1, align 4
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %group_exit_code = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 8
  store i32 %exit_code, i32* %group_exit_code, align 8
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %group_stop_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 11
  store i32 0, i32* %group_stop_count, align 8
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %next = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 3, i32 0
  %.pn40 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %t.0.in41 = getelementptr %struct.list_head, %struct.list_head* %.pn40, i64 -70, i32 1
  %thread_node43 = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in41, i64 139
  %4 = bitcast %struct.list_head** %thread_node43 to %struct.list_head*
  %thread_head1044 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 3
  %cmp.not45 = icmp eq %struct.list_head* %thread_head1044, %4
  br i1 %cmp.not45, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %thread_node49 = phi %struct.list_head** [ %thread_node, %for.inc ], [ %thread_node43, %entry ]
  %t.0.in47 = phi %struct.list_head** [ %t.0.in, %for.inc ], [ %t.0.in41, %entry ]
  %nr.046 = phi i32 [ %nr.1, %for.inc ], [ 0, %entry ]
  %t.048 = bitcast %struct.list_head** %t.0.in47 to %struct.task_struct*
  call void @task_clear_jobctl_pending(%struct.task_struct* noundef %t.048, i64 noundef 1703936) #19
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %6 = inttoptr i64 %5 to %struct.task_struct*
  %cmp11.not = icmp eq %struct.task_struct* %6, %t.048
  br i1 %cmp11.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %mm = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in47, i64 93
  %7 = bitcast %struct.list_head** %mm to %struct.mm_struct**
  %8 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %tobool.not = icmp eq %struct.mm_struct* %8, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %signal12 = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in47, i64 184
  %9 = bitcast %struct.list_head** %signal12 to %struct.sigset_t*
  call fastcc void @sigaddset(%struct.sigset_t* noundef %9) #18
  call fastcc void @signal_wake_up(%struct.task_struct* noundef %t.048) #18
  %inc = add i32 %nr.046, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %nr.1 = phi i32 [ %inc, %if.then ], [ %nr.046, %land.lhs.true ], [ %nr.046, %for.body ]
  %.pn = load volatile %struct.list_head*, %struct.list_head** %thread_node49, align 8
  %t.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in, i64 139
  %10 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %11 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %thread_head10 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %11, i64 0, i32 3
  %cmp.not = icmp eq %struct.list_head* %thread_head10, %10
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %nr.0.lcssa = phi i32 [ 0, %entry ], [ %nr.1, %for.inc ]
  ret i32 %nr.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #18
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_task_sighand(%struct.task_struct* nocapture noundef readonly %task, i64* nocapture noundef readonly %flags) unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %1 = load i64, i64* %flags, align 8
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #18
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #18
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #16, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #10 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #16, !srcloc !18
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_clear_jobctl_pending(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigaddset(%struct.sigset_t* nocapture noundef %set) unnamed_addr #8 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %or = or i64 %0, 256
  store i64 %or, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @signal_wake_up(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  call void @signal_wake_up_state(%struct.task_struct* noundef %t, i32 noundef 256) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_wake_up_state(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #4 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #16, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call fastcc void @arch_local_irq_enable() #18
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #16, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #16, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #18
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #16, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  call void @rcu_read_unlock_strict() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @expand_corename(%struct.core_name* nocapture noundef %cn, i32 noundef %size) unnamed_addr #0 {
entry:
  %corename1 = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %0 = load i8*, i8** %corename1, align 8
  %conv = sext i32 %size to i64
  %call = call i8* @krealloc(i8* noundef %0, i64 noundef %conv, i32 noundef 3264) #19
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @core_name_size, align 4
  %cmp = icmp slt i32 %1, %size
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 %size, i32* @core_name_size, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call i64 @ksize(i8* noundef nonnull %call) #19
  %conv6 = trunc i64 %call5 to i32
  %size7 = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 2
  store i32 %conv6, i32* %size7, align 4
  store i8* %call, i8** %corename1, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @cn_printf(%struct.core_name* nocapture noundef %cn, i8* noundef %fmt, ...) unnamed_addr #0 {
entry:
  %arg = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call fastcc i32 @cn_vprintf(%struct.core_name* noundef %cn, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #18
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #16
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_tgid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #3 {
entry:
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 51
  %0 = load i32, i32* %tgid, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #19
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #3 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #18
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @cn_esc_printf(%struct.core_name* nocapture noundef %cn, i8* noundef %fmt, ...) unnamed_addr #0 {
entry:
  %arg = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %used = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 1
  %0 = load i32, i32* %used, align 8
  %1 = bitcast %"struct.std::__va_list"* %arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !8
  call void @llvm.va_start(i8* nonnull %1)
  %2 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %call = call fastcc i32 @cn_vprintf(%struct.core_name* noundef %cn, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #18
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #16
  call void @llvm.va_end(i8* nonnull %1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end35

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %used, align 8
  %sub = sub i32 %3, %0
  switch i32 %sub, label %if.end [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true11
  ]

land.lhs.true:                                    ; preds = %if.then
  %corename = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %4 = load i8*, i8** %corename, align 8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %cmp5 = icmp eq i8 %5, 46
  br i1 %cmp5, label %if.then25, label %if.end

land.lhs.true11:                                  ; preds = %if.then
  %corename12 = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %6 = load i8*, i8** %corename12, align 8
  %idxprom13 = sext i32 %0 to i64
  %arrayidx14 = getelementptr i8, i8* %6, i64 %idxprom13
  %7 = load i8, i8* %arrayidx14, align 1
  %cmp16 = icmp eq i8 %7, 46
  br i1 %cmp16, label %land.lhs.true18, label %if.end

land.lhs.true18:                                  ; preds = %land.lhs.true11
  %add = add i32 %0, 1
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr i8, i8* %6, i64 %idxprom20
  %8 = load i8, i8* %arrayidx21, align 1
  %cmp23 = icmp eq i8 %8, 46
  br i1 %cmp23, label %if.then25, label %if.end

if.then25:                                        ; preds = %land.lhs.true18, %land.lhs.true
  %idxprom27.pre-phi = phi i64 [ %idxprom13, %land.lhs.true18 ], [ %idxprom, %land.lhs.true ]
  %9 = phi i8* [ %6, %land.lhs.true18 ], [ %4, %land.lhs.true ]
  %arrayidx28 = getelementptr i8, i8* %9, i64 %idxprom27.pre-phi
  store i8 33, i8* %arrayidx28, align 1
  %.pre = load i32, i32* %used, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %if.then25, %land.lhs.true18, %land.lhs.true11
  %10 = phi i32 [ %3, %if.then ], [ %3, %land.lhs.true ], [ %.pre, %if.then25 ], [ %3, %land.lhs.true18 ], [ %3, %land.lhs.true11 ]
  %cmp30 = icmp eq i32 %10, %0
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end
  %call33 = call i32 (%struct.core_name*, i8*, ...) @cn_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #18
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.then32, %entry
  %ret.0 = phi i32 [ %call33, %if.then32 ], [ 0, %if.end ], [ %call, %entry ]
  %11 = load i32, i32* %used, align 8
  %cmp3776 = icmp slt i32 %0, %11
  br i1 %cmp3776, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end35
  %corename39 = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %12 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %13 = phi i32 [ %11, %for.body.lr.ph ], [ %16, %for.inc ]
  %indvars.iv = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %14 = load i8*, i8** %corename39, align 8
  %arrayidx41 = getelementptr i8, i8* %14, i64 %indvars.iv
  %15 = load i8, i8* %arrayidx41, align 1
  %cmp43 = icmp eq i8 %15, 47
  br i1 %cmp43, label %if.then45, label %for.inc

if.then45:                                        ; preds = %for.body
  store i8 33, i8* %arrayidx41, align 1
  %.pre79 = load i32, i32* %used, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then45
  %16 = phi i32 [ %13, %for.body ], [ %.pre79, %if.then45 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %17 = sext i32 %16 to i64
  %cmp37 = icmp slt i64 %indvars.iv.next, %17
  br i1 %cmp37, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end35
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #16
  ret i32 %ret.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.new_utsname* @utsname() unnamed_addr #11 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
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
define internal fastcc i32 @cn_print_exe_file(%struct.core_name* nocapture noundef %cn, i1 noundef %name_only) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #17, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call1 = call %struct.file* @get_mm_exe_file(%struct.mm_struct* noundef %2) #19
  %tobool.not = icmp eq %struct.file* %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %call3 = call i32 (%struct.core_name*, i8*, ...) @cn_esc_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i8* noundef %arraydecay) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 12), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %3, i32 noundef 3264) #19
  %tobool5.not = icmp eq i8* %call.i.i, null
  br i1 %tobool5.not, label %put_exe_file, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = call i8* @file_path(%struct.file* noundef nonnull %call1, i8* noundef nonnull %call.i.i, i32 noundef 4096) #19
  %call9 = call fastcc i1 @IS_ERR(i8* noundef %call8) #18
  br i1 %call9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %call11 = call fastcc i64 @PTR_ERR(i8* noundef %call8) #18
  %conv = trunc i64 %call11 to i32
  br label %free_buf

if.end12:                                         ; preds = %if.end7
  br i1 %name_only, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end12
  %call15 = call i8* @strrchr(i8* noundef %call8, i32 noundef 47) #19
  %tobool16.not = icmp eq i8* %call15, null
  %add.ptr = getelementptr i8, i8* %call15, i64 1
  %spec.select = select i1 %tobool16.not, i8* %call8, i8* %add.ptr
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end12
  %path.0 = phi i8* [ %call8, %if.end12 ], [ %spec.select, %if.then14 ]
  %call20 = call i32 (%struct.core_name*, i8*, ...) @cn_esc_printf(%struct.core_name* noundef %cn, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* noundef %path.0) #18
  br label %free_buf

free_buf:                                         ; preds = %if.end19, %if.then10
  %ret.0 = phi i32 [ %conv, %if.then10 ], [ %call20, %if.end19 ]
  call void @kfree(i8* noundef nonnull %call.i.i) #19
  br label %put_exe_file

put_exe_file:                                     ; preds = %if.end, %free_buf
  %ret.1 = phi i32 [ %ret.0, %free_buf ], [ -12, %if.end ]
  call void @fput(%struct.file* noundef nonnull %call1) #19
  br label %cleanup

cleanup:                                          ; preds = %put_exe_file, %if.then
  %retval.0 = phi i32 [ %ret.1, %put_exe_file ], [ %call3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @krealloc(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ksize(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cn_vprintf(%struct.core_name* nocapture noundef %cn, i8* noundef %fmt, %"struct.std::__va_list"* noundef %arg) unnamed_addr #0 {
entry:
  %arg_copy = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %arg_copy to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  %size = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 2
  %used = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 1
  %1 = bitcast %"struct.std::__va_list"* %arg to i8*
  %corename = getelementptr inbounds %struct.core_name, %struct.core_name* %cn, i64 0, i32 0
  %2 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  br label %again

again:                                            ; preds = %if.end, %entry
  %3 = load i32, i32* %size, align 4
  %4 = load i32, i32* %used, align 8
  %sub = sub i32 %3, %4
  call void @llvm.va_copy(i8* nonnull %0, i8* %1)
  %5 = load i8*, i8** %corename, align 8
  %6 = load i32, i32* %used, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr i8, i8* %5, i64 %idx.ext
  %conv = sext i32 %sub to i64
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef %add.ptr, i64 noundef %conv, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #19
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #16
  call void @llvm.va_end(i8* nonnull %0)
  %cmp = icmp slt i32 %call, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %again
  %7 = load i32, i32* %used, align 8
  %add = add i32 %7, %call
  store i32 %add, i32* %used, align 8
  br label %cleanup

if.end:                                           ; preds = %again
  %8 = load i32, i32* %size, align 4
  %add6 = sub i32 1, %sub
  %sub7 = add i32 %add6, %call
  %add8 = add i32 %sub7, %8
  %call9 = call fastcc i32 @expand_corename(%struct.core_name* noundef %cn, i32 noundef %add8) #18
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %again, label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @get_mm_exe_file(%struct.mm_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @file_path(%struct.file* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @do_coredump.core_dump_count, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @do_coredump.core_dump_count, i64 0, i32 0)) #16, !srcloc !27
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_pipe_files(%struct.file** noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @replace_fd(i32 noundef, %struct.file* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(%struct.path* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #18
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @hlist_bl_unhashed(%struct.hlist_bl_node* nocapture noundef readonly %h) unnamed_addr #3 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_bl_node**, %struct.hlist_bl_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_bl_node** %0, null
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #16, !srcloc !30
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_into_mnt(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #18
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #18
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p) #18
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #18
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #10 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #18
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #18
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #10 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  call fastcc void @__sb_start_write(%struct.super_block* noundef %sb) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #18
  br i1 %call, label %do.body7, label %if.else, !prof !14

do.body7:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call13, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #18
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  br label %if.end

if.else:                                          ; preds = %entry
  %call15 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem, i1 noundef false) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body7
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rsp) unnamed_addr #10 {
entry:
  %gp_state = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %0 = load volatile i32, i32* %gp_state, align 8
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #16, !srcloc !35
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #21, !srcloc !36
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #18
  br i1 %call, label %do.body3, label %if.else, !prof !14

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #18
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !39
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !40
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  %read_count20 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %3 = load i32*, i32** %read_count20, align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #18
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #18
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !42
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 2
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef %writer) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_lock(%struct.pipe_inode_info* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync(%struct.wait_queue_head* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(%struct.fasync_struct** noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_unlock(%struct.pipe_inode_info* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @do_coredump.core_dump_count, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @do_coredump.core_dump_count, i64 0, i32 0)) #16, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(%struct.cred* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #16, !srcloc !45
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__kernel_write(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #10 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.17* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !14

if.then:                                          ; preds = %entry
  %sub = add i64 %1, -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint %struct.page* %page to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ %2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #19
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef 3264, i32 noundef -1) #19
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @always_dump_vma(%struct.vm_area_struct* noundef %vma) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.vm_area_struct* %vma, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %0 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %0, null
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %name = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %0, i64 0, i32 12
  %1 = load i8* (%struct.vm_area_struct*)*, i8* (%struct.vm_area_struct*)** %name, align 8
  %tobool2.not = icmp eq i8* (%struct.vm_area_struct*)* %1, null
  br i1 %tobool2.not, label %if.end9, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call6 = call i8* %1(%struct.vm_area_struct* noundef nonnull %vma) #19
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %if.end9, label %return

if.end9:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end
  %call10 = call i8* @arch_vma_name(%struct.vm_area_struct* noundef nonnull %vma) #19
  %tobool11.not = icmp ne i8* %call10, null
  br label %return

return:                                           ; preds = %if.end9, %land.lhs.true3, %entry
  %retval.0 = phi i1 [ true, %entry ], [ true, %land.lhs.true3 ], [ %tobool11.not, %if.end9 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @arch_vma_name(%struct.vm_area_struct* noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #15

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
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
!8 = !{!"auto-init"}
!9 = !{i64 1295228}
!10 = !{i32 0, i32 4}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2156074328}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2156092431}
!16 = !{i64 2149470946}
!17 = !{i64 2149026777, i64 2149026824, i64 2149026830, i64 2149026867, i64 2149026885, i64 2149028226, i64 2149028274, i64 2149028322, i64 2149028385, i64 2149028434, i64 2149026963, i64 2149026988, i64 2149027014, i64 2149027020, i64 2149027892, i64 2149027932, i64 2149027950, i64 2149027982, i64 2149028010, i64 2149028064, i64 2149028084, i64 2149028181, i64 2149027043, i64 2149027057, i64 2149027063, i64 2149027113, i64 2149027159, i64 2149027192}
!18 = !{i64 2148009766, i64 2148009799, i64 2148009852, i64 2148009911, i64 2148009945, i64 2148010000, i64 2148010029, i64 2148010049}
!19 = !{i64 2147989493, i64 2147990014, i64 2147990044, i64 2147990070, i64 2147990102, i64 2147990131}
!20 = !{i64 2149495799}
!21 = !{i64 2149281165}
!22 = !{i64 2149017321, i64 2149017368, i64 2149017374, i64 2149017411, i64 2149017429, i64 2149018769, i64 2149018817, i64 2149018865, i64 2149018928, i64 2149018977, i64 2149017507, i64 2149017532, i64 2149017558, i64 2149017564, i64 2149018435, i64 2149018475, i64 2149018493, i64 2149018525, i64 2149018553, i64 2149018607, i64 2149018627, i64 2149018724, i64 2149017587, i64 2149017601, i64 2149017607, i64 2149017657, i64 2149017703, i64 2149017736}
!23 = !{i64 2149947084}
!24 = !{i64 2149492496}
!25 = !{i64 2149038493, i64 2149038540, i64 2149038546, i64 2149038583, i64 2149038601, i64 2149039912, i64 2149039960, i64 2149040008, i64 2149040071, i64 2149040120, i64 2149038679, i64 2149038704, i64 2149038730, i64 2149038736, i64 2149039578, i64 2149039618, i64 2149039636, i64 2149039668, i64 2149039696, i64 2149039750, i64 2149039770, i64 2149039867, i64 2149038759, i64 2149038773, i64 2149038779, i64 2149038829, i64 2149038875, i64 2149038908}
!26 = !{i64 2149947301}
!27 = !{i64 2147910695, i64 2147911343, i64 2147911373, i64 2147911405, i64 2147911439, i64 2147911475, i64 2147911500}
!28 = !{i64 2149481654}
!29 = !{i64 2149488935}
!30 = !{i64 2151838495}
!31 = !{i64 2151776764}
!32 = !{i64 2151780187}
!33 = !{i64 2151781029}
!34 = !{i64 2151782215}
!35 = !{i64 2149079689, i64 2149079731, i64 2149079790, i64 2149079843}
!36 = !{i64 2149054799, i64 2149054846, i64 2149054852, i64 2149054889, i64 2149054907, i64 2149055834, i64 2149055882, i64 2149055930, i64 2149055993, i64 2149056042, i64 2149054985, i64 2149055010, i64 2149055036, i64 2149055042, i64 2149055079, i64 2149055085, i64 2149055135, i64 2149055181, i64 2149055214}
!37 = !{i64 2151795124}
!38 = !{i64 2151798985}
!39 = !{i64 2151799827}
!40 = !{i64 2151801081}
!41 = !{i64 2151804904}
!42 = !{i64 2151805746}
!43 = !{i64 2151806998}
!44 = !{i64 2147919564, i64 2147920080, i64 2147920110, i64 2147920137, i64 2147920171, i64 2147920201}
!45 = !{i64 2147920416, i64 2147921064, i64 2147921094, i64 2147921126, i64 2147921160, i64 2147921196, i64 2147921221}
