; ModuleID = 'kernel/exit.c'
source_filename = "kernel/exit.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.35, %struct.qspinlock }
%union.anon.35 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.93, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.98, i32, i8* }
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
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.96 = type { %struct.callback_head }
%union.anon.97 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.33 }
%union.anon.33 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.34, %union.anon.37 }
%union.anon.34 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.37 = type { i64 }
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
%union.anon.98 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type opaque
%union.anon.55 = type { %struct.atomic_t }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.41 = type { %struct.callback_head }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.net_device = type opaque
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type {}
%struct.tcp_mib = type { [16 x i64] }
%struct.linux_mib = type { [126 x i64] }
%struct.udp_mib = type { [10 x i64] }
%struct.icmp_mib = type { [28 x i64] }
%struct.icmpmsg_mib = type { [512 x %struct.atomic64_t] }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, %struct.ctl_table_header* }
%struct.netns_nexthop = type { %struct.rb_root, %struct.hlist_head*, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, i8, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i8, i8, i8, i8, i8, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i64, i64, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t, [48 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.75, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.75 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.76 }
%union.anon.76 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.77, %union.anon.80, %union.anon.81, [48 x i8], %union.anon.82, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.84, i32, i32, i32, i16, i16, %union.anon.86, %union.anon.87, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.79 }
%union.anon.79 = type { %struct.net_device* }
%union.anon.80 = type { %struct.sock* }
%union.anon.81 = type { i64 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i64, void (%struct.sk_buff*)* }
%union.anon.84 = type { i32 }
%union.anon.86 = type { i32 }
%union.anon.87 = type { i16 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type opaque
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.88 }
%struct.bpf_prog = type opaque
%union.anon.88 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.90, %struct.anon.91, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.90 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.91 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.89, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.89 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.56 }
%struct.anon.56 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.60 }
%struct.anon.60 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type { %struct.robust_list, i64, %struct.robust_list* }
%struct.robust_list = type { %struct.robust_list* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.92, i32, [12 x i8] }
%union.anon.92 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.93 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.94, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.94 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.siginfo = type { %union.anon.101 }
%union.anon.101 = type { %struct.anon.102, [80 x i8] }
%struct.anon.102 = type { i32, i32, i32, %union.__sifields }
%struct.rusage = type { %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_old_timeval = type { i64, i64 }
%struct.wait_opts = type { i32, i32, %struct.pid*, %struct.waitid_info*, i32, %struct.rusage*, %struct.wait_queue_entry, i32 }
%struct.waitid_info = type { i32, i32, i32, i32 }

@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@.str = private unnamed_addr constant [33 x i8] c"Aiee, killing interrupt handler!\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Attempted to kill the idle task!\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\016note: %s[%d] exited with preempt_count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"\011Fixing recursive fault but reboot is needed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Attempted to kill init! exitcode=0x%08x\0A\00", align 1
@dirty_throttle_leaks = external dso_local global i32, section ".data..percpu", align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@nr_threads = external dso_local local_unnamed_addr global i32, align 4
@process_counts = external dso_local global i64, section ".data..percpu", align 8
@init_task = external dso_local global %struct.task_struct, align 64
@overflowuid = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_task_struct_rcu_user(%struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 125
  %rcu_users = bitcast %union.anon.93* %0 to %struct.refcount_struct*
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %rcu_users) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rcu = getelementptr %union.anon.93, %union.anon.93* %0, i64 0, i32 0
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @delayed_put_task_struct) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #16
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @delayed_put_task_struct(%struct.callback_head* noundef %rhp) #0 {
entry:
  %add.ptr = getelementptr %struct.callback_head, %struct.callback_head* %rhp, i64 -109, i32 1
  %0 = bitcast void (%struct.callback_head*)** %add.ptr to %struct.task_struct*
  call fastcc void @put_task_struct(%struct.task_struct* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @release_task(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  br label %repeat

repeat:                                           ; preds = %if.then13, %entry
  %p.addr.0 = phi %struct.task_struct* [ %p, %entry ], [ %3, %if.then13 ]
  call fastcc void @__rcu_read_lock() #17
  call fastcc void @__rcu_read_lock() #17
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.addr.0, i64 0, i32 79
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %ucounts = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 17
  %1 = load %struct.ucounts*, %struct.ucounts** %ucounts, align 8
  call fastcc void @rcu_read_unlock() #16
  %call = call i1 @dec_rlimit_ucounts(%struct.ucounts* noundef %1, i32 noundef 8, i64 noundef 1) #17
  call fastcc void @rcu_read_unlock() #16
  call fastcc void @__raw_write_lock_irq() #16
  call fastcc void @ptrace_release_task(%struct.task_struct* noundef %p.addr.0) #16
  %thread_pid6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.addr.0, i64 0, i32 59
  %2 = load %struct.pid*, %struct.pid** %thread_pid6, align 64
  %call7 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %2) #16
  call fastcc void @__exit_signal(%struct.task_struct* noundef %p.addr.0) #16
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.addr.0, i64 0, i32 56
  %3 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  %cmp.not = icmp eq %struct.task_struct* %3, %p.addr.0
  br i1 %cmp.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %repeat
  %call8 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %3) #16
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end21, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 39
  %4 = load i32, i32* %exit_state, align 4
  %cmp10 = icmp eq i32 %4, 32
  br i1 %cmp10, label %if.then, label %if.end21

if.then:                                          ; preds = %land.lhs.true9
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 41
  %5 = load i32, i32* %exit_signal, align 4
  %call11 = call i1 @do_notify_parent(%struct.task_struct* noundef %3, i32 noundef %5) #17
  br i1 %call11, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.then
  store i32 16, i32* %exit_state, align 4
  call fastcc void @__raw_write_unlock_irq() #16
  call void @proc_flush_pid(%struct.pid* noundef %2) #17
  call void @put_pid(%struct.pid* noundef %2) #17
  call void @release_thread(%struct.task_struct* noundef %p.addr.0) #17
  call void @put_task_struct_rcu_user(%struct.task_struct* noundef %p.addr.0) #16
  br label %repeat

if.end21:                                         ; preds = %if.then, %repeat, %land.lhs.true, %land.lhs.true9
  call fastcc void @__raw_write_unlock_irq() #16
  call void @proc_flush_pid(%struct.pid* noundef %2) #17
  call void @put_pid(%struct.pid* noundef %2) #17
  call void @release_thread(%struct.task_struct* noundef %p.addr.0) #17
  call void @put_task_struct_rcu_user(%struct.task_struct* noundef %p.addr.0) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @dec_rlimit_ucounts(%struct.ucounts* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !8
  call fastcc void @queued_write_lock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_release_task(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %ptraced = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 57
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %ptraced) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/ptrace.h\22; .popsection; .long 14472b - 14470b; .short 237; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !10
  unreachable

do.end7:                                          ; preds = %entry
  call fastcc void @ptrace_unlink(%struct.task_struct* noundef %task) #16
  %ptrace_entry = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 58
  %call9 = call fastcc i32 @list_empty(%struct.list_head* noundef %ptrace_entry) #16
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body21, label %do.end26, !prof !9

do.body21:                                        ; preds = %do.end7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/ptrace.h\22; .popsection; .long 14472b - 14470b; .short 239; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !11
  unreachable

do.end26:                                         ; preds = %do.end7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @get_pid(%struct.pid* noundef returned %pid) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.pid* %pid
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__exit_signal(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %call = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef %tsk) #16
  %1 = bitcast i64* %utime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18
  store i64 0, i64* %utime, align 8, !annotation !12
  %2 = bitcast i64* %stime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18
  store i64 0, i64* %stime, align 8, !annotation !12
  %sighand1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %3 = load volatile %struct.sighand_struct*, %struct.sighand_struct** %sighand1, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @posix_cpu_timers_exit(%struct.task_struct* noundef %tsk) #17
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @posix_cpu_timers_exit_group(%struct.task_struct* noundef %tsk) #17
  %tty8 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 24
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty8, align 8
  store %struct.tty_struct* null, %struct.tty_struct** %tty8, align 8
  br label %if.end20

if.else:                                          ; preds = %entry
  %notify_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 9
  %5 = load i32, i32* %notify_count, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.else
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %notify_count, align 4
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  %group_exit_task = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 10
  %6 = load %struct.task_struct*, %struct.task_struct** %group_exit_task, align 8
  %call13 = call i32 @wake_up_process(%struct.task_struct* noundef %6) #17
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true, %if.else
  %curr_target = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 5
  %7 = load %struct.task_struct*, %struct.task_struct** %curr_target, align 8
  %cmp15 = icmp eq %struct.task_struct* %7, %tsk
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end14
  %call17 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %tsk) #16
  store %struct.task_struct* %call17, %struct.task_struct** %curr_target, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end14, %if.then16, %if.then
  %tty.0 = phi %struct.tty_struct* [ %4, %if.then ], [ null, %if.then16 ], [ null, %if.end14 ]
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 20, i32 5
  %8 = bitcast i64* %sum_exec_runtime to i8*
  call void @add_device_randomness(i8* noundef %8, i32 noundef 8) #17
  call fastcc void @task_cputime(%struct.task_struct* noundef %tsk, i64* noundef nonnull %utime, i64* noundef nonnull %stime) #16
  %stats_lock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 25
  call fastcc void @write_seqlock(%struct.seqlock_t* noundef %stats_lock) #16
  %9 = load i64, i64* %utime, align 8
  %utime21 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 26
  %10 = load i64, i64* %utime21, align 8
  %add = add i64 %10, %9
  store i64 %add, i64* %utime21, align 8
  %11 = load i64, i64* %stime, align 8
  %stime22 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 27
  %12 = load i64, i64* %stime22, align 8
  %add23 = add i64 %12, %11
  store i64 %add23, i64* %stime22, align 8
  %call24 = call fastcc i64 @task_gtime(%struct.task_struct* noundef %tsk) #16
  %gtime = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 30
  %13 = load i64, i64* %gtime, align 8
  %add25 = add i64 %13, %call24
  store i64 %add25, i64* %gtime, align 8
  %min_flt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 75
  %14 = load i64, i64* %min_flt, align 8
  %min_flt26 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 37
  %15 = load i64, i64* %min_flt26, align 8
  %add27 = add i64 %15, %14
  store i64 %add27, i64* %min_flt26, align 8
  %maj_flt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 76
  %16 = load i64, i64* %maj_flt, align 32
  %maj_flt28 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 38
  %17 = load i64, i64* %maj_flt28, align 8
  %add29 = add i64 %17, %16
  store i64 %add29, i64* %maj_flt28, align 8
  %nvcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 71
  %18 = load i64, i64* %nvcsw, align 8
  %nvcsw30 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 33
  %19 = load i64, i64* %nvcsw30, align 8
  %add31 = add i64 %19, %18
  store i64 %add31, i64* %nvcsw30, align 8
  %nivcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 72
  %20 = load i64, i64* %nivcsw, align 64
  %nivcsw32 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 34
  %21 = load i64, i64* %nivcsw32, align 8
  %add33 = add i64 %21, %20
  store i64 %add33, i64* %nivcsw32, align 8
  %22 = load i64, i64* %sum_exec_runtime, align 8
  %sum_sched_runtime = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 48
  %23 = load i64, i64* %sum_sched_runtime, align 8
  %add41 = add i64 %23, %22
  store i64 %add41, i64* %sum_sched_runtime, align 8
  %nr_threads = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 2
  %24 = load i32, i32* %nr_threads, align 8
  %dec42 = add i32 %24, -1
  store i32 %dec42, i32* %nr_threads, align 8
  call fastcc void @__unhash_process(%struct.task_struct* noundef %tsk, i1 noundef %call) #16
  call fastcc void @write_sequnlock(%struct.seqlock_t* noundef %stats_lock) #16
  %pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 92
  call void @flush_sigqueue(%struct.sigpending* noundef %pending) #17
  store %struct.sighand_struct* null, %struct.sighand_struct** %sighand1, align 16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @__cleanup_sighand(%struct.sighand_struct* noundef %3) #17
  call fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) #16
  br i1 %call, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end20
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 6
  call void @flush_sigqueue(%struct.sigpending* noundef %shared_pending) #17
  call void @tty_kref_put(%struct.tty_struct* noundef %tty.0) #17
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @thread_group_empty(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %thread_group = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %thread_group) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @do_notify_parent(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @queued_write_unlock() #16
  call fastcc void @arch_local_irq_enable() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_flush_pid(%struct.pid* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_thread(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef %w) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #17
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !14
  %task1 = getelementptr inbounds %struct.rcuwait, %struct.rcuwait* %w, i64 0, i32 0
  %0 = load volatile %struct.task_struct*, %struct.task_struct** %task1, align 8
  %tobool.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @wake_up_process(%struct.task_struct* noundef nonnull %0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  call fastcc void @rcu_read_unlock() #16
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @is_current_pgrp_orphaned() local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_read_lock() #16
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %1) #16
  %call3 = call fastcc i32 @will_become_orphaned_pgrp(%struct.pid* noundef %call2, %struct.task_struct* noundef null) #16
  call fastcc void @__raw_read_unlock() #16
  ret i32 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  call fastcc void @queued_read_lock() #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i32 @will_become_orphaned_pgrp(%struct.pid* noundef %pgrp, %struct.task_struct* noundef readnone %ignored_task) unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.pid* %pgrp, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %first = getelementptr %struct.pid, %struct.pid* %pgrp, i64 0, i32 3, i64 2, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -67, i32 1
  %tobool8.not7174 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool8.not71 = or i1 %tobool.not, %tobool8.not7174
  br i1 %tobool8.not71, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %p.072 = phi %struct.task_struct* [ %spec.select70, %for.inc ], [ %1, %for.body.preheader ]
  %cmp9 = icmp eq %struct.task_struct* %p.072, %ignored_task
  br i1 %cmp9, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.072, i64 0, i32 39
  %2 = load i32, i32* %exit_state, align 4
  %tobool10.not = icmp eq i32 %2, 0
  br i1 %tobool10.not, label %lor.lhs.false12, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef nonnull %p.072) #16
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %for.inc

lor.lhs.false12:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.072, i64 0, i32 52
  %3 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %call13 = call fastcc i32 @is_global_init(%struct.task_struct* noundef %3) #16
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end, label %for.inc

if.end:                                           ; preds = %lor.lhs.false12
  %call17 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %3) #16
  %cmp18.not = icmp eq %struct.pid* %call17, %pgrp
  br i1 %cmp18.not, label %for.inc, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end
  %call21 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %3) #16
  %call22 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef nonnull %p.072) #16
  %cmp23 = icmp eq %struct.pid* %call21, %call22
  br i1 %cmp23, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true19, %for.body, %land.lhs.true, %lor.lhs.false12
  %next = getelementptr %struct.task_struct, %struct.task_struct* %p.072, i64 0, i32 60, i64 2, i32 0
  %4 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool35.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr42 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -67, i32 1
  %5 = bitcast %struct.hlist_node*** %add.ptr42 to %struct.task_struct*
  %spec.select70 = select i1 %tobool35.not, %struct.task_struct* null, %struct.task_struct* %5
  %tobool8.not = icmp eq %struct.task_struct* %spec.select70, null
  br i1 %tobool8.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true19, %for.inc, %if.then, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.then ], [ 0, %land.lhs.true19 ], [ 1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pgrp(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #5 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 2
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_read_unlock() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  ret void
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local void @do_exit(i64 noundef %code) local_unnamed_addr #6 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i1 @blk_needs_flush_plug(%struct.task_struct* noundef %1) #16
  br i1 %call1, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/exit.c\22; .popsection; .long 14472b - 14470b; .short 739; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call fastcc i32 @preempt_count() #16
  %2 = and i32 %call15, 15728640
  %call17 = call fastcc i32 @preempt_count() #16
  %3 = and i32 %call17, 983040
  %or257 = or i32 %3, %2
  %call20 = call fastcc i32 @preempt_count() #16
  %4 = and i32 %call20, 65280
  %or23259 = or i32 %or257, %4
  %tobool24.not = icmp eq i32 %or23259, 0
  br i1 %tobool24.not, label %if.end33, label %if.then32, !prof !19

if.then32:                                        ; preds = %if.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #20
  unreachable

if.end33:                                         ; preds = %if.end
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 50
  %5 = load i32, i32* %pid, align 32
  %tobool34.not = icmp eq i32 %5, 0
  br i1 %tobool34.not, label %if.then44, label %if.end45, !prof !9

if.then44:                                        ; preds = %if.end33
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #20
  unreachable

if.end45:                                         ; preds = %if.end33
  %call46 = call fastcc i32 @preempt_count() #16
  %cmp.not = icmp eq i32 %call46, 0
  br i1 %cmp.not, label %do.end65, label %do.end, !prof !19

do.end:                                           ; preds = %if.end45
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %call59 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %1) #16
  %call60 = call fastcc i32 @preempt_count() #16
  %call61 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %call59, i32 noundef %call60) #21
  call fastcc void @preempt_count_set() #16
  br label %do.end65

