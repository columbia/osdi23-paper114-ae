; ModuleID = 'block/ioprio.c'
source_filename = "block/ioprio.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.37, %struct.qspinlock }
%union.anon.37 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.74, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.0 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.1, [0 x i64] }
%struct.anon.1 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.2, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.2 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.3, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.4, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.3 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.4 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.5, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.writeback_control = type opaque
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.18, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.18 = type {}
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
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.34, %union.anon.35 }
%union.anon.34 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.35 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.39 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.39 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.55 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.61 }
%struct.anon.61 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.65 }
%struct.anon.65 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 64

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_task_ioprio(%struct.task_struct* noundef %task, i32 noundef %ioprio) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #4, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  call fastcc void @__rcu_read_lock() #5
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 79
  %3 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 1, i32 0
  %4 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %4 to i64
  %coerce.dive10 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %5 = load i32, i32* %coerce.dive10, align 4
  %coerce.val.ii11 = zext i32 %5 to i64
  %call12 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii11) #6
  br i1 %call12, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %coerce.dive17 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %6 = load i32, i32* %coerce.dive17, align 4
  %coerce.val.ii18 = zext i32 %6 to i64
  %call19 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii18) #6
  br i1 %call19, label %if.end, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true
  %call21 = call i1 @capable(i32 noundef 23) #5
  br i1 %call21, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true20
  call fastcc void @rcu_read_unlock() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true20, %land.lhs.true, %entry
  call fastcc void @rcu_read_unlock() #6
  %call22 = call fastcc i32 @security_task_setioprio(%struct.task_struct* noundef %task, i32 noundef %ioprio) #6
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end
  %call25 = call %struct.io_context* @get_task_io_context(%struct.task_struct* noundef %task, i32 noundef 2592, i32 noundef -1) #5
  %tobool26.not = icmp eq %struct.io_context* %call25, null
  br i1 %tobool26.not, label %cleanup, label %if.then27