do.end65:                                         ; preds = %if.end45, %do.end
  call fastcc void @ptrace_event(i64 noundef %code) #16
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %6 = load i32, i32* %flags, align 4
  %and66 = and i32 %6, 4
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end100, label %do.end78, !prof !19

do.end78:                                         ; preds = %do.end65
  %call80 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0)) #21
  call void @futex_exit_recursive(%struct.task_struct* noundef %1) #17
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  call void @schedule() #17
  br label %if.end100

if.end100:                                        ; preds = %do.end78, %do.end65
  call fastcc void @io_uring_files_cancel() #16
  call void @exit_signals(%struct.task_struct* noundef %1) #17
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %7 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool101.not = icmp eq %struct.mm_struct* %7, null
  br i1 %tobool101.not, label %if.end104, label %if.then102

if.then102:                                       ; preds = %if.end100
  call void @sync_mm_rss(%struct.mm_struct* noundef nonnull %7) #17
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end100
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %8 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %live = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %8, i64 0, i32 1
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %live) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv106 = zext i1 %cmp.i.i to i32
  br i1 %cmp.i.i, label %if.then108, label %if.end148.critedge

if.then108:                                       ; preds = %if.end104
  %call109 = call fastcc i32 @is_global_init(%struct.task_struct* noundef %1) #16
  %tobool110.not = icmp eq i32 %call109, 0
  %9 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  br i1 %tobool110.not, label %if.end122, label %if.then118, !prof !19

if.then118:                                       ; preds = %if.then108
  %group_exit_code = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i64 0, i32 8
  %10 = load i32, i32* %group_exit_code, align 8
  %tobool120.not = icmp eq i32 %10, 0
  %conv121 = trunc i64 %code to i32
  %cond = select i1 %tobool120.not, i32 %conv121, i32 %10
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 noundef %cond) #20
  unreachable

if.end122:                                        ; preds = %if.then108
  %real_timer = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i64 0, i32 16
  %call124 = call i32 @hrtimer_cancel(%struct.hrtimer* noundef %real_timer) #17
  %11 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  call void @exit_itimers(%struct.signal_struct* noundef %11) #17
  %12 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool127.not = icmp eq %struct.mm_struct* %12, null
  br i1 %tobool127.not, label %if.then147, label %if.then128

if.then128:                                       ; preds = %if.end122
  %13 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %maxrss = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %13, i64 0, i32 45
  call fastcc void @setmax_mm_hiwater_rss(i64* noundef %maxrss, %struct.mm_struct* noundef nonnull %12) #16
  br label %if.then147

if.then147:                                       ; preds = %if.end122, %if.then128
  %conv139 = trunc i64 %code to i32
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 40
  store i32 %conv139, i32* %exit_code, align 8
  call fastcc void @exit_mm() #16
  call void @exit_files(%struct.task_struct* noundef %1) #17
  call void @exit_fs(%struct.task_struct* noundef %1) #17
  call void @disassociate_ctty(i32 noundef 1) #17
  br label %if.end148

if.end148.critedge:                               ; preds = %if.end104
  %conv139.c = trunc i64 %code to i32
  %exit_code.c = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 40
  store i32 %conv139.c, i32* %exit_code.c, align 8
  call fastcc void @exit_mm() #16
  call void @exit_files(%struct.task_struct* noundef %1) #17
  call void @exit_fs(%struct.task_struct* noundef %1) #17
  br label %if.end148

if.end148:                                        ; preds = %if.end148.critedge, %if.then147
  call void @exit_task_namespaces(%struct.task_struct* noundef %1) #17
  call fastcc void @exit_task_work() #16
  call fastcc void @exit_notify(%struct.task_struct* noundef %1, i32 noundef %conv106) #16
  %pi_state_cache = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 118
  %14 = load %struct.futex_pi_state*, %struct.futex_pi_state** %pi_state_cache, align 64
  %tobool150.not = icmp eq %struct.futex_pi_state* %14, null
  br i1 %tobool150.not, label %if.end161, label %if.then158, !prof !19

if.then158:                                       ; preds = %if.end148
  %15 = bitcast %struct.futex_pi_state* %14 to i8*
  call void @kfree(i8* noundef nonnull %15) #17
  br label %if.end161

if.end161:                                        ; preds = %if.then158, %if.end148
  %io_context = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 112
  %16 = load %struct.io_context*, %struct.io_context** %io_context, align 16
  %tobool162.not = icmp eq %struct.io_context* %16, null
  br i1 %tobool162.not, label %if.end164, label %if.then163

if.then163:                                       ; preds = %if.end161
  call void @exit_io_context(%struct.task_struct* noundef %1) #17
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %if.end161
  %splice_pipe = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 126
  %17 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %splice_pipe, align 8
  %tobool165.not = icmp eq %struct.pipe_inode_info* %17, null
  br i1 %tobool165.not, label %if.end168, label %if.then166

if.then166:                                       ; preds = %if.end164
  call void @free_pipe_info(%struct.pipe_inode_info* noundef nonnull %17) #17
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %if.end164
  %page = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 127, i32 0
  %18 = load %struct.page*, %struct.page** %page, align 32
  %tobool169.not = icmp eq %struct.page* %18, null
  br i1 %tobool169.not, label %if.end173, label %if.then170

if.then170:                                       ; preds = %if.end168
  call fastcc void @put_page(%struct.page* noundef nonnull %18) #16
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %if.end168
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  %nr_dirtied = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 128
  %19 = load i32, i32* %nr_dirtied, align 16
  %tobool174.not = icmp eq i32 %19, 0
  br i1 %tobool174.not, label %if.end194, label %if.then175