if.then27:                                        ; preds = %if.end24
  %conv = trunc i32 %ioprio to i16
  %ioprio28 = getelementptr inbounds %struct.io_context, %struct.io_context* %call25, i64 0, i32 4
  store i16 %conv, i16* %ioprio28, align 4
  call void @put_io_context(%struct.io_context* noundef nonnull %call25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then27, %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call22, %if.end ], [ 0, %if.then27 ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #1 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #6
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #6
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_task_setioprio(%struct.task_struct* noundef %p, i32 noundef %ioprio) unnamed_addr #0 {
entry:
  %call = call i32 @cap_task_setioprio(%struct.task_struct* noundef %p, i32 noundef %ioprio) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.io_context* @get_task_io_context(%struct.task_struct* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_io_context(%struct.io_context* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ioprio_check_cap(i32 noundef %ioprio) local_unnamed_addr #0 {
entry:
  %0 = lshr i32 %ioprio, 13
  %and = and i32 %0, 7
  %1 = and i32 %ioprio, 8191
  switch i32 %and, label %cleanup [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.epilog
    i32 0, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %call = call i1 @capable(i32 noundef 23) #5
  br i1 %call, label %sw.bb4, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %call3 = call i1 @capable(i32 noundef 21) #5
  br i1 %call3, label %sw.bb4, label %cleanup

sw.bb4:                                           ; preds = %sw.bb, %land.lhs.true, %entry
  %cmp = icmp ugt i32 %1, 7
  br i1 %cmp, label %cleanup, label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %sw.epilog, label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb4, %entry
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb10, %sw.bb4, %land.lhs.true, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %land.lhs.true ], [ -22, %sw.bb4 ], [ -22, %sw.bb10 ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_ioprio_set(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_ioprio_set(i64 noundef %0, i64 noundef %1, i64 noundef %2) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_ioprio_set(i64 noundef %which, i64 noundef %who, i64 noundef %ioprio) unnamed_addr #0 {
entry:
  %conv = trunc i64 %which to i32
  %conv1 = trunc i64 %who to i32
  %conv2 = trunc i64 %ioprio to i32
  %call = call fastcc i64 @__do_sys_ioprio_set(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #6
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @ioprio_best(i16 noundef %aprio, i16 noundef %bprio) local_unnamed_addr #1 {
entry:
  %call = call fastcc i1 @ioprio_valid(i16 noundef %aprio) #6
  %call1 = call fastcc i1 @ioprio_valid(i16 noundef %bprio) #6
  %0 = zext i16 %aprio to i32
  %conv = select i1 %call, i32 %0, i32 16388
  %1 = zext i16 %bprio to i32
  %conv4 = select i1 %call1, i32 %1, i32 16388
  %cmp = icmp ult i32 %conv, %conv4
  %cond = select i1 %cmp, i32 %conv, i32 %conv4
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @ioprio_valid(i16 noundef %ioprio) unnamed_addr #1 {
entry:
  %0 = icmp sgt i16 %ioprio, 8191
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_ioprio_get(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_ioprio_get(i64 noundef %0, i64 noundef %1) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_ioprio_get(i64 noundef %which, i64 noundef %who) unnamed_addr #0 {
entry:
  %conv = trunc i64 %which to i32
  %conv1 = trunc i64 %who to i32
  %call = call fastcc i64 @__do_sys_ioprio_get(i32 noundef %conv, i32 noundef %conv1) #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #1 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  call void @rcu_read_unlock_strict() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_setioprio(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_ioprio_set(i32 noundef %which, i32 noundef %who, i32 noundef %ioprio) unnamed_addr #0 {
entry:
  %call = call i32 @ioprio_check_cap(i32 noundef %ioprio) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup190

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #5
  switch i32 %which, label %out [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb87
  ]

sw.bb:                                            ; preds = %if.end
  %tobool1.not = icmp eq i32 %who, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %sw.bb
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #4, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  br label %if.end5

if.else:                                          ; preds = %sw.bb
  %call4 = call %struct.task_struct* @find_task_by_vpid(i32 noundef %who) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %p.0 = phi %struct.task_struct* [ %call4, %if.else ], [ %1, %if.then2 ]
  %tobool6.not = icmp eq %struct.task_struct* %p.0, null
  br i1 %tobool6.not, label %out, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 @set_task_ioprio(%struct.task_struct* noundef nonnull %p.0, i32 noundef %ioprio) #6
  br label %out

sw.bb10:                                          ; preds = %if.end
  %tobool11.not = icmp eq i32 %who, 0
  br i1 %tobool11.not, label %if.then12, label %if.else15

if.then12:                                        ; preds = %sw.bb10
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #4, !srcloc !7
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call14 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %3) #6
  br label %if.end17

if.else15:                                        ; preds = %sw.bb10
  %call16 = call %struct.pid* @find_vpid(i32 noundef %who) #5
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then12
  %pgrp.0 = phi %struct.pid* [ %call16, %if.else15 ], [ %call14, %if.then12 ]
  call fastcc void @__raw_read_lock() #6
  %cmp.not = icmp eq %struct.pid* %pgrp.0, null
  br i1 %cmp.not, label %do.end86, label %if.then19

if.then19:                                        ; preds = %if.end17
  %first = getelementptr %struct.pid, %struct.pid* %pgrp.0, i64 0, i32 3, i64 2, i32 0
  %4 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool23.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -67, i32 1
  %tobool28.not292298 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool28.not292 = or i1 %tobool23.not, %tobool28.not292298
  br i1 %tobool28.not292, label %do.end86, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then19
  %5 = bitcast %struct.hlist_node*** %add.ptr to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc61
  %p.1294 = phi %struct.task_struct* [ %spec.select263, %for.inc61 ], [ %5, %for.body.preheader ]
  %ret.0293 = phi i32 [ %ret.1.lcssa, %for.inc61 ], [ -3, %for.body.preheader ]
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.1294, i64 0, i32 87
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %next = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 3, i32 0
  %.pn256284 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %p.2.in285 = getelementptr %struct.list_head, %struct.list_head* %.pn256284, i64 -70, i32 1
  %thread_node286 = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.2.in285, i64 139
  %7 = bitcast %struct.list_head** %thread_node286 to %struct.list_head*
  %thread_head41287 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 3
  %cmp42.not288 = icmp eq %struct.list_head* %thread_head41287, %7
  br i1 %cmp42.not288, label %for.inc61, label %for.body44

for.cond39:                                       ; preds = %for.body44
  %.pn256 = load volatile %struct.list_head*, %struct.list_head** %thread_node290, align 8
  %p.2.in = getelementptr %struct.list_head, %struct.list_head* %.pn256, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.2.in, i64 139
  %8 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %9 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %thread_head41 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i64 0, i32 3
  %cmp42.not = icmp eq %struct.list_head* %thread_head41, %8
  br i1 %cmp42.not, label %for.inc61, label %for.body44

for.body44:                                       ; preds = %for.body, %for.cond39
  %thread_node290 = phi %struct.list_head** [ %thread_node, %for.cond39 ], [ %thread_node286, %for.body ]
  %p.2.in289 = phi %struct.list_head** [ %p.2.in, %for.cond39 ], [ %p.2.in285, %for.body ]
  %p.2 = bitcast %struct.list_head** %p.2.in289 to %struct.task_struct*
  %call45 = call i32 @set_task_ioprio(%struct.task_struct* noundef %p.2, i32 noundef %ioprio) #6
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.cond39, label %cleanup

cleanup:                                          ; preds = %for.body44
  call fastcc void @__raw_read_unlock() #6
  br label %out

for.inc61:                                        ; preds = %for.cond39, %for.body
  %ret.1.lcssa = phi i32 [ %ret.0293, %for.body ], [ 0, %for.cond39 ]
  %next69 = getelementptr %struct.task_struct, %struct.task_struct* %p.1294, i64 0, i32 60, i64 2, i32 0
  %10 = load volatile %struct.hlist_node*, %struct.hlist_node** %next69, align 8
  %tobool72.not = icmp eq %struct.hlist_node* %10, null
  %add.ptr79 = getelementptr %struct.hlist_node, %struct.hlist_node* %10, i64 -67, i32 1
  %11 = bitcast %struct.hlist_node*** %add.ptr79 to %struct.task_struct*
  %spec.select263 = select i1 %tobool72.not, %struct.task_struct* null, %struct.task_struct* %11
  %tobool28.not = icmp eq %struct.task_struct* %spec.select263, null
  br i1 %tobool28.not, label %do.end86, label %for.body

do.end86:                                         ; preds = %for.inc61, %if.then19, %if.end17
  %ret.3 = phi i32 [ -3, %if.end17 ], [ -3, %if.then19 ], [ %ret.1.lcssa, %for.inc61 ]
  call fastcc void @__raw_read_unlock() #6
  br label %out

sw.bb87:                                          ; preds = %if.end
  %coerce.val.ii = zext i32 %who to i64
  %call92 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #6
  br i1 %call92, label %if.end94, label %out

if.end94:                                         ; preds = %sw.bb87
  %tobool95.not = icmp eq i32 %who, 0
  br i1 %tobool95.not, label %do.end100, label %if.else104

do.end100:                                        ; preds = %if.end94
  %12 = call i64 asm "mrs $0, sp_el0", "=r"() #4, !srcloc !7
  %13 = inttoptr i64 %12 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i64 0, i32 80
  %14 = load %struct.cred*, %struct.cred** %cred, align 8
  %user103 = getelementptr inbounds %struct.cred, %struct.cred* %14, i64 0, i32 15
  %15 = load %struct.user_struct*, %struct.user_struct** %user103, align 8
  br label %if.end108

if.else104:                                       ; preds = %if.end94
  %call107 = call %struct.user_struct* @find_user(i64 %coerce.val.ii) #5
  br label %if.end108

if.end108:                                        ; preds = %if.else104, %do.end100
  %user.0 = phi %struct.user_struct* [ %call107, %if.else104 ], [ %15, %do.end100 ]
  %tobool109.not = icmp eq %struct.user_struct* %user.0, null
  br i1 %tobool109.not, label %out, label %for.cond112.preheader

for.cond112.preheader:                            ; preds = %if.end108
  %16 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr124279 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -42, i32 1
  %cmp125.not280 = icmp eq %struct.list_head** %add.ptr124279, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp125.not280, label %free_uid, label %for.body127

for.cond112.loopexit:                             ; preds = %for.inc171, %for.body127
  %ret.5.lcssa = phi i32 [ %ret.4281, %for.body127 ], [ %ret.6, %for.inc171 ]
  %17 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr124282, i64 83
  %18 = load volatile %struct.list_head*, %struct.list_head** %17, align 8
  %add.ptr124 = getelementptr %struct.list_head, %struct.list_head* %18, i64 -42, i32 1
  %cmp125.not = icmp eq %struct.list_head** %add.ptr124, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp125.not, label %free_uid, label %for.body127

for.body127:                                      ; preds = %for.cond112.preheader, %for.cond112.loopexit
  %add.ptr124282 = phi %struct.list_head** [ %add.ptr124, %for.cond112.loopexit ], [ %add.ptr124279, %for.cond112.preheader ]
  %ret.4281 = phi i32 [ %ret.5.lcssa, %for.cond112.loopexit ], [ -3, %for.cond112.preheader ]
  %signal133 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr124282, i64 177
  %19 = bitcast %struct.list_head** %signal133 to %struct.signal_struct**
  %20 = load %struct.signal_struct*, %struct.signal_struct** %19, align 8
  %next135 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %20, i64 0, i32 3, i32 0
  %.pn269 = load volatile %struct.list_head*, %struct.list_head** %next135, align 8
  %p.4.in270 = getelementptr %struct.list_head, %struct.list_head* %.pn269, i64 -70, i32 1
  %thread_node142272 = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.4.in270, i64 139
  %21 = bitcast %struct.list_head** %thread_node142272 to %struct.list_head*
  %thread_head144273 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %20, i64 0, i32 3
  %cmp145.not274 = icmp eq %struct.list_head* %thread_head144273, %21
  br i1 %cmp145.not274, label %for.cond112.loopexit, label %for.body147

for.body147:                                      ; preds = %for.body127, %for.inc171
  %thread_node142278 = phi %struct.list_head** [ %thread_node142, %for.inc171 ], [ %thread_node142272, %for.body127 ]
  %p.4.in276 = phi %struct.list_head** [ %p.4.in, %for.inc171 ], [ %p.4.in270, %for.body127 ]
  %ret.5275 = phi i32 [ %ret.6, %for.inc171 ], [ %ret.4281, %for.body127 ]
  %p.4277 = bitcast %struct.list_head** %p.4.in276 to %struct.task_struct*
  call fastcc void @__rcu_read_lock() #5
  %real_cred = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.4.in276, i64 168
  %22 = bitcast %struct.list_head** %real_cred to %struct.cred**
  %23 = load volatile %struct.cred*, %struct.cred** %22, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %23, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #6
  %coerce.val.ii159 = zext i32 %___val.sroa.0.0.copyload to i64
  %call162 = call fastcc i1 @uid_eq(i64 %coerce.val.ii159, i64 %coerce.val.ii) #6
  br i1 %call162, label %lor.lhs.false, label %for.inc171

lor.lhs.false:                                    ; preds = %for.body147
  %call163 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %p.4277) #6
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %for.inc171, label %if.end166

if.end166:                                        ; preds = %lor.lhs.false
  %call167 = call i32 @set_task_ioprio(%struct.task_struct* noundef %p.4277, i32 noundef %ioprio) #6
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %for.inc171, label %free_uid

for.inc171:                                       ; preds = %if.end166, %for.body147, %lor.lhs.false
  %ret.6 = phi i32 [ 0, %if.end166 ], [ %ret.5275, %lor.lhs.false ], [ %ret.5275, %for.body147 ]
  %.pn = load volatile %struct.list_head*, %struct.list_head** %thread_node142278, align 8
  %p.4.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node142 = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.4.in, i64 139
  %24 = bitcast %struct.list_head** %thread_node142 to %struct.list_head*
  %25 = load %struct.signal_struct*, %struct.signal_struct** %19, align 8
  %thread_head144 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %25, i64 0, i32 3
  %cmp145.not = icmp eq %struct.list_head* %thread_head144, %24
  br i1 %cmp145.not, label %for.cond112.loopexit, label %for.body147

free_uid:                                         ; preds = %for.cond112.loopexit, %if.end166, %for.cond112.preheader
  %ret.7 = phi i32 [ -3, %for.cond112.preheader ], [ %call167, %if.end166 ], [ %ret.5.lcssa, %for.cond112.loopexit ]
  br i1 %tobool95.not, label %out, label %if.then187

if.then187:                                       ; preds = %free_uid
  call void @free_uid(%struct.user_struct* noundef nonnull %user.0) #5
  br label %out

out:                                              ; preds = %cleanup, %if.end, %do.end86, %if.then7, %if.end5, %sw.bb87, %if.end108, %if.then187, %free_uid
  %ret.8 = phi i32 [ %ret.7, %if.then187 ], [ %ret.7, %free_uid ], [ -3, %if.end108 ], [ -3, %sw.bb87 ], [ %call45, %cleanup ], [ %ret.3, %do.end86 ], [ %call8, %if.then7 ], [ -3, %if.end5 ], [ -22, %if.end ]
  call fastcc void @rcu_read_unlock() #6
  br label %cleanup190

cleanup190:                                       ; preds = %entry, %out
  %retval.0.in = phi i32 [ %ret.8, %out ], [ %call, %entry ]
  %retval.0 = sext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pgrp(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 2
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  call fastcc void @queued_read_lock() #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_read_unlock() #6
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #1 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #6
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.user_struct* @find_user(i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(%struct.user_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #5
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !12

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #7, !srcloc !13
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #7, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_ioprio_get(i32 noundef %which, i32 noundef %who) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #5
  switch i32 %which, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb87
  ]

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq i32 %who, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #4, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %call1 = call %struct.task_struct* @find_task_by_vpid(i32 noundef %who) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %p.0 = phi %struct.task_struct* [ %call1, %if.else ], [ %1, %if.then ]
  %tobool2.not = icmp eq %struct.task_struct* %p.0, null
  br i1 %tobool2.not, label %sw.epilog, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i32 @get_task_ioprio(%struct.task_struct* noundef nonnull %p.0) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %tobool7.not = icmp eq i32 %who, 0
  br i1 %tobool7.not, label %if.then8, label %if.else11

if.then8:                                         ; preds = %sw.bb6
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #4, !srcloc !7
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call10 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %3) #6
  br label %do.body

if.else11:                                        ; preds = %sw.bb6
  %call12 = call %struct.pid* @find_vpid(i32 noundef %who) #5
  br label %do.body

do.body:                                          ; preds = %if.then8, %if.else11
  %pgrp.0 = phi %struct.pid* [ %call12, %if.else11 ], [ %call10, %if.then8 ]
  %cmp.not = icmp eq %struct.pid* %pgrp.0, null
  br i1 %cmp.not, label %sw.epilog, label %if.then14

if.then14:                                        ; preds = %do.body
  %first = getelementptr %struct.pid, %struct.pid* %pgrp.0, i64 0, i32 3, i64 2, i32 0
  %4 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool18.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -67, i32 1
  %tobool23.not284288 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool23.not284 = or i1 %tobool18.not, %tobool23.not284288
  br i1 %tobool23.not284, label %sw.epilog, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then14
  %5 = bitcast %struct.hlist_node*** %add.ptr to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.end
  %p.1286 = phi %struct.task_struct* [ %spec.select259, %for.end ], [ %5, %for.body.preheader ]
  %ret.0285 = phi i32 [ %ret.1.lcssa, %for.end ], [ -3, %for.body.preheader ]
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.1286, i64 0, i32 87
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %next = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 3, i32 0
  %.pn257275 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %p.2.in276 = getelementptr %struct.list_head, %struct.list_head* %.pn257275, i64 -70, i32 1
  %thread_node277 = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.2.in276, i64 139
  %7 = bitcast %struct.list_head** %thread_node277 to %struct.list_head*
  %thread_head36278 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 3
  %cmp37.not279 = icmp eq %struct.list_head* %thread_head36278, %7
  br i1 %cmp37.not279, label %for.end, label %for.body38

for.body38:                                       ; preds = %for.body, %for.inc
  %thread_node282 = phi %struct.list_head** [ %thread_node, %for.inc ], [ %thread_node277, %for.body ]
  %p.2.in281 = phi %struct.list_head** [ %p.2.in, %for.inc ], [ %p.2.in276, %for.body ]
  %ret.1280 = phi i32 [ %ret.2, %for.inc ], [ %ret.0285, %for.body ]
  %p.2 = bitcast %struct.list_head** %p.2.in281 to %struct.task_struct*
  %call39 = call fastcc i32 @get_task_ioprio(%struct.task_struct* noundef %p.2) #6
  %cmp43 = icmp eq i32 %ret.1280, -3
  br i1 %cmp43, label %for.inc, label %if.else45

if.else45:                                        ; preds = %for.body38
  %conv = trunc i32 %ret.1280 to i16
  %conv46 = trunc i32 %call39 to i16
  %call47 = call i32 @ioprio_best(i16 noundef %conv, i16 noundef %conv46) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body38, %if.else45
  %ret.2 = phi i32 [ %call47, %if.else45 ], [ %call39, %for.body38 ]
  %.pn257 = load volatile %struct.list_head*, %struct.list_head** %thread_node282, align 8
  %p.2.in = getelementptr %struct.list_head, %struct.list_head* %.pn257, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.2.in, i64 139
  %8 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %9 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %thread_head36 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i64 0, i32 3
  %cmp37.not = icmp eq %struct.list_head* %thread_head36, %8
  br i1 %cmp37.not, label %for.end, label %for.body38

for.end:                                          ; preds = %for.inc, %for.body
  %ret.1.lcssa = phi i32 [ %ret.0285, %for.body ], [ %ret.2, %for.inc ]
  %next69 = getelementptr %struct.task_struct, %struct.task_struct* %p.1286, i64 0, i32 60, i64 2, i32 0
  %10 = load volatile %struct.hlist_node*, %struct.hlist_node** %next69, align 8
  %tobool72.not = icmp eq %struct.hlist_node* %10, null
  %add.ptr79 = getelementptr %struct.hlist_node, %struct.hlist_node* %10, i64 -67, i32 1
  %11 = bitcast %struct.hlist_node*** %add.ptr79 to %struct.task_struct*
  %spec.select259 = select i1 %tobool72.not, %struct.task_struct* null, %struct.task_struct* %11
  %tobool23.not = icmp eq %struct.task_struct* %spec.select259, null
  br i1 %tobool23.not, label %sw.epilog, label %for.body

sw.bb87:                                          ; preds = %entry
  %tobool91.not = icmp eq i32 %who, 0
  br i1 %tobool91.not, label %do.end96, label %if.else100

do.end96:                                         ; preds = %sw.bb87
  %12 = call i64 asm "mrs $0, sp_el0", "=r"() #4, !srcloc !7
  %13 = inttoptr i64 %12 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i64 0, i32 80
  %14 = load %struct.cred*, %struct.cred** %cred, align 8
  %user99 = getelementptr inbounds %struct.cred, %struct.cred* %14, i64 0, i32 15
  %15 = load %struct.user_struct*, %struct.user_struct** %user99, align 8
  br label %if.end103

if.else100:                                       ; preds = %sw.bb87
  %coerce.val.ii = zext i32 %who to i64
  %call102 = call %struct.user_struct* @find_user(i64 %coerce.val.ii) #5
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %do.end96
  %user.0 = phi %struct.user_struct* [ %call102, %if.else100 ], [ %15, %do.end96 ]
  %tobool104.not = icmp eq %struct.user_struct* %user.0, null
  br i1 %tobool104.not, label %sw.epilog, label %for.cond107.preheader

for.cond107.preheader:                            ; preds = %if.end103
  %16 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr119270 = getelementptr %struct.list_head, %struct.list_head* %16, i64 -42, i32 1
  %cmp120.not271 = icmp eq %struct.list_head** %add.ptr119270, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp120.not271, label %for.end190, label %for.body122.lr.ph

for.body122.lr.ph:                                ; preds = %for.cond107.preheader
  %coerce.dive156 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %user.0, i64 0, i32 5, i32 0
  br label %for.body122

for.cond107.loopexit:                             ; preds = %for.inc176, %for.body122
  %ret.4.lcssa = phi i32 [ %ret.3272, %for.body122 ], [ %ret.5, %for.inc176 ]
  %17 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr119273, i64 83
  %18 = load volatile %struct.list_head*, %struct.list_head** %17, align 8
  %add.ptr119 = getelementptr %struct.list_head, %struct.list_head* %18, i64 -42, i32 1
  %cmp120.not = icmp eq %struct.list_head** %add.ptr119, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp120.not, label %for.end190, label %for.body122

for.body122:                                      ; preds = %for.body122.lr.ph, %for.cond107.loopexit
  %add.ptr119273 = phi %struct.list_head** [ %add.ptr119270, %for.body122.lr.ph ], [ %add.ptr119, %for.cond107.loopexit ]
  %ret.3272 = phi i32 [ -3, %for.body122.lr.ph ], [ %ret.4.lcssa, %for.cond107.loopexit ]
  %signal128 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr119273, i64 177
  %19 = bitcast %struct.list_head** %signal128 to %struct.signal_struct**
  %20 = load %struct.signal_struct*, %struct.signal_struct** %19, align 8
  %next130 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %20, i64 0, i32 3, i32 0
  %.pn260 = load volatile %struct.list_head*, %struct.list_head** %next130, align 8
  %p.3.in261 = getelementptr %struct.list_head, %struct.list_head* %.pn260, i64 -70, i32 1
  %thread_node137263 = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.3.in261, i64 139
  %21 = bitcast %struct.list_head** %thread_node137263 to %struct.list_head*
  %thread_head139264 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %20, i64 0, i32 3
  %cmp140.not265 = icmp eq %struct.list_head* %thread_head139264, %21
  br i1 %cmp140.not265, label %for.cond107.loopexit, label %for.body142

for.body142:                                      ; preds = %for.body122, %for.inc176
  %thread_node137269 = phi %struct.list_head** [ %thread_node137, %for.inc176 ], [ %thread_node137263, %for.body122 ]
  %p.3.in267 = phi %struct.list_head** [ %p.3.in, %for.inc176 ], [ %p.3.in261, %for.body122 ]
  %ret.4266 = phi i32 [ %ret.5, %for.inc176 ], [ %ret.3272, %for.body122 ]
  %p.3268 = bitcast %struct.list_head** %p.3.in267 to %struct.task_struct*
  call fastcc void @__rcu_read_lock() #5
  %real_cred = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.3.in267, i64 168
  %22 = bitcast %struct.list_head** %real_cred to %struct.cred**
  %23 = load volatile %struct.cred*, %struct.cred** %22, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %23, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #6
  %coerce.val.ii155 = zext i32 %___val.sroa.0.0.copyload to i64
  %24 = load i32, i32* %coerce.dive156, align 8
  %coerce.val.ii157 = zext i32 %24 to i64
  %call158 = call fastcc i1 @uid_eq(i64 %coerce.val.ii155, i64 %coerce.val.ii157) #6
  br i1 %call158, label %lor.lhs.false, label %for.inc176

lor.lhs.false:                                    ; preds = %for.body142
  %call159 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %p.3268) #6
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %for.inc176, label %if.end162

if.end162:                                        ; preds = %lor.lhs.false
  %call163 = call fastcc i32 @get_task_ioprio(%struct.task_struct* noundef %p.3268) #6
  %cmp168 = icmp eq i32 %ret.4266, -3
  br i1 %cmp168, label %for.inc176, label %if.else171

if.else171:                                       ; preds = %if.end162
  %conv172 = trunc i32 %ret.4266 to i16
  %conv173 = trunc i32 %call163 to i16
  %call174 = call i32 @ioprio_best(i16 noundef %conv172, i16 noundef %conv173) #6
  br label %for.inc176

for.inc176:                                       ; preds = %if.end162, %if.else171, %for.body142, %lor.lhs.false
  %ret.5 = phi i32 [ %call174, %if.else171 ], [ %ret.4266, %lor.lhs.false ], [ %ret.4266, %for.body142 ], [ %call163, %if.end162 ]
  %.pn = load volatile %struct.list_head*, %struct.list_head** %thread_node137269, align 8
  %p.3.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node137 = getelementptr inbounds %struct.list_head*, %struct.list_head** %p.3.in, i64 139
  %25 = bitcast %struct.list_head** %thread_node137 to %struct.list_head*
  %26 = load %struct.signal_struct*, %struct.signal_struct** %19, align 8
  %thread_head139 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %26, i64 0, i32 3
  %cmp140.not = icmp eq %struct.list_head* %thread_head139, %25
  br i1 %cmp140.not, label %for.cond107.loopexit, label %for.body142

for.end190:                                       ; preds = %for.cond107.loopexit, %for.cond107.preheader
  %ret.3.lcssa = phi i32 [ -3, %for.cond107.preheader ], [ %ret.4.lcssa, %for.cond107.loopexit ]
  br i1 %tobool91.not, label %sw.epilog, label %if.then192

if.then192:                                       ; preds = %for.end190
  call void @free_uid(%struct.user_struct* noundef nonnull %user.0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %if.then14, %entry, %for.end190, %if.then192, %if.end103, %do.body, %if.end, %if.then3
  %ret.6 = phi i32 [ %ret.3.lcssa, %if.then192 ], [ %ret.3.lcssa, %for.end190 ], [ -3, %if.end103 ], [ -3, %do.body ], [ %call4, %if.then3 ], [ -3, %if.end ], [ -22, %entry ], [ -3, %if.then14 ], [ %ret.1.lcssa, %for.end ]
  call fastcc void @rcu_read_unlock() #6
  %conv194 = sext i32 %ret.6 to i64
  ret i64 %conv194
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_task_ioprio(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %p) #6
  %io_context = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 112
  %0 = load %struct.io_context*, %struct.io_context** %io_context, align 16
  %tobool1.not = icmp eq %struct.io_context* %0, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %entry
  %ioprio = getelementptr inbounds %struct.io_context, %struct.io_context* %0, i64 0, i32 4
  %1 = load i16, i16* %ioprio, align 4
  %conv = zext i16 %1 to i32
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry
  %ret.0 = phi i32 [ %conv, %if.then2 ], [ 16388, %entry ]
  call fastcc void @task_unlock(%struct.task_struct* noundef %p) #6
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #5
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #5
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #7, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #6
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #7, !srcloc !18
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nounwind readnone }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1248600}
!8 = !{i64 2149900456}
!9 = !{i64 2149900673}
!10 = !{i64 2149483535}
!11 = !{i64 2149538489}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2147866099, i64 2147866765, i64 2147866795, i64 2147866828, i64 2147866862, i64 2147866897, i64 2147866922}
!14 = !{i64 2147876847, i64 2147877513, i64 2147877543, i64 2147877575, i64 2147877609, i64 2147877645, i64 2147877670}
!15 = !{i64 2149435026}
!16 = !{i64 2147963138, i64 2147963171, i64 2147963224, i64 2147963283, i64 2147963317, i64 2147963372, i64 2147963401, i64 2147963421}
!17 = !{i64 2149442307}
!18 = !{i64 2149234537}