if.then175:                                       ; preds = %if.end173
  %call188 = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call188, ptrtoint (i32* @dirty_throttle_leaks to i64)
  %20 = inttoptr i64 %add to i32*
  %21 = load i32, i32* %20, align 4
  %add189 = add i32 %21, %19
  store i32 %add189, i32* %20, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then175, %if.end173
  call void @exit_rcu() #17
  call void @do_task_dead() #22
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @blk_needs_flush_plug(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #3 {
entry:
  %plug1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 109
  %0 = load %struct.blk_plug*, %struct.blk_plug** %plug1, align 8
  %tobool.not = icmp eq %struct.blk_plug* %0, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %mq_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %0, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %mq_list) #16
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %cb_list = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %0, i64 0, i32 1
  %call3 = call fastcc i32 @list_empty(%struct.list_head* noundef %cb_list) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ true, %land.rhs ], [ %tobool4.not, %lor.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #5 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @preempt_count_set() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  store volatile i32 0, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_event(i64 noundef %message) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i1 @ptrace_event_enabled(%struct.task_struct* noundef %1) #16
  br i1 %call1, label %if.then, label %if.end13, !prof !9

if.then:                                          ; preds = %entry
  %ptrace_message = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 113
  store i64 %message, i64* %ptrace_message, align 8
  call void @ptrace_notify(i32 noundef 1541) #17
  br label %if.end13

if.end13:                                         ; preds = %entry, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_exit_recursive(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_uring_files_cancel() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %io_uring = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 85
  %2 = load %struct.io_uring_task*, %struct.io_uring_task** %io_uring, align 8
  %tobool.not = icmp eq %struct.io_uring_task* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__io_uring_cancel(i1 noundef false) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_signals(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(%struct.mm_struct* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_global_init(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @task_tgid_nr(%struct.task_struct* noundef %tsk) #16
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(%struct.hrtimer* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_itimers(%struct.signal_struct* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @setmax_mm_hiwater_rss(i64* nocapture noundef %maxrss, %struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @get_mm_hiwater_rss(%struct.mm_struct* noundef %mm) #16
  %0 = load i64, i64* %maxrss, align 8
  %cmp = icmp ult i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %call, i64* %maxrss, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @exit_mm() unnamed_addr #0 {
entry:
  %self = alloca %struct.core_thread, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  call void @exit_mm_release(%struct.task_struct* noundef %1, %struct.mm_struct* noundef %2) #17
  %tobool.not = icmp eq %struct.mm_struct* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @sync_mm_rss(%struct.mm_struct* noundef nonnull %2) #17
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef nonnull %2) #16
  %core_state3 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 44
  %3 = load %struct.core_state*, %struct.core_state** %core_state3, align 8
  %tobool4.not = icmp eq %struct.core_state* %3, null
  br i1 %tobool4.not, label %if.end55, label %if.then5

if.then5:                                         ; preds = %if.end
  %4 = bitcast %struct.core_thread* %self to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #18
  %5 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %self, i64 0, i32 1
  %6 = bitcast %struct.core_thread** %5 to i64*, !annotation !12
  store i64 0, i64* %6, align 8, !annotation !12
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %2) #16
  %task = getelementptr inbounds %struct.core_thread, %struct.core_thread* %self, i64 0, i32 0
  store %struct.task_struct* %1, %struct.task_struct** %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 1024
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then5
  %next = getelementptr inbounds %struct.core_state, %struct.core_state* %3, i64 0, i32 1, i32 1
  %8 = bitcast %struct.core_thread** %next to i8*
  %9 = ptrtoint %struct.core_thread* %self to i64
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i64 noundef %9, i8* noundef %8) #17
  %10 = inttoptr i64 %call11.i to %struct.core_thread*
  %next12 = getelementptr inbounds %struct.core_thread, %struct.core_thread* %self, i64 0, i32 1
  store %struct.core_thread* %10, %struct.core_thread** %next12, align 8
  br label %if.end14

if.else:                                          ; preds = %if.then5
  store %struct.task_struct* null, %struct.task_struct** %task, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %nr_threads = getelementptr inbounds %struct.core_state, %struct.core_state* %3, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %nr_threads) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %startup = getelementptr inbounds %struct.core_state, %struct.core_state* %3, i64 0, i32 2
  call void @complete(%struct.completion* noundef %startup) #17
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %11 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool35.not108 = icmp eq %struct.task_struct* %11, null
  br i1 %tobool35.not108, label %do.body46, label %if.end37

if.end37:                                         ; preds = %if.end17, %if.end37
  call void @schedule() #17
  store volatile i32 2, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %12 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool35.not = icmp eq %struct.task_struct* %12, null
  br i1 %tobool35.not, label %do.body46, label %if.end37

do.body46:                                        ; preds = %if.end37, %if.end17
  store volatile i32 0, i32* %__state, align 16
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #18
  br label %if.end55

if.end55:                                         ; preds = %do.body46, %if.end
  call fastcc void @mmgrab(%struct.mm_struct* noundef nonnull %2) #16
  %active_mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 36
  %13 = load %struct.mm_struct*, %struct.mm_struct** %active_mm, align 16
  %cmp.not = icmp eq %struct.mm_struct* %2, %13
  br i1 %cmp.not, label %do.end69, label %do.body61, !prof !19

do.body61:                                        ; preds = %if.end55
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/exit.c\22; .popsection; .long 14472b - 14470b; .short 479; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !23
  unreachable

do.end69:                                         ; preds = %if.end55
  call fastcc void @task_lock(%struct.task_struct* noundef %1) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !24
  call fastcc void @arch_local_irq_disable() #16
  store %struct.mm_struct* null, %struct.mm_struct** %mm1, align 8
  call void @membarrier_update_current_mm(%struct.mm_struct* noundef null) #17
  call fastcc void @arch_local_irq_enable() #16
  call fastcc void @task_unlock(%struct.task_struct* noundef %1) #16
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %2) #16
  call void @mmput(%struct.mm_struct* noundef nonnull %2) #17
  %14 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call82 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %14, i32 noundef 18) #16
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %cleanup, label %if.then84

if.then84:                                        ; preds = %do.end69
  call void @exit_oom_victim() #17
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %if.then84, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_files(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_fs(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disassociate_ctty(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_task_namespaces(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @exit_task_work() unnamed_addr #0 {
entry:
  call void @task_work_run() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @exit_notify(%struct.task_struct* noundef %tsk, i32 noundef %group_dead) unnamed_addr #0 {
entry:
  %dead = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %dead to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dead, i64 0, i32 0
  store %struct.list_head* %dead, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %dead, i64 0, i32 1
  store %struct.list_head* %dead, %struct.list_head** %prev, align 8
  call fastcc void @__raw_write_lock_irq() #16
  call fastcc void @forget_original_parent(%struct.task_struct* noundef %tsk, %struct.list_head* noundef nonnull %dead) #16
  %tobool.not = icmp eq i32 %group_dead, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 56
  %1 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  call fastcc void @kill_orphaned_pgrp(%struct.task_struct* noundef %1, %struct.task_struct* noundef null) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 39
  store i32 32, i32* %exit_state, align 4
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 5
  %2 = load i32, i32* %ptrace, align 8
  %tobool1.not = icmp eq i32 %2, 0
  %call12 = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef %tsk) #16
  br i1 %tobool1.not, label %if.else, label %if.then4, !prof !19

if.then4:                                         ; preds = %if.end
  br i1 %call12, label %land.lhs.true, label %cond.end

land.lhs.true:                                    ; preds = %if.then4
  %call6 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %tsk) #16
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cond.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %call9 = call fastcc i32 @ptrace_reparented(%struct.task_struct* noundef %tsk) #16
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %land.lhs.true8
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 41
  %3 = load i32, i32* %exit_signal, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then4, %land.lhs.true, %land.lhs.true8, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 17, %land.lhs.true8 ], [ 17, %land.lhs.true ], [ 17, %if.then4 ]
  %call11 = call i1 @do_notify_parent(%struct.task_struct* noundef %tsk, i32 noundef %cond) #17
  br i1 %call11, label %if.then24, label %if.end26

if.else:                                          ; preds = %if.end
  br i1 %call12, label %if.then13, label %if.then24

if.then13:                                        ; preds = %if.else
  %call14 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %tsk) #16
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end26, label %if.end22

if.end22:                                         ; preds = %if.then13
  %exit_signal16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 41
  %4 = load i32, i32* %exit_signal16, align 4
  %call17 = call i1 @do_notify_parent(%struct.task_struct* noundef %tsk, i32 noundef %4) #17
  br i1 %call17, label %if.then24, label %if.end26

if.then24:                                        ; preds = %cond.end, %if.else, %if.end22
  store i32 16, i32* %exit_state, align 4
  %ptrace_entry = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 58
  call fastcc void @list_add(%struct.list_head* noundef %ptrace_entry, %struct.list_head* noundef nonnull %dead) #16
  br label %if.end26

if.end26:                                         ; preds = %cond.end, %if.then13, %if.then24, %if.end22
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %notify_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 9
  %6 = load i32, i32* %notify_count, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then35, label %if.end38, !prof !9

if.then35:                                        ; preds = %if.end26
  %group_exit_task = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 10
  %7 = load %struct.task_struct*, %struct.task_struct** %group_exit_task, align 8
  %call37 = call i32 @wake_up_process(%struct.task_struct* noundef %7) #17
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end26
  call fastcc void @__raw_write_unlock_irq() #16
  %8 = bitcast %struct.list_head* %dead to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.list_head*
  %cmp49.not89 = icmp eq %struct.list_head* %dead, %10
  br i1 %cmp49.not89, label %for.end, label %for.body

for.body:                                         ; preds = %if.end38, %for.body
  %11 = phi %struct.list_head* [ %12, %for.body ], [ %10, %if.end38 ]
  %.pn.in.in90 = phi i8* [ %.pn, %for.body ], [ %9, %if.end38 ]
  %p.0.in = getelementptr i8, i8* %.pn.in.in90, i64 -1008
  %p.0 = bitcast i8* %p.0.in to %struct.task_struct*
  %.pn.in = bitcast i8* %.pn.in.in90 to i8**
  %.pn = load i8*, i8** %.pn.in, align 16
  call fastcc void @list_del_init(%struct.list_head* noundef %11) #16
  call void @release_task(%struct.task_struct* noundef %p.0) #16
  %12 = bitcast i8* %.pn to %struct.list_head*
  %cmp49.not = icmp eq %struct.list_head* %dead, %12
  br i1 %cmp49.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_io_context(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pipe_info(%struct.pipe_inode_info* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #16
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #16
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #9 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #23, !srcloc !25
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_rcu() local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_task_dead() local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local void @complete_and_exit(%struct.completion* noundef %comp, i64 noundef %code) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq %struct.completion* %comp, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @complete(%struct.completion* noundef nonnull %comp) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @do_exit(i64 noundef %code) #24
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_exit(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #6 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  call fastcc void @__se_sys_exit(i64 noundef %0) #16
  unreachable
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @__se_sys_exit(i64 noundef %error_code) unnamed_addr #6 {
entry:
  %conv = trunc i64 %error_code to i32
  call fastcc void @__do_sys_exit(i32 noundef %conv) #16
  unreachable
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local void @do_group_exit(i32 noundef %exit_code) local_unnamed_addr #6 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %and = and i32 %exit_code, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !19

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/exit.c\22; .popsection; .long 14472b - 14470b; .short 903; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !26
  unreachable

do.end8:                                          ; preds = %entry
  %call9 = call fastcc i32 @signal_group_exit(%struct.signal_struct* noundef %2) #16
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end8
  %group_exit_code = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 8
  %3 = load i32, i32* %group_exit_code, align 8
  br label %if.end29

if.else:                                          ; preds = %do.end8
  %call13 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %1) #16
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end29

if.then15:                                        ; preds = %if.else
  %sighand17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand17, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %call18 = call fastcc i32 @signal_group_exit(%struct.signal_struct* noundef %2) #16
  %tobool19.not = icmp eq i32 %call18, 0
  %group_exit_code23 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 8
  br i1 %tobool19.not, label %if.else22, label %if.then20

if.then20:                                        ; preds = %if.then15
  %5 = load i32, i32* %group_exit_code23, align 8
  br label %if.end26

if.else22:                                        ; preds = %if.then15
  store i32 %exit_code, i32* %group_exit_code23, align 8
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 12
  store i32 4, i32* %flags, align 4
  %call25 = call i32 @zap_other_threads(%struct.task_struct* noundef %1) #17
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then20
  %exit_code.addr.0 = phi i32 [ %5, %if.then20 ], [ %exit_code, %if.else22 ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end26, %if.then11
  %exit_code.addr.1 = phi i32 [ %3, %if.then11 ], [ %exit_code, %if.else ], [ %exit_code.addr.0, %if.end26 ]
  %conv30 = sext i32 %exit_code.addr.1 to i64
  call void @do_exit(i64 noundef %conv30) #24
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @signal_group_exit(%struct.signal_struct* nocapture noundef readonly %sig) unnamed_addr #5 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zap_other_threads(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_exit_group(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #6 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  call fastcc void @__se_sys_exit_group(i64 noundef %0) #16
  unreachable
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @__se_sys_exit_group(i64 noundef %error_code) unnamed_addr #6 {
entry:
  %conv = trunc i64 %error_code to i32
  call fastcc void @__do_sys_exit_group(i32 noundef %conv) #16
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__wake_up_parent(%struct.task_struct* noundef %p, %struct.task_struct* nocapture noundef readonly %parent) local_unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %parent, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %wait_chldexit = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 4
  %1 = bitcast %struct.task_struct* %p to i8*
  call void @__wake_up_sync_key(%struct.wait_queue_head* noundef %wait_chldexit, i32 noundef 1, i8* noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(%struct.wait_queue_head* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_waitid(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
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
  %call = call fastcc i64 @__se_sys_waitid(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_waitid(i64 noundef %which, i64 noundef %upid, i64 noundef %infop, i64 noundef %options, i64 noundef %ru) unnamed_addr #0 {
entry:
  %conv = trunc i64 %which to i32
  %conv1 = trunc i64 %upid to i32
  %0 = inttoptr i64 %infop to %struct.siginfo*
  %conv2 = trunc i64 %options to i32
  %1 = inttoptr i64 %ru to %struct.rusage*
  %call = call fastcc i64 @__do_sys_waitid(i32 noundef %conv, i32 noundef %conv1, %struct.siginfo* noundef %0, i32 noundef %conv2, %struct.rusage* noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @kernel_wait4(i32 noundef %upid, i32* noundef %stat_addr, i32 noundef %options, %struct.rusage* noundef %ru) local_unnamed_addr #0 {
entry:
  %wo = alloca %struct.wait_opts, align 8
  %0 = bitcast %struct.wait_opts* %wo to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 64, i1 false), !annotation !12
  %and = and i32 %options, 536870900
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %upid, label %if.else [
    i32 -2147483648, label %cleanup
    i32 -1, label %if.end16
  ]

if.else:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %upid, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %sub = sub i32 0, %upid
  %call = call %struct.pid* @find_get_pid(i32 noundef %sub) #17
  br label %if.end16

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp eq i32 %upid, 0
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else7
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %call11 = call %struct.pid* @get_task_pid(%struct.task_struct* noundef %4, i32 noundef 2) #17
  br label %if.end16

if.else12:                                        ; preds = %if.else7
  %call13 = call %struct.pid* @find_get_pid(i32 noundef %upid) #17
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then6, %if.else12, %if.then9
  %type.0 = phi i32 [ 2, %if.then6 ], [ 2, %if.then9 ], [ 0, %if.else12 ], [ 4, %if.end ]
  %pid.0 = phi %struct.pid* [ %call, %if.then6 ], [ %call11, %if.then9 ], [ %call13, %if.else12 ], [ null, %if.end ]
  %wo_type = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 0
  store i32 %type.0, i32* %wo_type, align 8
  %wo_pid = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 2
  store %struct.pid* %pid.0, %struct.pid** %wo_pid, align 8
  %or = or i32 %options, 4
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  store i32 %or, i32* %wo_flags, align 4
  %wo_info = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 3
  store %struct.waitid_info* null, %struct.waitid_info** %wo_info, align 8
  %wo_stat = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 4
  store i32 0, i32* %wo_stat, align 8
  %wo_rusage = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 5
  store %struct.rusage* %ru, %struct.rusage** %wo_rusage, align 8
  %call17 = call fastcc i64 @do_wait(%struct.wait_opts* noundef nonnull %wo) #16
  call void @put_pid(%struct.pid* noundef %pid.0) #17
  %cmp18 = icmp sgt i64 %call17, 0
  %tobool19 = icmp ne i32* %stat_addr, null
  %or.cond = and i1 %tobool19, %cmp18
  br i1 %or.cond, label %land.lhs.true20, label %cleanup

land.lhs.true20:                                  ; preds = %if.end16
  %5 = bitcast i32* %stat_addr to i8*
  %call21 = call fastcc i64 @__range_ok(i8* noundef nonnull %5, i64 noundef 4) #16
  %tobool22.not = icmp eq i64 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %land.lhs.true20
  %call24 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %5) #16
  %6 = bitcast i8* %call24 to i32*
  %7 = load i32, i32* %wo_stat, align 8
  %8 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %7, i32* %6, i32 -14, i32 0) #18, !srcloc !27
  %phi.cmp = icmp eq i32 %8, 0
  %spec.select = select i1 %phi.cmp, i64 %call17, i64 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %land.lhs.true20, %if.end16, %if.end, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ -3, %if.end ], [ %call17, %if.end16 ], [ -14, %land.lhs.true20 ], [ %spec.select, %if.end33 ]
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #18
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_get_pid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @get_task_pid(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_wait(%struct.wait_opts* noundef %wo) unnamed_addr #0 {
entry:
  %wo_pid = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 2
  %child_wait = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 6
  call fastcc void @init_waitqueue_func_entry(%struct.wait_queue_entry* noundef %child_wait) #16
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %private = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 6, i32 1
  %2 = bitcast i8** %private to %struct.task_struct**
  store %struct.task_struct* %1, %struct.task_struct** %2, align 8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %wait_chldexit = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 4
  call void @add_wait_queue(%struct.wait_queue_head* noundef %wait_chldexit, %struct.wait_queue_entry* noundef %child_wait) #17
  %notask_error = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 7
  %wo_type = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 0
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  br label %repeat

repeat:                                           ; preds = %if.then61, %entry
  store i32 -10, i32* %notask_error, align 8
  %4 = load i32, i32* %wo_type, align 8
  %cmp = icmp ult i32 %4, 4
  br i1 %cmp, label %land.lhs.true, label %do.body15

land.lhs.true:                                    ; preds = %repeat
  %5 = load %struct.pid*, %struct.pid** %wo_pid, align 8
  %tobool.not = icmp eq %struct.pid* %5, null
  br i1 %tobool.not, label %notask, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call8 = call fastcc i1 @pid_has_task(%struct.pid* noundef nonnull %5, i32 noundef %4) #16
  br i1 %call8, label %do.body15, label %notask

do.body15:                                        ; preds = %lor.lhs.false, %repeat
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  call fastcc void @__raw_read_lock() #16
  %6 = load i32, i32* %wo_type, align 8
  %cmp26 = icmp eq i32 %6, 0
  br i1 %cmp26, label %if.then27, label %do.body33

if.then27:                                        ; preds = %do.body15
  %call28 = call fastcc i32 @do_wait_pid(%struct.wait_opts* noundef %wo) #16
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end50, label %do.body72

do.body33:                                        ; preds = %do.body15, %do.cond45
  %tsk.0 = phi %struct.task_struct* [ %call46, %do.cond45 ], [ %1, %do.body15 ]
  %call34 = call fastcc i32 @do_wait_thread(%struct.wait_opts* noundef %wo, %struct.task_struct* noundef %tsk.0) #16
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %do.body72

if.end37:                                         ; preds = %do.body33
  %call38 = call fastcc i32 @ptrace_do_wait(%struct.wait_opts* noundef %wo, %struct.task_struct* noundef %tsk.0) #16
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %do.body72

if.end41:                                         ; preds = %if.end37
  %7 = load i32, i32* %wo_flags, align 4
  %and = and i32 %7, 536870912
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %do.cond45, label %if.end50

do.cond45:                                        ; preds = %if.end41
  %call46 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %tsk.0) #16
  %cmp48.not = icmp eq %struct.task_struct* %call46, %1
  br i1 %cmp48.not, label %if.end50, label %do.body33

if.end50:                                         ; preds = %do.cond45, %if.end41, %if.then27
  call fastcc void @__raw_read_unlock() #16
  br label %notask

notask:                                           ; preds = %land.lhs.true, %lor.lhs.false, %if.end50
  %8 = load i32, i32* %notask_error, align 8
  %tobool52.not = icmp eq i32 %8, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %do.body72

land.lhs.true53:                                  ; preds = %notask
  %9 = load i32, i32* %wo_flags, align 4
  %and55 = and i32 %9, 1
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then57, label %do.body72

if.then57:                                        ; preds = %land.lhs.true53
  %call59 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #16
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %do.body72

if.then61:                                        ; preds = %if.then57
  call void @schedule() #17
  br label %repeat

do.body72:                                        ; preds = %if.then27, %if.then57, %land.lhs.true53, %notask, %do.body33, %if.end37
  %retval1.1 = phi i32 [ %call38, %if.end37 ], [ %call34, %do.body33 ], [ -512, %if.then57 ], [ 0, %land.lhs.true53 ], [ %8, %notask ], [ %call28, %if.then27 ]
  store volatile i32 0, i32* %__state, align 16
  %10 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %wait_chldexit83 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 4
  call void @remove_wait_queue(%struct.wait_queue_head* noundef %wait_chldexit83, %struct.wait_queue_entry* noundef %child_wait) #17
  %conv = sext i32 %retval1.1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #18, !srcloc !29
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #18, !srcloc !30
  call void asm sideeffect "hint #20", "~{memory}"() #18, !srcloc !31
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernel_wait(i32 noundef %pid, i32* nocapture noundef writeonly %stat) local_unnamed_addr #0 {
entry:
  %wo = alloca %struct.wait_opts, align 8
  %0 = bitcast %struct.wait_opts* %wo to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #18
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  %1 = bitcast %struct.wait_opts* %wo to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 88, i1 false)
  store i32 4, i32* %wo_flags, align 4
  %wo_pid = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 2
  %call = call %struct.pid* @find_get_pid(i32 noundef %pid) #17
  store %struct.pid* %call, %struct.pid** %wo_pid, align 8
  %call1 = call fastcc i64 @do_wait(%struct.wait_opts* noundef nonnull %wo) #16
  %conv = trunc i64 %call1 to i32
  %cmp = icmp sgt i32 %conv, 0
  %wo_stat = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 4
  %2 = load i32, i32* %wo_stat, align 8
  %tobool = icmp ne i32 %2, 0
  %or.cond = select i1 %cmp, i1 %tobool, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %2, i32* %stat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.pid*, %struct.pid** %wo_pid, align 8
  call void @put_pid(%struct.pid* noundef %3) #17
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #18
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_wait4(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_wait4(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_wait4(i64 noundef %upid, i64 noundef %stat_addr, i64 noundef %options, i64 noundef %ru) unnamed_addr #0 {
entry:
  %conv = trunc i64 %upid to i32
  %0 = inttoptr i64 %stat_addr to i32*
  %conv1 = trunc i64 %options to i32
  %1 = inttoptr i64 %ru to %struct.rusage*
  %call = call fastcc i64 @__do_sys_wait4(i32 noundef %conv, i32* noundef %0, i32 noundef %conv1, %struct.rusage* noundef %1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @thread_group_exited(%struct.pid* noundef %pid) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #17
  %call = call %struct.task_struct* @pid_task(%struct.pid* noundef %pid, i32 noundef 0) #17
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %lor.end, label %do.end

do.end:                                           ; preds = %entry
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 39
  %0 = load volatile i32, i32* %exit_state, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %do.end
  %call2 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef nonnull %call) #16
  %tobool3 = icmp ne i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %do.end, %land.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ false, %do.end ], [ %tobool3, %land.rhs ]
  call fastcc void @rcu_read_unlock() #16
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @abort() local_unnamed_addr #0 {
entry:
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/exit.c\22; .popsection; .long 14472b - 14470b; .short 1812; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !32
  unreachable
}

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
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #17
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !33
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !19

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #17
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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !34
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  call void @rcu_read_unlock_strict() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #16
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #18, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.rwlock_t* @tasklist_lock to i8*), i32 noundef 0, i32 noundef 255) #17
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !19

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #18, !srcloc !38
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
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
define internal fastcc void @ptrace_unlink(%struct.task_struct* noundef %child) unnamed_addr #0 {
entry:
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !19

if.then:                                          ; preds = %entry
  call void @__ptrace_unlink(%struct.task_struct* noundef %child) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ptrace_unlink(%struct.task_struct* noundef) local_unnamed_addr #1

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
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #17
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !9

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !19

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #17
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !39
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @thread_group_leader(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #5 {
entry:
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 41
  %0 = load i32, i32* %exit_signal, align 4
  %cmp = icmp sgt i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_cpu_timers_exit(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_cpu_timers_exit_group(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %0, i64 -69, i32 1
  %1 = bitcast %struct.list_head** %add.ptr to %struct.task_struct*
  ret %struct.task_struct* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @task_cputime(%struct.task_struct* nocapture noundef readonly %t, i64* nocapture noundef writeonly %utime, i64* nocapture noundef writeonly %stime) unnamed_addr #12 {
entry:
  %utime1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 67
  %0 = load i64, i64* %utime1, align 8
  store i64 %0, i64* %utime, align 8
  %stime2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 68
  %1 = load i64, i64* %stime2, align 16
  store i64 %1, i64* %stime, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @write_seqlock(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  %seqcount1 = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 0, i32 0
  call fastcc void @do_write_seqcount_begin(%struct.seqcount* noundef %seqcount1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @task_gtime(%struct.task_struct* nocapture noundef readonly %t) unnamed_addr #5 {
entry:
  %gtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 69
  %0 = load i64, i64* %gtime, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__unhash_process(%struct.task_struct* noundef %p, i1 noundef %group_dead) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @nr_threads, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @nr_threads, align 4
  call void @detach_pid(%struct.task_struct* noundef %p, i32 noundef 0) #17
  br i1 %group_dead, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @detach_pid(%struct.task_struct* noundef %p, i32 noundef 1) #17
  call void @detach_pid(%struct.task_struct* noundef %p, i32 noundef 2) #17
  call void @detach_pid(%struct.task_struct* noundef %p, i32 noundef 3) #17
  %tasks = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 32
  call fastcc void @list_del_rcu(%struct.list_head* noundef %tasks) #16
  %sibling = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 55
  call fastcc void @list_del_init(%struct.list_head* noundef %sibling) #16
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (i64* @process_counts to i64)
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  %add7 = add i64 %2, -1
  store i64 %add7, i64* %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %thread_group = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61
  call fastcc void @list_del_rcu(%struct.list_head* noundef %thread_group) #16
  %thread_node = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 62
  call fastcc void @list_del_rcu(%struct.list_head* noundef %thread_node) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @write_sequnlock(%struct.seqlock_t* noundef %sl) unnamed_addr #0 {
entry:
  %seqcount1 = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 0, i32 0
  call fastcc void @do_write_seqcount_end(%struct.seqcount* noundef %seqcount1) #16
  %rlock.i = getelementptr inbounds %struct.seqlock_t, %struct.seqlock_t* %sl, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_sigqueue(%struct.sigpending* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cleanup_sighand(%struct.sighand_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #16
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !40
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #17
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !19

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #17
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_write_seqcount_begin_nested(%struct.seqcount* noundef %s) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin_nested(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* noundef %s) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_begin(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @detach_pid(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #4 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #16
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_end(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_write_seqcount_end(%struct.seqcount* noundef %s) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_end(%struct.seqcount* nocapture noundef %s) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !42
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load i32, i32* %sequence, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %sequence, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !43
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #18, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #13 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #18, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.rwlock_t* @tasklist_lock to i8*), i8 0) #18, !srcloc !46
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #18, !srcloc !47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #17
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !19

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #18, !srcloc !48
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_session(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #5 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 3
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #18, !srcloc !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @ptrace_event_enabled(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #5 {
entry:
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %and = and i32 %0, 512
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__io_uring_cancel(i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !50
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_tgid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #5 {
entry:
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 51
  %0 = load i32, i32* %tgid, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_hiwater_rss(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %hiwater_rss = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 17
  %0 = load i64, i64* %hiwater_rss, align 8
  %call = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) #16
  %cmp = icmp ugt i64 %0, %call
  %cond = select i1 %cmp, i64 %0, i64 %call
  ret i64 %cond
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_mm_release(%struct.task_struct* noundef, %struct.mm_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_read(%struct.rw_semaphore* noundef %mmap_lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmgrab(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %mm_count) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @membarrier_update_current_mm(%struct.mm_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_oom_victim() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i64 noundef %x, i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %x, i64* elementtype(i64) %0) #18, !srcloc !51
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @forget_original_parent(%struct.task_struct* noundef %father, %struct.list_head* noundef %dead) unnamed_addr #0 {
entry:
  %ptraced = getelementptr inbounds %struct.task_struct, %struct.task_struct* %father, i64 0, i32 57
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %ptraced) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %entry
  call void @exit_ptrace(%struct.task_struct* noundef %father, %struct.list_head* noundef %dead) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call fastcc %struct.task_struct* @find_child_reaper(%struct.task_struct* noundef %father, %struct.list_head* noundef %dead) #16
  %children = getelementptr inbounds %struct.task_struct, %struct.task_struct* %father, i64 0, i32 54
  %call5 = call fastcc i32 @list_empty(%struct.list_head* noundef %children) #16
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc %struct.task_struct* @find_new_reaper(%struct.task_struct* noundef %father, %struct.task_struct* noundef %call4) #16
  %0 = bitcast %struct.list_head* %children to i8**
  %.pn170 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn170 to %struct.list_head*
  %cmp.not173 = icmp eq %struct.list_head* %children, %1
  br i1 %cmp.not173, label %for.end118, label %for.body

for.body:                                         ; preds = %if.end8, %for.inc109
  %.pn174 = phi i8* [ %.pn, %for.inc109 ], [ %.pn170, %if.end8 ]
  %p.0175.in = getelementptr i8, i8* %.pn174, i64 -968
  %p.0175 = bitcast i8* %p.0175.in to %struct.task_struct*
  %signal = getelementptr i8, i8* %.pn174, i64 448
  %2 = bitcast i8* %signal to %struct.signal_struct**
  %3 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %next20 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 3, i32 0
  %.pn160161 = load volatile %struct.list_head*, %struct.list_head** %next20, align 8
  %t.0.in162 = getelementptr %struct.list_head, %struct.list_head* %.pn160161, i64 -70, i32 1
  %thread_node164 = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in162, i64 139
  %4 = bitcast %struct.list_head** %thread_node164 to %struct.list_head*
  %thread_head28165 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 3
  %cmp29.not166 = icmp eq %struct.list_head* %thread_head28165, %4
  br i1 %cmp29.not166, label %for.end, label %do.body37

do.body37:                                        ; preds = %for.body, %for.inc
  %thread_node169 = phi %struct.list_head** [ %thread_node, %for.inc ], [ %thread_node164, %for.body ]
  %t.0.in167 = phi %struct.list_head** [ %t.0.in, %for.inc ], [ %t.0.in162, %for.body ]
  %t.0168 = bitcast %struct.list_head** %t.0.in167 to %struct.task_struct*
  %real_parent = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in167, i64 117
  %5 = bitcast %struct.list_head** %real_parent to %struct.task_struct**
  store volatile %struct.task_struct* %call9, %struct.task_struct** %5, align 8
  %ptrace = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in167, i64 5
  %6 = bitcast %struct.list_head** %ptrace to i32*
  %7 = load i32, i32* %6, align 8
  %tobool45.not = icmp ne i32 %7, 0
  %parent = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in167, i64 118
  %8 = bitcast %struct.list_head** %parent to %struct.task_struct**
  %9 = load volatile %struct.task_struct*, %struct.task_struct** %8, align 16
  %cmp53 = icmp eq %struct.task_struct* %9, %father
  %cmp55.not = xor i1 %tobool45.not, %cmp53
  br i1 %cmp55.not, label %do.end73, label %do.body65, !prof !19

do.body65:                                        ; preds = %do.body37
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/exit.c\22; .popsection; .long 14472b - 14470b; .short 639; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !53
  unreachable

do.end73:                                         ; preds = %do.body37
  %tobool75.not = icmp eq i32 %7, 0
  br i1 %tobool75.not, label %if.then85, label %if.end88, !prof !19

if.then85:                                        ; preds = %do.end73
  store %struct.task_struct* %call9, %struct.task_struct** %8, align 16
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %do.end73
  %pdeath_signal = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in167, i64 104
  %10 = bitcast %struct.list_head** %pdeath_signal to i32*
  %11 = load i32, i32* %10, align 64
  %tobool89.not = icmp eq i32 %11, 0
  br i1 %tobool89.not, label %for.inc, label %if.then90

if.then90:                                        ; preds = %if.end88
  %call92 = call i32 @group_send_sig_info(i32 noundef %11, %struct.kernel_siginfo* noundef null, %struct.task_struct* noundef %t.0168, i32 noundef 1) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end88, %if.then90
  %.pn160 = load volatile %struct.list_head*, %struct.list_head** %thread_node169, align 8
  %t.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn160, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in, i64 139
  %12 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %13 = load %struct.signal_struct*, %struct.signal_struct** %2, align 8
  %thread_head28 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %13, i64 0, i32 3
  %cmp29.not = icmp eq %struct.list_head* %thread_head28, %12
  br i1 %cmp29.not, label %for.end, label %do.body37

for.end:                                          ; preds = %for.inc, %for.body
  %call106 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %call9, %struct.task_struct* noundef %father) #16
  br i1 %call106, label %for.inc109, label %if.then107

if.then107:                                       ; preds = %for.end
  call fastcc void @reparent_leader(%struct.task_struct* noundef %father, %struct.task_struct* noundef %p.0175, %struct.list_head* noundef %dead) #16
  br label %for.inc109

for.inc109:                                       ; preds = %for.end, %if.then107
  %14 = bitcast i8* %.pn174 to i8**
  %.pn = load i8*, i8** %14, align 8
  %15 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %children, %15
  br i1 %cmp.not, label %for.end118, label %for.body

for.end118:                                       ; preds = %for.inc109, %if.end8
  %children120 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call9, i64 0, i32 54
  call fastcc void @list_splice_tail_init(%struct.list_head* noundef %children, %struct.list_head* noundef %children120) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end118
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kill_orphaned_pgrp(%struct.task_struct* noundef %tsk, %struct.task_struct* noundef readonly %parent) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %tsk) #16
  %tobool.not = icmp eq %struct.task_struct* %parent, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 52
  %0 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %parent.addr.0 = phi %struct.task_struct* [ %0, %if.then ], [ %parent, %entry ]
  %ignored_task.0 = phi %struct.task_struct* [ %tsk, %if.then ], [ null, %entry ]
  %call1 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %parent.addr.0) #16
  %cmp.not = icmp eq %struct.pid* %call1, %call
  br i1 %cmp.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %parent.addr.0) #16
  %call3 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %tsk) #16
  %cmp4 = icmp eq %struct.pid* %call2, %call3
  br i1 %cmp4, label %land.lhs.true5, label %if.end13

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = call fastcc i32 @will_become_orphaned_pgrp(%struct.pid* noundef %call, %struct.task_struct* noundef %ignored_task.0) #16
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %call9 = call fastcc i1 @has_stopped_jobs(%struct.pid* noundef %call) #16
  br i1 %call9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %land.lhs.true8
  %call11 = call i32 @__kill_pgrp_info(i32 noundef 1, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.pid* noundef %call) #17
  %call12 = call i32 @__kill_pgrp_info(i32 noundef 18, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.pid* noundef %call) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true8, %land.lhs.true5, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @ptrace_reparented(%struct.task_struct* nocapture noundef readonly %child) unnamed_addr #5 {
entry:
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 52
  %0 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 53
  %1 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %call = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %0, %struct.task_struct* noundef %1) #16
  %lnot = xor i1 %call, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_ptrace(%struct.task_struct* noundef, %struct.list_head* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @find_child_reaper(%struct.task_struct* noundef %father, %struct.list_head* noundef readonly %dead) unnamed_addr #0 {
entry:
  %call = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %father) #17
  %child_reaper = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %call, i64 0, i32 3
  %0 = load %struct.task_struct*, %struct.task_struct** %child_reaper, align 8
  %cmp.not = icmp eq %struct.task_struct* %0, %father
  br i1 %cmp.not, label %if.end, label %cleanup, !prof !9

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.task_struct* @find_alive_thread(%struct.task_struct* noundef %father) #16
  %tobool3.not = icmp eq %struct.task_struct* %call2, null
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  store %struct.task_struct* %call2, %struct.task_struct** %child_reaper, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call fastcc void @__raw_write_unlock_irq() #16
  %1 = bitcast %struct.list_head* %dead to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp15.not53 = icmp eq %struct.list_head* %3, %dead
  br i1 %cmp15.not53, label %for.end, label %for.body

for.body:                                         ; preds = %if.end6, %for.body
  %4 = phi %struct.list_head* [ %5, %for.body ], [ %3, %if.end6 ]
  %.pn.in.in54 = phi i8* [ %.pn, %for.body ], [ %2, %if.end6 ]
  %p.0.in = getelementptr i8, i8* %.pn.in.in54, i64 -1008
  %p.0 = bitcast i8* %p.0.in to %struct.task_struct*
  %.pn.in = bitcast i8* %.pn.in.in54 to i8**
  %.pn = load i8*, i8** %.pn.in, align 16
  call fastcc void @list_del_init(%struct.list_head* noundef %4) #16
  call void @release_task(%struct.task_struct* noundef %p.0) #16
  %5 = bitcast i8* %.pn to %struct.list_head*
  %cmp15.not = icmp eq %struct.list_head* %5, %dead
  br i1 %cmp15.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end6
  call fastcc void @zap_pid_ns_processes() #16
  unreachable

cleanup:                                          ; preds = %entry, %if.then4
  %retval.0 = phi %struct.task_struct* [ %call2, %if.then4 ], [ %0, %entry ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @find_new_reaper(%struct.task_struct* nocapture noundef readonly %father, %struct.task_struct* noundef readnone %child_reaper) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.task_struct* @find_alive_thread(%struct.task_struct* noundef %father) #16
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end, label %cleanup22

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %father, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %has_child_subreaper = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 13
  %bf.load = load i8, i8* %has_child_subreaper, align 8
  %1 = and i8 %bf.load, 2
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %cleanup22, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %father) #16
  %level = getelementptr inbounds %struct.pid, %struct.pid* %call3, i64 0, i32 1
  %2 = load i32, i32* %level, align 4
  %reaper.0.in38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %father, i64 0, i32 52
  %reaper.039 = load %struct.task_struct*, %struct.task_struct** %reaper.0.in38, align 8
  %call440 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %reaper.039) #16
  %level541 = getelementptr inbounds %struct.pid, %struct.pid* %call440, i64 0, i32 1
  %3 = load i32, i32* %level541, align 4
  %cmp42 = icmp ne i32 %3, %2
  %cmp643 = icmp eq %struct.task_struct* %reaper.039, @init_task
  %or.cond44 = or i1 %cmp643, %cmp42
  br i1 %or.cond44, label %cleanup22, label %if.end8

if.end8:                                          ; preds = %if.then2, %for.inc
  %reaper.045 = phi %struct.task_struct* [ %reaper.0, %for.inc ], [ %reaper.039, %if.then2 ]
  %signal9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %reaper.045, i64 0, i32 87
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal9, align 8
  %is_child_subreaper = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 13
  %bf.load10 = load i8, i8* %is_child_subreaper, align 8
  %bf.clear11 = and i8 %bf.load10, 1
  %tobool13.not = icmp eq i8 %bf.clear11, 0
  br i1 %tobool13.not, label %for.inc, label %if.end15

if.end15:                                         ; preds = %if.end8
  %call16 = call fastcc %struct.task_struct* @find_alive_thread(%struct.task_struct* noundef %reaper.045) #16
  %tobool17.not = icmp eq %struct.task_struct* %call16, null
  br i1 %tobool17.not, label %for.inc, label %cleanup22

for.inc:                                          ; preds = %if.end15, %if.end8
  %reaper.0.in = getelementptr inbounds %struct.task_struct, %struct.task_struct* %reaper.045, i64 0, i32 52
  %reaper.0 = load %struct.task_struct*, %struct.task_struct** %reaper.0.in, align 8
  %call4 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %reaper.0) #16
  %level5 = getelementptr inbounds %struct.pid, %struct.pid* %call4, i64 0, i32 1
  %5 = load i32, i32* %level5, align 4
  %cmp = icmp ne i32 %5, %2
  %cmp6 = icmp eq %struct.task_struct* %reaper.0, @init_task
  %or.cond = or i1 %cmp6, %cmp
  br i1 %or.cond, label %cleanup22, label %if.end8

cleanup22:                                        ; preds = %if.end15, %for.inc, %if.then2, %if.end, %entry
  %retval.1 = phi %struct.task_struct* [ %call, %entry ], [ %child_reaper, %if.end ], [ %child_reaper, %if.then2 ], [ %call16, %if.end15 ], [ %child_reaper, %for.inc ]
  ret %struct.task_struct* %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @group_send_sig_info(i32 noundef, %struct.kernel_siginfo* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @same_thread_group(%struct.task_struct* nocapture noundef readonly %p1, %struct.task_struct* nocapture noundef readonly %p2) unnamed_addr #5 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p1, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p2, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %cmp = icmp eq %struct.signal_struct* %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @reparent_leader(%struct.task_struct* noundef %father, %struct.task_struct* noundef %p, %struct.list_head* noundef %dead) unnamed_addr #0 {
entry:
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 39
  %0 = load i32, i32* %exit_state, align 4
  %cmp = icmp eq i32 %0, 16
  br i1 %cmp, label %return, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 41
  store i32 17, i32* %exit_signal, align 4
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 5
  %1 = load i32, i32* %ptrace, align 8
  %tobool2.not = icmp eq i32 %1, 0
  %cmp4 = icmp eq i32 %0, 32
  %or.cond = select i1 %tobool2.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %land.lhs.true6, label %if.end14

land.lhs.true6:                                   ; preds = %if.end
  %call = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %p) #16
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end14, label %if.then8

if.then8:                                         ; preds = %land.lhs.true6
  %2 = load i32, i32* %exit_signal, align 4
  %call10 = call i1 @do_notify_parent(%struct.task_struct* noundef %p, i32 noundef %2) #17
  br i1 %call10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then8
  store i32 16, i32* %exit_state, align 4
  %ptrace_entry = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 58
  call fastcc void @list_add(%struct.list_head* noundef %ptrace_entry, %struct.list_head* noundef %dead) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.then11, %land.lhs.true6, %if.end
  call fastcc void @kill_orphaned_pgrp(%struct.task_struct* noundef %p, %struct.task_struct* noundef %father) #16
  br label %return

return:                                           ; preds = %entry, %if.end14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_tail_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @find_alive_thread(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #4 {
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
  br i1 %cmp.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %t.0 = bitcast %struct.list_head** %t.0.in to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t.0, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.split.loop.exit29, label %for.cond

cleanup.split.loop.exit29:                        ; preds = %for.body
  %t.0.le = bitcast %struct.list_head** %t.0.in to %struct.task_struct*
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %cleanup.split.loop.exit29
  %retval.0 = phi %struct.task_struct* [ %t.0.le, %cleanup.split.loop.exit29 ], [ null, %for.cond ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @zap_pid_ns_processes() unnamed_addr #6 {
entry:
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/pid_namespace.h\22; .popsection; .long 14472b - 14470b; .short 76; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !54
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #5 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  ret %struct.pid* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #12 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next4, align 8
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next5, align 8
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i1 @has_stopped_jobs(%struct.pid* noundef %pgrp) unnamed_addr #4 {
entry:
  %cmp.not = icmp eq %struct.pid* %pgrp, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %first = getelementptr %struct.pid, %struct.pid* %pgrp, i64 0, i32 3, i64 2, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -67, i32 1
  %tobool8.not4952 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool8.not49 = or i1 %tobool.not, %tobool8.not4952
  br i1 %tobool8.not49, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %p.050 = phi %struct.task_struct* [ %spec.select48, %for.inc ], [ %1, %for.body.preheader ]
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.050, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 12
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 1
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.inc, label %cleanup.loopexit

for.inc:                                          ; preds = %for.body
  %next = getelementptr %struct.task_struct, %struct.task_struct* %p.050, i64 0, i32 60, i64 2, i32 0
  %4 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool20.not = icmp eq %struct.hlist_node* %4, null
  %add.ptr27 = getelementptr %struct.hlist_node, %struct.hlist_node* %4, i64 -67, i32 1
  %5 = bitcast %struct.hlist_node*** %add.ptr27 to %struct.task_struct*
  %spec.select48 = select i1 %tobool20.not, %struct.task_struct* null, %struct.task_struct* %5
  %tobool8.not = icmp eq %struct.task_struct* %spec.select48, null
  br i1 %tobool8.not, label %cleanup.loopexit, label %for.body

cleanup.loopexit:                                 ; preds = %for.inc, %for.body
  %6 = xor i1 %tobool9.not, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.then ], [ %6, %cleanup.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kill_pgrp_info(i32 noundef, %struct.kernel_siginfo* noundef, %struct.pid* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #4 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %new, %struct.list_head** %next6, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.5* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !19

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
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #17
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @__do_sys_exit(i32 noundef %error_code) unnamed_addr #6 {
entry:
  %and = shl i32 %error_code, 8
  %shl = and i32 %and, 65280
  %0 = zext i32 %shl to i64
  call void @do_exit(i64 noundef %0) #24
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !55
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call fastcc void @arch_local_irq_enable() #16
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !56
  ret void
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @__do_sys_exit_group(i32 noundef %error_code) unnamed_addr #6 {
entry:
  %and = shl i32 %error_code, 8
  %shl = and i32 %and, 65280
  call void @do_group_exit(i32 noundef %shl) #16
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_waitid(i32 noundef %which, i32 noundef %upid, %struct.siginfo* noundef %infop, i32 noundef %options, %struct.rusage* noundef %ru) unnamed_addr #0 {
entry:
  %r = alloca %struct.rusage, align 8
  %info = alloca %struct.waitid_info, align 4
  %0 = bitcast %struct.rusage* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false), !annotation !12
  %1 = bitcast %struct.waitid_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %tobool.not = icmp eq %struct.rusage* %ru, null
  %r. = select i1 %tobool.not, %struct.rusage* null, %struct.rusage* %r
  %call = call fastcc i64 @kernel_waitid(i32 noundef %which, i32 noundef %upid, %struct.waitid_info* noundef nonnull %info, i32 noundef %options, %struct.rusage* noundef %r.) #16
  %cmp = icmp slt i64 %call, 1
  %brmerge = or i1 %tobool.not, %cmp
  %.mux = select i1 %cmp, i32 0, i32 17
  %call.mux = select i1 %cmp, i64 %call, i64 0
  br i1 %brmerge, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = bitcast %struct.rusage* %ru to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %2, i8* noundef nonnull %0) #17
  %tobool3.not = icmp eq i64 %call2.i, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %entry, %land.lhs.true
  %signo.0 = phi i32 [ 17, %land.lhs.true ], [ %.mux, %entry ]
  %err.0 = phi i64 [ 0, %land.lhs.true ], [ %call.mux, %entry ]
  %tobool6.not = icmp eq %struct.siginfo* %infop, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %3 = bitcast %struct.siginfo* %infop to i8*
  %call9 = call fastcc i64 @__range_ok(i8* noundef nonnull %3, i64 noundef 128) #16
  %tobool10.not = icmp eq i64 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.end8
  %call14 = call fastcc i64 @__range_ok(i8* noundef nonnull %3, i64 noundef 4) #16
  %tobool15.not = icmp eq i64 %call14, 0
  br i1 %tobool15.not, label %do.end212, label %if.then16

if.then16:                                        ; preds = %do.body
  %call17 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %3) #16
  %4 = bitcast i8* %call17 to i32*
  %5 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %signo.0, i32* %4, i32 -14, i32 0) #18, !srcloc !57
  %phi.cmp = icmp eq i32 %5, 0
  br i1 %phi.cmp, label %do.body34, label %do.end212, !prof !19

do.body34:                                        ; preds = %if.then16
  %si_errno = getelementptr inbounds %struct.siginfo, %struct.siginfo* %infop, i64 0, i32 0, i32 0, i32 1
  %6 = bitcast i32* %si_errno to i8*
  %call38 = call fastcc i64 @__range_ok(i8* noundef %6, i64 noundef 4) #16
  %tobool39.not = icmp eq i64 %call38, 0
  br i1 %tobool39.not, label %do.end212, label %if.then40

if.then40:                                        ; preds = %do.body34
  %call41 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %6) #16
  %7 = bitcast i8* %call41 to i32*
  %8 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 0, i32* %7, i32 -14, i32 0) #18, !srcloc !58
  %phi.cmp265 = icmp eq i32 %8, 0
  br i1 %phi.cmp265, label %do.body68, label %do.end212, !prof !19

do.body68:                                        ; preds = %if.then40
  %si_code = getelementptr inbounds %struct.siginfo, %struct.siginfo* %infop, i64 0, i32 0, i32 0, i32 2
  %9 = bitcast i32* %si_code to i8*
  %call72 = call fastcc i64 @__range_ok(i8* noundef %9, i64 noundef 4) #16
  %tobool73.not = icmp eq i64 %call72, 0
  br i1 %tobool73.not, label %do.end212, label %if.then74

if.then74:                                        ; preds = %do.body68
  %call75 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %9) #16
  %10 = bitcast i8* %call75 to i32*
  %cause = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %info, i64 0, i32 3
  %11 = load i32, i32* %cause, align 4
  %12 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %11, i32* %10, i32 -14, i32 0) #18, !srcloc !59
  %phi.cmp266 = icmp eq i32 %12, 0
  br i1 %phi.cmp266, label %do.body102, label %do.end212, !prof !19

do.body102:                                       ; preds = %if.then74
  %_sifields = getelementptr inbounds %struct.siginfo, %struct.siginfo* %infop, i64 0, i32 0, i32 0, i32 3
  %13 = bitcast %union.__sifields* %_sifields to i8*
  %call106 = call fastcc i64 @__range_ok(i8* noundef %13, i64 noundef 4) #16
  %tobool107.not = icmp eq i64 %call106, 0
  br i1 %tobool107.not, label %do.end212, label %if.then108

if.then108:                                       ; preds = %do.body102
  %call109 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %13) #16
  %14 = bitcast i8* %call109 to i32*
  %pid = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %info, i64 0, i32 0
  %15 = load i32, i32* %pid, align 4
  %16 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %15, i32* %14, i32 -14, i32 0) #18, !srcloc !60
  %phi.cmp267 = icmp eq i32 %16, 0
  br i1 %phi.cmp267, label %do.body136, label %do.end212, !prof !19

do.body136:                                       ; preds = %if.then108
  %17 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %infop, i64 0, i32 0, i32 0, i32 3, i32 0, i32 1
  %18 = bitcast i32* %17 to i8*
  %call142 = call fastcc i64 @__range_ok(i8* noundef %18, i64 noundef 4) #16
  %tobool143.not = icmp eq i64 %call142, 0
  br i1 %tobool143.not, label %do.end212, label %if.then144

if.then144:                                       ; preds = %do.body136
  %call145 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %18) #16
  %19 = bitcast i8* %call145 to i32*
  %uid = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %info, i64 0, i32 1
  %20 = load i32, i32* %uid, align 4
  %21 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %20, i32* %19, i32 -14, i32 0) #18, !srcloc !61
  %phi.cmp268 = icmp eq i32 %21, 0
  br i1 %phi.cmp268, label %do.body172, label %do.end212, !prof !19

do.body172:                                       ; preds = %if.then144
  %_status = getelementptr inbounds %struct.siginfo, %struct.siginfo* %infop, i64 0, i32 0, i32 0, i32 3, i32 0, i32 2
  %22 = bitcast i32* %_status to i8*
  %call177 = call fastcc i64 @__range_ok(i8* noundef %22, i64 noundef 4) #16
  %tobool178.not = icmp eq i64 %call177, 0
  br i1 %tobool178.not, label %do.end212, label %if.then179

if.then179:                                       ; preds = %do.body172
  %call180 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %22) #16
  %23 = bitcast i8* %call180 to i32*
  %status = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %info, i64 0, i32 2
  %24 = load i32, i32* %status, align 4
  %25 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %24, i32* %23, i32 -14, i32 0) #18, !srcloc !62
  %phi.cmp269 = icmp eq i32 %25, 0
  br i1 %phi.cmp269, label %cleanup, label %do.end212, !prof !19

do.end212:                                        ; preds = %do.body172, %do.body136, %do.body102, %do.body68, %do.body34, %do.body, %if.then16, %if.then40, %if.then74, %if.then108, %if.then144, %if.then179
  br label %cleanup

cleanup:                                          ; preds = %if.then179, %if.end8, %if.end5, %land.lhs.true, %do.end212
  %retval.0 = phi i64 [ -14, %do.end212 ], [ -14, %land.lhs.true ], [ %err.0, %if.end5 ], [ -14, %if.end8 ], [ %err.0, %if.then179 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #18
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @kernel_waitid(i32 noundef %which, i32 noundef %upid, %struct.waitid_info* noundef %infop, i32 noundef %options, %struct.rusage* noundef %ru) unnamed_addr #0 {
entry:
  %wo = alloca %struct.wait_opts, align 8
  %f_flags = alloca i32, align 4
  %0 = bitcast %struct.wait_opts* %wo to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !12
  %1 = bitcast i32* %f_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #18
  store i32 0, i32* %f_flags, align 4
  %and = and i32 %options, 520093680
  %tobool.not = icmp ne i32 %and, 0
  %and1 = and i32 %options, 14
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry
  switch i32 %which, label %cleanup [
    i32 0, label %sw.epilog.thread
    i32 1, label %sw.bb5
    i32 2, label %sw.bb8
    i32 3, label %sw.bb18
  ]

sw.bb5:                                           ; preds = %if.end4
  %cmp = icmp slt i32 %upid, 1
  br i1 %cmp, label %cleanup, label %if.end7

if.end7:                                          ; preds = %sw.bb5
  %call = call %struct.pid* @find_get_pid(i32 noundef %upid) #17
  br label %sw.epilog.thread

sw.bb8:                                           ; preds = %if.end4
  %cmp9 = icmp slt i32 %upid, 0
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %sw.bb8
  %tobool12.not = icmp eq i32 %upid, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %call14 = call %struct.pid* @find_get_pid(i32 noundef %upid) #17
  br label %sw.epilog.thread

if.else:                                          ; preds = %if.end11
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call16 = call %struct.pid* @get_task_pid(%struct.task_struct* noundef %3, i32 noundef 2) #17
  br label %sw.epilog.thread

sw.bb18:                                          ; preds = %if.end4
  %cmp19 = icmp slt i32 %upid, 0
  br i1 %cmp19, label %cleanup, label %if.end21

if.end21:                                         ; preds = %sw.bb18
  %call22 = call %struct.pid* @pidfd_get_pid(i32 noundef %upid, i32* noundef nonnull %f_flags) #17
  %4 = bitcast %struct.pid* %call22 to i8*
  %call23 = call fastcc i1 @IS_ERR(i8* noundef %4) #16
  br i1 %call23, label %if.then24, label %sw.epilog

if.then24:                                        ; preds = %if.end21
  %call25 = call fastcc i64 @PTR_ERR(i8* noundef %4) #16
  br label %cleanup

sw.epilog.thread:                                 ; preds = %if.then13, %if.else, %if.end7, %if.end4
  %pid.0.ph = phi %struct.pid* [ null, %if.end4 ], [ %call, %if.end7 ], [ %call16, %if.else ], [ %call14, %if.then13 ]
  %type.0.ph = phi i32 [ 4, %if.end4 ], [ 0, %if.end7 ], [ 2, %if.else ], [ 2, %if.then13 ]
  %wo_type63 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 0
  store i32 %type.0.ph, i32* %wo_type63, align 8
  %wo_pid64 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 2
  store %struct.pid* %pid.0.ph, %struct.pid** %wo_pid64, align 8
  %wo_flags65 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  store i32 %options, i32* %wo_flags65, align 4
  %wo_info66 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 3
  store %struct.waitid_info* %infop, %struct.waitid_info** %wo_info66, align 8
  %wo_rusage67 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 5
  store %struct.rusage* %ru, %struct.rusage** %wo_rusage67, align 8
  br label %if.end31

sw.epilog:                                        ; preds = %if.end21
  %.pre = load i32, i32* %f_flags, align 4
  %phi.bo = and i32 %.pre, 2048
  %phi.cmp = icmp eq i32 %phi.bo, 0
  %wo_type = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 0
  store i32 0, i32* %wo_type, align 8
  %wo_pid = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 2
  store %struct.pid* %call22, %struct.pid** %wo_pid, align 8
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  store i32 %options, i32* %wo_flags, align 4
  %wo_info = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 3
  store %struct.waitid_info* %infop, %struct.waitid_info** %wo_info, align 8
  %wo_rusage = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 5
  store %struct.rusage* %ru, %struct.rusage** %wo_rusage, align 8
  br i1 %phi.cmp, label %if.end31, label %if.then29

if.then29:                                        ; preds = %sw.epilog
  %or = or i32 %options, 1
  store i32 %or, i32* %wo_flags, align 4
  br label %if.end31

if.end31:                                         ; preds = %sw.epilog.thread, %if.then29, %sw.epilog
  %pid.068 = phi %struct.pid* [ %pid.0.ph, %sw.epilog.thread ], [ %call22, %if.then29 ], [ %call22, %sw.epilog ]
  %call32 = call fastcc i64 @do_wait(%struct.wait_opts* noundef nonnull %wo) #16
  %tobool33.not = icmp eq i64 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end31
  %and34 = and i32 %options, 1
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %if.end40

land.lhs.true36:                                  ; preds = %land.lhs.true
  %5 = load i32, i32* %f_flags, align 4
  %and37 = and i32 %5, 2048
  %tobool38.not = icmp eq i32 %and37, 0
  %spec.select = select i1 %tobool38.not, i64 0, i64 -11
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true36, %land.lhs.true, %if.end31
  %ret.0 = phi i64 [ %call32, %if.end31 ], [ 0, %land.lhs.true ], [ %spec.select, %land.lhs.true36 ]
  call void @put_pid(%struct.pid* noundef %pid.068) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %sw.bb18, %sw.bb8, %sw.bb5, %entry, %if.end40, %if.then24
  %retval.0 = phi i64 [ %call25, %if.then24 ], [ %ret.0, %if.end40 ], [ -22, %entry ], [ -22, %sw.bb5 ], [ -22, %sw.bb8 ], [ -22, %sw.bb18 ], [ -22, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #18
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @pidfd_get_pid(i32 noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #13 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #13 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef 144) #16
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #16
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef 144) #17
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ 144, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_waitqueue_func_entry(%struct.wait_queue_entry* nocapture noundef writeonly %wq_entry) unnamed_addr #15 {
entry:
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 0
  store i32 0, i32* %flags, align 8
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 1
  store i8* null, i8** %private, align 8
  %func1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @child_wait_callback, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @child_wait_callback(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #0 {
entry:
  %add.ptr14 = getelementptr %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 -1
  %0 = bitcast %struct.wait_queue_entry* %add.ptr14 to %struct.wait_opts*
  %1 = bitcast i8* %key to %struct.task_struct*
  %call = call fastcc i32 @eligible_pid(%struct.wait_opts* noundef %0, %struct.task_struct* noundef %1) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %0, i64 0, i32 1
  %2 = load i32, i32* %wo_flags, align 4
  %and = and i32 %2, 536870912
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %3 = load i8*, i8** %private, align 8
  %parent = getelementptr inbounds i8, i8* %key, i64 944
  %4 = bitcast i8* %parent to i8**
  %5 = load i8*, i8** %4, align 16
  %cmp.not = icmp eq i8* %3, %5
  br i1 %cmp.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %call4 = call i32 @default_wake_function(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #17
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end3
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @pid_has_task(%struct.pid* noundef %pid, i32 noundef %type) unnamed_addr #3 {
entry:
  %idxprom = zext i32 %type to i64
  %arrayidx = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 3, i64 %idxprom
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %arrayidx) #16
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_wait_pid(%struct.wait_opts* nocapture noundef %wo) unnamed_addr #0 {
entry:
  %wo_pid = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 2
  %0 = load %struct.pid*, %struct.pid** %wo_pid, align 8
  %call = call %struct.task_struct* @pid_task(%struct.pid* noundef %0, i32 noundef 1) #17
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call3 = call fastcc i1 @is_effectively_child(%struct.wait_opts* noundef %wo, i1 noundef false, %struct.task_struct* noundef nonnull %call) #16
  br i1 %call3, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %call5 = call fastcc i32 @wait_consider_task(%struct.wait_opts* noundef %wo, i32 noundef 0, %struct.task_struct* noundef nonnull %call) #16
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.then, %land.lhs.true, %entry
  %1 = load %struct.pid*, %struct.pid** %wo_pid, align 8
  %call10 = call %struct.task_struct* @pid_task(%struct.pid* noundef %1, i32 noundef 0) #17
  %tobool11.not = icmp eq %struct.task_struct* %call10, null
  br i1 %tobool11.not, label %if.end26, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end8
  %ptrace13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call10, i64 0, i32 5
  %2 = load i32, i32* %ptrace13, align 8
  %tobool14.not = icmp eq i32 %2, 0
  br i1 %tobool14.not, label %if.end26, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %call17 = call fastcc i1 @is_effectively_child(%struct.wait_opts* noundef %wo, i1 noundef true, %struct.task_struct* noundef nonnull %call10) #16
  br i1 %call17, label %if.then19, label %if.end26

if.then19:                                        ; preds = %land.lhs.true15
  %call22 = call fastcc i32 @wait_consider_task(%struct.wait_opts* noundef %wo, i32 noundef 1, %struct.task_struct* noundef nonnull %call10) #16
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.then19, %land.lhs.true15, %land.lhs.true12, %if.end8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then, %if.end26
  %retval.0 = phi i32 [ 0, %if.end26 ], [ %call5, %if.then ], [ %call22, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_wait_thread(%struct.wait_opts* nocapture noundef %wo, %struct.task_struct* noundef readonly %tsk) unnamed_addr #0 {
entry:
  %children = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 54
  %0 = bitcast %struct.list_head* %children to i8**
  %.pn19 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn19 to %struct.list_head*
  %cmp.not20 = icmp eq %struct.list_head* %children, %1
  br i1 %cmp.not20, label %cleanup10, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn21 = phi i8* [ %.pn, %for.inc ], [ %.pn19, %entry ]
  %p.0.in = getelementptr i8, i8* %.pn21, i64 -968
  %p.0 = bitcast i8* %p.0.in to %struct.task_struct*
  %call = call fastcc i32 @wait_consider_task(%struct.wait_opts* noundef %wo, i32 noundef 0, %struct.task_struct* noundef %p.0) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %cleanup10

for.inc:                                          ; preds = %for.body
  %2 = bitcast i8* %.pn21 to i8**
  %.pn = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %children, %3
  br i1 %cmp.not, label %cleanup10, label %for.body

cleanup10:                                        ; preds = %for.body, %for.inc, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.inc ], [ %call, %for.body ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_do_wait(%struct.wait_opts* nocapture noundef %wo, %struct.task_struct* noundef readonly %tsk) unnamed_addr #0 {
entry:
  %ptraced = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 57
  %0 = bitcast %struct.list_head* %ptraced to i8**
  %.pn19 = load i8*, i8** %0, align 16
  %1 = bitcast i8* %.pn19 to %struct.list_head*
  %cmp.not20 = icmp eq %struct.list_head* %ptraced, %1
  br i1 %cmp.not20, label %cleanup10, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn21 = phi i8* [ %.pn, %for.inc ], [ %.pn19, %entry ]
  %p.0.in = getelementptr i8, i8* %.pn21, i64 -1008
  %p.0 = bitcast i8* %p.0.in to %struct.task_struct*
  %call = call fastcc i32 @wait_consider_task(%struct.wait_opts* noundef %wo, i32 noundef 1, %struct.task_struct* noundef %p.0) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %cleanup10

for.inc:                                          ; preds = %for.body
  %2 = bitcast i8* %.pn21 to i8**
  %.pn = load i8*, i8** %2, align 16
  %3 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %ptraced, %3
  br i1 %cmp.not, label %cleanup10, label %for.body

cleanup10:                                        ; preds = %for.body, %for.inc, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.inc ], [ %call, %for.body ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !19

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @eligible_pid(%struct.wait_opts* nocapture noundef readonly %wo, %struct.task_struct* nocapture noundef readonly %p) unnamed_addr #5 {
entry:
  %wo_type = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 0
  %0 = load i32, i32* %wo_type, align 8
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call = call fastcc %struct.pid* @task_pid_type(%struct.task_struct* noundef %p, i32 noundef %0) #16
  %wo_pid = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 2
  %1 = load %struct.pid*, %struct.pid** %wo_pid, align 8
  %cmp2 = icmp eq %struct.pid* %call, %1
  %phi.cast = zext i1 %cmp2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pid_type(%struct.task_struct* nocapture noundef readonly %task, i32 noundef %type) unnamed_addr #5 {
entry:
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %task) #16
  br label %if.end

if.else:                                          ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %type to i64
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 %idxprom
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pid.0 = phi %struct.pid* [ %call, %if.then ], [ %1, %if.else ]
  ret %struct.pid* %pid.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #3 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @is_effectively_child(%struct.wait_opts* nocapture noundef readonly %wo, i1 noundef %ptrace, %struct.task_struct* nocapture noundef readonly %target) unnamed_addr #9 {
entry:
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %target, i64 0, i32 52
  %parent1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %target, i64 0, i32 53
  %cond.in = select i1 %ptrace, %struct.task_struct** %parent1, %struct.task_struct** %real_parent
  %cond = load %struct.task_struct*, %struct.task_struct** %cond.in, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %cond, %1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  %2 = load i32, i32* %wo_flags, align 4
  %and = and i32 %2, 536870912
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %call4 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %1, %struct.task_struct* noundef %cond) #16
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ false, %lor.rhs ], [ %call4, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wait_consider_task(%struct.wait_opts* nocapture noundef %wo, i32 noundef %ptrace, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %exit_state1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 39
  %0 = load volatile i32, i32* %exit_state1, align 4
  %cmp = icmp eq i32 %0, 16
  br i1 %cmp, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %tobool3 = icmp ne i32 %ptrace, 0
  %call = call fastcc i32 @eligible_child(%struct.wait_opts* noundef %wo, i1 noundef %tobool3, %struct.task_struct* noundef %p) #16
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp eq i32 %0, 48
  br i1 %cmp7, label %if.then16, label %if.end29, !prof !9

if.then16:                                        ; preds = %if.end6
  br i1 %tobool3, label %cleanup, label %if.then27, !prof !9

if.then27:                                        ; preds = %if.then16
  %notask_error = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 7
  store i32 0, i32* %notask_error, align 8
  br label %cleanup

if.end29:                                         ; preds = %if.end6
  br i1 %tobool3, label %if.end54, label %land.lhs.true, !prof !9

land.lhs.true:                                    ; preds = %if.end29
  %ptrace40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 5
  %1 = load i32, i32* %ptrace40, align 8
  %tobool41.not = icmp eq i32 %1, 0
  br i1 %tobool41.not, label %if.end54, label %if.then49, !prof !19

if.then49:                                        ; preds = %land.lhs.true
  %call50 = call fastcc i32 @ptrace_reparented(%struct.task_struct* noundef %p) #16
  %tobool51.not = icmp eq i32 %call50, 0
  %spec.select = zext i1 %tobool51.not to i32
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %land.lhs.true, %if.end29
  %ptrace.addr.0 = phi i32 [ 0, %land.lhs.true ], [ %ptrace, %if.end29 ], [ %spec.select, %if.then49 ]
  %cmp55 = icmp eq i32 %0, 32
  br i1 %cmp55, label %if.then57, label %if.end103.sink.split

if.then57:                                        ; preds = %if.end54
  %call58 = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef %p) #16
  br i1 %call58, label %land.lhs.true60, label %if.then63

land.lhs.true60:                                  ; preds = %if.then57
  %call61 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %p) #16
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end86, label %if.then63

if.then63:                                        ; preds = %land.lhs.true60, %if.then57
  %tobool64.not = icmp eq i32 %ptrace.addr.0, 0
  br i1 %tobool64.not, label %lor.lhs.false, label %if.then83, !prof !19

lor.lhs.false:                                    ; preds = %if.then63
  %ptrace72 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 5
  %2 = load i32, i32* %ptrace72, align 8
  %tobool73.not = icmp eq i32 %2, 0
  br i1 %tobool73.not, label %if.then83, label %if.end103.sink.split, !prof !19

if.then83:                                        ; preds = %lor.lhs.false, %if.then63
  %call84 = call fastcc i32 @wait_task_zombie(%struct.wait_opts* noundef %wo, %struct.task_struct* noundef %p) #16
  br label %cleanup

if.end86:                                         ; preds = %land.lhs.true60
  %tobool87.not = icmp eq i32 %ptrace.addr.0, 0
  br i1 %tobool87.not, label %if.end103.sink.split, label %lor.lhs.false97, !prof !19

lor.lhs.false97:                                  ; preds = %if.end86
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  %3 = load i32, i32* %wo_flags, align 4
  %and = and i32 %3, 12
  %tobool98.not = icmp eq i32 %and, 0
  br i1 %tobool98.not, label %if.end103, label %if.end103.sink.split

if.end103.sink.split:                             ; preds = %if.end54, %if.end86, %lor.lhs.false97, %lor.lhs.false
  %notask_error100 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 7
  store i32 0, i32* %notask_error100, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.end103.sink.split, %lor.lhs.false97
  %call104 = call fastcc i32 @wait_task_stopped(%struct.wait_opts* noundef %wo, i32 noundef %ptrace.addr.0, %struct.task_struct* noundef %p) #16
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %cleanup

if.end107:                                        ; preds = %if.end103
  %call108 = call fastcc i32 @wait_task_continued(%struct.wait_opts* noundef %wo, %struct.task_struct* noundef %p) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then16, %if.then27, %if.end, %entry, %if.end107, %if.then83
  %retval.0 = phi i32 [ %call84, %if.then83 ], [ %call108, %if.end107 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then27 ], [ 0, %if.then16 ], [ %call104, %if.end103 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @eligible_child(%struct.wait_opts* nocapture noundef readonly %wo, i1 noundef %ptrace, %struct.task_struct* nocapture noundef readonly %p) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @eligible_pid(%struct.wait_opts* noundef %wo, %struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq i32 %call, 0
  %brmerge = or i1 %tobool.not, %ptrace
  %not.tobool.not = xor i1 %tobool.not, true
  %.mux = zext i1 %not.tobool.not to i32
  br i1 %brmerge, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  %0 = load i32, i32* %wo_flags, align 4
  %and = and i32 %0, 1073741824
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %return

if.end4:                                          ; preds = %lor.lhs.false
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 41
  %1 = load i32, i32* %exit_signal, align 4
  %cmp = icmp ne i32 %1, 17
  %conv = zext i1 %cmp to i32
  %2 = xor i32 %0, -1
  %3 = lshr i32 %2, 31
  %tobool9.not = xor i32 %3, %conv
  br label %return

return:                                           ; preds = %entry, %if.end4, %lor.lhs.false
  %retval.0 = phi i32 [ %.mux, %entry ], [ 1, %lor.lhs.false ], [ %tobool9.not, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wait_task_zombie(%struct.wait_opts* nocapture noundef %wo, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %tgutime = alloca i64, align 8
  %tgstime = alloca i64, align 8
  %call = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %p) #16
  call fastcc void @__rcu_read_lock() #17
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #16
  %coerce.val.ii = zext i32 %___val.sroa.0.0.copyload to i64
  %call7 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #16
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  %1 = load i32, i32* %wo_flags, align 4
  %and = and i32 %1, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %and11 = and i32 %1, 16777216
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end29, label %if.then20, !prof !19

if.then20:                                        ; preds = %if.end
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 40
  %2 = load i32, i32* %exit_code, align 8
  call fastcc void @get_task_struct(%struct.task_struct* noundef %p) #16
  call fastcc void @__raw_read_unlock() #16
  %wo_rusage = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 5
  %3 = load %struct.rusage*, %struct.rusage** %wo_rusage, align 8
  %tobool25.not = icmp eq %struct.rusage* %3, null
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.then20
  call void @getrusage(%struct.task_struct* noundef %p, i32 noundef -2, %struct.rusage* noundef nonnull %3) #17
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then20
  call fastcc void @put_task_struct(%struct.task_struct* noundef %p) #16
  br label %out_info

if.end29:                                         ; preds = %if.end
  %call30 = call fastcc i32 @ptrace_reparented(%struct.task_struct* noundef %p) #16
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.end.thread, label %land.end

land.end:                                         ; preds = %if.end29
  %call32 = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef %p) #16
  %spec.select265 = select i1 %call32, i32 48, i32 16
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %if.end29
  %4 = phi i1 [ false, %if.end29 ], [ %call32, %land.end ]
  %5 = phi i32 [ 16, %if.end29 ], [ %spec.select265, %land.end ]
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 39
  %6 = bitcast i32* %exit_state to i8*
  %call11.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %6, i32 noundef %5) #17
  %cmp.not = icmp eq i32 %call11.i, 32
  br i1 %cmp.not, label %if.end41, label %cleanup

if.end41:                                         ; preds = %land.end.thread
  call fastcc void @__raw_read_unlock() #16
  br i1 %4, label %if.end111, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end41
  %call47 = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef %p) #16
  br i1 %call47, label %if.then49, label %if.end111

if.then49:                                        ; preds = %land.lhs.true
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %7 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !15
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %signal51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i64 0, i32 87
  %10 = load %struct.signal_struct*, %struct.signal_struct** %signal51, align 8
  %11 = bitcast i64* %tgutime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #18
  store i64 0, i64* %tgutime, align 8, !annotation !12
  %12 = bitcast i64* %tgstime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #18
  store i64 0, i64* %tgstime, align 8, !annotation !12
  call void @thread_group_cputime_adjusted(%struct.task_struct* noundef %p, i64* noundef nonnull %tgutime, i64* noundef nonnull %tgstime) #17
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i64 0, i32 88
  %13 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %13, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %stats_lock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 25
  call fastcc void @write_seqlock(%struct.seqlock_t* noundef %stats_lock) #16
  %14 = load i64, i64* %tgutime, align 8
  %cutime = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 28
  %15 = load i64, i64* %cutime, align 8
  %add = add i64 %15, %14
  %cutime53 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 28
  %16 = load i64, i64* %cutime53, align 8
  %add54 = add i64 %add, %16
  store i64 %add54, i64* %cutime53, align 8
  %17 = load i64, i64* %tgstime, align 8
  %cstime = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 29
  %18 = load i64, i64* %cstime, align 8
  %add55 = add i64 %18, %17
  %cstime56 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 29
  %19 = load i64, i64* %cstime56, align 8
  %add57 = add i64 %add55, %19
  store i64 %add57, i64* %cstime56, align 8
  %call58 = call fastcc i64 @task_gtime(%struct.task_struct* noundef %p) #16
  %gtime = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 30
  %20 = load i64, i64* %gtime, align 8
  %add59 = add i64 %20, %call58
  %cgtime = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 31
  %21 = load i64, i64* %cgtime, align 8
  %add60 = add i64 %add59, %21
  %cgtime61 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 31
  %22 = load i64, i64* %cgtime61, align 8
  %add62 = add i64 %add60, %22
  store i64 %add62, i64* %cgtime61, align 8
  %min_flt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 75
  %23 = load i64, i64* %min_flt, align 8
  %min_flt63 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 37
  %24 = load i64, i64* %min_flt63, align 8
  %add64 = add i64 %24, %23
  %cmin_flt = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 39
  %25 = load i64, i64* %cmin_flt, align 8
  %add65 = add i64 %add64, %25
  %cmin_flt66 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 39
  %26 = load i64, i64* %cmin_flt66, align 8
  %add67 = add i64 %add65, %26
  store i64 %add67, i64* %cmin_flt66, align 8
  %maj_flt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 76
  %27 = load i64, i64* %maj_flt, align 32
  %maj_flt68 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 38
  %28 = load i64, i64* %maj_flt68, align 8
  %add69 = add i64 %28, %27
  %cmaj_flt = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 40
  %29 = load i64, i64* %cmaj_flt, align 8
  %add70 = add i64 %add69, %29
  %cmaj_flt71 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 40
  %30 = load i64, i64* %cmaj_flt71, align 8
  %add72 = add i64 %add70, %30
  store i64 %add72, i64* %cmaj_flt71, align 8
  %nvcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 71
  %31 = load i64, i64* %nvcsw, align 8
  %nvcsw73 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 33
  %32 = load i64, i64* %nvcsw73, align 8
  %add74 = add i64 %32, %31
  %cnvcsw = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 35
  %33 = load i64, i64* %cnvcsw, align 8
  %add75 = add i64 %add74, %33
  %cnvcsw76 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 35
  %34 = load i64, i64* %cnvcsw76, align 8
  %add77 = add i64 %add75, %34
  store i64 %add77, i64* %cnvcsw76, align 8
  %nivcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 72
  %35 = load i64, i64* %nivcsw, align 64
  %nivcsw78 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 34
  %36 = load i64, i64* %nivcsw78, align 8
  %add79 = add i64 %36, %35
  %cnivcsw = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 36
  %37 = load i64, i64* %cnivcsw, align 8
  %add80 = add i64 %add79, %37
  %cnivcsw81 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 36
  %38 = load i64, i64* %cnivcsw81, align 8
  %add82 = add i64 %add80, %38
  store i64 %add82, i64* %cnivcsw81, align 8
  %inblock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 41
  %39 = load i64, i64* %inblock, align 8
  %cinblock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 43
  %40 = load i64, i64* %cinblock, align 8
  %add85 = add i64 %40, %39
  %cinblock86 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 43
  %41 = load i64, i64* %cinblock86, align 8
  %add87 = add i64 %add85, %41
  store i64 %add87, i64* %cinblock86, align 8
  %oublock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 42
  %42 = load i64, i64* %oublock, align 8
  %coublock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 44
  %43 = load i64, i64* %coublock, align 8
  %add90 = add i64 %43, %42
  %coublock91 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 44
  %44 = load i64, i64* %coublock91, align 8
  %add92 = add i64 %add90, %44
  store i64 %add92, i64* %coublock91, align 8
  %maxrss93 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 45
  %45 = load i64, i64* %maxrss93, align 8
  %cmaxrss = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 46
  %46 = load i64, i64* %cmaxrss, align 8
  %cmp95 = icmp ugt i64 %45, %46
  %cond97 = select i1 %cmp95, i64 %45, i64 %46
  %cmaxrss98 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 46
  %47 = load i64, i64* %cmaxrss98, align 8
  %cmp99 = icmp ult i64 %47, %cond97
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.then49
  store i64 %cond97, i64* %cmaxrss98, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.then49
  call fastcc void @write_sequnlock(%struct.seqlock_t* noundef %stats_lock) #16
  %48 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i263 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %48, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i263) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #18
  br label %if.end111

if.end111:                                        ; preds = %if.end103, %land.lhs.true, %if.end41
  %wo_rusage112 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 5
  %49 = load %struct.rusage*, %struct.rusage** %wo_rusage112, align 8
  %tobool113.not = icmp eq %struct.rusage* %49, null
  br i1 %tobool113.not, label %if.end116, label %if.then114

if.then114:                                       ; preds = %if.end111
  call void @getrusage(%struct.task_struct* noundef %p, i32 noundef -2, %struct.rusage* noundef nonnull %49) #17
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end111
  %signal117 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %50 = load %struct.signal_struct*, %struct.signal_struct** %signal117, align 8
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %50, i64 0, i32 12
  %51 = load i32, i32* %flags, align 4
  %and118 = and i32 %51, 4
  %tobool119.not = icmp eq i32 %and118, 0
  %group_exit_code = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %50, i64 0, i32 8
  %exit_code123 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 40
  %cond125.in = select i1 %tobool119.not, i32* %exit_code123, i32* %group_exit_code
  %cond125 = load i32, i32* %cond125.in, align 8
  %wo_stat = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 4
  store i32 %cond125, i32* %wo_stat, align 8
  br i1 %4, label %if.then128, label %if.end133

if.then128:                                       ; preds = %if.end116
  call fastcc void @__raw_write_lock_irq() #16
  call fastcc void @ptrace_unlink(%struct.task_struct* noundef %p) #16
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 41
  %52 = load i32, i32* %exit_signal, align 4
  %call129 = call i1 @do_notify_parent(%struct.task_struct* noundef %p, i32 noundef %52) #17
  %spec.select = select i1 %call129, i32 16, i32 32
  store i32 %spec.select, i32* %exit_state, align 4
  call fastcc void @__raw_write_unlock_irq() #16
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %if.end116
  %state.1 = phi i32 [ %spec.select, %if.then128 ], [ %5, %if.end116 ]
  %cmp134 = icmp eq i32 %state.1, 16
  br i1 %cmp134, label %if.then136, label %out_info

if.then136:                                       ; preds = %if.end133
  call void @release_task(%struct.task_struct* noundef %p) #16
  br label %out_info

out_info:                                         ; preds = %if.end133, %if.then136, %if.end28
  %status.0 = phi i32 [ %2, %if.end28 ], [ %cond125, %if.then136 ], [ %cond125, %if.end133 ]
  %wo_info = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 3
  %53 = load %struct.waitid_info*, %struct.waitid_info** %wo_info, align 8
  %tobool138.not = icmp eq %struct.waitid_info* %53, null
  br i1 %tobool138.not, label %cleanup, label %if.then139

if.then139:                                       ; preds = %out_info
  %and140 = and i32 %status.0, 127
  %cmp141 = icmp eq i32 %and140, 0
  %shr = ashr i32 %status.0, 8
  %and145 = and i32 %status.0, 128
  %tobool146.not = icmp eq i32 %and145, 0
  %cond147 = select i1 %tobool146.not, i32 2, i32 3
  %cond147.sink = select i1 %cmp141, i32 1, i32 %cond147
  %and140.sink = select i1 %cmp141, i32 %shr, i32 %and140
  %54 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %53, i64 0, i32 3
  store i32 %cond147.sink, i32* %54, align 4
  %55 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %53, i64 0, i32 2
  store i32 %and140.sink, i32* %55, align 4
  %pid152 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %53, i64 0, i32 0
  store i32 %call, i32* %pid152, align 4
  %uid153 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %53, i64 0, i32 1
  store i32 %call7, i32* %uid153, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_info, %if.then139, %land.end.thread, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %land.end.thread ], [ %call, %if.then139 ], [ %call, %out_info ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wait_task_stopped(%struct.wait_opts* nocapture noundef %wo, i32 noundef %ptrace, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %tobool = icmp ne i32 %ptrace, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  %0 = load i32, i32* %wo_flags, align 4
  %and = and i32 %0, 2
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call fastcc i32* @task_stopped_code(%struct.task_struct* noundef %p, i1 noundef %tobool) #16
  %tobool3.not = icmp eq i32* %call, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 88
  %1 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %1, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %call7 = call fastcc i32* @task_stopped_code(%struct.task_struct* noundef %p, i1 noundef %tobool) #16
  %tobool8.not = icmp eq i32* %call7, null
  br i1 %tobool8.not, label %unlock_sig.thread, label %if.end13, !prof !9

if.end13:                                         ; preds = %if.end5
  %2 = load i32, i32* %call7, align 4
  %tobool14.not = icmp eq i32 %2, 0
  br i1 %tobool14.not, label %unlock_sig.thread, label %if.end16

if.end16:                                         ; preds = %if.end13
  %wo_flags17 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  %3 = load i32, i32* %wo_flags17, align 4
  %and18 = and i32 %3, 16777216
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then27, label %if.end40, !prof !19

if.then27:                                        ; preds = %if.end16
  store i32 0, i32* %call7, align 4
  br label %if.end40

unlock_sig.thread:                                ; preds = %if.end5, %if.end13
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i114118 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i114118) #17
  br label %cleanup

if.end40:                                         ; preds = %if.then27, %if.end16
  call fastcc void @__rcu_read_lock() #17
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  %5 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %5, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #16
  %coerce.val.ii = zext i32 %___val.sroa.0.0.copyload to i64
  %call35 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #16
  %6 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i114 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %6, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i114) #17
  call fastcc void @get_task_struct(%struct.task_struct* noundef %p) #16
  %call42 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %p) #16
  %cond = select i1 %tobool, i32 4, i32 5
  call fastcc void @__raw_read_unlock() #16
  %wo_rusage = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 5
  %7 = load %struct.rusage*, %struct.rusage** %wo_rusage, align 8
  %tobool47.not = icmp eq %struct.rusage* %7, null
  br i1 %tobool47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end40
  call void @getrusage(%struct.task_struct* noundef %p, i32 noundef -2, %struct.rusage* noundef nonnull %7) #17
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end40
  call fastcc void @put_task_struct(%struct.task_struct* noundef %p) #16
  %8 = load i32, i32* %wo_flags17, align 4
  %and52 = and i32 %8, 16777216
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then63, label %if.end64, !prof !19

if.then63:                                        ; preds = %if.end50
  %shl = shl i32 %2, 8
  %or = or i32 %shl, 127
  %wo_stat = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 4
  store i32 %or, i32* %wo_stat, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end50
  %wo_info = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 3
  %9 = load %struct.waitid_info*, %struct.waitid_info** %wo_info, align 8
  %tobool65.not = icmp eq %struct.waitid_info* %9, null
  br i1 %tobool65.not, label %cleanup, label %if.then66

if.then66:                                        ; preds = %if.end64
  %cause = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %9, i64 0, i32 3
  store i32 %cond, i32* %cause, align 4
  %status = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %9, i64 0, i32 2
  store i32 %2, i32* %status, align 4
  %pid67 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %9, i64 0, i32 0
  store i32 %call42, i32* %pid67, align 4
  %uid68 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %9, i64 0, i32 1
  store i32 %call35, i32* %uid68, align 4
  br label %cleanup

cleanup:                                          ; preds = %unlock_sig.thread, %if.end64, %if.then66, %if.end, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ %call42, %if.then66 ], [ %call42, %if.end64 ], [ 0, %unlock_sig.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wait_task_continued(%struct.wait_opts* nocapture noundef %wo, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %wo_flags = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 1
  %0 = load i32, i32* %wo_flags, align 4
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !19

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 12
  %2 = load i32, i32* %flags, align 4
  %and3 = and i32 %2, 2
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 88
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #17
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags8 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 12
  %5 = load i32, i32* %flags8, align 4
  %and9 = and i32 %5, 2
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end6
  %6 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i82 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %6, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i82) #17
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %7 = load i32, i32* %wo_flags, align 4
  %and16 = and i32 %7, 16777216
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then25, label %if.end29, !prof !19

if.then25:                                        ; preds = %if.end14
  %and28 = and i32 %5, -3
  store i32 %and28, i32* %flags8, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end14
  call fastcc void @__rcu_read_lock() #17
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 79
  %8 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %8, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #16
  %coerce.val.ii = zext i32 %___val.sroa.0.0.copyload to i64
  %call35 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #16
  %9 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i83 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %9, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i83) #17
  %call38 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %p) #16
  call fastcc void @get_task_struct(%struct.task_struct* noundef %p) #16
  call fastcc void @__raw_read_unlock() #16
  %wo_rusage = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 5
  %10 = load %struct.rusage*, %struct.rusage** %wo_rusage, align 8
  %tobool43.not = icmp eq %struct.rusage* %10, null
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end29
  call void @getrusage(%struct.task_struct* noundef %p, i32 noundef -2, %struct.rusage* noundef nonnull %10) #17
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end29
  call fastcc void @put_task_struct(%struct.task_struct* noundef %p) #16
  %wo_info = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 3
  %11 = load %struct.waitid_info*, %struct.waitid_info** %wo_info, align 8
  %tobool47.not = icmp eq %struct.waitid_info* %11, null
  br i1 %tobool47.not, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end46
  %wo_stat = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %wo, i64 0, i32 4
  store i32 65535, i32* %wo_stat, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end46
  %cause = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %11, i64 0, i32 3
  store i32 6, i32* %cause, align 4
  %pid49 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %11, i64 0, i32 0
  store i32 %call38, i32* %pid49, align 4
  %uid50 = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %11, i64 0, i32 1
  store i32 %call35, i32* %uid50, align 4
  %status = getelementptr inbounds %struct.waitid_info, %struct.waitid_info* %11, i64 0, i32 2
  store i32 18, i32* %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.else, %if.end, %entry, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %entry ], [ 0, %if.end ], [ %call38, %if.else ], [ %call38, %if.then48 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kuid_munged(i64 %kuid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #16
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowuid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @getrusage(%struct.task_struct* noundef, i32 noundef, %struct.rusage* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime_adjusted(%struct.task_struct* noundef, i64* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #13 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #13 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %new) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 32, i32 %new, i32* elementtype(i32) %0) #18, !srcloc !63
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32* @task_stopped_code(%struct.task_struct* noundef %p, i1 noundef %ptrace) unnamed_addr #3 {
entry:
  br i1 %ptrace, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %0 = load volatile i32, i32* %__state, align 16
  %and = and i32 %0, 8
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 43
  %1 = load i64, i64* %jobctl, align 8
  %and1 = and i64 %1, 4194304
  %tobool2.not = icmp eq i64 %and1, 0
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 40
  %spec.select = select i1 %tobool2.not, i32* %exit_code, i32* null
  br label %return

if.else:                                          ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 12
  %3 = load i32, i32* %flags, align 4
  %and4 = and i32 %3, 1
  %tobool5.not = icmp eq i32 %and4, 0
  %group_exit_code = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 8
  %spec.select14 = select i1 %tobool5.not, i32* null, i32* %group_exit_code
  br label %return

return:                                           ; preds = %if.else, %land.lhs.true, %do.end
  %retval.0 = phi i32* [ null, %do.end ], [ %spec.select, %land.lhs.true ], [ %spec.select14, %if.else ]
  ret i32* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #16
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #16
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #16
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_wait4(i32 noundef %upid, i32* noundef %stat_addr, i32 noundef %options, %struct.rusage* noundef %ru) unnamed_addr #0 {
entry:
  %r = alloca %struct.rusage, align 8
  %0 = bitcast %struct.rusage* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false), !annotation !12
  %tobool = icmp ne %struct.rusage* %ru, null
  %r. = select i1 %tobool, %struct.rusage* %r, %struct.rusage* null
  %call = call i64 @kernel_wait4(i32 noundef %upid, i32* noundef %stat_addr, i32 noundef %options, %struct.rusage* noundef %r.) #16
  %cmp = icmp sgt i64 %call, 0
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %entry
  %1 = bitcast %struct.rusage* %ru to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef nonnull %1, i8* noundef nonnull %0) #17
  %tobool3.not = icmp eq i64 %call2.i, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %land.lhs.true, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end5
  %retval.0 = phi i64 [ %call, %if.end5 ], [ -14, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #18
  ret i64 %retval.0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #21 = { cold nobuiltin nounwind "no-builtins" }
attributes #22 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #23 = { nounwind readonly }
attributes #24 = { nobuiltin noreturn "no-builtins" }

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
!8 = !{i64 2149662917}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153665449}
!11 = !{i64 2153666869}
!12 = !{!"auto-init"}
!13 = !{i64 2149704571}
!14 = !{i64 2156692111}
!15 = !{i64 1394889}
!16 = !{i64 2149629824}
!17 = !{i64 2149684778}
!18 = !{i64 2156863351}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2156868443}
!21 = !{i64 2156868675}
!22 = !{i64 2156748119}
!23 = !{i64 2156751546}
!24 = !{i64 2156751921}
!25 = !{i64 2149154460, i64 2149154507, i64 2149154513, i64 2149154550, i64 2149154568, i64 2149155495, i64 2149155543, i64 2149155591, i64 2149155654, i64 2149155703, i64 2149154646, i64 2149154671, i64 2149154697, i64 2149154703, i64 2149154740, i64 2149154746, i64 2149154796, i64 2149154842, i64 2149154875}
!26 = !{i64 2156878960}
!27 = !{i64 2156999998, i64 2157000036, i64 2157000053, i64 2157000087, i64 2157000109, i64 2157000135, i64 2157000153, i64 2157000311, i64 2157000352, i64 2157000374, i64 2157000420}
!28 = !{i64 2156918898}
!29 = !{i64 4626355, i64 4626438, i64 4626662, i64 4626882, i64 4626905}
!30 = !{i64 4631057, i64 4631081}
!31 = !{i64 2152145896}
!32 = !{i64 2157017911}
!33 = !{i64 2150260796}
!34 = !{i64 2148009415, i64 2148010089, i64 2148010119, i64 2148010151, i64 2148010185, i64 2148010221, i64 2148010246}
!35 = !{i64 2150046745}
!36 = !{i64 2150046962}
!37 = !{i64 2149126438, i64 2149126485, i64 2149126491, i64 2149126528, i64 2149126546, i64 2149127887, i64 2149127935, i64 2149127983, i64 2149128046, i64 2149128095, i64 2149126624, i64 2149126649, i64 2149126675, i64 2149126681, i64 2149127553, i64 2149127593, i64 2149127611, i64 2149127643, i64 2149127671, i64 2149127725, i64 2149127745, i64 2149127842, i64 2149126704, i64 2149126718, i64 2149126724, i64 2149126774, i64 2149126820, i64 2149126853}
!38 = !{i64 2148091592, i64 2148091625, i64 2148091678, i64 2148091737, i64 2148091771, i64 2148091826, i64 2148091855, i64 2148091875}
!39 = !{i64 2147997633, i64 2147998297, i64 2147998327, i64 2147998359, i64 2147998393, i64 2147998428, i64 2147998453}
!40 = !{i64 2149581315}
!41 = !{i64 2149900830}
!42 = !{i64 2149901071}
!43 = !{i64 2149588596}
!44 = !{i64 2149380826}
!45 = !{i64 2148071319, i64 2148071840, i64 2148071870, i64 2148071896, i64 2148071928, i64 2148071957}
!46 = !{i64 2149545108}
!47 = !{i64 2149116982, i64 2149117029, i64 2149117035, i64 2149117072, i64 2149117090, i64 2149118430, i64 2149118478, i64 2149118526, i64 2149118589, i64 2149118638, i64 2149117168, i64 2149117193, i64 2149117219, i64 2149117225, i64 2149118096, i64 2149118136, i64 2149118154, i64 2149118186, i64 2149118214, i64 2149118268, i64 2149118288, i64 2149118385, i64 2149117248, i64 2149117262, i64 2149117268, i64 2149117318, i64 2149117364, i64 2149117397}
!48 = !{i64 2147994553, i64 2147995219, i64 2147995249, i64 2147995282, i64 2147995316, i64 2147995351, i64 2147995376}
!49 = !{i64 2148005301, i64 2148005967, i64 2148005997, i64 2148006029, i64 2148006063, i64 2148006099, i64 2148006124}
!50 = !{i64 2148002242, i64 2148002890, i64 2148002920, i64 2148002952, i64 2148002986, i64 2148003022, i64 2148003047}
!51 = !{i64 2148126547, i64 2148126579, i64 2148126623, i64 2148126670, i64 2148126696}
!52 = !{i64 2147991669, i64 2147992185, i64 2147992215, i64 2147992242, i64 2147992276, i64 2147992306}
!53 = !{i64 2156853542}
!54 = !{i64 2153631445}
!55 = !{i64 2149570607}
!56 = !{i64 2149595460}
!57 = !{i64 2156949677, i64 2156949717, i64 2156949734, i64 2156949768, i64 2156949790, i64 2156949816, i64 2156949834, i64 2156949849, i64 2156949890, i64 2156949912, i64 2156949958}
!58 = !{i64 2156958843, i64 2156958883, i64 2156958900, i64 2156958934, i64 2156958956, i64 2156958982, i64 2156959000, i64 2156959015, i64 2156959056, i64 2156959078, i64 2156959124}
!59 = !{i64 2156968064, i64 2156968104, i64 2156968121, i64 2156968155, i64 2156968177, i64 2156968203, i64 2156968221, i64 2156968236, i64 2156968277, i64 2156968299, i64 2156968345}
!60 = !{i64 2156977404, i64 2156977444, i64 2156977461, i64 2156977495, i64 2156977517, i64 2156977543, i64 2156977561, i64 2156977576, i64 2156977617, i64 2156977639, i64 2156977685}
!61 = !{i64 2156986744, i64 2156986784, i64 2156986801, i64 2156986835, i64 2156986857, i64 2156986883, i64 2156986901, i64 2156986916, i64 2156986957, i64 2156986979, i64 2156987025}
!62 = !{i64 2156996159, i64 2156996199, i64 2156996216, i64 2156996250, i64 2156996272, i64 2156996298, i64 2156996316, i64 2156996331, i64 2156996372, i64 2156996394, i64 2156996440}
!63 = !{i64 2148104739, i64 2148104772, i64 2148104824, i64 2148104883, i64 2148104917, i64 2148104973, i64 2148105002, i64 2148105029}
