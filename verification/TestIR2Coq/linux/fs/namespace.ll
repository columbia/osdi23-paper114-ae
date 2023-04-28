; ModuleID = 'fs/namespace.c'
source_filename = "fs/namespace.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.cpumask = type { [4 x i64] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5, [48 x i8] }
%struct.anon.5 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.70, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.8 = type { i32 }
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.11, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.12, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.11 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.12 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.13, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.77, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.16, i64, i32 }
%union.anon.16 = type { i8* }
%struct.net = type opaque
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.18 }
%union.anon.18 = type { i64 }
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
%struct.kqid = type { %union.anon.19, i32 }
%union.anon.19 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.20, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.20 = type { %struct.kernfs_elem_dir }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.21, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.21 = type {}
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.22, %union.anon.23, %union.anon.24, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.29, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.22 = type { %struct.hlist_node }
%union.anon.23 = type { %struct.rb_node }
%union.anon.24 = type { %struct.anon.28 }
%struct.anon.28 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.29 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.26, %union.anon.27, i32 }
%union.anon.26 = type { %struct.list_head }
%union.anon.27 = type { %struct.hlist_node }
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
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.75 = type { %struct.callback_head }
%union.anon.76 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.30 }
%union.anon.30 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.31, %union.anon.32 }
%union.anon.31 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.32 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.36 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.34, %struct.qspinlock }
%union.anon.34 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.36 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.77 = type { %struct.pipe_inode_info* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.51 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.15, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.52 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.17 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.17 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type { %struct.ns_common, %struct.mount*, %struct.list_head, %struct.spinlock, %struct.user_namespace*, %struct.ucounts*, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.mount = type { %struct.hlist_node, %struct.mount*, %struct.dentry*, %struct.vfsmount, %union.anon.82, %struct.mnt_pcp*, %struct.list_head, %struct.list_head, %struct.list_head, i8*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mount*, %struct.mnt_namespace*, %struct.mountpoint*, %union.anon.83, %struct.list_head, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.82 = type { %struct.callback_head }
%struct.mnt_pcp = type { i32, i32 }
%struct.mountpoint = type { %struct.hlist_node, %struct.dentry*, %struct.hlist_head, i32 }
%union.anon.83 = type { %struct.hlist_node }
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
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
%struct.kernel_siginfo = type { %struct.anon.57 }
%struct.anon.57 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.61 }
%struct.anon.61 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.69, i32, [12 x i8] }
%union.anon.69 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.70 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.71, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.71 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.72, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.llist_head = type { %struct.llist_node* }
%struct.proc_mounts = type { %struct.mnt_namespace*, %struct.path, i32 (%struct.seq_file*, %struct.vfsmount*)*, %struct.mount }
%struct.pt_regs = type { %union.anon.84, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.84 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mount_attr = type { i64, i64, i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.mount_kattr = type { i32, i32, i32, i32, i8, %struct.user_namespace* }

@sysctl_mount_max = dso_local global i32 100000, section ".data..read_mostly", align 4
@__setup_str_set_mhash_entries = internal constant [15 x i8] c"mhash_entries=\00", section ".init.rodata", align 1
@__setup_set_mhash_entries = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__setup_str_set_mhash_entries, i32 0, i32 0), i32 (i8*)* @set_mhash_entries, i32 0 }, section ".init.setup", align 8
@__setup_str_set_mphash_entries = internal constant [16 x i8] c"mphash_entries=\00", section ".init.rodata", align 1
@__setup_set_mphash_entries = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__setup_str_set_mphash_entries, i32 0, i32 0), i32 (i8*)* @set_mphash_entries, i32 0 }, section ".init.setup", align 8
@mount_lock = dso_local global %struct.seqlock_t zeroinitializer, section ".data..cacheline_aligned", align 64
@mnt_group_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@namespace_sem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @namespace_sem to i8*), i64 24) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @namespace_sem to i8*), i64 24) to %struct.list_head*) } }, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@mounts_op = dso_local local_unnamed_addr constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @m_start, void (%struct.seq_file*, i8*)* @m_stop, i8* (%struct.seq_file*, i8*, i64*)* @m_next, i32 (%struct.seq_file*, i8*)* @m_show }, align 8
@event = internal unnamed_addr global i64 0, align 8
@unmounted = internal global %struct.hlist_head zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"mnt_cache\00", align 1
@mnt_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"Mount-cache\00", align 1
@mhash_entries = internal unnamed_addr global i64 0, section ".init.data", align 8
@m_hash_shift = internal global i32 0, section ".data..read_mostly", align 4
@m_hash_mask = internal global i32 0, section ".data..read_mostly", align 4
@mount_hashtable = internal unnamed_addr global %struct.hlist_head* null, section ".data..read_mostly", align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Mountpoint-cache\00", align 1
@mphash_entries = internal unnamed_addr global i64 0, section ".init.data", align 8
@mp_hash_shift = internal global i32 0, section ".data..read_mostly", align 4
@mp_hash_mask = internal global i32 0, section ".data..read_mostly", align 4
@mountpoint_hashtable = internal unnamed_addr global %struct.hlist_head* null, section ".data..read_mostly", align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to allocate mount hash table\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"\014%s: sysfs_init error: %d\0A\00", align 1
@__func__.mnt_init = private unnamed_addr constant [9 x i8] c"mnt_init\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@fs_kobj = dso_local local_unnamed_addr global %struct.kobject* null, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"\014%s: kobj create error\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"mnt\00", align 1
@mntns_operations = dso_local constant %struct.proc_ns_operations { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* null, i32 131072, %struct.ns_common* (%struct.task_struct*)* @mntns_get, void (%struct.ns_common*)* @mntns_put, i32 (%struct.nsset*, %struct.ns_common*)* @mntns_install, %struct.user_namespace* (%struct.ns_common*)* @mntns_owner, %struct.ns_common* (%struct.ns_common*)* null }, align 8
@ex_mountpoints = internal global %struct.list_head { %struct.list_head* @ex_mountpoints, %struct.list_head* @ex_mountpoints }, align 8
@mnt_id_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, i8* null } }, align 8
@delayed_mntput_list = internal global %struct.llist_head zeroinitializer, align 8
@delayed_mntput_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @delayed_mntput_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @delayed_mntput_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @delayed_mntput }, %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152 }, %struct.workqueue_struct* null, i32 0 }, align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@ns_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@warn_mandlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [282 x i8] c"\014=======================================================\0AWARNING: The mand mount option has been deprecated and\0A         and is ignored by this kernel. Remove the mand\0A         option from the mount to silence this warning.\0A=======================================================\0A\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"\014%s filesystem being %s at %s supports timestamps until %04ld (0x%llx)\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"remounted\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"mounted\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"subtype\00", align 1
@mount_too_revealing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Expected s_iflags to contain 0x%lx\0A\00", align 1
@mnt_ns_seq = internal global %struct.atomic64_t { i64 1 }, align 8
@alloc_mnt_ns.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"&new_ns->poll\00", align 1
@fscontext_fops = external dso_local constant %struct.file_operations, align 8
@.str.18 = private unnamed_addr constant [28 x i8] c"\014VFS: Mount too revealing\0A\00", align 1
@rootfs_fs_type = external dso_local global %struct.file_system_type, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c"rootfs\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Can't create rootfs\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Can't allocate initial namespace\00", align 1
@init_task = external dso_local local_unnamed_addr global %struct.task_struct, align 64
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_set_mhash_entries to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_set_mphash_entries to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @set_mhash_entries(i8* noundef %str) #0 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @simple_strtoul(i8* noundef nonnull %str, i8** noundef nonnull %str.addr, i32 noundef 0) #21
  store i64 %call, i64* @mhash_entries, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @set_mphash_entries(i8* noundef %str) #0 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @simple_strtoul(i8* noundef nonnull %str, i8** noundef nonnull %str.addr, i32 noundef 0) #21
  store i64 %call, i64* @mphash_entries, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mnt_release_group_id(%struct.mount* nocapture noundef %mnt) local_unnamed_addr #1 {
entry:
  %mnt_group_id = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 21
  %0 = load i32, i32* %mnt_group_id, align 4
  call void @ida_free(%struct.ida* noundef nonnull @mnt_group_ida, i32 noundef %0) #21
  store i32 0, i32* %mnt_group_id, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(%struct.ida* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @mnt_get_count(%struct.mount* nocapture noundef readonly %mnt) local_unnamed_addr #3 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call10 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  %cmp11 = icmp ult i32 %call10, %0
  br i1 %cmp11, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %mnt_pcp = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 5
  %1 = load %struct.mnt_pcp*, %struct.mnt_pcp** %mnt_pcp, align 8
  %2 = ptrtoint %struct.mnt_pcp* %1 to i64
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call13 = phi i32 [ %call10, %do.body.lr.ph ], [ %call, %do.body ]
  %count.012 = phi i32 [ 0, %do.body.lr.ph ], [ %add2, %do.body ]
  %idxprom = sext i32 %call13 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.mnt_pcp*
  %mnt_count = getelementptr inbounds %struct.mnt_pcp, %struct.mnt_pcp* %4, i64 0, i32 0
  %5 = load i32, i32* %mnt_count, align 4
  %add2 = add i32 %5, %count.012
  %call = call i32 @cpumask_next(i32 noundef %call13, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %add2, %do.body ]
  ret i32 %count.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @__mnt_is_readonly(%struct.vfsmount* nocapture noundef readonly %mnt) local_unnamed_addr #6 {
entry:
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %1) #23
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sb_rdonly(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #6 {
entry:
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %0 = load i64, i64* %s_flags, align 16
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__mnt_want_write(%struct.vfsmount* noundef %m) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %m) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !8
  call fastcc void @mnt_inc_writers(%struct.mount* noundef %call) #23
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !9
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 2
  %0 = load volatile i32, i32* %mnt_flags, align 8
  %and9 = and i32 %0, 512
  %tobool.not10 = icmp eq i32 %and9, 0
  br i1 %tobool.not10, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  call fastcc void @cpu_relax() #23
  %1 = load volatile i32, i32* %mnt_flags, align 8
  %and = and i32 %1, 512
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #24, !srcloc !10
  %call2 = call fastcc i32 @mnt_is_readonly(%struct.vfsmount* noundef %m) #23
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  call fastcc void @mnt_dec_writers(%struct.mount* noundef %call) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %ret.0 = phi i32 [ -30, %if.then ], [ 0, %while.end ]
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef readnone %mnt) unnamed_addr #7 {
entry:
  %add.ptr2 = getelementptr %struct.vfsmount, %struct.vfsmount* %mnt, i64 -1
  %0 = bitcast %struct.vfsmount* %add.ptr2 to %struct.mount*
  ret %struct.mount* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mnt_inc_writers(%struct.mount* nocapture noundef readonly %mnt) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !12
  %mnt_pcp = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 5
  %0 = load %struct.mnt_pcp*, %struct.mnt_pcp** %mnt_pcp, align 8
  %mnt_writers = getelementptr inbounds %struct.mnt_pcp, %struct.mnt_pcp* %0, i64 0, i32 1
  %1 = ptrtoint i32* %mnt_writers to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #1 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #24, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mnt_is_readonly(%struct.vfsmount* nocapture noundef readonly %mnt) unnamed_addr #1 {
entry:
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  %0 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_readonly_remount = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 42
  %1 = load i32, i32* %s_readonly_remount, align 64
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #24, !srcloc !15
  %call = call i1 @__mnt_is_readonly(%struct.vfsmount* noundef %mnt) #23
  %conv = zext i1 %call to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mnt_dec_writers(%struct.mount* nocapture noundef readonly %mnt) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !16
  %mnt_pcp = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 5
  %0 = load %struct.mnt_pcp*, %struct.mnt_pcp** %mnt_pcp, align 8
  %mnt_writers = getelementptr inbounds %struct.mnt_pcp, %struct.mnt_pcp* %0, i64 0, i32 1
  %1 = ptrtoint i32* %mnt_writers to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef -1) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mnt_want_write(%struct.vfsmount* noundef %m) local_unnamed_addr #1 {
entry:
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %m, i64 0, i32 1
  %0 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  call fastcc void @sb_start_write(%struct.super_block* noundef %0) #23
  %call = call i32 @__mnt_want_write(%struct.vfsmount* noundef %m) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  call fastcc void @sb_end_write(%struct.super_block* noundef %1) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #1 {
entry:
  call fastcc void @__sb_start_write(%struct.super_block* noundef %sb) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #1 {
entry:
  call fastcc void @__sb_end_write(%struct.super_block* noundef %sb) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__mnt_want_write_file(%struct.file* nocapture noundef readonly %file) local_unnamed_addr #1 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  %mnt4 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt4, align 8
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %call = call i1 @__mnt_is_readonly(%struct.vfsmount* noundef %1) #23
  %. = select i1 %call, i32 -30, i32 0
  br label %return

if.end2:                                          ; preds = %entry
  %call5 = call i32 @__mnt_want_write(%struct.vfsmount* noundef %1) #23
  br label %return

return:                                           ; preds = %if.then, %if.end2
  %retval.0 = phi i32 [ %call5, %if.end2 ], [ %., %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mnt_want_write_file(%struct.file* nocapture noundef readonly %file) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #23
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_start_write(%struct.super_block* noundef %0) #23
  %call1 = call i32 @__mnt_want_write_file(%struct.file* noundef %file) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #23
  %i_sb3 = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb3, align 8
  call fastcc void @sb_end_write(%struct.super_block* noundef %1) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #6 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__mnt_drop_write(%struct.vfsmount* noundef readonly %mnt) local_unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !18
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #23
  call fastcc void @mnt_dec_writers(%struct.mount* noundef %call) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mnt_drop_write(%struct.vfsmount* noundef %mnt) local_unnamed_addr #1 {
entry:
  call void @__mnt_drop_write(%struct.vfsmount* noundef %mnt) #23
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  %0 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  call fastcc void @sb_end_write(%struct.super_block* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__mnt_drop_write_file(%struct.file* nocapture noundef readonly %file) local_unnamed_addr #1 {
entry:
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mnt = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @__mnt_drop_write(%struct.vfsmount* noundef %1) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mnt_drop_write_file(%struct.file* nocapture noundef readonly %file) local_unnamed_addr #1 {
entry:
  call void @__mnt_drop_write_file(%struct.file* noundef %file) #23
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #23
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  call fastcc void @sb_end_write(%struct.super_block* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sb_prepare_remount_readonly(%struct.super_block* noundef %sb) local_unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 40, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @lock_mount_hash() #23
  %s_mounts = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 19
  %1 = bitcast %struct.list_head* %s_mounts to i8**
  %.pn91 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn91 to %struct.list_head*
  %cmp.not94 = icmp eq %struct.list_head* %s_mounts, %2
  br i1 %cmp.not94, label %land.lhs.true, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn95 = phi i8* [ %.pn, %for.inc ], [ %.pn91, %if.end ]
  %mnt_flags = getelementptr i8, i8* %.pn95, i64 -72
  %3 = bitcast i8* %mnt_flags to i32*
  %4 = load i32, i32* %3, align 8
  %and = and i32 %4, 64
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  %mnt.096.in = getelementptr i8, i8* %.pn95, i64 -120
  %mnt.096 = bitcast i8* %mnt.096.in to %struct.mount*
  %or = or i32 %4, 512
  store i32 %or, i32* %3, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !20
  %call7 = call fastcc i32 @mnt_get_writers(%struct.mount* noundef %mnt.096) #23
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %for.inc, label %if.end28

for.inc:                                          ; preds = %for.body, %if.then4
  %5 = bitcast i8* %.pn95 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %s_mounts, %6
  br i1 %cmp.not, label %land.lhs.true, label %for.body

land.lhs.true:                                    ; preds = %for.inc, %if.end
  %7 = load volatile i64, i64* %counter.i.i, align 8
  %tobool23.not = icmp eq i64 %7, 0
  br i1 %tobool23.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  %s_readonly_remount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 42
  store i32 1, i32* %s_readonly_remount, align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !21
  br label %if.end28

if.end28:                                         ; preds = %if.then4, %land.lhs.true, %if.then27
  %err.190 = phi i32 [ 0, %if.then27 ], [ -16, %land.lhs.true ], [ -16, %if.then4 ]
  %.pn8597 = load i8*, i8** %1, align 8
  %8 = bitcast i8* %.pn8597 to %struct.list_head*
  %cmp40.not98 = icmp eq %struct.list_head* %s_mounts, %8
  br i1 %cmp40.not98, label %for.end61, label %for.body42

for.body42:                                       ; preds = %if.end28, %for.inc52
  %.pn8599 = phi i8* [ %.pn85, %for.inc52 ], [ %.pn8597, %if.end28 ]
  %mnt_flags44 = getelementptr i8, i8* %.pn8599, i64 -72
  %9 = bitcast i8* %mnt_flags44 to i32*
  %10 = load i32, i32* %9, align 8
  %and45 = and i32 %10, 512
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %for.inc52, label %if.then47

if.then47:                                        ; preds = %for.body42
  %and50 = and i32 %10, -513
  store i32 %and50, i32* %9, align 8
  br label %for.inc52

for.inc52:                                        ; preds = %for.body42, %if.then47
  %11 = bitcast i8* %.pn8599 to i8**
  %.pn85 = load i8*, i8** %11, align 8
  %12 = bitcast i8* %.pn85 to %struct.list_head*
  %cmp40.not = icmp eq %struct.list_head* %s_mounts, %12
  br i1 %cmp40.not, label %for.end61, label %for.body42

for.end61:                                        ; preds = %for.inc52, %if.end28
  call fastcc void @unlock_mount_hash() #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end61
  %retval.0 = phi i32 [ %err.190, %for.end61 ], [ -16, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_mount_hash() unnamed_addr #1 {
entry:
  call fastcc void @write_seqlock() #23
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @mnt_get_writers(%struct.mount* nocapture noundef readonly %mnt) unnamed_addr #3 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call10 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  %cmp11 = icmp ult i32 %call10, %0
  br i1 %cmp11, label %do.body.lr.ph, label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %mnt_pcp = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 5
  %1 = load %struct.mnt_pcp*, %struct.mnt_pcp** %mnt_pcp, align 8
  %2 = ptrtoint %struct.mnt_pcp* %1 to i64
  br label %do.body

do.body:                                          ; preds = %do.body.lr.ph, %do.body
  %call13 = phi i32 [ %call10, %do.body.lr.ph ], [ %call, %do.body ]
  %count.012 = phi i32 [ 0, %do.body.lr.ph ], [ %add2, %do.body ]
  %idxprom = sext i32 %call13 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, %2
  %4 = inttoptr i64 %add to %struct.mnt_pcp*
  %mnt_writers = getelementptr inbounds %struct.mnt_pcp, %struct.mnt_pcp* %4, i64 0, i32 1
  %5 = load i32, i32* %mnt_writers, align 4
  %add2 = add i32 %5, %count.012
  %call = call i32 @cpumask_next(i32 noundef %call13, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #22
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %add2, %do.body ]
  ret i32 %count.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_mount_hash() unnamed_addr #1 {
entry:
  call fastcc void @write_sequnlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__legitimize_mnt(%struct.vfsmount* noundef readonly %bastard, i32 noundef %seq) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @read_seqretry(i32 noundef %seq) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct.vfsmount* %bastard, null
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef nonnull %bastard) #23
  call fastcc void @mnt_add_count(%struct.mount* noundef %call3, i32 noundef 1) #23
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !22
  %call4 = call fastcc i32 @read_seqretry(i32 noundef %seq) #23
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end10, !prof !23

if.end10:                                         ; preds = %if.end2
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %bastard, i64 0, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, 33554432
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  call fastcc void @mnt_add_count(%struct.mount* noundef %call3, i32 noundef -1) #23
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call fastcc void @lock_mount_hash() #23
  %1 = load i32, i32* %mnt_flags, align 8
  %and15 = and i32 %1, 16777216
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end25, label %if.then24, !prof !23

if.then24:                                        ; preds = %if.end13
  call fastcc void @mnt_add_count(%struct.mount* noundef %call3, i32 noundef -1) #23
  call fastcc void @unlock_mount_hash() #23
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  call fastcc void @unlock_mount_hash() #23
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.end25, %if.then24, %if.then12
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 1, %if.then24 ], [ -1, %if.end25 ], [ 1, %entry ], [ 0, %if.end ], [ 0, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqretry(i32 noundef %start) unnamed_addr #1 {
entry:
  %call1 = call fastcc i32 @do_read_seqcount_retry(i32 noundef %start) #23
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mnt_add_count(%struct.mount* nocapture noundef readonly %mnt, i32 noundef %n) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %mnt_pcp = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 5
  %0 = load %struct.mnt_pcp*, %struct.mnt_pcp** %mnt_pcp, align 8
  %1 = ptrtoint %struct.mnt_pcp* %0 to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call, %1
  %2 = inttoptr i64 %add to i8*
  %conv = sext i32 %n to i64
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef %conv) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @legitimize_mnt(%struct.vfsmount* noundef %bastard, i32 noundef %seq) local_unnamed_addr #1 {
entry:
  %call = call i32 @__legitimize_mnt(%struct.vfsmount* noundef %bastard, i32 noundef %seq) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !23

if.end:                                           ; preds = %entry
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then12, label %cleanup, !prof !26

if.then12:                                        ; preds = %if.end
  call fastcc void @rcu_read_unlock() #23
  call void @mntput(%struct.vfsmount* noundef %bastard) #23
  call fastcc void @__rcu_read_lock() #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then12, %entry
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mntput(%struct.vfsmount* noundef %mnt) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.vfsmount* %mnt, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef nonnull %mnt) #23
  %mnt_expiry_mark = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 22
  %0 = load i32, i32* %mnt_expiry_mark, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end, label %if.then4, !prof !23

if.then4:                                         ; preds = %if.then
  store i32 0, i32* %mnt_expiry_mark, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  call fastcc void @mntput_no_expire(%struct.mount* noundef %call) #23
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef %dentry) local_unnamed_addr #8 {
entry:
  %call = call fastcc %struct.hlist_head* @m_hash(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef %dentry) #23
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %call, i64 0, i32 0
  %p.0.in48 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool7.not49 = icmp eq %struct.hlist_node* %p.0.in48, null
  br i1 %tobool7.not49, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %p.0.in50 = phi %struct.hlist_node* [ %p.0.in, %for.inc ], [ %p.0.in48, %entry ]
  %mnt_parent = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %p.0.in50, i64 1
  %0 = bitcast %struct.hlist_node* %mnt_parent to %struct.mount**
  %1 = load %struct.mount*, %struct.mount** %0, align 8
  %mnt8 = getelementptr inbounds %struct.mount, %struct.mount* %1, i64 0, i32 3
  %cmp = icmp eq %struct.vfsmount* %mnt8, %mnt
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mnt_mountpoint = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %p.0.in50, i64 1, i32 1
  %2 = bitcast %struct.hlist_node*** %mnt_mountpoint to %struct.dentry**
  %3 = load %struct.dentry*, %struct.dentry** %2, align 8
  %cmp9 = icmp eq %struct.dentry* %3, %dentry
  br i1 %cmp9, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr %struct.hlist_node, %struct.hlist_node* %p.0.in50, i64 0, i32 0
  %p.0.in = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool7.not = icmp eq %struct.hlist_node* %p.0.in, null
  br i1 %tobool7.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true, %for.inc, %entry
  %p.0.in.lcssa = phi %struct.hlist_node* [ null, %entry ], [ null, %for.inc ], [ %p.0.in50, %land.lhs.true ]
  %p.0 = bitcast %struct.hlist_node* %p.0.in.lcssa to %struct.mount*
  ret %struct.mount* %p.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.hlist_head* @m_hash(%struct.vfsmount* noundef %mnt, %struct.dentry* noundef %dentry) unnamed_addr #6 {
entry:
  %0 = ptrtoint %struct.vfsmount* %mnt to i64
  %div = lshr i64 %0, 6
  %1 = ptrtoint %struct.dentry* %dentry to i64
  %div1 = lshr i64 %1, 6
  %add = add nuw nsw i64 %div1, %div
  %2 = load i32, i32* @m_hash_shift, align 4
  %sh_prom = zext i32 %2 to i64
  %shr = lshr i64 %add, %sh_prom
  %add2 = add nuw nsw i64 %shr, %add
  %3 = load %struct.hlist_head*, %struct.hlist_head** @mount_hashtable, align 8
  %4 = load i32, i32* @m_hash_mask, align 4
  %conv = zext i32 %4 to i64
  %and = and i64 %add2, %conv
  %arrayidx = getelementptr %struct.hlist_head, %struct.hlist_head* %3, i64 %and
  ret %struct.hlist_head* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @lookup_mnt(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #21
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call = call fastcc i32 @read_seqbegin() #23
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call1 = call %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef %0, %struct.dentry* noundef %1) #23
  %tobool.not = icmp eq %struct.mount* %call1, null
  %mnt2 = getelementptr inbounds %struct.mount, %struct.mount* %call1, i64 0, i32 3
  %cond = select i1 %tobool.not, %struct.vfsmount* null, %struct.vfsmount* %mnt2
  %call3 = call i1 @legitimize_mnt(%struct.vfsmount* noundef %cond, i32 noundef %call) #23
  br i1 %call3, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  call fastcc void @rcu_read_unlock() #23
  ret %struct.vfsmount* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqbegin() unnamed_addr #1 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 64
  %and1 = and i32 %0, 1
  %tobool.not2 = icmp eq i32 %and1, 0
  br i1 %tobool.not2, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  call fastcc void @cpu_relax() #23
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 64
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #24, !srcloc !27
  ret i32 %.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @__is_local_mountpoint(%struct.dentry* noundef readnone %dentry) local_unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 86
  %2 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %2, i64 0, i32 3
  %3 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  call void @down_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  call fastcc void @lock_ns_list(%struct.mnt_namespace* noundef %3) #23
  %list = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %3, i64 0, i32 2
  %4 = bitcast %struct.list_head* %list to i8**
  %.pn30 = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn30 to %struct.list_head*
  %cmp.not31 = icmp eq %struct.list_head* %list, %5
  br i1 %cmp.not31, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn32 = phi i8* [ %.pn, %for.inc ], [ %.pn30, %entry ]
  %mnt.0.in = getelementptr i8, i8* %.pn32, i64 -144
  %mnt.0 = bitcast i8* %mnt.0.in to %struct.mount*
  %call2 = call fastcc i1 @mnt_is_cursor(%struct.mount* noundef %mnt.0) #23
  br i1 %call2, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %mnt_mountpoint = getelementptr i8, i8* %.pn32, i64 -120
  %6 = bitcast i8* %mnt_mountpoint to %struct.dentry**
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  %cmp3 = icmp eq %struct.dentry* %7, %dentry
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %8 = bitcast i8* %.pn32 to i8**
  %.pn = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %list, %9
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end, %entry
  %cmp.not.lcssa = phi i1 [ false, %entry ], [ true, %if.end ], [ false, %for.inc ]
  call fastcc void @unlock_ns_list(%struct.mnt_namespace* noundef %3) #23
  call void @up_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  ret i1 %cmp.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_ns_list(%struct.mnt_namespace* noundef %ns) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @mnt_is_cursor(%struct.mount* nocapture noundef readonly %mnt) unnamed_addr #6 {
entry:
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, 268435456
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_ns_list(%struct.mnt_namespace* noundef %ns) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 3, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mnt_set_mountpoint(%struct.mount* noundef %mnt, %struct.mountpoint* noundef %mp, %struct.mount* noundef %child_mnt) local_unnamed_addr #1 {
entry:
  %m_count = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %mp, i64 0, i32 3
  %0 = load i32, i32* %m_count, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* %m_count, align 8
  call fastcc void @mnt_add_count(%struct.mount* noundef %mnt, i32 noundef 1) #23
  %m_dentry = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %mp, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %m_dentry, align 8
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %child_mnt, i64 0, i32 2
  store %struct.dentry* %1, %struct.dentry** %mnt_mountpoint, align 8
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %child_mnt, i64 0, i32 1
  store %struct.mount* %mnt, %struct.mount** %mnt_parent, align 8
  %mnt_mp = getelementptr inbounds %struct.mount, %struct.mount* %child_mnt, i64 0, i32 17
  store %struct.mountpoint* %mp, %struct.mountpoint** %mnt_mp, align 8
  %mnt_mp_list = getelementptr inbounds %struct.mount, %struct.mount* %child_mnt, i64 0, i32 18, i32 0
  %m_list = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %mp, i64 0, i32 2
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %mnt_mp_list, %struct.hlist_head* noundef %m_list) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #8 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %do.body22, label %do.body12

do.body12:                                        ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev, align 8
  br label %do.body22

do.body22:                                        ; preds = %entry, %do.body12
  store volatile %struct.hlist_node* %n, %struct.hlist_node** %first1, align 8
  %pprev34 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev34, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mnt_change_mountpoint(%struct.mount* noundef %parent, %struct.mountpoint* noundef %mp, %struct.mount* noundef %mnt) local_unnamed_addr #1 {
entry:
  %mnt_mp = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 17
  %0 = load %struct.mountpoint*, %struct.mountpoint** %mnt_mp, align 8
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 1
  %1 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %mnt_child = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 7
  call fastcc void @list_del_init(%struct.list_head* noundef %mnt_child) #23
  %mnt_mp_list = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 18, i32 0
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %mnt_mp_list) #23
  %mnt_hash = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 0
  call fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef %mnt_hash) #23
  call fastcc void @attach_mnt(%struct.mount* noundef %mnt, %struct.mount* noundef %parent, %struct.mountpoint* noundef %mp) #23
  call fastcc void @put_mountpoint(%struct.mountpoint* noundef %0) #23
  call fastcc void @mnt_add_count(%struct.mount* noundef %1, i32 noundef -1) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #8 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #23
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init(%struct.hlist_node* nocapture noundef %n) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #23
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %n) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef %n) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #23
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @attach_mnt(%struct.mount* noundef %mnt, %struct.mount* noundef %parent, %struct.mountpoint* noundef %mp) unnamed_addr #1 {
entry:
  call void @mnt_set_mountpoint(%struct.mount* noundef %parent, %struct.mountpoint* noundef %mp, %struct.mount* noundef %mnt) #23
  call fastcc void @__attach_mnt(%struct.mount* noundef %mnt, %struct.mount* noundef %parent) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_mountpoint(%struct.mountpoint* noundef %mp) unnamed_addr #1 {
entry:
  call fastcc void @__put_mountpoint(%struct.mountpoint* noundef %mp, %struct.list_head* noundef nonnull @ex_mountpoints) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @vfs_create_mount(%struct.fs_context* nocapture noundef readonly %fc) local_unnamed_addr #1 {
entry:
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %0 = load %struct.dentry*, %struct.dentry** %root, align 8
  %tobool.not = icmp eq %struct.dentry* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #23
  %1 = bitcast i8* %call to %struct.vfsmount*
  br label %cleanup

if.end:                                           ; preds = %entry
  %source = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 10
  %2 = load i8*, i8** %source, align 8
  %tobool1.not = icmp eq i8* %2, null
  %. = select i1 %tobool1.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %2
  %call2 = call fastcc %struct.mount* @alloc_vfsmnt(i8* noundef %.) #23
  %tobool3.not = icmp eq %struct.mount* %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -12) #23
  %3 = bitcast i8* %call5 to %struct.vfsmount*
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sb_flags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 13
  %4 = load i32, i32* %sb_flags, align 8
  %and = and i32 %4, 4194304
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end6
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 3, i32 2
  store i32 16384, i32* %mnt_flags, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %5 = load %struct.dentry*, %struct.dentry** %root, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i64 0, i32 9
  %6 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_active = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 16
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %s_active) #21
  %7 = load %struct.dentry*, %struct.dentry** %root, align 8
  %d_sb13 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i64 0, i32 9
  %8 = load %struct.super_block*, %struct.super_block** %d_sb13, align 8
  %mnt14 = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 3
  %mnt_sb = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 3, i32 1
  store %struct.super_block* %8, %struct.super_block** %mnt_sb, align 8
  %9 = load %struct.dentry*, %struct.dentry** %root, align 8
  %call16 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %9) #23
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt14, i64 0, i32 0
  store %struct.dentry* %9, %struct.dentry** %mnt_root, align 8
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 2
  store %struct.dentry* %9, %struct.dentry** %mnt_mountpoint, align 8
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 1
  store %struct.mount* %call2, %struct.mount** %mnt_parent, align 8
  call fastcc void @lock_mount_hash() #23
  %mnt_instance = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 8
  %10 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_mounts = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i64 0, i32 19
  call fastcc void @list_add_tail(%struct.list_head* noundef %mnt_instance, %struct.list_head* noundef %s_mounts) #23
  call fastcc void @unlock_mount_hash() #23
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4, %if.then
  %retval.0 = phi %struct.vfsmount* [ %mnt14, %if.end10 ], [ %3, %if.then4 ], [ %1, %if.then ]
  ret %struct.vfsmount* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #7 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mount* @alloc_vfsmnt(i8* noundef %name) unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @mnt_cache, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0) #23
  %1 = bitcast i8* %call to %struct.mount*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup30, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @mnt_alloc_id(%struct.mount* noundef nonnull %1) #23
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %out_free_cache

if.end:                                           ; preds = %if.then
  %tobool4.not = icmp eq i8* %name, null
  br i1 %tobool4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call i8* @kstrdup_const(i8* noundef nonnull %name, i32 noundef 4197568) #21
  %mnt_devname = getelementptr inbounds i8, i8* %call, i64 136
  %2 = bitcast i8* %mnt_devname to i8**
  store i8* %call6, i8** %2, align 8
  %tobool8.not = icmp eq i8* %call6, null
  br i1 %tobool8.not, label %out_free_id, label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end
  %call12 = call i8* @__alloc_percpu(i64 noundef 8, i64 noundef 4) #21
  %mnt_pcp = getelementptr inbounds i8, i8* %call, i64 80
  %3 = bitcast i8* %mnt_pcp to i8**
  store i8* %call12, i8** %3, align 8
  %tobool14.not = icmp eq i8* %call12, null
  br i1 %tobool14.not, label %out_free_devname, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end11
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !29
  %4 = ptrtoint i8* %call12 to i64
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call24, %4
  %5 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 1) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %mnt_hash = bitcast i8* %call to %struct.hlist_node*
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef nonnull %mnt_hash) #23
  %mnt_child = getelementptr inbounds i8, i8* %call, i64 104
  %6 = bitcast i8* %mnt_child to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %6) #23
  %mnt_mounts = getelementptr inbounds i8, i8* %call, i64 88
  %7 = bitcast i8* %mnt_mounts to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %7) #23
  %mnt_list = getelementptr inbounds i8, i8* %call, i64 144
  %8 = bitcast i8* %mnt_list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %8) #23
  %mnt_expire = getelementptr inbounds i8, i8* %call, i64 160
  %9 = bitcast i8* %mnt_expire to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %9) #23
  %mnt_share = getelementptr inbounds i8, i8* %call, i64 176
  %10 = bitcast i8* %mnt_share to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %10) #23
  %mnt_slave_list = getelementptr inbounds i8, i8* %call, i64 192
  %11 = bitcast i8* %mnt_slave_list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %11) #23
  %mnt_slave = getelementptr inbounds i8, i8* %call, i64 208
  %12 = bitcast i8* %mnt_slave to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %12) #23
  %13 = getelementptr inbounds i8, i8* %call, i64 248
  %mnt_mp_list = bitcast i8* %13 to %struct.hlist_node*
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %mnt_mp_list) #23
  %mnt_umounting = getelementptr inbounds i8, i8* %call, i64 264
  %14 = bitcast i8* %mnt_umounting to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %14) #23
  %mnt_stuck_children = getelementptr inbounds i8, i8* %call, i64 304
  %first = bitcast i8* %mnt_stuck_children to %struct.hlist_node**
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  %mnt_userns = getelementptr inbounds i8, i8* %call, i64 56
  %15 = bitcast i8* %mnt_userns to %struct.user_namespace**
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %15, align 8
  br label %cleanup30

out_free_devname:                                 ; preds = %if.end11
  %mnt_devname29 = getelementptr inbounds i8, i8* %call, i64 136
  %16 = bitcast i8* %mnt_devname29 to i8**
  %17 = load i8*, i8** %16, align 8
  call void @kfree_const(i8* noundef %17) #21
  br label %out_free_id

out_free_id:                                      ; preds = %if.then5, %out_free_devname
  call fastcc void @mnt_free_id(%struct.mount* noundef nonnull %1) #23
  br label %out_free_cache

out_free_cache:                                   ; preds = %if.then, %out_free_id
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** @mnt_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %18, i8* noundef nonnull %call) #21
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup.thread, %entry, %out_free_cache
  %retval.0 = phi %struct.mount* [ null, %out_free_cache ], [ %1, %entry ], [ %1, %cleanup.thread ]
  ret %struct.mount* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @dget(%struct.dentry* noundef returned %dentry) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  call void @lockref_get(%struct.lockref* noundef %d_lockref) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %dentry
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @fc_mount(%struct.fs_context* noundef %fc) local_unnamed_addr #1 {
entry:
  %call = call i32 @vfs_get_tree(%struct.fs_context* noundef %fc) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %0 = load %struct.dentry*, %struct.dentry** %root, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #21
  %call1 = call %struct.vfsmount* @vfs_create_mount(%struct.fs_context* noundef %fc) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %call to i64
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #23
  %2 = bitcast i8* %call2 to %struct.vfsmount*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.vfsmount* [ %2, %if.end ], [ %call1, %if.then ]
  ret %struct.vfsmount* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_get_tree(%struct.fs_context* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* noundef %type, i32 noundef %flags, i8* noundef %name, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.file_system_type* %type, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #23
  %0 = bitcast i8* %call to %struct.vfsmount*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call %struct.fs_context* @fs_context_for_mount(%struct.file_system_type* noundef nonnull %type, i32 noundef %flags) #21
  %1 = bitcast %struct.fs_context* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #23
  br i1 %call2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %2 = bitcast %struct.fs_context* %call1 to %struct.vfsmount*
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq i8* %name, null
  br i1 %tobool6.not, label %if.end14, label %if.end10

if.end10:                                         ; preds = %if.end5
  %call8 = call i64 @strlen(i8* noundef nonnull %name) #21
  %call9 = call i32 @vfs_parse_fs_string(%struct.fs_context* noundef %call1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %name, i64 noundef %call8) #21
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end14, label %if.else

if.end14:                                         ; preds = %if.end5, %if.end10
  %call13 = call i32 @parse_monolithic_mount_data(%struct.fs_context* noundef %call1, i8* noundef %data) #21
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %call17 = call %struct.vfsmount* @fc_mount(%struct.fs_context* noundef %call1) #23
  br label %if.end19

if.else:                                          ; preds = %if.end10, %if.end14
  %ret.139 = phi i32 [ %call13, %if.end14 ], [ %call9, %if.end10 ]
  %conv = sext i32 %ret.139 to i64
  %call18 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #23
  %3 = bitcast i8* %call18 to %struct.vfsmount*
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  %mnt.0 = phi %struct.vfsmount* [ %3, %if.else ], [ %call17, %if.then16 ]
  call void @put_fs_context(%struct.fs_context* noundef %call1) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then3, %if.then
  %retval.0 = phi %struct.vfsmount* [ %2, %if.then3 ], [ %mnt.0, %if.end19 ], [ %0, %if.then ]
  ret %struct.vfsmount* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fs_context* @fs_context_for_mount(%struct.file_system_type* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_string(%struct.fs_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parse_monolithic_mount_data(%struct.fs_context* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(%struct.fs_context* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @vfs_submount(%struct.dentry* nocapture noundef readonly %mountpoint, %struct.file_system_type* noundef %type, i8* noundef %name, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %mountpoint, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 46
  %1 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %cmp.not = icmp eq %struct.user_namespace* %1, @init_user_ns
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -1) #23
  %2 = bitcast i8* %call to %struct.vfsmount*
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* noundef %type, i32 noundef 67108864, i8* noundef %name, i8* noundef %data) #23
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.vfsmount* [ %2, %if.then ], [ %call1, %if.end ]
  ret %struct.vfsmount* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mntput_no_expire(%struct.mount* noundef %mnt) unnamed_addr #1 {
entry:
  %list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  call fastcc void @__rcu_read_lock() #21
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 16
  %1 = load volatile %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %tobool.not = icmp eq %struct.mnt_namespace* %1, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !26

if.then:                                          ; preds = %entry
  call fastcc void @mnt_add_count(%struct.mount* noundef %mnt, i32 noundef -1) #23
  call fastcc void @rcu_read_unlock() #23
  br label %cleanup123

if.end:                                           ; preds = %entry
  call fastcc void @lock_mount_hash() #23
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  call fastcc void @mnt_add_count(%struct.mount* noundef %mnt, i32 noundef -1) #23
  %call = call i32 @mnt_get_count(%struct.mount* noundef %mnt) #23
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end29, label %if.then4

if.then4:                                         ; preds = %if.end
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then19, label %if.end20, !prof !26

if.then19:                                        ; preds = %if.then4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namespace.c\22; .popsection; .long 14472b - 14470b; .short 1187; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !32
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then4
  call fastcc void @rcu_read_unlock() #23
  call fastcc void @unlock_mount_hash() #23
  br label %cleanup123

if.end29:                                         ; preds = %if.end
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %2 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %2, 16777216
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end40, label %if.then39, !prof !23

if.then39:                                        ; preds = %if.end29
  call fastcc void @rcu_read_unlock() #23
  call fastcc void @unlock_mount_hash() #23
  br label %cleanup123

if.end40:                                         ; preds = %if.end29
  %or = or i32 %2, 16777216
  store i32 %or, i32* %mnt_flags, align 8
  call fastcc void @rcu_read_unlock() #23
  %mnt_instance = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 8
  call fastcc void @list_del(%struct.list_head* noundef %mnt_instance) #23
  %mnt_mounts = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 6
  %call43 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_mounts) #23
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then54, label %if.end84, !prof !26

if.then54:                                        ; preds = %if.end40
  %3 = bitcast %struct.list_head* %mnt_mounts to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.list_head*
  %cmp71.not156 = icmp eq %struct.list_head* %mnt_mounts, %5
  br i1 %cmp71.not156, label %if.end84, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then54
  %mnt_stuck_children = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %.pn.in.in157 = phi i8* [ %4, %for.body.lr.ph ], [ %.pn, %for.body ]
  %p.0.in = getelementptr i8, i8* %.pn.in.in157, i64 -104
  %p.0 = bitcast i8* %p.0.in to %struct.mount*
  %.pn.in = bitcast i8* %.pn.in.in157 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  %call75 = call fastcc %struct.mountpoint* @unhash_mnt(%struct.mount* noundef %p.0) #23
  call fastcc void @__put_mountpoint(%struct.mountpoint* noundef %call75, %struct.list_head* noundef nonnull %list) #23
  %mnt_umount = getelementptr i8, i8* %.pn.in.in157, i64 144
  %6 = bitcast i8* %mnt_umount to %struct.hlist_node*
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %6, %struct.hlist_head* noundef %mnt_stuck_children) #23
  %7 = bitcast i8* %.pn to %struct.list_head*
  %cmp71.not = icmp eq %struct.list_head* %mnt_mounts, %7
  br i1 %cmp71.not, label %if.end84, label %for.body

if.end84:                                         ; preds = %for.body, %if.then54, %if.end40
  call fastcc void @unlock_mount_hash() #23
  call void @shrink_dentry_list(%struct.list_head* noundef nonnull %list) #21
  %8 = load i32, i32* %mnt_flags, align 8
  %and87 = and i32 %8, 16384
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.then98, label %if.end122, !prof !23

if.then98:                                        ; preds = %if.end84
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %10 = inttoptr i64 %9 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i64 0, i32 4
  %11 = load i32, i32* %flags, align 4
  %and100 = and i32 %11, 2097152
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.then111, label %if.end117, !prof !23

if.then111:                                       ; preds = %if.then98
  %mnt_rcu = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 4, i32 0
  call fastcc void @init_task_work(%struct.callback_head* noundef %mnt_rcu) #23
  %call113 = call i32 @task_work_add(%struct.task_struct* noundef %10, %struct.callback_head* noundef %mnt_rcu, i32 noundef 1) #21
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %cleanup123, label %if.end117

if.end117:                                        ; preds = %if.then111, %if.then98
  %12 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 4
  %mnt_llist = bitcast %union.anon.82* %12 to %struct.llist_node*
  %call118 = call fastcc i1 @llist_add(%struct.llist_node* noundef %mnt_llist) #23
  br i1 %call118, label %if.then119, label %cleanup123

if.then119:                                       ; preds = %if.end117
  call fastcc void @schedule_delayed_work() #23
  br label %cleanup123

if.end122:                                        ; preds = %if.end84
  call fastcc void @cleanup_mnt(%struct.mount* noundef %mnt) #23
  br label %cleanup123

cleanup123:                                       ; preds = %if.then111, %if.then119, %if.end117, %if.end122, %if.then39, %if.end20, %if.then
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @mntget(%struct.vfsmount* noundef readonly returned %mnt) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.vfsmount* %mnt, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef nonnull %mnt) #23
  call fastcc void @mnt_add_count(%struct.mount* noundef %call, i32 noundef 1) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.vfsmount* %mnt
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @path_is_mountpoint(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #1 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc i1 @d_mountpoint(%struct.dentry* noundef %0) #23
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #21
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end
  %call1 = call fastcc i32 @read_seqbegin() #23
  %call2 = call fastcc i1 @__path_is_mountpoint(%struct.path* noundef %path) #23
  %call3 = call fastcc i32 @read_seqretry(i32 noundef %call1) #23
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  call fastcc void @rcu_read_unlock() #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end
  %retval.0 = phi i1 [ %call2, %do.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_mountpoint(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 65536
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i1 @__path_is_mountpoint(%struct.path* nocapture noundef readonly %path) unnamed_addr #8 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef %0, %struct.dentry* noundef %1) #23
  %tobool.not = icmp eq %struct.mount* %call, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 2
  %2 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %2, 33554432
  %tobool2.not = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2.not, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @mnt_clone_internal(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #1 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call1 = call fastcc %struct.mount* @clone_mnt(%struct.mount* noundef %call, %struct.dentry* noundef %1, i32 noundef 16) #23
  %2 = bitcast %struct.mount* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %2) #23
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.mount* %call1 to %struct.vfsmount*
  br label %cleanup

if.end:                                           ; preds = %entry
  %mnt4 = getelementptr inbounds %struct.mount, %struct.mount* %call1, i64 0, i32 3
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call1, i64 0, i32 3, i32 2
  %4 = load i32, i32* %mnt_flags, align 8
  %or = or i32 %4, 16384
  store i32 %or, i32* %mnt_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.vfsmount* [ %3, %if.then ], [ %mnt4, %if.end ]
  ret %struct.vfsmount* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mount* @clone_mnt(%struct.mount* noundef %old, %struct.dentry* noundef %root, i32 noundef %flag) unnamed_addr #1 {
entry:
  %mnt = getelementptr inbounds %struct.mount, %struct.mount* %old, i64 0, i32 3
  %mnt_sb = getelementptr inbounds %struct.mount, %struct.mount* %old, i64 0, i32 3, i32 1
  %0 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %mnt_devname = getelementptr inbounds %struct.mount, %struct.mount* %old, i64 0, i32 9
  %1 = load i8*, i8** %mnt_devname, align 8
  %call = call fastcc %struct.mount* @alloc_vfsmnt(i8* noundef %1) #23
  %tobool.not = icmp eq %struct.mount* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -12) #23
  %2 = bitcast i8* %call2 to %struct.mount*
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flag, 50
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end7, label %if.end7.thread

if.end7:                                          ; preds = %if.end
  %mnt_group_id5 = getelementptr inbounds %struct.mount, %struct.mount* %old, i64 0, i32 21
  %3 = load i32, i32* %mnt_group_id5, align 4
  %4 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 21
  store i32 %3, i32* %4, align 4
  %and8 = and i32 %flag, 8
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end17, label %land.lhs.true

if.end7.thread:                                   ; preds = %if.end
  %5 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 21
  store i32 0, i32* %5, align 4
  %and8156 = and i32 %flag, 8
  %tobool9.not157 = icmp eq i32 %and8156, 0
  br i1 %tobool9.not157, label %if.end17, label %if.then12

land.lhs.true:                                    ; preds = %if.end7
  %tobool11.not = icmp eq i32 %3, 0
  br i1 %tobool11.not, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end7.thread, %land.lhs.true
  %call13 = call fastcc i32 @mnt_alloc_group_id(%struct.mount* noundef nonnull %call) #23
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %out_free

if.end17:                                         ; preds = %if.end7.thread, %if.then12, %land.lhs.true, %if.end7
  %tobool9.not159 = phi i1 [ true, %if.end7.thread ], [ false, %if.then12 ], [ false, %land.lhs.true ], [ true, %if.end7 ]
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %old, i64 0, i32 3, i32 2
  %6 = load i32, i32* %mnt_flags, align 8
  %mnt_flags20 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 2
  %and23 = and i32 %6, -67125761
  store i32 %and23, i32* %mnt_flags20, align 8
  %s_active = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 16
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %s_active) #21
  %call25 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) #23
  %mnt_userns = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 3
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %mnt_userns, align 8
  %mnt_sb37 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 1
  store %struct.super_block* %0, %struct.super_block** %mnt_sb37, align 8
  %call38 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %root) #23
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 0
  store %struct.dentry* %root, %struct.dentry** %mnt_root, align 8
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 2
  store %struct.dentry* %root, %struct.dentry** %mnt_mountpoint, align 8
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 1
  store %struct.mount* %call, %struct.mount** %mnt_parent, align 8
  call fastcc void @lock_mount_hash() #23
  %mnt_instance = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 8
  %s_mounts = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 19
  call fastcc void @list_add_tail(%struct.list_head* noundef %mnt_instance, %struct.list_head* noundef %s_mounts) #23
  call fastcc void @unlock_mount_hash() #23
  %and42 = and i32 %flag, 2
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %lor.lhs.false, label %if.then51

lor.lhs.false:                                    ; preds = %if.end17
  %and44 = and i32 %flag, 32
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else55, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %mnt_flags, align 8
  %and49 = and i32 %7, 4096
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else55, label %if.then51

if.then51:                                        ; preds = %land.lhs.true46, %if.end17
  %mnt_slave = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 14
  %mnt_slave_list = getelementptr inbounds %struct.mount, %struct.mount* %old, i64 0, i32 13
  call fastcc void @list_add(%struct.list_head* noundef %mnt_slave, %struct.list_head* noundef %mnt_slave_list) #23
  %mnt_master = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 15
  store %struct.mount* %old, %struct.mount** %mnt_master, align 8
  %8 = load i32, i32* %mnt_flags20, align 8
  %and54 = and i32 %8, -4097
  store i32 %and54, i32* %mnt_flags20, align 8
  br label %if.end82

if.else55:                                        ; preds = %land.lhs.true46, %lor.lhs.false
  %and56 = and i32 %flag, 16
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then58, label %if.else77

if.then58:                                        ; preds = %if.else55
  br i1 %tobool9.not159, label %lor.lhs.false61, label %if.then66

lor.lhs.false61:                                  ; preds = %if.then58
  %9 = load i32, i32* %mnt_flags, align 8
  %and64 = and i32 %9, 4096
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %lor.lhs.false61, %if.then58
  %mnt_share = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 12
  %mnt_share67 = getelementptr inbounds %struct.mount, %struct.mount* %old, i64 0, i32 12
  call fastcc void @list_add(%struct.list_head* noundef %mnt_share, %struct.list_head* noundef %mnt_share67) #23
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %lor.lhs.false61
  %mnt_master69 = getelementptr inbounds %struct.mount, %struct.mount* %old, i64 0, i32 15
  %10 = load %struct.mount*, %struct.mount** %mnt_master69, align 8
  %tobool70.not = icmp eq %struct.mount* %10, null
  br i1 %tobool70.not, label %if.end74, label %if.then71

if.then71:                                        ; preds = %if.end68
  %mnt_slave72 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 14
  %mnt_slave73 = getelementptr inbounds %struct.mount, %struct.mount* %old, i64 0, i32 14
  call fastcc void @list_add(%struct.list_head* noundef %mnt_slave72, %struct.list_head* noundef %mnt_slave73) #23
  %.pre = load %struct.mount*, %struct.mount** %mnt_master69, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end68
  %11 = phi %struct.mount* [ %.pre, %if.then71 ], [ null, %if.end68 ]
  %mnt_master76 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 15
  store %struct.mount* %11, %struct.mount** %mnt_master76, align 8
  br label %if.end82

if.else77:                                        ; preds = %if.else55
  %12 = load i32, i32* %mnt_flags20, align 8
  %and80 = and i32 %12, -4097
  store i32 %and80, i32* %mnt_flags20, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.end74, %if.else77, %if.then51
  br i1 %tobool9.not159, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.end82
  call fastcc void @set_mnt_shared(%struct.mount* noundef nonnull %call) #23
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end82
  %and87 = and i32 %flag, 1
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %cleanup, label %if.then89

if.then89:                                        ; preds = %if.end86
  %mnt_expire = getelementptr inbounds %struct.mount, %struct.mount* %old, i64 0, i32 11
  %call90 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_expire) #23
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then92, label %cleanup

if.then92:                                        ; preds = %if.then89
  %mnt_expire93 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 11
  call fastcc void @list_add(%struct.list_head* noundef %mnt_expire93, %struct.list_head* noundef %mnt_expire) #23
  br label %cleanup

out_free:                                         ; preds = %if.then12
  call fastcc void @mnt_free_id(%struct.mount* noundef nonnull %call) #23
  call fastcc void @free_vfsmnt(%struct.mount* noundef nonnull %call) #23
  %conv = sext i32 %call13 to i64
  %call97 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #23
  %13 = bitcast i8* %call97 to %struct.mount*
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.then92, %if.then89, %out_free, %if.then
  %retval.0 = phi %struct.mount* [ %13, %out_free ], [ %2, %if.then ], [ %call, %if.then89 ], [ %call, %if.then92 ], [ %call, %if.end86 ]
  ret %struct.mount* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @m_start(%struct.seq_file* nocapture noundef readonly %m, i64* nocapture noundef readonly %pos) #1 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_mounts**
  %1 = load %struct.proc_mounts*, %struct.proc_mounts** %0, align 8
  call void @down_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  %2 = load i64, i64* %pos, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ns = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %1, i64 0, i32 0
  %3 = load %struct.mnt_namespace*, %struct.mnt_namespace** %ns, align 8
  %list = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %3, i64 0, i32 2
  br label %if.end3

if.else:                                          ; preds = %entry
  %mnt_list = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %1, i64 0, i32 3, i32 10
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_list) #23
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.else.if.end3_crit_edge, label %cleanup

if.else.if.end3_crit_edge:                        ; preds = %if.else
  %ns4.phi.trans.insert = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %1, i64 0, i32 0
  %.pre = load %struct.mnt_namespace*, %struct.mnt_namespace** %ns4.phi.trans.insert, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else.if.end3_crit_edge, %if.then
  %4 = phi %struct.mnt_namespace* [ %.pre, %if.else.if.end3_crit_edge ], [ %3, %if.then ]
  %prev.0 = phi %struct.list_head* [ %mnt_list, %if.else.if.end3_crit_edge ], [ %list, %if.then ]
  %call5 = call fastcc %struct.mount* @mnt_list_next(%struct.mnt_namespace* noundef %4, %struct.list_head* noundef %prev.0) #23
  %5 = bitcast %struct.mount* %call5 to i8*
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end3
  %retval.0 = phi i8* [ %5, %if.end3 ], [ null, %if.else ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @m_stop(%struct.seq_file* nocapture noundef readonly %m, i8* noundef %v) #1 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_mounts**
  %1 = load %struct.proc_mounts*, %struct.proc_mounts** %0, align 8
  %ns = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %1, i64 0, i32 0
  %2 = load %struct.mnt_namespace*, %struct.mnt_namespace** %ns, align 8
  call fastcc void @lock_ns_list(%struct.mnt_namespace* noundef %2) #23
  %tobool.not = icmp eq i8* %v, null
  %mnt_list3 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %1, i64 0, i32 3, i32 10
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mnt_list1 = getelementptr inbounds i8, i8* %v, i64 144
  %3 = bitcast i8* %mnt_list1 to %struct.list_head*
  call fastcc void @list_move_tail(%struct.list_head* noundef %mnt_list3, %struct.list_head* noundef %3) #23
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @list_del_init(%struct.list_head* noundef %mnt_list3) #23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.mnt_namespace*, %struct.mnt_namespace** %ns, align 8
  call fastcc void @unlock_ns_list(%struct.mnt_namespace* noundef %4) #23
  call void @up_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @m_next(%struct.seq_file* nocapture noundef readonly %m, i8* nocapture noundef readonly %v, i64* nocapture noundef %pos) #1 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_mounts**
  %1 = load %struct.proc_mounts*, %struct.proc_mounts** %0, align 8
  %2 = load i64, i64* %pos, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %pos, align 8
  %ns = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %1, i64 0, i32 0
  %3 = load %struct.mnt_namespace*, %struct.mnt_namespace** %ns, align 8
  %mnt_list = getelementptr inbounds i8, i8* %v, i64 144
  %4 = bitcast i8* %mnt_list to %struct.list_head*
  %call = call fastcc %struct.mount* @mnt_list_next(%struct.mnt_namespace* noundef %3, %struct.list_head* noundef %4) #23
  %5 = bitcast %struct.mount* %call to i8*
  ret i8* %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @m_show(%struct.seq_file* noundef %m, i8* noundef %v) #1 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.proc_mounts**
  %1 = load %struct.proc_mounts*, %struct.proc_mounts** %0, align 8
  %show = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %1, i64 0, i32 2
  %2 = load i32 (%struct.seq_file*, %struct.vfsmount*)*, i32 (%struct.seq_file*, %struct.vfsmount*)** %show, align 8
  %mnt = getelementptr inbounds i8, i8* %v, i64 32
  %3 = bitcast i8* %mnt to %struct.vfsmount*
  %call = call i32 %2(%struct.seq_file* noundef %m, %struct.vfsmount* noundef %3) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mnt_cursor_del(%struct.mnt_namespace* noundef %ns, %struct.mount* nocapture noundef %cursor) local_unnamed_addr #1 {
entry:
  call void @down_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  call fastcc void @lock_ns_list(%struct.mnt_namespace* noundef %ns) #23
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %cursor, i64 0, i32 10
  call fastcc void @list_del(%struct.list_head* noundef %mnt_list) #23
  call fastcc void @unlock_ns_list(%struct.mnt_namespace* noundef %ns) #23
  call void @up_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #8 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #23
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @may_umount_tree(%struct.vfsmount* noundef readonly %m) local_unnamed_addr #1 {
entry:
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %m) #23
  %tobool.not = icmp eq %struct.vfsmount* %m, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !26

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namespace.c\22; .popsection; .long 14472b - 14470b; .short 1386; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !33
  unreachable

do.end9:                                          ; preds = %entry
  call fastcc void @lock_mount_hash() #23
  %tobool10.not30 = icmp eq %struct.mount* %call, null
  br i1 %tobool10.not30, label %for.end, label %for.body

for.body:                                         ; preds = %do.end9, %for.body
  %p.033 = phi %struct.mount* [ %call13, %for.body ], [ %call, %do.end9 ]
  %minimum_refs.032 = phi i32 [ %add12, %for.body ], [ 0, %do.end9 ]
  %actual_refs.031 = phi i32 [ %add, %for.body ], [ 0, %do.end9 ]
  %call11 = call i32 @mnt_get_count(%struct.mount* noundef nonnull %p.033) #23
  %add = add i32 %call11, %actual_refs.031
  %add12 = add i32 %minimum_refs.032, 2
  %call13 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %p.033, %struct.mount* noundef nonnull %call) #23
  %tobool10.not = icmp eq %struct.mount* %call13, null
  br i1 %tobool10.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %do.end9
  %actual_refs.0.lcssa = phi i32 [ 0, %do.end9 ], [ %add, %for.body ]
  %minimum_refs.0.lcssa = phi i32 [ 0, %do.end9 ], [ %add12, %for.body ]
  call fastcc void @unlock_mount_hash() #23
  %cmp = icmp sle i32 %actual_refs.0.lcssa, %minimum_refs.0.lcssa
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.mount* @next_mnt(%struct.mount* noundef readonly %p, %struct.mount* noundef readnone %root) unnamed_addr #9 {
entry:
  %mnt_mounts = getelementptr inbounds %struct.mount, %struct.mount* %p, i64 0, i32 6
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %mnt_mounts, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %cmp = icmp eq %struct.list_head* %0, %mnt_mounts
  br i1 %cmp, label %while.cond, label %if.end11

while.cond:                                       ; preds = %entry, %if.end
  %p.addr.0 = phi %struct.mount* [ %2, %if.end ], [ %p, %entry ]
  %cmp3 = icmp eq %struct.mount* %p.addr.0, %root
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %while.cond
  %next5 = getelementptr inbounds %struct.mount, %struct.mount* %p.addr.0, i64 0, i32 7, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next5, align 8
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %p.addr.0, i64 0, i32 1
  %2 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %mnt_mounts6 = getelementptr inbounds %struct.mount, %struct.mount* %2, i64 0, i32 6
  %cmp7.not = icmp eq %struct.list_head* %1, %mnt_mounts6
  br i1 %cmp7.not, label %while.cond, label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  %next.0 = phi %struct.list_head* [ %0, %entry ], [ %1, %if.end ]
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %next.0, i64 -7, i32 1
  %3 = bitcast %struct.list_head** %add.ptr to %struct.mount*
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.end11
  %retval.0 = phi %struct.mount* [ %3, %if.end11 ], [ null, %while.cond ]
  ret %struct.mount* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @may_umount(%struct.vfsmount* noundef %mnt) local_unnamed_addr #1 {
entry:
  call void @down_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  call fastcc void @lock_mount_hash() #23
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #23
  %call1 = call i32 @propagate_mount_busy(%struct.mount* noundef %call, i32 noundef 2) #21
  %tobool.not = icmp eq i32 %call1, 0
  %spec.select = zext i1 %tobool.not to i32
  call fastcc void @unlock_mount_hash() #23
  call void @up_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @propagate_mount_busy(%struct.mount* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__detach_mounts(%struct.dentry* noundef %dentry) local_unnamed_addr #1 {
entry:
  call fastcc void @namespace_lock() #23
  call fastcc void @lock_mount_hash() #23
  %call = call fastcc %struct.mountpoint* @lookup_mountpoint(%struct.dentry* noundef %dentry) #23
  %tobool.not = icmp eq %struct.mountpoint* %call, null
  br i1 %tobool.not, label %out_unlock, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i64, i64* @event, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* @event, align 8
  %m_list = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %call, i64 0, i32 2
  %call117 = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %m_list) #23
  %tobool2.not18 = icmp eq i32 %call117, 0
  br i1 %tobool2.not18, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %1 = bitcast %struct.hlist_head* %m_list to i8**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end7
  %2 = load i8*, i8** %1, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 -248
  %3 = bitcast i8* %add.ptr to %struct.mount*
  %mnt_flags = getelementptr i8, i8* %2, i64 -200
  %4 = bitcast i8* %mnt_flags to i32*
  %5 = load i32, i32* %4, align 8
  %and = and i32 %5, 134217728
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %while.body
  call fastcc void @umount_mnt(%struct.mount* noundef %3) #23
  %mnt_umount = bitcast i8* %2 to %struct.hlist_node*
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %mnt_umount, %struct.hlist_head* noundef nonnull @unmounted) #23
  br label %if.end7

if.else:                                          ; preds = %while.body
  call fastcc void @umount_tree(%struct.mount* noundef %3, i32 noundef 4) #23
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %call1 = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %m_list) #23
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end7, %if.end
  call fastcc void @put_mountpoint(%struct.mountpoint* noundef nonnull %call) #23
  br label %out_unlock

out_unlock:                                       ; preds = %entry, %while.end
  call fastcc void @unlock_mount_hash() #23
  call fastcc void @namespace_unlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @namespace_lock() unnamed_addr #1 {
entry:
  call void @down_write(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc %struct.mountpoint* @lookup_mountpoint(%struct.dentry* noundef readonly %dentry) unnamed_addr #10 {
entry:
  %call = call fastcc %struct.hlist_head* @mp_hash(%struct.dentry* noundef %dentry) #23
  %0 = bitcast %struct.hlist_head* %call to %struct.mountpoint**
  %mp.034 = load %struct.mountpoint*, %struct.mountpoint** %0, align 8
  %tobool2.not35 = icmp eq %struct.mountpoint* %mp.034, null
  br i1 %tobool2.not35, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %mp.036 = phi %struct.mountpoint* [ %mp.0, %for.inc ], [ %mp.034, %entry ]
  %m_dentry = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %mp.036, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %m_dentry, align 8
  %cmp = icmp eq %struct.dentry* %1, %dentry
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %m_count = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %mp.036, i64 0, i32 3
  %2 = load i32, i32* %m_count, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %m_count, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %3 = bitcast %struct.mountpoint* %mp.036 to %struct.mountpoint**
  %mp.0 = load %struct.mountpoint*, %struct.mountpoint** %3, align 8
  %tobool2.not = icmp eq %struct.mountpoint* %mp.0, null
  br i1 %tobool2.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %mp.033 = phi %struct.mountpoint* [ %mp.036, %if.then ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.mountpoint* %mp.033
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #11 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @umount_mnt(%struct.mount* noundef %mnt) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.mountpoint* @unhash_mnt(%struct.mount* noundef %mnt) #23
  call fastcc void @put_mountpoint(%struct.mountpoint* noundef %call) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @umount_tree(%struct.mount* noundef %mnt, i32 noundef %how) unnamed_addr #1 {
entry:
  %tmp_list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %tmp_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %tmp_list, i64 0, i32 0
  store %struct.list_head* %tmp_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %tmp_list, i64 0, i32 1
  store %struct.list_head* %tmp_list, %struct.list_head** %prev, align 8
  %and = and i32 %how, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @propagate_mount_unlock(%struct.mount* noundef %mnt) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not90 = icmp eq %struct.mount* %mnt, null
  br i1 %tobool1.not90, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %p.091 = phi %struct.mount* [ %call, %for.body ], [ %mnt, %if.end ]
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %p.091, i64 0, i32 3, i32 2
  %1 = load i32, i32* %mnt_flags, align 8
  %or = or i32 %1, 134217728
  store i32 %or, i32* %mnt_flags, align 8
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %p.091, i64 0, i32 10
  call fastcc void @list_move(%struct.list_head* noundef %mnt_list, %struct.list_head* noundef nonnull %tmp_list) #23
  %call = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %p.091, %struct.mount* noundef nonnull %mnt) #23
  %tobool1.not = icmp eq %struct.mount* %call, null
  br i1 %tobool1.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %2 = bitcast %struct.list_head* %tmp_list to i8**
  %.pn92 = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn92 to %struct.list_head*
  %cmp.not93 = icmp eq %struct.list_head* %tmp_list, %3
  br i1 %cmp.not93, label %for.end16, label %for.body6

for.body6:                                        ; preds = %for.end, %for.body6
  %.pn94 = phi i8* [ %.pn, %for.body6 ], [ %.pn92, %for.end ]
  %mnt_child = getelementptr i8, i8* %.pn94, i64 -40
  %4 = bitcast i8* %mnt_child to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %4) #23
  %5 = bitcast i8* %.pn94 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %tmp_list, %6
  br i1 %cmp.not, label %for.end16, label %for.body6

for.end16:                                        ; preds = %for.body6, %for.end
  br i1 %tobool.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %for.end16
  %call20 = call i32 @propagate_umount(%struct.list_head* noundef nonnull %tmp_list) #21
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.end16
  %call2295 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %tmp_list) #23
  %tobool23.not96 = icmp eq i32 %call2295, 0
  br i1 %tobool23.not96, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end21
  %and37 = and i32 %how, 1
  %tobool38.not = icmp eq i32 %and37, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end56
  %7 = load i8*, i8** %2, align 8
  %add.ptr31 = getelementptr i8, i8* %7, i64 -144
  %8 = bitcast i8* %add.ptr31 to %struct.mount*
  %mnt_expire = getelementptr i8, i8* %7, i64 16
  %9 = bitcast i8* %mnt_expire to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %9) #23
  %10 = bitcast i8* %7 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %10) #23
  %mnt_ns = getelementptr i8, i8* %7, i64 88
  %11 = bitcast i8* %mnt_ns to %struct.mnt_namespace**
  %12 = load %struct.mnt_namespace*, %struct.mnt_namespace** %11, align 8
  %tobool33.not = icmp eq %struct.mnt_namespace* %12, null
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %while.body
  %mounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %12, i64 0, i32 9
  %13 = load i32, i32* %mounts, align 8
  %dec = add i32 %13, -1
  store i32 %dec, i32* %mounts, align 8
  call fastcc void @__touch_mnt_namespace(%struct.mnt_namespace* noundef nonnull %12) #23
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %while.body
  store %struct.mnt_namespace* null, %struct.mnt_namespace** %11, align 8
  br i1 %tobool38.not, label %if.end43, label %if.then39

if.then39:                                        ; preds = %if.end35
  %mnt_flags41 = getelementptr i8, i8* %7, i64 -96
  %14 = bitcast i8* %mnt_flags41 to i32*
  %15 = load i32, i32* %14, align 8
  %or42 = or i32 %15, 33554432
  store i32 %or42, i32* %14, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end35
  %call44 = call fastcc i1 @disconnect_mount(%struct.mount* noundef %8, i32 noundef %how) #23
  %call45 = call fastcc i32 @mnt_has_parent(%struct.mount* noundef %8) #23
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end53, label %if.then47

if.then47:                                        ; preds = %if.end43
  %mnt_parent = getelementptr i8, i8* %7, i64 -128
  %16 = bitcast i8* %mnt_parent to %struct.mount**
  %17 = load %struct.mount*, %struct.mount** %16, align 8
  call fastcc void @mnt_add_count(%struct.mount* noundef %17, i32 noundef -1) #23
  br i1 %call44, label %if.end53.thread, label %if.end53.thread89

if.end53.thread89:                                ; preds = %if.then47
  %mnt_child50 = getelementptr i8, i8* %7, i64 -40
  %18 = bitcast i8* %mnt_child50 to %struct.list_head*
  %19 = load %struct.mount*, %struct.mount** %16, align 8
  %mnt_mounts = getelementptr inbounds %struct.mount, %struct.mount* %19, i64 0, i32 6
  call fastcc void @list_add_tail(%struct.list_head* noundef %18, %struct.list_head* noundef %mnt_mounts) #23
  call void @change_mnt_propagation(%struct.mount* noundef %8, i32 noundef 262144) #21
  br label %if.end56

if.end53.thread:                                  ; preds = %if.then47
  call fastcc void @umount_mnt(%struct.mount* noundef %8) #23
  call void @change_mnt_propagation(%struct.mount* noundef %8, i32 noundef 262144) #21
  br label %if.then55

if.end53:                                         ; preds = %if.end43
  call void @change_mnt_propagation(%struct.mount* noundef %8, i32 noundef 262144) #21
  br i1 %call44, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end53.thread, %if.end53
  %20 = getelementptr i8, i8* %7, i64 104
  %mnt_umount = bitcast i8* %20 to %struct.hlist_node*
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %mnt_umount, %struct.hlist_head* noundef nonnull @unmounted) #23
  br label %if.end56

if.end56:                                         ; preds = %if.end53.thread89, %if.then55, %if.end53
  %call22 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %tmp_list) #23
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end56, %if.end21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @namespace_unlock() unnamed_addr #1 {
entry:
  %head = alloca %struct.hlist_head, align 8
  %list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.hlist_head* %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  %1 = bitcast %struct.hlist_head* %head to i64*, !annotation !34
  store i64 0, i64* %1, align 8, !annotation !34
  %2 = bitcast %struct.list_head* %list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #24
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  call fastcc void @hlist_move_list(%struct.hlist_head* noundef nonnull %head) #23
  call fastcc void @list_splice_init(%struct.list_head* noundef nonnull %list) #23
  call void @up_write(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  call void @shrink_dentry_list(%struct.list_head* noundef nonnull %list) #21
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef nonnull %head) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !26

if.end:                                           ; preds = %entry
  call void @synchronize_rcu_expedited() #21
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %head, i64 0, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool3.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -16, i32 1
  %tobool5.not4042 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool5.not40 = or i1 %tobool3.not, %tobool5.not4042
  br i1 %tobool5.not40, label %cleanup, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end
  %4 = bitcast %struct.hlist_node*** %add.ptr to %struct.mount*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.rhs
  %m.041 = phi %struct.mount* [ %spec.select39, %land.rhs ], [ %4, %land.rhs.preheader ]
  %mnt_umount = getelementptr inbounds %struct.mount, %struct.mount* %m.041, i64 0, i32 18, i32 0
  %next6 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %mnt_umount, i64 0, i32 0
  %5 = load %struct.hlist_node*, %struct.hlist_node** %next6, align 8
  call fastcc void @hlist_del(%struct.hlist_node* noundef %mnt_umount) #23
  %mnt = getelementptr inbounds %struct.mount, %struct.mount* %m.041, i64 0, i32 3
  call void @mntput(%struct.vfsmount* noundef %mnt) #23
  %tobool12.not = icmp eq %struct.hlist_node* %5, null
  %add.ptr19 = getelementptr %struct.hlist_node, %struct.hlist_node* %5, i64 -16, i32 1
  %6 = bitcast %struct.hlist_node*** %add.ptr19 to %struct.mount*
  %spec.select39 = select i1 %tobool12.not, %struct.mount* null, %struct.mount* %6
  %tobool5.not = icmp eq %struct.mount* %spec.select39, null
  br i1 %tobool5.not, label %cleanup, label %land.rhs

cleanup:                                          ; preds = %land.rhs, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @path_umount(%struct.path* nocapture noundef readonly %path, i32 noundef %flags) local_unnamed_addr #1 {
entry:
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %call2 = call fastcc i32 @can_umount(%struct.path* noundef %path, i32 noundef %flags) #23
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call fastcc i32 @do_umount(%struct.mount* noundef %call, i32 noundef %flags) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call2, %entry ], [ %call3, %if.then ]
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call void @dput(%struct.dentry* noundef %1) #21
  call fastcc void @mntput_no_expire(%struct.mount* noundef %call) #23
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @can_umount(%struct.path* nocapture noundef readonly %path, i32 noundef %flags) unnamed_addr #1 {
entry:
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %call2 = call fastcc i1 @may_mount() #23
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %2, i64 0, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp.not = icmp eq %struct.dentry* %1, %3
  br i1 %cmp.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @check_mnt(%struct.mount* noundef %call) #23
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 2
  %4 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %4, 8388608
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end8
  %and13 = and i32 %flags, 1
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %call15 = call i1 @capable(i32 noundef 21) #21
  br i1 %call15, label %if.end17, label %cleanup

if.end17:                                         ; preds = %land.lhs.true, %if.end12
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end8, %if.end5, %if.end, %entry, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -1, %entry ], [ -22, %if.end ], [ -22, %if.end5 ], [ -22, %if.end8 ], [ -1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_umount(%struct.mount* noundef %mnt, i32 noundef %flags) unnamed_addr #1 {
entry:
  %mnt1 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3
  %mnt_sb = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 1
  %0 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %and = and i32 %flags, 4
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end22, label %if.then5

if.then5:                                         ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 83
  %3 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %mnt8 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %3, i64 0, i32 5, i32 0
  %4 = load %struct.vfsmount*, %struct.vfsmount** %mnt8, align 8
  %cmp = icmp ne %struct.vfsmount* %mnt1, %4
  %and9 = and i32 %flags, 3
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond = and i1 %tobool10.not, %cmp
  br i1 %or.cond, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.then5
  call fastcc void @lock_mount_hash() #23
  %call13 = call i32 @mnt_get_count(%struct.mount* noundef %mnt) #23
  %cmp14.not = icmp eq i32 %call13, 2
  call fastcc void @unlock_mount_hash() #23
  br i1 %cmp14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end12
  %mnt_expiry_mark = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 22
  %5 = bitcast i32* %mnt_expiry_mark to i8*
  %call8.i = call fastcc i32 @__xchg_case_mb_32(i32 noundef 1, i8* noundef %5) #21
  %tobool19.not = icmp eq i32 %call8.i, 0
  br i1 %tobool19.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end16, %entry
  %and23 = and i32 %flags, 1
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end22
  %s_op = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 6
  %6 = load %struct.super_operations*, %struct.super_operations** %s_op, align 16
  %umount_begin = getelementptr inbounds %struct.super_operations, %struct.super_operations* %6, i64 0, i32 15
  %7 = load void (%struct.super_block*)*, void (%struct.super_block*)** %umount_begin, align 8
  %tobool25.not = icmp eq void (%struct.super_block*)* %7, null
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  call void %7(%struct.super_block* noundef %0) #21
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true, %if.end22
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %fs32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i64 0, i32 83
  %10 = load %struct.fs_struct*, %struct.fs_struct** %fs32, align 8
  %mnt34 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %10, i64 0, i32 5, i32 0
  %11 = load %struct.vfsmount*, %struct.vfsmount** %mnt34, align 8
  %cmp35 = icmp eq %struct.vfsmount* %mnt1, %11
  %and38 = and i32 %flags, 2
  %tobool39.not = icmp eq i32 %and38, 0
  %or.cond97 = and i1 %tobool39.not, %cmp35
  br i1 %or.cond97, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end29
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 46
  %12 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %call41 = call i1 @ns_capable(%struct.user_namespace* noundef %12, i32 noundef 21) #21
  br i1 %call41, label %if.end43, label %cleanup

if.end43:                                         ; preds = %if.then40
  %call44 = call fastcc i32 @do_umount_root(%struct.super_block* noundef %0) #23
  br label %cleanup

if.end45:                                         ; preds = %if.end29
  call fastcc void @namespace_lock() #23
  call fastcc void @lock_mount_hash() #23
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %13 = load i32, i32* %mnt_flags, align 8
  %and47 = and i32 %13, 8388608
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end50, label %out

if.end50:                                         ; preds = %if.end45
  %14 = load i64, i64* @event, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* @event, align 8
  br i1 %tobool39.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end50
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 10
  %call54 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_list) #23
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %out.sink.split, label %out

if.else:                                          ; preds = %if.end50
  call fastcc void @shrink_submounts(%struct.mount* noundef %mnt) #23
  %call58 = call i32 @propagate_mount_busy(%struct.mount* noundef %mnt, i32 noundef 2) #21
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %out

if.then60:                                        ; preds = %if.else
  %mnt_list61 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 10
  %call62 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_list61) #23
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %out.sink.split, label %out

out.sink.split:                                   ; preds = %if.then60, %if.then53
  %.sink = phi i32 [ 2, %if.then53 ], [ 3, %if.then60 ]
  call fastcc void @umount_tree(%struct.mount* noundef %mnt, i32 noundef %.sink) #23
  br label %out

out:                                              ; preds = %out.sink.split, %if.then60, %if.then53, %if.else, %if.end45
  %retval2.0 = phi i32 [ -22, %if.end45 ], [ -16, %if.else ], [ 0, %if.then53 ], [ 0, %if.then60 ], [ 0, %out.sink.split ]
  call fastcc void @unlock_mount_hash() #23
  call fastcc void @namespace_unlock() #23
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then40, %if.end16, %if.then5, %out, %if.end43
  %retval.0 = phi i32 [ %retval2.0, %out ], [ %call44, %if.end43 ], [ -22, %if.then5 ], [ -11, %if.end16 ], [ -1, %if.then40 ], [ -16, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_umount(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_umount(i64 noundef %0, i64 noundef %1) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_umount(i64 noundef %name, i64 noundef %flags) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %name to i8*
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_umount(i8* noundef %0, i32 noundef %conv) #23
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local %struct.ns_common* @from_mnt_ns(%struct.mnt_namespace* noundef readnone %mnt) local_unnamed_addr #7 {
entry:
  %ns = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %mnt, i64 0, i32 0
  ret %struct.ns_common* %ns
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.mount* @copy_tree(%struct.mount* noundef %mnt, %struct.dentry* noundef %dentry, i32 noundef %flag) local_unnamed_addr #1 {
entry:
  %and = and i32 %flag, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and2 = and i32 %0, 8192
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #23
  %1 = bitcast i8* %call to %struct.mount*
  br label %cleanup72

if.end:                                           ; preds = %land.lhs.true, %entry
  %and4 = and i32 %flag, 64
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %if.end10

land.lhs.true6:                                   ; preds = %if.end
  %call7 = call fastcc i1 @is_mnt_ns_file(%struct.dentry* noundef %dentry) #23
  br i1 %call7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true6
  %call9 = call fastcc i8* @ERR_PTR(i64 noundef -22) #23
  %2 = bitcast i8* %call9 to %struct.mount*
  br label %cleanup72

if.end10:                                         ; preds = %land.lhs.true6, %if.end
  %call11 = call fastcc %struct.mount* @clone_mnt(%struct.mount* noundef %mnt, %struct.dentry* noundef %dentry, i32 noundef %flag) #23
  %3 = bitcast %struct.mount* %call11 to i8*
  %call12 = call fastcc i1 @IS_ERR(i8* noundef %3) #23
  br i1 %call12, label %cleanup72, label %if.end14

if.end14:                                         ; preds = %if.end10
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 2
  %4 = load %struct.dentry*, %struct.dentry** %mnt_mountpoint, align 8
  %mnt_mountpoint15 = getelementptr inbounds %struct.mount, %struct.mount* %call11, i64 0, i32 2
  store %struct.dentry* %4, %struct.dentry** %mnt_mountpoint15, align 8
  %mnt_mounts = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 6
  %5 = bitcast %struct.list_head* %mnt_mounts to i8**
  %.pn142 = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn142 to %struct.list_head*
  %cmp.not145 = icmp eq %struct.list_head* %mnt_mounts, %6
  br i1 %cmp.not145, label %cleanup72, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end14
  %mnt_list57 = getelementptr inbounds %struct.mount, %struct.mount* %call11, i64 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc59
  %.pn148 = phi i8* [ %.pn142, %for.body.lr.ph ], [ %.pn, %for.inc59 ]
  %p.0147 = phi %struct.mount* [ %mnt, %for.body.lr.ph ], [ %p.4.ph, %for.inc59 ]
  %q.0146 = phi %struct.mount* [ %call11, %for.body.lr.ph ], [ %q.4.ph, %for.inc59 ]
  %r.0149.in = getelementptr i8, i8* %.pn148, i64 -104
  %r.0149 = bitcast i8* %r.0149.in to %struct.mount*
  %mnt_mountpoint17 = getelementptr i8, i8* %.pn148, i64 -80
  %7 = bitcast i8* %mnt_mountpoint17 to %struct.dentry**
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  %call18 = call i1 @is_subdir(%struct.dentry* noundef %8, %struct.dentry* noundef %dentry) #21
  %call18.not = xor i1 %call18, true
  %tobool22.not136 = icmp eq i8* %r.0149.in, null
  %or.cond = select i1 %call18.not, i1 true, i1 %tobool22.not136
  br i1 %or.cond, label %for.inc59, label %for.body23

for.body23:                                       ; preds = %for.body, %for.inc
  %s.0139 = phi %struct.mount* [ %call58, %for.inc ], [ %r.0149, %for.body ]
  %p.1138 = phi %struct.mount* [ %p.3, %for.inc ], [ %p.0147, %for.body ]
  %q.1137 = phi %struct.mount* [ %q.3, %for.inc ], [ %q.0146, %for.body ]
  br i1 %tobool.not, label %land.lhs.true26, label %if.end39

land.lhs.true26:                                  ; preds = %for.body23
  %mnt_flags28 = getelementptr inbounds %struct.mount, %struct.mount* %s.0139, i64 0, i32 3, i32 2
  %9 = load i32, i32* %mnt_flags28, align 8
  %and29 = and i32 %9, 8192
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end39, label %if.then31

if.then31:                                        ; preds = %land.lhs.true26
  %and34 = and i32 %9, 8388608
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.then31
  %call37 = call fastcc i8* @ERR_PTR(i64 noundef -1) #23
  %10 = bitcast i8* %call37 to %struct.mount*
  br label %out

if.else:                                          ; preds = %if.then31
  %call38 = call fastcc %struct.mount* @skip_mnt_tree(%struct.mount* noundef nonnull %s.0139) #23
  br label %for.inc

if.end39:                                         ; preds = %land.lhs.true26, %for.body23
  br i1 %tobool5.not, label %land.lhs.true42, label %if.end47

land.lhs.true42:                                  ; preds = %if.end39
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %s.0139, i64 0, i32 3, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call44 = call fastcc i1 @is_mnt_ns_file(%struct.dentry* noundef %11) #23
  br i1 %call44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %land.lhs.true42
  %call46 = call fastcc %struct.mount* @skip_mnt_tree(%struct.mount* noundef nonnull %s.0139) #23
  br label %for.inc

if.end47:                                         ; preds = %land.lhs.true42, %if.end39
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %s.0139, i64 0, i32 1
  %12 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %cmp48.not133 = icmp eq %struct.mount* %p.1138, %12
  br i1 %cmp48.not133, label %while.end, label %while.body

while.body:                                       ; preds = %if.end47, %while.body
  %p.2135 = phi %struct.mount* [ %13, %while.body ], [ %p.1138, %if.end47 ]
  %q.2134 = phi %struct.mount* [ %14, %while.body ], [ %q.1137, %if.end47 ]
  %mnt_parent49 = getelementptr inbounds %struct.mount, %struct.mount* %p.2135, i64 0, i32 1
  %13 = load %struct.mount*, %struct.mount** %mnt_parent49, align 8
  %mnt_parent50 = getelementptr inbounds %struct.mount, %struct.mount* %q.2134, i64 0, i32 1
  %14 = load %struct.mount*, %struct.mount** %mnt_parent50, align 8
  %cmp48.not = icmp eq %struct.mount* %13, %12
  br i1 %cmp48.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end47
  %q.2.lcssa = phi %struct.mount* [ %q.1137, %if.end47 ], [ %14, %while.body ]
  %mnt_root52 = getelementptr inbounds %struct.mount, %struct.mount* %s.0139, i64 0, i32 3, i32 0
  %15 = load %struct.dentry*, %struct.dentry** %mnt_root52, align 8
  %call53 = call fastcc %struct.mount* @clone_mnt(%struct.mount* noundef nonnull %s.0139, %struct.dentry* noundef %15, i32 noundef %flag) #23
  %16 = bitcast %struct.mount* %call53 to i8*
  %call54 = call fastcc i1 @IS_ERR(i8* noundef %16) #23
  br i1 %call54, label %out, label %if.end56

if.end56:                                         ; preds = %while.end
  call fastcc void @lock_mount_hash() #23
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %call53, i64 0, i32 10
  call fastcc void @list_add_tail(%struct.list_head* noundef %mnt_list, %struct.list_head* noundef %mnt_list57) #23
  %mnt_mp = getelementptr inbounds %struct.mount, %struct.mount* %s.0139, i64 0, i32 17
  %17 = load %struct.mountpoint*, %struct.mountpoint** %mnt_mp, align 8
  call fastcc void @attach_mnt(%struct.mount* noundef %call53, %struct.mount* noundef %q.2.lcssa, %struct.mountpoint* noundef %17) #23
  call fastcc void @unlock_mount_hash() #23
  br label %for.inc

for.inc:                                          ; preds = %if.end56, %if.then45, %if.else
  %q.3 = phi %struct.mount* [ %call53, %if.end56 ], [ %q.1137, %if.then45 ], [ %q.1137, %if.else ]
  %p.3 = phi %struct.mount* [ %s.0139, %if.end56 ], [ %p.1138, %if.then45 ], [ %p.1138, %if.else ]
  %s.1 = phi %struct.mount* [ %s.0139, %if.end56 ], [ %call46, %if.then45 ], [ %call38, %if.else ]
  %call58 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef %s.1, %struct.mount* noundef %r.0149) #23
  %tobool22.not = icmp eq %struct.mount* %call58, null
  br i1 %tobool22.not, label %for.inc59, label %for.body23

for.inc59:                                        ; preds = %for.inc, %for.body
  %q.4.ph = phi %struct.mount* [ %q.0146, %for.body ], [ %q.3, %for.inc ]
  %p.4.ph = phi %struct.mount* [ %p.0147, %for.body ], [ %p.3, %for.inc ]
  %18 = bitcast i8* %.pn148 to i8**
  %.pn = load i8*, i8** %18, align 8
  %19 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %mnt_mounts, %19
  br i1 %cmp.not, label %cleanup72, label %for.body

out:                                              ; preds = %while.end, %if.then36
  %q.4 = phi %struct.mount* [ %10, %if.then36 ], [ %call53, %while.end ]
  %tobool69.not = icmp eq %struct.mount* %call11, null
  br i1 %tobool69.not, label %cleanup72, label %if.then70

if.then70:                                        ; preds = %out
  call fastcc void @lock_mount_hash() #23
  call fastcc void @umount_tree(%struct.mount* noundef nonnull %call11, i32 noundef 1) #23
  call fastcc void @unlock_mount_hash() #23
  br label %cleanup72

cleanup72:                                        ; preds = %for.inc59, %if.end14, %out, %if.then70, %if.end10, %if.then8, %if.then
  %retval.0 = phi %struct.mount* [ %2, %if.then8 ], [ %1, %if.then ], [ %call11, %if.end10 ], [ %q.4, %if.then70 ], [ %q.4, %out ], [ %call11, %if.end14 ], [ %call11, %for.inc59 ]
  ret %struct.mount* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_mnt_ns_file(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 8
  %0 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %cmp = icmp eq %struct.dentry_operations* %0, @ns_dentry_operations
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %d_fsdata = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 11
  %1 = load i8*, i8** %d_fsdata, align 8
  %cmp1 = icmp eq i8* %1, bitcast (%struct.proc_ns_operations* @mntns_operations to i8*)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_subdir(%struct.dentry* noundef, %struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.mount* @skip_mnt_tree(%struct.mount* noundef readonly %p) unnamed_addr #9 {
entry:
  %prev1 = getelementptr inbounds %struct.mount, %struct.mount* %p, i64 0, i32 6, i32 1
  %prev.011 = load %struct.list_head*, %struct.list_head** %prev1, align 8
  %mnt_mounts212 = getelementptr inbounds %struct.mount, %struct.mount* %p, i64 0, i32 6
  %cmp.not13 = icmp eq %struct.list_head* %prev.011, %mnt_mounts212
  br i1 %cmp.not13, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %prev.014 = phi %struct.list_head* [ %prev.0, %while.body ], [ %prev.011, %entry ]
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %prev.014, i64 -7, i32 1
  %0 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 12
  %prev.0 = load %struct.list_head*, %struct.list_head** %0, align 8
  %mnt_mounts2 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 11
  %1 = bitcast %struct.list_head** %mnt_mounts2 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %prev.0, %1
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %2 = bitcast %struct.list_head** %add.ptr to %struct.mount*
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %p.addr.0.lcssa = phi %struct.mount* [ %2, %while.cond.while.end_crit_edge ], [ %p, %entry ]
  ret %struct.mount* %p.addr.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @collect_mounts(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #1 {
entry:
  call fastcc void @namespace_lock() #23
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %call1 = call fastcc i32 @check_mnt(%struct.mount* noundef %call) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -22) #23
  %1 = bitcast i8* %call2 to %struct.mount*
  br label %if.end

if.else:                                          ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call5 = call %struct.mount* @copy_tree(%struct.mount* noundef %call, %struct.dentry* noundef %2, i32 noundef 84) #23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tree.0 = phi %struct.mount* [ %call5, %if.else ], [ %1, %if.then ]
  call fastcc void @namespace_unlock() #23
  %3 = bitcast %struct.mount* %tree.0 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %3) #23
  %4 = bitcast %struct.mount* %tree.0 to %struct.vfsmount*
  %mnt10 = getelementptr inbounds %struct.mount, %struct.mount* %tree.0, i64 0, i32 3
  %retval.0 = select i1 %call6, %struct.vfsmount* %4, %struct.vfsmount* %mnt10
  ret %struct.vfsmount* %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @check_mnt(%struct.mount* nocapture noundef readonly %mnt) unnamed_addr #3 {
entry:
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 16
  %0 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 86
  %3 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns1 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %3, i64 0, i32 3
  %4 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns1, align 8
  %cmp = icmp eq %struct.mnt_namespace* %0, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dissolve_on_fput(%struct.vfsmount* noundef %mnt) local_unnamed_addr #1 {
entry:
  call fastcc void @namespace_lock() #23
  call fastcc void @lock_mount_hash() #23
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #23
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 16
  %0 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %tobool.not = icmp eq %struct.mnt_namespace* %0, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef nonnull %0) #23
  br i1 %call1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.then
  call fastcc void @umount_tree(%struct.mount* noundef %call, i32 noundef 4) #23
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then2, %entry
  %ns.0 = phi %struct.mnt_namespace* [ %0, %if.then2 ], [ null, %entry ], [ null, %if.then ]
  call fastcc void @unlock_mount_hash() #23
  call fastcc void @namespace_unlock() #23
  %tobool5.not = icmp eq %struct.mnt_namespace* %ns.0, null
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call fastcc void @free_mnt_ns(%struct.mnt_namespace* noundef nonnull %ns.0) #23
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_anon_ns(%struct.mnt_namespace* nocapture noundef readonly %ns) unnamed_addr #6 {
entry:
  %seq = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 6
  %0 = load i64, i64* %seq, align 8
  %cmp = icmp eq i64 %0, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_mnt_ns(%struct.mnt_namespace* noundef %ns) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef %ns) #23
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %inum = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 0, i32 2
  %0 = load i32, i32* %inum, align 8
  call void @proc_free_inum(i32 noundef %0) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ucounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 5
  %1 = load %struct.ucounts*, %struct.ucounts** %ucounts, align 8
  call fastcc void @dec_mnt_namespaces(%struct.ucounts* noundef %1) #23
  %2 = bitcast %struct.mnt_namespace* %ns to i8*
  call void @kfree(i8* noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @drop_collected_mounts(%struct.vfsmount* noundef %mnt) local_unnamed_addr #1 {
entry:
  call fastcc void @namespace_lock() #23
  call fastcc void @lock_mount_hash() #23
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #23
  call fastcc void @umount_tree(%struct.mount* noundef %call, i32 noundef 0) #23
  call fastcc void @unlock_mount_hash() #23
  call fastcc void @namespace_unlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @clone_private_mount(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #1 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  call void @down_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 2
  %1 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %1, 8192
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %invalid

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @check_mnt(%struct.mount* noundef %call) #23
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %invalid, label %if.end5

if.end5:                                          ; preds = %if.end
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call6 = call fastcc i1 @has_locked_children(%struct.mount* noundef %call, %struct.dentry* noundef %2) #23
  br i1 %call6, label %invalid, label %if.end8

if.end8:                                          ; preds = %if.end5
  %3 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call10 = call fastcc %struct.mount* @clone_mnt(%struct.mount* noundef %call, %struct.dentry* noundef %3, i32 noundef 16) #23
  call void @up_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  %4 = bitcast %struct.mount* %call10 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %4) #23
  br i1 %call11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %5 = bitcast %struct.mount* %call10 to %struct.vfsmount*
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %call15 = call fastcc i8* @ERR_PTR(i64 noundef -22) #23
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call10, i64 0, i32 16
  %6 = bitcast %struct.mnt_namespace** %mnt_ns to i8**
  store i8* %call15, i8** %6, align 8
  %mnt16 = getelementptr inbounds %struct.mount, %struct.mount* %call10, i64 0, i32 3
  br label %cleanup

invalid:                                          ; preds = %if.end5, %if.end, %entry
  call void @up_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  %call17 = call fastcc i8* @ERR_PTR(i64 noundef -22) #23
  %7 = bitcast i8* %call17 to %struct.vfsmount*
  br label %cleanup

cleanup:                                          ; preds = %invalid, %if.end14, %if.then12
  %retval.0 = phi %struct.vfsmount* [ %7, %invalid ], [ %5, %if.then12 ], [ %mnt16, %if.end14 ]
  ret %struct.vfsmount* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @has_locked_children(%struct.mount* noundef readonly %mnt, %struct.dentry* noundef %dentry) unnamed_addr #1 {
entry:
  %mnt_mounts = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 6
  %0 = bitcast %struct.list_head* %mnt_mounts to i8**
  %.pn20 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn20 to %struct.list_head*
  %cmp.not21 = icmp eq %struct.list_head* %mnt_mounts, %1
  br i1 %cmp.not21, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn22 = phi i8* [ %.pn, %for.inc ], [ %.pn20, %entry ]
  %mnt_mountpoint = getelementptr i8, i8* %.pn22, i64 -80
  %2 = bitcast i8* %mnt_mountpoint to %struct.dentry**
  %3 = load %struct.dentry*, %struct.dentry** %2, align 8
  %call = call i1 @is_subdir(%struct.dentry* noundef %3, %struct.dentry* noundef %dentry) #21
  br i1 %call, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %mnt_flags = getelementptr i8, i8* %.pn22, i64 -56
  %4 = bitcast i8* %mnt_flags to i32*
  %5 = load i32, i32* %4, align 8
  %and = and i32 %5, 8388608
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end, %for.body
  %6 = bitcast i8* %.pn22 to i8**
  %.pn = load i8*, i8** %6, align 8
  %7 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %mnt_mounts, %7
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end, %for.inc, %entry
  %cmp.not.lcssa = phi i1 [ false, %entry ], [ false, %for.inc ], [ true, %if.end ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @iterate_mounts(i32 (%struct.vfsmount*, i8*)* nocapture noundef readonly %f, i8* noundef %arg, %struct.vfsmount* noundef %root) local_unnamed_addr #1 {
entry:
  %call = call i32 %f(%struct.vfsmount* noundef %root, i8* noundef %arg) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %root) #23
  %next = getelementptr inbounds %struct.mount, %struct.mount* %call1, i64 0, i32 10, i32 0
  %0 = bitcast %struct.list_head** %next to i8**
  %mnt_list4 = getelementptr inbounds %struct.mount, %struct.mount* %call1, i64 0, i32 10
  %.pn32 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn32 to %struct.list_head*
  %cmp.not33 = icmp eq %struct.list_head* %mnt_list4, %1
  br i1 %cmp.not33, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn34 = phi i8* [ %.pn, %for.inc ], [ %.pn32, %if.end ]
  %mnt5 = getelementptr i8, i8* %.pn34, i64 -112
  %2 = bitcast i8* %mnt5 to %struct.vfsmount*
  %call6 = call i32 %f(%struct.vfsmount* noundef %2, i8* noundef %arg) #21
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %3 = bitcast i8* %.pn34 to i8**
  %.pn = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %mnt_list4, %4
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.end ], [ %call6, %for.body ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i32 @count_mounts(%struct.mnt_namespace* nocapture noundef %ns, %struct.mount* noundef readonly %mnt) local_unnamed_addr #8 {
entry:
  %0 = load volatile i32, i32* @sysctl_mount_max, align 4
  %tobool.not36 = icmp eq %struct.mount* %mnt, null
  br i1 %tobool.not36, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %p.038 = phi %struct.mount* [ %call, %for.body ], [ %mnt, %entry ]
  %mounts.037 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %inc = add i32 %mounts.037, 1
  %call = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %p.038, %struct.mount* noundef nonnull %mnt) #23
  %tobool.not = icmp eq %struct.mount* %call, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %mounts.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %mounts1 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 9
  %1 = load i32, i32* %mounts1, align 8
  %pending_mounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 10
  %2 = load i32, i32* %pending_mounts, align 4
  %add = add i32 %2, %1
  %cmp = icmp ugt i32 %1, %add
  %cmp2 = icmp ugt i32 %2, %add
  %or.cond = or i1 %cmp, %cmp2
  %cmp4 = icmp ult i32 %0, %add
  %or.cond34 = select i1 %or.cond, i1 true, i1 %cmp4
  %sub = sub i32 %0, %add
  %cmp6 = icmp ugt i32 %mounts.0.lcssa, %sub
  %or.cond35 = select i1 %or.cond34, i1 true, i1 %cmp6
  br i1 %or.cond35, label %cleanup, label %if.end

if.end:                                           ; preds = %for.end
  %add7 = add i32 %2, %mounts.0.lcssa
  store i32 %add7, i32* %pending_mounts, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -28, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_open_tree(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_open_tree(i64 noundef %0, i64 noundef %1, i64 noundef %2) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_open_tree(i64 noundef %dfd, i64 noundef %filename, i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_open_tree(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @finish_automount(%struct.vfsmount* noundef %m, %struct.path* nocapture noundef readonly %path) local_unnamed_addr #1 {
entry:
  %dentry1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %tobool.not = icmp eq %struct.vfsmount* %m, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.vfsmount* %m to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef nonnull %1) #23
  br i1 %call, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef nonnull %1) #23
  %conv = trunc i64 %call3 to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef nonnull %m) #23
  %call6 = call i32 @mnt_get_count(%struct.mount* noundef %call5) #23
  %cmp = icmp slt i32 %call6, 2
  br i1 %cmp, label %do.body12, label %do.end18, !prof !26

do.body12:                                        ; preds = %if.end4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namespace.c\22; .popsection; .long 14472b - 14470b; .short 3012; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !35
  unreachable

do.end18:                                         ; preds = %if.end4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %m, i64 0, i32 1
  %2 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %mnt19 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %3 = load %struct.vfsmount*, %struct.vfsmount** %mnt19, align 8
  %mnt_sb20 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %3, i64 0, i32 1
  %4 = load %struct.super_block*, %struct.super_block** %mnt_sb20, align 8
  %cmp21 = icmp eq %struct.super_block* %2, %4
  br i1 %cmp21, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %do.end18
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %m, i64 0, i32 0
  %5 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp23 = icmp eq %struct.dentry* %5, %0
  br i1 %cmp23, label %discard, label %if.end26

if.end26:                                         ; preds = %land.lhs.true, %do.end18
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %6 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock(%struct.inode* noundef %6) #23
  call fastcc void @namespace_lock() #23
  %call27 = call fastcc i32 @cant_mount(%struct.dentry* noundef %0) #23
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end37, label %discard_locked, !prof !23

if.end37:                                         ; preds = %if.end26
  call fastcc void @__rcu_read_lock() #21
  %7 = load %struct.vfsmount*, %struct.vfsmount** %mnt19, align 8
  %call39 = call %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef %7, %struct.dentry* noundef %0) #23
  %tobool40.not = icmp eq %struct.mount* %call39, null
  call fastcc void @rcu_read_unlock() #23
  br i1 %tobool40.not, label %if.end49, label %discard_locked, !prof !23

if.end49:                                         ; preds = %if.end37
  %call50 = call fastcc %struct.mountpoint* @get_mountpoint(%struct.dentry* noundef %0) #23
  %8 = bitcast %struct.mountpoint* %call50 to i8*
  %call51 = call fastcc i1 @IS_ERR(i8* noundef %8) #23
  br i1 %call51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end49
  %call53 = call fastcc i64 @PTR_ERR(i8* noundef %8) #23
  %conv54 = trunc i64 %call53 to i32
  br label %discard_locked

if.end55:                                         ; preds = %if.end49
  %9 = load %struct.vfsmount*, %struct.vfsmount** %mnt19, align 8
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %9, i64 0, i32 2
  %10 = load i32, i32* %mnt_flags, align 8
  %or = or i32 %10, 256
  %call57 = call fastcc i32 @do_add_mount(%struct.mount* noundef %call5, %struct.mountpoint* noundef %call50, %struct.path* noundef %path, i32 noundef %or) #23
  call fastcc void @unlock_mount(%struct.mountpoint* noundef %call50) #23
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end67, label %discard, !prof !23

if.end67:                                         ; preds = %if.end55
  call void @mntput(%struct.vfsmount* noundef nonnull %m) #23
  br label %cleanup

discard_locked:                                   ; preds = %if.end37, %if.end26, %if.then52
  %err.0 = phi i32 [ %conv54, %if.then52 ], [ -2, %if.end26 ], [ 0, %if.end37 ]
  call fastcc void @namespace_unlock() #23
  %11 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %11) #23
  br label %discard

discard:                                          ; preds = %land.lhs.true, %if.end55, %discard_locked
  %err.1 = phi i32 [ %err.0, %discard_locked ], [ %call57, %if.end55 ], [ -40, %land.lhs.true ]
  %mnt_expire = getelementptr inbounds %struct.mount, %struct.mount* %call5, i64 0, i32 11
  %call69 = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_expire) #23
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end73

if.then71:                                        ; preds = %discard
  call fastcc void @namespace_lock() #23
  call fastcc void @list_del_init(%struct.list_head* noundef %mnt_expire) #23
  call fastcc void @namespace_unlock() #23
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %discard
  call void @mntput(%struct.vfsmount* noundef nonnull %m) #23
  call void @mntput(%struct.vfsmount* noundef nonnull %m) #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end73, %if.end67, %if.then2
  %retval.0 = phi i32 [ %conv, %if.then2 ], [ %err.1, %if.end73 ], [ 0, %if.end67 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #1 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @cant_mount(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 256
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mountpoint* @get_mountpoint(%struct.dentry* noundef %dentry) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @d_mountpoint(%struct.dentry* noundef %dentry) #23
  br i1 %call, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @d_unlinked(%struct.dentry* noundef %dentry) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %mountpoint, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef -2) #23
  %0 = bitcast i8* %call3 to %struct.mountpoint*
  br label %cleanup

mountpoint:                                       ; preds = %if.end16, %if.then
  %new.0 = phi %struct.mountpoint* [ null, %if.then ], [ %new.250, %if.end16 ]
  call fastcc void @read_seqlock_excl() #23
  %call4 = call fastcc %struct.mountpoint* @lookup_mountpoint(%struct.dentry* noundef %dentry) #23
  call fastcc void @read_sequnlock_excl() #23
  %tobool5.not = icmp eq %struct.mountpoint* %call4, null
  br i1 %tobool5.not, label %if.end8, label %done

if.end8:                                          ; preds = %mountpoint
  %tobool9.not = icmp eq %struct.mountpoint* %new.0, null
  br i1 %tobool9.not, label %if.end12, label %if.end16

if.end12:                                         ; preds = %entry, %if.end8
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #21
  %2 = bitcast i8* %call.i.i to %struct.mountpoint*
  %tobool13.not = icmp eq i8* %call.i.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %call15 = call fastcc i8* @ERR_PTR(i64 noundef -12) #23
  %3 = bitcast i8* %call15 to %struct.mountpoint*
  br label %cleanup

if.end16:                                         ; preds = %if.end8, %if.end12
  %new.250 = phi %struct.mountpoint* [ %2, %if.end12 ], [ %new.0, %if.end8 ]
  %call17 = call i32 @d_set_mounted(%struct.dentry* noundef %dentry) #21
  %cmp = icmp eq i32 %call17, -16
  br i1 %cmp, label %mountpoint, label %if.end19

if.end19:                                         ; preds = %if.end16
  %conv = sext i32 %call17 to i64
  %call20 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #23
  %4 = bitcast i8* %call20 to %struct.mountpoint*
  %tobool21.not = icmp eq i32 %call17, 0
  br i1 %tobool21.not, label %if.end23, label %done

if.end23:                                         ; preds = %if.end19
  call fastcc void @read_seqlock_excl() #23
  %call24 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %dentry) #23
  %m_dentry = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %new.250, i64 0, i32 1
  store %struct.dentry* %dentry, %struct.dentry** %m_dentry, align 8
  %m_count = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %new.250, i64 0, i32 3
  store i32 1, i32* %m_count, align 8
  %m_hash = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %new.250, i64 0, i32 0
  %call25 = call fastcc %struct.hlist_head* @mp_hash(%struct.dentry* noundef %dentry) #23
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %m_hash, %struct.hlist_head* noundef %call25) #23
  %first = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %new.250, i64 0, i32 2, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  call fastcc void @read_sequnlock_excl() #23
  br label %done

done:                                             ; preds = %if.end19, %mountpoint, %if.end23
  %mp.0 = phi %struct.mountpoint* [ %call4, %mountpoint ], [ %4, %if.end19 ], [ %new.250, %if.end23 ]
  %new.3 = phi %struct.mountpoint* [ %new.0, %mountpoint ], [ %new.250, %if.end19 ], [ null, %if.end23 ]
  %5 = bitcast %struct.mountpoint* %new.3 to i8*
  call void @kfree(i8* noundef %5) #21
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then14, %if.then2
  %retval.0 = phi %struct.mountpoint* [ %0, %if.then2 ], [ %mp.0, %done ], [ %3, %if.then14 ]
  ret %struct.mountpoint* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_add_mount(%struct.mount* noundef %newmnt, %struct.mountpoint* noundef %mp, %struct.path* nocapture noundef readonly %path, i32 noundef %mnt_flags) unnamed_addr #1 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %and = and i32 %mnt_flags, -385896961
  %call1 = call fastcc i32 @check_mnt(%struct.mount* noundef %call) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end11, !prof !26

if.then:                                          ; preds = %entry
  %and5 = and i32 %mnt_flags, 256
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 16
  %1 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %tobool8.not = icmp eq %struct.mnt_namespace* %1, null
  br i1 %tobool8.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 1
  %2 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %mnt_sb14 = getelementptr inbounds %struct.mount, %struct.mount* %newmnt, i64 0, i32 3, i32 1
  %3 = load %struct.super_block*, %struct.super_block** %mnt_sb14, align 8
  %cmp = icmp eq %struct.super_block* %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end11
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 0
  %4 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %5 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %cmp17 = icmp eq %struct.dentry* %4, %5
  br i1 %cmp17, label %cleanup, label %if.end20

if.end20:                                         ; preds = %land.lhs.true, %if.end11
  %mnt_root22 = getelementptr inbounds %struct.mount, %struct.mount* %newmnt, i64 0, i32 3, i32 0
  %6 = load %struct.dentry*, %struct.dentry** %mnt_root22, align 8
  %call23 = call fastcc i1 @d_is_symlink(%struct.dentry* noundef %6) #23
  br i1 %call23, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end20
  %mnt_flags27 = getelementptr inbounds %struct.mount, %struct.mount* %newmnt, i64 0, i32 3, i32 2
  store i32 %and, i32* %mnt_flags27, align 8
  %call28 = call fastcc i32 @graft_tree(%struct.mount* noundef %newmnt, %struct.mount* noundef %call, %struct.mountpoint* noundef %mp) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true, %if.end, %if.then, %if.end25
  %retval.0 = phi i32 [ %call28, %if.end25 ], [ -22, %if.then ], [ -22, %if.end ], [ -16, %land.lhs.true ], [ -22, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_mount(%struct.mountpoint* noundef %where) unnamed_addr #1 {
entry:
  %m_dentry = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %where, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %m_dentry, align 8
  call fastcc void @read_seqlock_excl() #23
  call fastcc void @put_mountpoint(%struct.mountpoint* noundef %where) #23
  call fastcc void @read_sequnlock_excl() #23
  call fastcc void @namespace_unlock() #23
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %1) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #1 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #11 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mnt_set_expiry(%struct.vfsmount* noundef %mnt, %struct.list_head* noundef %expiry_list) local_unnamed_addr #1 {
entry:
  call fastcc void @namespace_lock() #23
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #23
  %mnt_expire = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 11
  call fastcc void @list_add_tail(%struct.list_head* noundef %mnt_expire, %struct.list_head* noundef %expiry_list) #23
  call fastcc void @namespace_unlock() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mark_mounts_for_expiry(%struct.list_head* noundef %mounts) local_unnamed_addr #1 {
entry:
  %graveyard = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %graveyard to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %graveyard, i64 0, i32 0
  store %struct.list_head* %graveyard, %struct.list_head** %next1, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %graveyard, i64 0, i32 1
  store %struct.list_head* %graveyard, %struct.list_head** %prev, align 8
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %mounts) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @namespace_lock() #23
  call fastcc void @lock_mount_hash() #23
  %1 = bitcast %struct.list_head* %mounts to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp.not63 = icmp eq %struct.list_head* %3, %mounts
  br i1 %cmp.not63, label %while.cond.preheader, label %for.body

while.cond.preheader:                             ; preds = %for.inc, %if.end
  %call2867 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %graveyard) #23
  %tobool29.not68 = icmp eq i32 %call2867, 0
  br i1 %tobool29.not68, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %4 = bitcast %struct.list_head* %graveyard to i8**
  br label %while.body

for.body:                                         ; preds = %if.end, %for.inc
  %5 = phi %struct.list_head* [ %6, %for.inc ], [ %3, %if.end ]
  %.pn.in.in64 = phi i8* [ %.pn66, %for.inc ], [ %2, %if.end ]
  %.pn66.in = bitcast i8* %.pn.in.in64 to i8**
  %.pn66 = load i8*, i8** %.pn66.in, align 8
  %mnt_expiry_mark = getelementptr i8, i8* %.pn.in.in64, i64 128
  %call8.i = call fastcc i32 @__xchg_case_mb_32(i32 noundef 1, i8* noundef %mnt_expiry_mark) #21
  %tobool14.not = icmp eq i32 %call8.i, 0
  br i1 %tobool14.not, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %mnt.065.in = getelementptr i8, i8* %.pn.in.in64, i64 -160
  %mnt.065 = bitcast i8* %mnt.065.in to %struct.mount*
  %call15 = call i32 @propagate_mount_busy(%struct.mount* noundef %mnt.065, i32 noundef 1) #21
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %for.inc

if.end18:                                         ; preds = %lor.lhs.false
  call fastcc void @list_move(%struct.list_head* noundef %5, %struct.list_head* noundef nonnull %graveyard) #23
  br label %for.inc

for.inc:                                          ; preds = %for.body, %lor.lhs.false, %if.end18
  %6 = bitcast i8* %.pn66 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %6, %mounts
  br i1 %cmp.not, label %while.cond.preheader, label %for.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %7 = load i8*, i8** %4, align 8
  %add.ptr37 = getelementptr i8, i8* %7, i64 -160
  %8 = bitcast i8* %add.ptr37 to %struct.mount*
  %mnt_ns = getelementptr i8, i8* %7, i64 72
  %9 = bitcast i8* %mnt_ns to %struct.mnt_namespace**
  %10 = load %struct.mnt_namespace*, %struct.mnt_namespace** %9, align 8
  call fastcc void @touch_mnt_namespace(%struct.mnt_namespace* noundef %10) #23
  call fastcc void @umount_tree(%struct.mount* noundef %8, i32 noundef 3) #23
  %call28 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %graveyard) #23
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  call fastcc void @unlock_mount_hash() #23
  call fastcc void @namespace_unlock() #23
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #23
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @touch_mnt_namespace(%struct.mnt_namespace* noundef %ns) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.mnt_namespace* %ns, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, i64* @event, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* @event, align 8
  %event = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 8
  store i64 %inc, i64* %event, align 8
  %poll = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 7
  call void @__wake_up(%struct.wait_queue_head* noundef %poll, i32 noundef 1, i32 noundef 1, i8* noundef null) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @path_mount(i8* noundef %dev_name, %struct.path* noundef %path, i8* noundef %type_page, i64 noundef %flags, i8* noundef %data_page) local_unnamed_addr #1 {
entry:
  %and = and i64 %flags, 4294901760
  %cmp = icmp eq i64 %and, 3236757504
  %and1 = and i64 %flags, 65535
  %spec.select = select i1 %cmp, i64 %and1, i64 %flags
  %tobool.not = icmp eq i8* %data_page, null
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  %arrayidx = getelementptr i8, i8* %data_page, i64 4095
  store i8 0, i8* %arrayidx, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry
  %tobool5.not = icmp ult i64 %spec.select, 2147483648
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %call11 = call fastcc i1 @may_mount() #23
  br i1 %call11, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end7
  %and14 = and i64 %spec.select, 64
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  call fastcc void @warn_mandlock() #23
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %and18 = and i64 %spec.select, 1024
  %0 = lshr exact i64 %and18, 5
  %1 = trunc i64 %0 to i32
  %2 = trunc i64 %spec.select to i32
  %3 = lshr i32 %2, 1
  %4 = and i32 %3, 1
  %5 = or i32 %4, %1
  %6 = and i32 %3, 2
  %7 = or i32 %5, %6
  %8 = and i32 %3, 4
  %9 = or i32 %7, %8
  %10 = lshr exact i64 %and18, 7
  %11 = trunc i64 %10 to i32
  %12 = or i32 %9, %11
  %13 = lshr i32 %2, 7
  %14 = and i32 %13, 16
  %15 = or i32 %12, %14
  %16 = xor i32 %15, 32
  %and47 = and i64 %spec.select, 16777216
  %tobool48.not = icmp eq i64 %and47, 0
  %and50 = and i32 %15, -41
  %mnt_flags.6 = select i1 %tobool48.not, i32 %16, i32 %and50
  %17 = shl i32 %2, 6
  %18 = and i32 %17, 64
  %19 = and i32 %3, 128
  %20 = or i32 %19, %18
  %21 = or i32 %20, %mnt_flags.6
  %and62 = and i64 %spec.select, 32
  %tobool63.not = icmp eq i64 %and62, 0
  %22 = and i64 %spec.select, 18877472
  %.not = icmp eq i64 %22, 32
  br i1 %.not, label %if.then66, label %if.end71

if.then66:                                        ; preds = %if.end17
  %and67 = and i32 %21, -57
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %23 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_flags68 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %23, i64 0, i32 2
  %24 = load i32, i32* %mnt_flags68, align 8
  %and69 = and i32 %24, 56
  %or70 = or i32 %and69, %and67
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end17
  %mnt_flags.9 = phi i32 [ %or70, %if.then66 ], [ %21, %if.end17 ]
  %conv = and i32 %2, 42041553
  %and73 = and i64 %spec.select, 4128
  %cmp74 = icmp eq i64 %and73, 4128
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end71
  %call77 = call fastcc i32 @do_reconfigure_mnt(%struct.path* noundef %path, i32 noundef %mnt_flags.9) #23
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  br i1 %tobool63.not, label %if.end84, label %if.then81

if.then81:                                        ; preds = %if.end78
  %call83 = call fastcc i32 @do_remount(%struct.path* noundef %path, i32 noundef %conv, i32 noundef %mnt_flags.9, i8* noundef %data_page) #23
  br label %cleanup

if.end84:                                         ; preds = %if.end78
  %and85 = and i64 %spec.select, 4096
  %tobool86.not = icmp eq i64 %and85, 0
  br i1 %tobool86.not, label %if.end91, label %if.then87

if.then87:                                        ; preds = %if.end84
  %conv89 = and i32 %2, 16384
  %call90 = call fastcc i32 @do_loopback(%struct.path* noundef %path, i8* noundef %dev_name, i32 noundef %conv89) #23
  br label %cleanup

if.end91:                                         ; preds = %if.end84
  %and92 = and i64 %spec.select, 1966080
  %tobool93.not = icmp eq i64 %and92, 0
  br i1 %tobool93.not, label %if.end97, label %if.then94

if.then94:                                        ; preds = %if.end91
  %call96 = call fastcc i32 @do_change_type(%struct.path* noundef %path, i32 noundef %2) #23
  br label %cleanup

if.end97:                                         ; preds = %if.end91
  %and98 = and i64 %spec.select, 8192
  %tobool99.not = icmp eq i64 %and98, 0
  br i1 %tobool99.not, label %if.end102, label %if.then100

if.then100:                                       ; preds = %if.end97
  %call101 = call fastcc i32 @do_move_mount_old(%struct.path* noundef %path, i8* noundef %dev_name) #23
  br label %cleanup

if.end102:                                        ; preds = %if.end97
  %call103 = call fastcc i32 @do_new_mount(%struct.path* noundef %path, i8* noundef %type_page, i32 noundef %conv, i32 noundef %mnt_flags.9, i8* noundef %dev_name, i8* noundef %data_page) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3, %if.end102, %if.then100, %if.then94, %if.then87, %if.then81, %if.then76
  %retval.0 = phi i32 [ %call77, %if.then76 ], [ %call83, %if.then81 ], [ %call90, %if.then87 ], [ %call96, %if.then94 ], [ %call101, %if.then100 ], [ %call103, %if.end102 ], [ -22, %if.end3 ], [ -1, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @may_mount() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 86
  %2 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %2, i64 0, i32 3
  %3 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %user_ns = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %3, i64 0, i32 4
  %4 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef %4, i32 noundef 21) #21
  ret i1 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @warn_mandlock() unnamed_addr #1 {
entry:
  %.b14 = load i1, i1* @warn_mandlock.__already_done, align 1
  br i1 %.b14, label %if.end, label %if.then, !prof !23

if.then:                                          ; preds = %entry
  store i1 true, i1* @warn_mandlock.__already_done, align 1
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([282 x i8], [282 x i8]* @.str.10, i64 0, i64 0)) #26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_reconfigure_mnt(%struct.path* noundef %path, i32 noundef %mnt_flags) unnamed_addr #1 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 1
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %call3 = call fastcc i32 @check_mnt(%struct.mount* noundef %call) #23
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %mnt4 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt4, i64 0, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp.not = icmp eq %struct.dentry* %2, %3
  br i1 %cmp.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i1 @can_change_locked_flags(%struct.mount* noundef %call, i32 noundef %mnt_flags) #23
  br i1 %call7, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end6
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 14
  call void @down_read(%struct.rw_semaphore* noundef %s_umount) #21
  call fastcc void @lock_mount_hash() #23
  %call10 = call fastcc i32 @change_mount_ro_state(%struct.mount* noundef %call, i32 noundef %mnt_flags) #23
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call fastcc void @set_mount_attributes(%struct.mount* noundef %call, i32 noundef %mnt_flags) #23
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  call fastcc void @unlock_mount_hash() #23
  call void @up_read(%struct.rw_semaphore* noundef %s_umount) #21
  call fastcc void @mnt_warn_timestamp_expiry(%struct.path* noundef %path, %struct.vfsmount* noundef %mnt4) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ %call10, %if.end13 ], [ -22, %entry ], [ -22, %if.end ], [ -1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_remount(%struct.path* noundef %path, i32 noundef %sb_flags, i32 noundef %mnt_flags, i8* noundef %data) unnamed_addr #1 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 1
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %call3 = call fastcc i32 @check_mnt(%struct.mount* noundef %call) #23
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp.not = icmp eq %struct.dentry* %2, %3
  br i1 %cmp.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i1 @can_change_locked_flags(%struct.mount* noundef %call, i32 noundef %mnt_flags) #23
  br i1 %call7, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end6
  %call11 = call %struct.fs_context* @fs_context_for_reconfigure(%struct.dentry* noundef %2, i32 noundef %sb_flags, i32 noundef 41943121) #21
  %4 = bitcast %struct.fs_context* %call11 to i8*
  %call12 = call fastcc i1 @IS_ERR(i8* noundef %4) #23
  br i1 %call12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  %call14 = call fastcc i64 @PTR_ERR(i8* noundef %4) #23
  %conv = trunc i64 %call14 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %oldapi = getelementptr inbounds %struct.fs_context, %struct.fs_context* %call11, i64 0, i32 17
  %5 = bitcast i24* %oldapi to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.set = or i32 %bf.load, 262144
  store i32 %bf.set, i32* %5, align 8
  %call16 = call i32 @parse_monolithic_mount_data(%struct.fs_context* noundef %call11, i8* noundef %data) #21
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end15
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #21
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 46
  %6 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %call19 = call i1 @ns_capable(%struct.user_namespace* noundef %6, i32 noundef 21) #21
  br i1 %call19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.then18
  %call21 = call i32 @reconfigure_super(%struct.fs_context* noundef %call11) #21
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then20
  call fastcc void @lock_mount_hash() #23
  call fastcc void @set_mount_attributes(%struct.mount* noundef %call, i32 noundef %mnt_flags) #23
  call fastcc void @unlock_mount_hash() #23
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then23, %if.then18
  %err.0 = phi i32 [ %call21, %if.then20 ], [ 0, %if.then23 ], [ -1, %if.then18 ]
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #21
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end15
  %err.1 = phi i32 [ %call16, %if.end15 ], [ %err.0, %if.end25 ]
  %mnt28 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3
  call fastcc void @mnt_warn_timestamp_expiry(%struct.path* noundef %path, %struct.vfsmount* noundef %mnt28) #23
  call void @put_fs_context(%struct.fs_context* noundef %call11) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry, %if.end27, %if.then13
  %retval.0 = phi i32 [ %conv, %if.then13 ], [ %err.1, %if.end27 ], [ -22, %entry ], [ -22, %if.end ], [ -1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_loopback(%struct.path* noundef %path, i8* noundef %old_name, i32 noundef %recurse) unnamed_addr #1 {
entry:
  %old_path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %old_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !34
  %tobool.not = icmp eq i8* %old_name, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %old_name, align 1
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @kern_path(i8* noundef nonnull %old_name, i32 noundef 5, %struct.path* noundef nonnull %old_path) #21
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %dentry = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call5 = call fastcc i1 @mnt_ns_loop(%struct.dentry* noundef %2) #23
  br i1 %call5, label %out, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = call fastcc %struct.mountpoint* @lock_mount(%struct.path* noundef %path) #23
  %3 = bitcast %struct.mountpoint* %call8 to i8*
  %call9 = call fastcc i1 @IS_ERR(i8* noundef %3) #23
  br i1 %call9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %call11 = call fastcc i64 @PTR_ERR(i8* noundef %3) #23
  %conv = trunc i64 %call11 to i32
  br label %out

if.end12:                                         ; preds = %if.end7
  %mnt13 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %4 = load %struct.vfsmount*, %struct.vfsmount** %mnt13, align 8
  %call14 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %4) #23
  %call15 = call fastcc i32 @check_mnt(%struct.mount* noundef %call14) #23
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %out2, label %if.end18

if.end18:                                         ; preds = %if.end12
  %call19 = call fastcc %struct.mount* @__do_loopback(%struct.path* noundef nonnull %old_path, i32 noundef %recurse) #23
  %5 = bitcast %struct.mount* %call19 to i8*
  %call20 = call fastcc i1 @IS_ERR(i8* noundef %5) #23
  br i1 %call20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end18
  %call22 = call fastcc i64 @PTR_ERR(i8* noundef %5) #23
  %conv23 = trunc i64 %call22 to i32
  br label %out2

if.end24:                                         ; preds = %if.end18
  %call25 = call fastcc i32 @graft_tree(%struct.mount* noundef %call19, %struct.mount* noundef %call14, %struct.mountpoint* noundef %call8) #23
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %out2, label %if.then27

if.then27:                                        ; preds = %if.end24
  call fastcc void @lock_mount_hash() #23
  call fastcc void @umount_tree(%struct.mount* noundef %call19, i32 noundef 1) #23
  call fastcc void @unlock_mount_hash() #23
  br label %out2

out2:                                             ; preds = %if.end24, %if.then27, %if.end12, %if.then21
  %err.0 = phi i32 [ %conv23, %if.then21 ], [ %call25, %if.then27 ], [ 0, %if.end24 ], [ -22, %if.end12 ]
  call fastcc void @unlock_mount(%struct.mountpoint* noundef %call8) #23
  br label %out

out:                                              ; preds = %if.end4, %out2, %if.then10
  %err.1 = phi i32 [ -22, %if.end4 ], [ %conv, %if.then10 ], [ %err.0, %out2 ]
  call void @path_put(%struct.path* noundef nonnull %old_path) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %out
  %retval.0 = phi i32 [ %err.1, %out ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_change_type(%struct.path* nocapture noundef readonly %path, i32 noundef %ms_flags) unnamed_addr #1 {
entry:
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %and = and i32 %ms_flags, 16384
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 0
  %2 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp.not = icmp eq %struct.dentry* %1, %2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @flags_to_propagation_type(i32 noundef %ms_flags) #23
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  call fastcc void @namespace_lock() #23
  %cmp6 = icmp eq i32 %call3, 1048576
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end5
  %tobool8 = icmp ne i32 %and, 0
  %call9 = call fastcc i32 @invent_group_ids(%struct.mount* noundef %call, i1 noundef %tobool8) #23
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %out_unlock

if.end13:                                         ; preds = %if.then7, %if.end5
  call fastcc void @lock_mount_hash() #23
  %tobool14.not37 = icmp eq %struct.mount* %call, null
  br i1 %tobool14.not37, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end13
  %tobool15.not = icmp eq i32 %and, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cond.end
  %m.038 = phi %struct.mount* [ %call, %for.body.lr.ph ], [ %call16, %cond.end ]
  call void @change_mnt_propagation(%struct.mount* noundef nonnull %m.038, i32 noundef %call3) #21
  br i1 %tobool15.not, label %for.end, label %cond.end

cond.end:                                         ; preds = %for.body
  %call16 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %m.038, %struct.mount* noundef nonnull %call) #23
  %tobool14.not = icmp eq %struct.mount* %call16, null
  br i1 %tobool14.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %cond.end, %if.end13
  call fastcc void @unlock_mount_hash() #23
  br label %out_unlock

out_unlock:                                       ; preds = %if.then7, %for.end
  %err.1 = phi i32 [ %call9, %if.then7 ], [ 0, %for.end ]
  call fastcc void @namespace_unlock() #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %out_unlock
  %retval.0 = phi i32 [ %err.1, %out_unlock ], [ -22, %entry ], [ -22, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_move_mount_old(%struct.path* noundef %path, i8* noundef %old_name) unnamed_addr #1 {
entry:
  %old_path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %old_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !34
  %tobool.not = icmp eq i8* %old_name, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %old_name, align 1
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @kern_path(i8* noundef nonnull %old_name, i32 noundef 1, %struct.path* noundef nonnull %old_path) #21
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @do_move_mount(%struct.path* noundef nonnull %old_path, %struct.path* noundef %path) #23
  call void @path_put(%struct.path* noundef nonnull %old_path) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_new_mount(%struct.path* noundef %path, i8* noundef %fstype, i32 noundef %sb_flags, i32 noundef %mnt_flags, i8* noundef %name, i8* noundef %data) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %fstype, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.file_system_type* @get_fs_type(i8* noundef nonnull %fstype) #21
  %tobool1.not = icmp eq %struct.file_system_type* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %fs_flags = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %call, i64 0, i32 1
  %0 = load i32, i32* %fs_flags, align 8
  %and = and i32 %0, 4
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = call i8* @strchr(i8* noundef nonnull %fstype, i32 noundef 46) #21
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.then5
  %incdec.ptr = getelementptr i8, i8* %call6, i64 1
  %1 = load i8, i8* %incdec.ptr, align 1
  %tobool9.not = icmp eq i8 %1, 0
  br i1 %tobool9.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then8
  call void @put_filesystem(%struct.file_system_type* noundef nonnull %call) #21
  br label %cleanup

if.end13:                                         ; preds = %if.then5, %if.then8, %if.end3
  %subtype.0 = phi i8* [ %incdec.ptr, %if.then8 ], [ null, %if.then5 ], [ null, %if.end3 ]
  %call14 = call %struct.fs_context* @fs_context_for_mount(%struct.file_system_type* noundef nonnull %call, i32 noundef %sb_flags) #21
  call void @put_filesystem(%struct.file_system_type* noundef nonnull %call) #21
  %2 = bitcast %struct.fs_context* %call14 to i8*
  %call15 = call fastcc i1 @IS_ERR(i8* noundef %2) #23
  br i1 %call15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %call17 = call fastcc i64 @PTR_ERR(i8* noundef %2) #23
  %conv = trunc i64 %call17 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %tobool19.not = icmp eq i8* %subtype.0, null
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end18
  %call21 = call i64 @strlen(i8* noundef nonnull %subtype.0) #21
  %call22 = call i32 @vfs_parse_fs_string(%struct.fs_context* noundef %call14, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %subtype.0, i64 noundef %call21) #21
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18
  %err.0 = phi i32 [ %call22, %if.then20 ], [ 0, %if.end18 ]
  %tobool24 = icmp eq i32 %err.0, 0
  %tobool25 = icmp ne i8* %name, null
  %or.cond = and i1 %tobool25, %tobool24
  br i1 %or.cond, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end23
  %call27 = call i64 @strlen(i8* noundef nonnull %name) #21
  %call28 = call i32 @vfs_parse_fs_string(%struct.fs_context* noundef %call14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %name, i64 noundef %call27) #21
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23
  %err.1 = phi i32 [ %call28, %if.then26 ], [ %err.0, %if.end23 ]
  %tobool30.not = icmp eq i32 %err.1, 0
  br i1 %tobool30.not, label %if.end33, label %if.end46

if.end33:                                         ; preds = %if.end29
  %call32 = call i32 @parse_monolithic_mount_data(%struct.fs_context* noundef %call14, i8* noundef %data) #21
  %tobool34.not = icmp eq i32 %call32, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %if.end46

land.lhs.true35:                                  ; preds = %if.end33
  %call36 = call i1 @mount_capable(%struct.fs_context* noundef %call14) #21
  br i1 %call36, label %if.end42, label %if.end46

if.end42:                                         ; preds = %land.lhs.true35
  %call41 = call i32 @vfs_get_tree(%struct.fs_context* noundef %call14) #21
  %tobool43.not = icmp eq i32 %call41, 0
  br i1 %tobool43.not, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end42
  %call45 = call fastcc i32 @do_new_mount_fc(%struct.fs_context* noundef %call14, %struct.path* noundef %path, i32 noundef %mnt_flags) #23
  br label %if.end46

if.end46:                                         ; preds = %if.end33, %land.lhs.true35, %if.end29, %if.then44, %if.end42
  %err.5 = phi i32 [ %call41, %if.end42 ], [ %call45, %if.then44 ], [ -1, %land.lhs.true35 ], [ %call32, %if.end33 ], [ %err.1, %if.end29 ]
  call void @put_fs_context(%struct.fs_context* noundef %call14) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end46, %if.then16, %if.then10
  %retval.0 = phi i32 [ %conv, %if.then16 ], [ %err.5, %if.end46 ], [ -22, %if.then10 ], [ -22, %entry ], [ -19, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @do_mount(i8* noundef %dev_name, i8* noundef %dir_name, i8* noundef %type_page, i64 noundef %flags, i8* noundef %data_page) local_unnamed_addr #1 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !34
  %call = call fastcc i32 @user_path_at(i32 noundef -100, i8* noundef %dir_name, i32 noundef 1, %struct.path* noundef nonnull %path) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @path_mount(i8* noundef %dev_name, %struct.path* noundef nonnull %path, i8* noundef %type_page, i64 noundef %flags, i8* noundef %data_page) #23
  call void @path_put(%struct.path* noundef nonnull %path) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0.in = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  %retval.0 = sext i32 %retval.0.in to i64
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path) unnamed_addr #1 {
entry:
  %call = call i32 @user_path_at_empty(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* noundef %path, i32* noundef null) #21
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.mnt_namespace* @copy_mnt_ns(i64 noundef %flags, %struct.mnt_namespace* noundef %ns, %struct.user_namespace* noundef %user_ns, %struct.fs_struct* noundef %new_fs) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.mnt_namespace* %ns, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !26

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namespace.c\22; .popsection; .long 14472b - 14470b; .short 3410; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !36
  unreachable

do.end9:                                          ; preds = %entry
  %and = and i64 %flags, 131072
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %if.then20, label %if.end21, !prof !23

if.then20:                                        ; preds = %do.end9
  call fastcc void @get_mnt_ns(%struct.mnt_namespace* noundef nonnull %ns) #23
  br label %cleanup

if.end21:                                         ; preds = %do.end9
  %root = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 1
  %0 = load %struct.mount*, %struct.mount** %root, align 8
  %call = call fastcc %struct.mnt_namespace* @alloc_mnt_ns(%struct.user_namespace* noundef %user_ns, i1 noundef false) #23
  %1 = bitcast %struct.mnt_namespace* %call to i8*
  %call22 = call fastcc i1 @IS_ERR(i8* noundef %1) #23
  br i1 %call22, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end21
  call fastcc void @namespace_lock() #23
  %user_ns25 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 4
  %2 = load %struct.user_namespace*, %struct.user_namespace** %user_ns25, align 8
  %cmp.not = icmp eq %struct.user_namespace* %2, %user_ns
  %spec.select = select i1 %cmp.not, i32 5, i32 37
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %0, i64 0, i32 3, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call29 = call %struct.mount* @copy_tree(%struct.mount* noundef %0, %struct.dentry* noundef %3, i32 noundef %spec.select) #23
  %4 = bitcast %struct.mount* %call29 to i8*
  %call30 = call fastcc i1 @IS_ERR(i8* noundef %4) #23
  br i1 %call30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end24
  call fastcc void @namespace_unlock() #23
  call fastcc void @free_mnt_ns(%struct.mnt_namespace* noundef %call) #23
  %5 = bitcast %struct.mount* %call29 to %struct.mnt_namespace*
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %6 = load %struct.user_namespace*, %struct.user_namespace** %user_ns25, align 8
  %cmp35.not = icmp eq %struct.user_namespace* %6, %user_ns
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end33
  call fastcc void @lock_mount_hash() #23
  call fastcc void @lock_mnt_tree(%struct.mount* noundef %call29) #23
  call fastcc void @unlock_mount_hash() #23
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33
  %root39 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call, i64 0, i32 1
  store %struct.mount* %call29, %struct.mount** %root39, align 8
  %list = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call, i64 0, i32 2
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %call29, i64 0, i32 10
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %mnt_list) #23
  %tobool40.not149 = icmp eq %struct.mount* %0, null
  br i1 %tobool40.not149, label %if.end84.thread, label %while.body.lr.ph

if.end84.thread:                                  ; preds = %if.end38
  call fastcc void @namespace_unlock() #23
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end38
  %mounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call, i64 0, i32 9
  %tobool41.not = icmp eq %struct.fs_struct* %new_fs, null
  %mnt45 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %new_fs, i64 0, i32 5, i32 0
  %mnt56 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %new_fs, i64 0, i32 6, i32 0
  br label %while.body

while.cond.loopexit:                              ; preds = %while.body79, %while.cond72.preheader
  %p.1.lcssa = phi %struct.mount* [ %call67, %while.cond72.preheader ], [ %call80, %while.body79 ]
  %tobool40.not = icmp eq %struct.mount* %p.1.lcssa, null
  br i1 %tobool40.not, label %while.end81, label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.loopexit
  %q.0154 = phi %struct.mount* [ %call29, %while.body.lr.ph ], [ %call68, %while.cond.loopexit ]
  %p.0152 = phi %struct.mount* [ %0, %while.body.lr.ph ], [ %p.1.lcssa, %while.cond.loopexit ]
  %pwdmnt.0151 = phi %struct.vfsmount* [ null, %while.body.lr.ph ], [ %pwdmnt.1, %while.cond.loopexit ]
  %rootmnt.0150 = phi %struct.vfsmount* [ null, %while.body.lr.ph ], [ %rootmnt.2, %while.cond.loopexit ]
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %q.0154, i64 0, i32 16
  store %struct.mnt_namespace* %call, %struct.mnt_namespace** %mnt_ns, align 8
  %7 = load i32, i32* %mounts, align 8
  %inc = add i32 %7, 1
  store i32 %inc, i32* %mounts, align 8
  br i1 %tobool41.not, label %if.end66, label %if.then42

if.then42:                                        ; preds = %while.body
  %mnt43 = getelementptr inbounds %struct.mount, %struct.mount* %p.0152, i64 0, i32 3
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt45, align 8
  %cmp46 = icmp eq %struct.vfsmount* %mnt43, %8
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.then42
  %mnt49 = getelementptr inbounds %struct.mount, %struct.mount* %q.0154, i64 0, i32 3
  %call50 = call %struct.vfsmount* @mntget(%struct.vfsmount* noundef %mnt49) #23
  store %struct.vfsmount* %mnt49, %struct.vfsmount** %mnt45, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.then42
  %rootmnt.1 = phi %struct.vfsmount* [ %mnt43, %if.then48 ], [ %rootmnt.0150, %if.then42 ]
  %9 = load %struct.vfsmount*, %struct.vfsmount** %mnt56, align 8
  %cmp57 = icmp eq %struct.vfsmount* %mnt43, %9
  br i1 %cmp57, label %if.then59, label %if.end66

if.then59:                                        ; preds = %if.end54
  %mnt60 = getelementptr inbounds %struct.mount, %struct.mount* %q.0154, i64 0, i32 3
  %call61 = call %struct.vfsmount* @mntget(%struct.vfsmount* noundef %mnt60) #23
  store %struct.vfsmount* %mnt60, %struct.vfsmount** %mnt56, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.end54, %if.then59, %while.body
  %rootmnt.2 = phi %struct.vfsmount* [ %rootmnt.1, %if.then59 ], [ %rootmnt.1, %if.end54 ], [ %rootmnt.0150, %while.body ]
  %pwdmnt.1 = phi %struct.vfsmount* [ %mnt43, %if.then59 ], [ %pwdmnt.0151, %if.end54 ], [ %pwdmnt.0151, %while.body ]
  %call67 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %p.0152, %struct.mount* noundef nonnull %0) #23
  %call68 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef %q.0154, %struct.mount* noundef %call29) #23
  %tobool69.not = icmp eq %struct.mount* %call68, null
  br i1 %tobool69.not, label %while.end81, label %while.cond72.preheader

while.cond72.preheader:                           ; preds = %if.end66
  %mnt_root76 = getelementptr inbounds %struct.mount, %struct.mount* %call68, i64 0, i32 3, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %mnt_root76, align 8
  %mnt_root74146 = getelementptr inbounds %struct.mount, %struct.mount* %call67, i64 0, i32 3, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %mnt_root74146, align 8
  %cmp77.not147 = icmp eq %struct.dentry* %11, %10
  br i1 %cmp77.not147, label %while.cond.loopexit, label %while.body79

while.body79:                                     ; preds = %while.cond72.preheader, %while.body79
  %p.1148 = phi %struct.mount* [ %call80, %while.body79 ], [ %call67, %while.cond72.preheader ]
  %call80 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef %p.1148, %struct.mount* noundef nonnull %0) #23
  %mnt_root74 = getelementptr inbounds %struct.mount, %struct.mount* %call80, i64 0, i32 3, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %mnt_root74, align 8
  %cmp77.not = icmp eq %struct.dentry* %12, %10
  br i1 %cmp77.not, label %while.cond.loopexit, label %while.body79

while.end81:                                      ; preds = %while.cond.loopexit, %if.end66
  call fastcc void @namespace_unlock() #23
  %tobool82.not = icmp eq %struct.vfsmount* %rootmnt.2, null
  br i1 %tobool82.not, label %if.end84, label %if.then83

if.then83:                                        ; preds = %while.end81
  call void @mntput(%struct.vfsmount* noundef nonnull %rootmnt.2) #23
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %while.end81
  %tobool85.not = icmp eq %struct.vfsmount* %pwdmnt.1, null
  br i1 %tobool85.not, label %cleanup, label %if.then86

if.then86:                                        ; preds = %if.end84
  call void @mntput(%struct.vfsmount* noundef nonnull %pwdmnt.1) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end84.thread, %if.end84, %if.then86, %if.end21, %if.then31, %if.then20
  %retval.0 = phi %struct.mnt_namespace* [ %ns, %if.then20 ], [ %5, %if.then31 ], [ %call, %if.end21 ], [ %call, %if.then86 ], [ %call, %if.end84 ], [ %call, %if.end84.thread ]
  ret %struct.mnt_namespace* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_mnt_ns(%struct.mnt_namespace* noundef %ns) unnamed_addr #1 {
entry:
  %count = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mnt_namespace* @alloc_mnt_ns(%struct.user_namespace* noundef %user_ns, i1 noundef %anon) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.ucounts* @inc_mnt_namespaces(%struct.user_namespace* noundef %user_ns) #23
  %tobool.not = icmp eq %struct.ucounts* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -28) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @kzalloc() #23
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call fastcc void @dec_mnt_namespaces(%struct.ucounts* noundef nonnull %call) #23
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -12) #23
  br label %cleanup

if.end6:                                          ; preds = %if.end
  br i1 %anon, label %if.end19.critedge, label %if.then8

if.then8:                                         ; preds = %if.end6
  %ns = bitcast i8* %call2 to %struct.ns_common*
  %call9 = call fastcc i32 @ns_alloc_inum(%struct.ns_common* noundef nonnull %ns) #23
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then17, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void @kfree(i8* noundef nonnull %call2) #21
  call fastcc void @dec_mnt_namespaces(%struct.ucounts* noundef nonnull %call) #23
  %conv = sext i32 %call9 to i64
  %call12 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #23
  br label %cleanup

if.then17:                                        ; preds = %if.then8
  %ops = getelementptr inbounds i8, i8* %call2, i64 8
  %0 = bitcast i8* %ops to %struct.proc_ns_operations**
  store %struct.proc_ns_operations* @mntns_operations, %struct.proc_ns_operations** %0, align 8
  %call.i.i = call fastcc i64 @__ll_sc_atomic64_add_return() #21
  %seq = getelementptr inbounds i8, i8* %call2, i64 72
  %1 = bitcast i8* %seq to i64*
  store i64 %call.i.i, i64* %1, align 8
  br label %if.end19

if.end19.critedge:                                ; preds = %if.end6
  %ops.c = getelementptr inbounds i8, i8* %call2, i64 8
  %2 = bitcast i8* %ops.c to %struct.proc_ns_operations**
  store %struct.proc_ns_operations* @mntns_operations, %struct.proc_ns_operations** %2, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.critedge, %if.then17
  %count = getelementptr inbounds i8, i8* %call2, i64 20
  %3 = bitcast i8* %count to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %3) #23
  %list = getelementptr inbounds i8, i8* %call2, i64 32
  %4 = bitcast i8* %list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %4) #23
  %poll = getelementptr inbounds i8, i8* %call2, i64 80
  %5 = bitcast i8* %poll to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_mnt_ns.__key) #21
  %ns_lock = getelementptr inbounds i8, i8* %call2, i64 48
  %6 = bitcast i8* %ns_lock to i32*
  store i32 0, i32* %6, align 8
  %user_ns27 = getelementptr inbounds i8, i8* %call2, i64 56
  %7 = bitcast i8* %user_ns27 to %struct.user_namespace**
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %7, align 8
  %ucounts28 = getelementptr inbounds i8, i8* %call2, i64 64
  %8 = bitcast i8* %ucounts28 to %struct.ucounts**
  store %struct.ucounts* %call, %struct.ucounts** %8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then11, %if.then4, %if.then
  %retval.0.in = phi i8* [ %call2, %if.end19 ], [ %call12, %if.then11 ], [ %call5, %if.then4 ], [ %call1, %if.then ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.mnt_namespace*
  ret %struct.mnt_namespace* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @lock_mnt_tree(%struct.mount* noundef %mnt) unnamed_addr #8 {
entry:
  %tobool.not43 = icmp eq %struct.mount* %mnt, null
  br i1 %tobool.not43, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %p.044 = phi %struct.mount* [ %call25, %for.body ], [ %mnt, %entry ]
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %p.044, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, 64
  %tobool2.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool2.not, i32 262144, i32 4456448
  %and4 = shl i32 %0, 20
  %1 = and i32 %and4, 2097152
  %2 = and i32 %and4, 1048576
  %and14 = shl i32 %0, 17
  %3 = and i32 %and14, 524288
  %spec.select = or i32 %1, %0
  %4 = or i32 %spec.select, %2
  %5 = or i32 %4, %3
  %6 = or i32 %5, %spec.select.v
  %mnt_expire = getelementptr inbounds %struct.mount, %struct.mount* %p.044, i64 0, i32 11
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %mnt_expire) #23
  %tobool19.not = icmp eq i32 %call, 0
  %or21 = or i32 %6, 8388608
  %flags.4 = select i1 %tobool19.not, i32 %6, i32 %or21
  store i32 %flags.4, i32* %mnt_flags, align 8
  %call25 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %p.044, %struct.mount* noundef nonnull %mnt) #23
  %tobool.not = icmp eq %struct.mount* %call25, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @mount_subtree(%struct.vfsmount* noundef %m, i8* noundef %name) local_unnamed_addr #1 {
entry:
  %path = alloca %struct.path, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %m) #23
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !34
  %call1 = call fastcc %struct.mnt_namespace* @alloc_mnt_ns(%struct.user_namespace* noundef nonnull @init_user_ns, i1 noundef true) #23
  %1 = bitcast %struct.mnt_namespace* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #23
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @mntput(%struct.vfsmount* noundef %m) #23
  %2 = bitcast %struct.mnt_namespace* %call1 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 16
  store %struct.mnt_namespace* %call1, %struct.mnt_namespace** %mnt_ns, align 8
  %root = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call1, i64 0, i32 1
  store %struct.mount* %call, %struct.mount** %root, align 8
  %mounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call1, i64 0, i32 9
  %3 = load i32, i32* %mounts, align 8
  %inc = add i32 %3, 1
  store i32 %inc, i32* %mounts, align 8
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 10
  %list = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call1, i64 0, i32 2
  call fastcc void @list_add(%struct.list_head* noundef %mnt_list, %struct.list_head* noundef %list) #23
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %m, i64 0, i32 0
  %4 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call4 = call i32 @vfs_path_lookup(%struct.dentry* noundef %4, %struct.vfsmount* noundef %m, i8* noundef %name, i32 noundef 5, %struct.path* noundef nonnull %path) #21
  call void @put_mnt_ns(%struct.mnt_namespace* noundef %call1) #23
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %conv = sext i32 %call4 to i64
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #23
  %5 = bitcast i8* %call6 to %struct.dentry*
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %mnt8 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %6 = load %struct.vfsmount*, %struct.vfsmount** %mnt8, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %6, i64 0, i32 1
  %7 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_active = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i64 0, i32 16
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %s_active) #21
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt8, align 8
  call void @mntput(%struct.vfsmount* noundef %8) #23
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i64 0, i32 14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #21
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %9 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi %struct.dentry* [ %2, %if.then ], [ %5, %if.then5 ], [ %9, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret %struct.dentry* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_path_lookup(%struct.dentry* noundef, %struct.vfsmount* noundef, i8* noundef, i32 noundef, %struct.path* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_mnt_ns(%struct.mnt_namespace* noundef %ns) local_unnamed_addr #1 {
entry:
  %count = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %count) #23
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %root = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 1
  %0 = load %struct.mount*, %struct.mount** %root, align 8
  %mnt = getelementptr inbounds %struct.mount, %struct.mount* %0, i64 0, i32 3
  call void @drop_collected_mounts(%struct.vfsmount* noundef %mnt) #23
  call fastcc void @free_mnt_ns(%struct.mnt_namespace* noundef %ns) #23
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mount(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
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
  %call = call fastcc i64 @__se_sys_mount(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mount(i64 noundef %dev_name, i64 noundef %dir_name, i64 noundef %type, i64 noundef %flags, i64 noundef %data) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %dev_name to i8*
  %1 = inttoptr i64 %dir_name to i8*
  %2 = inttoptr i64 %type to i8*
  %3 = inttoptr i64 %data to i8*
  %call = call fastcc i64 @__do_sys_mount(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %flags, i8* noundef %3) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_fsmount(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_fsmount(i64 noundef %0, i64 noundef %1, i64 noundef %2) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_fsmount(i64 noundef %fs_fd, i64 noundef %flags, i64 noundef %attr_flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %fs_fd to i32
  %conv1 = trunc i64 %flags to i32
  %conv2 = trunc i64 %attr_flags to i32
  %call = call fastcc i64 @__do_sys_fsmount(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_move_mount(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
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
  %call = call fastcc i64 @__se_sys_move_mount(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_move_mount(i64 noundef %from_dfd, i64 noundef %from_pathname, i64 noundef %to_dfd, i64 noundef %to_pathname, i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %from_dfd to i32
  %0 = inttoptr i64 %from_pathname to i8*
  %conv1 = trunc i64 %to_dfd to i32
  %1 = inttoptr i64 %to_pathname to i8*
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_move_mount(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1, i8* noundef %1, i32 noundef %conv2) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @is_path_reachable(%struct.mount* noundef readonly %mnt, %struct.dentry* noundef %dentry, %struct.path* nocapture noundef readonly %root) local_unnamed_addr #1 {
entry:
  %mnt2 = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt2, align 8
  %mnt117 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3
  %cmp.not18 = icmp eq %struct.vfsmount* %mnt117, %0
  br i1 %cmp.not18, label %land.rhs6, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %mnt.addr.019 = phi %struct.mount* [ %1, %while.body ], [ %mnt, %entry ]
  %call = call fastcc i32 @mnt_has_parent(%struct.mount* noundef %mnt.addr.019) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end9, label %while.body

while.body:                                       ; preds = %land.rhs
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %mnt.addr.019, i64 0, i32 1
  %1 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %mnt1 = getelementptr inbounds %struct.mount, %struct.mount* %1, i64 0, i32 3
  %cmp.not = icmp eq %struct.vfsmount* %mnt1, %0
  br i1 %cmp.not, label %while.cond.land.rhs6_crit_edge, label %land.rhs

while.cond.land.rhs6_crit_edge:                   ; preds = %while.body
  %mnt_mountpoint.le = getelementptr inbounds %struct.mount, %struct.mount* %mnt.addr.019, i64 0, i32 2
  %2 = load %struct.dentry*, %struct.dentry** %mnt_mountpoint.le, align 8
  br label %land.rhs6

land.rhs6:                                        ; preds = %while.cond.land.rhs6_crit_edge, %entry
  %dentry.addr.0.lcssa = phi %struct.dentry* [ %2, %while.cond.land.rhs6_crit_edge ], [ %dentry, %entry ]
  %dentry7 = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry7, align 8
  %call8 = call i1 @is_subdir(%struct.dentry* noundef %dentry.addr.0.lcssa, %struct.dentry* noundef %3) #21
  br label %land.end9

land.end9:                                        ; preds = %land.rhs, %land.rhs6
  %4 = phi i1 [ %call8, %land.rhs6 ], [ false, %land.rhs ]
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mnt_has_parent(%struct.mount* noundef readonly %mnt) unnamed_addr #6 {
entry:
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 1
  %0 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %cmp = icmp ne %struct.mount* %0, %mnt
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @path_is_under(%struct.path* nocapture noundef readonly %path1, %struct.path* nocapture noundef readonly %path2) local_unnamed_addr #1 {
entry:
  call fastcc void @read_seqlock_excl() #23
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path1, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path1, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call1 = call i1 @is_path_reachable(%struct.mount* noundef %call, %struct.dentry* noundef %1, %struct.path* noundef %path2) #23
  call fastcc void @read_sequnlock_excl() #23
  ret i1 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_seqlock_excl() unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 1, i32 0, i32 0)) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_sequnlock_excl() unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 1, i32 0, i32 0)) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pivot_root(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_pivot_root(i64 noundef %0, i64 noundef %1) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pivot_root(i64 noundef %new_root, i64 noundef %put_old) unnamed_addr #1 {
entry:
  %0 = inttoptr i64 %new_root to i8*
  %1 = inttoptr i64 %put_old to i8*
  %call = call fastcc i64 @__do_sys_pivot_root(i8* noundef %0, i8* noundef %1) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mount_setattr(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
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
  %call = call fastcc i64 @__se_sys_mount_setattr(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #23
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mount_setattr(i64 noundef %dfd, i64 noundef %path, i64 noundef %flags, i64 noundef %uattr, i64 noundef %usize) unnamed_addr #1 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %path to i8*
  %conv1 = trunc i64 %flags to i32
  %1 = inttoptr i64 %uattr to %struct.mount_attr*
  %call = call fastcc i64 @__do_sys_mount_setattr(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1, %struct.mount_attr* noundef %1, i64 noundef %usize) #23
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @mnt_init() local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef 312, i32 noundef 0, i32 noundef 270336, void (i8*)* noundef null) #21
  store %struct.kmem_cache* %call, %struct.kmem_cache** @mnt_cache, align 8
  %0 = load i64, i64* @mhash_entries, align 8
  %call1 = call i8* @alloc_large_system_hash(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 noundef 8, i64 noundef %0, i32 noundef 19, i32 noundef 4, i32* noundef nonnull @m_hash_shift, i32* noundef nonnull @m_hash_mask, i64 noundef 0, i64 noundef 0) #21
  store i8* %call1, i8** bitcast (%struct.hlist_head** @mount_hashtable to i8**), align 8
  %1 = load i64, i64* @mphash_entries, align 8
  %call2 = call i8* @alloc_large_system_hash(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 noundef 8, i64 noundef %1, i32 noundef 19, i32 noundef 4, i32* noundef nonnull @mp_hash_shift, i32* noundef nonnull @mp_hash_mask, i64 noundef 0, i64 noundef 0) #21
  store i8* %call2, i8** bitcast (%struct.hlist_head** @mountpoint_hashtable to i8**), align 8
  %2 = load %struct.hlist_head*, %struct.hlist_head** @mount_hashtable, align 8
  %tobool = icmp ne %struct.hlist_head* %2, null
  %tobool3 = icmp ne i8* %call2, null
  %or.cond = select i1 %tobool, i1 %tobool3, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0)) #27
  unreachable

if.end:                                           ; preds = %entry
  call void @kernfs_init() #21
  %call4 = call i32 @sysfs_init() #21
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.mnt_init, i64 0, i64 0), i32 noundef %call4) #26
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end
  %call9 = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.kobject* noundef null) #21
  store %struct.kobject* %call9, %struct.kobject** @fs_kobj, align 8
  %tobool10.not = icmp eq %struct.kobject* %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end8
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.mnt_init, i64 0, i64 0)) #26
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end8
  %call18 = call i32 @shmem_init() #21
  call void @init_rootfs() #26
  call fastcc void @init_mount_tree() #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @alloc_large_system_hash(i8* noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32* noundef, i32* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_create_and_add(i8* noundef, %struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @init_rootfs() local_unnamed_addr #14 section ".init.text"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @init_mount_tree() unnamed_addr #0 section ".init.text" {
entry:
  %root = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  %call = call %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* noundef nonnull @rootfs_fs_type, i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* noundef null) #23
  %1 = bitcast %struct.vfsmount* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #23
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0)) #27
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.mnt_namespace* @alloc_mnt_ns(%struct.user_namespace* noundef nonnull @init_user_ns, i1 noundef false) #23
  %2 = bitcast %struct.mnt_namespace* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #23
  br i1 %call3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0)) #27
  unreachable

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %call) #23
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call6, i64 0, i32 16
  store %struct.mnt_namespace* %call2, %struct.mnt_namespace** %mnt_ns, align 8
  %root7 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call2, i64 0, i32 1
  store %struct.mount* %call6, %struct.mount** %root7, align 8
  %mounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call2, i64 0, i32 9
  store i32 1, i32* %mounts, align 8
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %call6, i64 0, i32 10
  %list = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call2, i64 0, i32 2
  call fastcc void @list_add(%struct.list_head* noundef %mnt_list, %struct.list_head* noundef %list) #23
  %3 = load %struct.nsproxy*, %struct.nsproxy** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 86), align 64
  %mnt_ns8 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %3, i64 0, i32 3
  store %struct.mnt_namespace* %call2, %struct.mnt_namespace** %mnt_ns8, align 8
  call fastcc void @get_mnt_ns(%struct.mnt_namespace* noundef %call2) #23
  %mnt9 = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 0
  store %struct.vfsmount* %call, %struct.vfsmount** %mnt9, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %call, i64 0, i32 0
  %4 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 1
  store %struct.dentry* %4, %struct.dentry** %dentry, align 8
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %call, i64 0, i32 2
  %5 = load i32, i32* %mnt_flags, align 8
  %or = or i32 %5, 8388608
  store i32 %or, i32* %mnt_flags, align 8
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 83
  %8 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call void @set_fs_pwd(%struct.fs_struct* noundef %8, %struct.path* noundef nonnull %root) #21
  %9 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call void @set_fs_root(%struct.fs_struct* noundef %9, %struct.path* noundef nonnull %root) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #23
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef %type) local_unnamed_addr #1 {
entry:
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %type, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %call = call %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* noundef %type, i32 noundef 4194304, i8* noundef %0, i8* noundef null) #23
  %1 = bitcast %struct.vfsmount* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #23
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -22) #23
  %call3 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %call) #23
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call3, i64 0, i32 16
  %2 = bitcast %struct.mnt_namespace** %mnt_ns to i8**
  store i8* %call2, i8** %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.vfsmount* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kern_unmount(%struct.vfsmount* noundef %mnt) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.vfsmount* %mnt to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #23
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #23
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call1, i64 0, i32 16
  store %struct.mnt_namespace* null, %struct.mnt_namespace** %mnt_ns, align 8
  call void @synchronize_rcu() #21
  call void @mntput(%struct.vfsmount* noundef %mnt) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kern_unmount_array(%struct.vfsmount** nocapture noundef readonly %mnt, i32 noundef %num) local_unnamed_addr #1 {
entry:
  %cmp21.not = icmp eq i32 %num, 0
  br i1 %cmp21.not, label %for.end.thread, label %for.body.preheader

for.end.thread:                                   ; preds = %entry
  call void @synchronize_rcu_expedited() #21
  br label %for.end10

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %num to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr %struct.vfsmount*, %struct.vfsmount** %mnt, i64 %indvars.iv
  %0 = load %struct.vfsmount*, %struct.vfsmount** %arrayidx, align 8
  %tobool.not = icmp eq %struct.vfsmount* %0, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef nonnull %0) #23
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 16
  store %struct.mnt_namespace* null, %struct.mnt_namespace** %mnt_ns, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  call void @synchronize_rcu_expedited() #21
  br i1 %cmp21.not, label %for.end10, label %for.body5.preheader

for.body5.preheader:                              ; preds = %for.end
  %wide.trip.count29 = zext i32 %num to i64
  br label %for.body5

for.body5:                                        ; preds = %for.body5.preheader, %for.body5
  %indvars.iv26 = phi i64 [ 0, %for.body5.preheader ], [ %indvars.iv.next27, %for.body5 ]
  %arrayidx7 = getelementptr %struct.vfsmount*, %struct.vfsmount** %mnt, i64 %indvars.iv26
  %1 = load %struct.vfsmount*, %struct.vfsmount** %arrayidx7, align 8
  call void @mntput(%struct.vfsmount* noundef %1) #23
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count29
  br i1 %exitcond30.not, label %for.end10, label %for.body5

for.end10:                                        ; preds = %for.body5, %for.end.thread, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_expedited() local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i1 @our_mnt(%struct.vfsmount* noundef readonly %mnt) local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #23
  %call1 = call fastcc i32 @check_mnt(%struct.mount* noundef %call) #23
  %tobool = icmp ne i32 %call1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @current_chrooted() local_unnamed_addr #1 {
entry:
  %ns_root = alloca %struct.path, align 8
  %fs_root = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %ns_root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  %1 = bitcast %struct.path* %fs_root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !34
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 86
  %4 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %4, i64 0, i32 3
  %5 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %root = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %5, i64 0, i32 1
  %6 = load %struct.mount*, %struct.mount** %root, align 8
  %mnt = getelementptr inbounds %struct.mount, %struct.mount* %6, i64 0, i32 3
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %ns_root, i64 0, i32 0
  store %struct.vfsmount* %mnt, %struct.vfsmount** %mnt1, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 0
  %7 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %ns_root, i64 0, i32 1
  store %struct.dentry* %7, %struct.dentry** %dentry, align 8
  call void @path_get(%struct.path* noundef nonnull %ns_root) #21
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %entry
  %8 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call4 = call fastcc i1 @d_mountpoint(%struct.dentry* noundef %8) #23
  br i1 %call4, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %call5 = call i32 @follow_down_one(%struct.path* noundef nonnull %ns_root) #21
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 83
  %9 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call fastcc void @get_fs_root(%struct.fs_struct* noundef %9, %struct.path* noundef nonnull %fs_root) #23
  %call7 = call fastcc i32 @path_equal(%struct.path* noundef nonnull %fs_root, %struct.path* noundef nonnull %ns_root) #23
  %tobool8.not = icmp eq i32 %call7, 0
  call void @path_put(%struct.path* noundef nonnull %fs_root) #21
  call void @path_put(%struct.path* noundef nonnull %ns_root) #21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #24
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i1 %tobool8.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(%struct.path* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_down_one(%struct.path* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_fs_root(%struct.fs_struct* noundef %fs, %struct.path* noundef %root) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #21
  %root1 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 5
  %0 = bitcast %struct.path* %root to i8*
  %1 = bitcast %struct.path* %root1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %root) #21
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @path_equal(%struct.path* nocapture noundef readonly %path1, %struct.path* nocapture noundef readonly %path2) unnamed_addr #6 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path1, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path2, i64 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %cmp = icmp eq %struct.vfsmount* %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path1, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %dentry2 = getelementptr inbounds %struct.path, %struct.path* %path2, i64 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry2, align 8
  %cmp3 = icmp eq %struct.dentry* %2, %3
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i1 @mnt_may_suid(%struct.vfsmount* noundef readonly %mnt) local_unnamed_addr #3 {
entry:
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #23
  %call1 = call fastcc i32 @check_mnt(%struct.mount* noundef %call) #23
  %tobool2.not = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool2.not, %land.lhs.true ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.ns_common* @mntns_get(%struct.task_struct* noundef %task) #1 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %task) #23
  %nsproxy1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 86
  %0 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy1, align 64
  %tobool.not = icmp eq %struct.nsproxy* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %0, i64 0, i32 3
  %1 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %ns2 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %1, i64 0, i32 0
  %call = call fastcc %struct.mnt_namespace* @to_mnt_ns(%struct.ns_common* noundef %ns2) #23
  call fastcc void @get_mnt_ns(%struct.mnt_namespace* noundef %call) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ns.0 = phi %struct.ns_common* [ %ns2, %if.then ], [ null, %entry ]
  call fastcc void @task_unlock(%struct.task_struct* noundef %task) #23
  ret %struct.ns_common* %ns.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @mntns_put(%struct.ns_common* noundef %ns) #1 {
entry:
  %call = call fastcc %struct.mnt_namespace* @to_mnt_ns(%struct.ns_common* noundef %ns) #23
  call void @put_mnt_ns(%struct.mnt_namespace* noundef %call) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @mntns_install(%struct.nsset* nocapture noundef readonly %nsset, %struct.ns_common* noundef %ns) #1 {
entry:
  %root = alloca %struct.path, align 8
  %nsproxy1 = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 1
  %0 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy1, align 8
  %fs2 = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 2
  %1 = load %struct.fs_struct*, %struct.fs_struct** %fs2, align 8
  %call = call fastcc %struct.mnt_namespace* @to_mnt_ns(%struct.ns_common* noundef %ns) #23
  %cred = getelementptr inbounds %struct.nsset, %struct.nsset* %nsset, i64 0, i32 3
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %user_ns3 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %3 = load %struct.user_namespace*, %struct.user_namespace** %user_ns3, align 8
  %4 = bitcast %struct.path* %root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !34
  %user_ns4 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call, i64 0, i32 4
  %5 = load %struct.user_namespace*, %struct.user_namespace** %user_ns4, align 8
  %call5 = call i1 @ns_capable(%struct.user_namespace* noundef %5, i32 noundef 21) #21
  br i1 %call5, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call6 = call i1 @ns_capable(%struct.user_namespace* noundef %3, i32 noundef 18) #21
  br i1 %call6, label %lor.lhs.false7, label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i1 @ns_capable(%struct.user_namespace* noundef %3, i32 noundef 21) #21
  br i1 %call8, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %call9 = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef %call) #23
  br i1 %call9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %users = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %1, i64 0, i32 0
  %6 = load i32, i32* %users, align 8
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end11
  call fastcc void @get_mnt_ns(%struct.mnt_namespace* noundef %call) #23
  %mnt_ns14 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %0, i64 0, i32 3
  %7 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns14, align 8
  store %struct.mnt_namespace* %call, %struct.mnt_namespace** %mnt_ns14, align 8
  %root16 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call, i64 0, i32 1
  %8 = load %struct.mount*, %struct.mount** %root16, align 8
  %mnt = getelementptr inbounds %struct.mount, %struct.mount* %8, i64 0, i32 3
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 0
  %9 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call19 = call i32 @vfs_path_lookup(%struct.dentry* noundef %9, %struct.vfsmount* noundef %mnt, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef 32768, %struct.path* noundef nonnull %root) #21
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end13
  store %struct.mnt_namespace* %7, %struct.mnt_namespace** %mnt_ns14, align 8
  call void @put_mnt_ns(%struct.mnt_namespace* noundef %call) #23
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @put_mnt_ns(%struct.mnt_namespace* noundef %7) #23
  call void @set_fs_pwd(%struct.fs_struct* noundef %1, %struct.path* noundef nonnull %root) #21
  call void @set_fs_root(%struct.fs_struct* noundef %1, %struct.path* noundef nonnull %root) #21
  call void @path_put(%struct.path* noundef nonnull %root) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end, %entry, %lor.lhs.false, %lor.lhs.false7, %if.end22, %if.then20
  %retval.0 = phi i32 [ %call19, %if.then20 ], [ 0, %if.end22 ], [ -1, %lor.lhs.false7 ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ -22, %if.end ], [ -22, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #24
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal %struct.user_namespace* @mntns_owner(%struct.ns_common* noundef readonly %ns) #6 {
entry:
  %call = call fastcc %struct.mnt_namespace* @to_mnt_ns(%struct.ns_common* noundef %ns) #23
  %user_ns = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call, i64 0, i32 4
  %0 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  ret %struct.user_namespace* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #24, !srcloc !37
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #3 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #29, !srcloc !38
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_start_write(%struct.super_block* noundef %sb) unnamed_addr #1 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !39
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #23
  br i1 %call, label %do.body7, label %if.else, !prof !23

do.body7:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !40
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call13, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !41
  br label %if.end

if.else:                                          ; preds = %entry
  %call15 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem, i1 noundef false) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body7
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rsp) unnamed_addr #11 {
entry:
  %gp_state = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %0 = load volatile i32, i32* %gp_state, align 8
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #1 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !43
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #23
  br i1 %call, label %do.body3, label %if.else, !prof !23

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !44
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !45
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !46
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !47
  %read_count20 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %3 = load i32*, i32** %read_count20, align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #23
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !48
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 2
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef %writer) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @write_seqlock() unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 1, i32 0, i32 0)) #21
  call fastcc void @do_write_seqcount_begin() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin() unnamed_addr #1 {
entry:
  call fastcc void @do_write_seqcount_begin_nested() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !50
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #21
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !23

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #21
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #24, !srcloc !51
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_begin_nested() unnamed_addr #1 {
entry:
  call fastcc void @do_raw_write_seqcount_begin() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_begin() unnamed_addr #1 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 64
  %inc = add i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !52
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @write_sequnlock() unnamed_addr #1 {
entry:
  call fastcc void @do_write_seqcount_end() #23
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 1, i32 0, i32 0)) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_write_seqcount_end() unnamed_addr #1 {
entry:
  call fastcc void @do_raw_write_seqcount_end() #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_write_seqcount_end() unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !53
  %0 = load i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 64
  %inc = add i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #23
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !54
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #24, !srcloc !55
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(i32 noundef %start) unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #24, !srcloc !56
  %call = call fastcc i32 @do___read_seqcount_retry(i32 noundef %start) #23
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(i32 noundef %start) unnamed_addr #11 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 64
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !57
  call void @rcu_read_unlock_strict() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !58
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #8 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #8 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #6 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #8 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev2, align 8
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %do.body13

do.body13:                                        ; preds = %entry
  %pprev14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %1, %struct.hlist_node*** %pprev14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #16 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__attach_mnt(%struct.mount* noundef %mnt, %struct.mount* noundef %parent) unnamed_addr #1 {
entry:
  %mnt_hash = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 0
  %mnt1 = getelementptr inbounds %struct.mount, %struct.mount* %parent, i64 0, i32 3
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 2
  %0 = load %struct.dentry*, %struct.dentry** %mnt_mountpoint, align 8
  %call = call fastcc %struct.hlist_head* @m_hash(%struct.vfsmount* noundef %mnt1, %struct.dentry* noundef %0) #23
  call fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %mnt_hash, %struct.hlist_head* noundef %call) #23
  %mnt_child = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 7
  %mnt_mounts = getelementptr inbounds %struct.mount, %struct.mount* %parent, i64 0, i32 6
  call fastcc void @list_add_tail(%struct.list_head* noundef %mnt_child, %struct.list_head* noundef %mnt_mounts) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #1 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev, align 8
  %1 = ptrtoint %struct.hlist_node* %n to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_node** elementtype(%struct.hlist_node*) %first1, i64 %1) #24, !srcloc !59
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end41, label %do.body34

do.body34:                                        ; preds = %entry
  %pprev36 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev36, align 8
  br label %if.end41

if.end41:                                         ; preds = %do.body34, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__put_mountpoint(%struct.mountpoint* noundef %mp, %struct.list_head* noundef %list) unnamed_addr #1 {
entry:
  %m_count = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %mp, i64 0, i32 3
  %0 = load i32, i32* %m_count, align 8
  %dec = add i32 %0, -1
  store i32 %dec, i32* %m_count, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %m_dentry = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %mp, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %m_dentry, align 8
  %m_list = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %mp, i64 0, i32 2
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %m_list) #23
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body6, label %do.end11, !prof !26

do.body6:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namespace.c\22; .popsection; .long 14472b - 14470b; .short 790; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !60
  unreachable

do.end11:                                         ; preds = %if.then
  %2 = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.78* %2 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #21
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 0
  %3 = load i32, i32* %d_flags, align 8
  %and = and i32 %3, -65537
  store i32 %and, i32* %d_flags, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #21
  call void @dput_to_list(%struct.dentry* noundef %1, %struct.list_head* noundef %list) #21
  %m_hash = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %mp, i64 0, i32 0
  call fastcc void @hlist_del(%struct.hlist_node* noundef %m_hash) #23
  %4 = bitcast %struct.mountpoint* %mp to i8*
  call void @kfree(i8* noundef %4) #21
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput_to_list(%struct.dentry* noundef, %struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del(%struct.hlist_node* nocapture noundef %n) unnamed_addr #8 {
entry:
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #23
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store %struct.hlist_node* inttoptr (i64 -2401263026318606080 to %struct.hlist_node*), %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store %struct.hlist_node** inttoptr (i64 -2401263026318606046 to %struct.hlist_node**), %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #1 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #21
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mnt_alloc_id(%struct.mount* nocapture noundef writeonly %mnt) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @ida_alloc() #23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mnt_id = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 20
  store i32 %call, i32* %mnt_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrdup_const(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mnt_free_id(%struct.mount* nocapture noundef readonly %mnt) unnamed_addr #1 {
entry:
  %mnt_id = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 20
  %0 = load i32, i32* %mnt_id, align 8
  call void @ida_free(%struct.ida* noundef nonnull @mnt_id_ida, i32 noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ida_alloc() unnamed_addr #1 {
entry:
  %call = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @mnt_id_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #21
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(%struct.ida* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #24, !srcloc !61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(%struct.lockref* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #8 {
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.mountpoint* @unhash_mnt(%struct.mount* noundef %mnt) unnamed_addr #8 {
entry:
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 1
  store %struct.mount* %mnt, %struct.mount** %mnt_parent, align 8
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 0
  %0 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 2
  store %struct.dentry* %0, %struct.dentry** %mnt_mountpoint, align 8
  %mnt_child = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 7
  call fastcc void @list_del_init(%struct.list_head* noundef %mnt_child) #23
  %mnt_hash = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 0
  call fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef %mnt_hash) #23
  %mnt_mp_list = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 18, i32 0
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %mnt_mp_list) #23
  %mnt_mp = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 17
  %1 = load %struct.mountpoint*, %struct.mountpoint** %mnt_mp, align 8
  store %struct.mountpoint* null, %struct.mountpoint** %mnt_mp, align 8
  ret %struct.mountpoint* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dentry_list(%struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_task_work(%struct.callback_head* nocapture noundef writeonly %twork) unnamed_addr #16 {
entry:
  %func1 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %twork, i64 0, i32 1
  store void (%struct.callback_head*)* @__cleanup_mnt, void (%struct.callback_head*)** %func1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @__cleanup_mnt(%struct.callback_head* noundef %head) #1 {
entry:
  %add.ptr2 = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 -4
  %0 = bitcast %struct.callback_head* %add.ptr2 to %struct.mount*
  call fastcc void @cleanup_mnt(%struct.mount* noundef %0) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(%struct.task_struct* noundef, %struct.callback_head* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @llist_add(%struct.llist_node* noundef %new) unnamed_addr #1 {
entry:
  %call = call i1 @llist_add_batch(%struct.llist_node* noundef %new, %struct.llist_node* noundef %new, %struct.llist_head* noundef nonnull @delayed_mntput_list) #21
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_delayed_work() unnamed_addr #1 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cleanup_mnt(%struct.mount* noundef %mnt) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @mnt_get_writers(%struct.mount* noundef %mnt) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !23

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namespace.c\22; .popsection; .long 14472b - 14470b; .short 1128; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !62
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %first = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 23, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool15.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool15.not, label %if.end24, label %if.then23, !prof !23

if.then23:                                        ; preds = %if.end
  call void @mnt_pin_kill(%struct.mount* noundef %mnt) #21
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end
  %first25 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 24, i32 0
  %1 = load %struct.hlist_node*, %struct.hlist_node** %first25, align 8
  %tobool27.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -16, i32 1
  %tobool29.not7476 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool29.not74 = or i1 %tobool27.not, %tobool29.not7476
  br i1 %tobool29.not74, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end24
  %2 = bitcast %struct.hlist_node*** %add.ptr to %struct.mount*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.rhs
  %m.075 = phi %struct.mount* [ %spec.select73, %land.rhs ], [ %2, %land.rhs.preheader ]
  %mnt_umount = getelementptr inbounds %struct.mount, %struct.mount* %m.075, i64 0, i32 18, i32 0
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %mnt_umount, i64 0, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  call fastcc void @hlist_del(%struct.hlist_node* noundef %mnt_umount) #23
  %mnt33 = getelementptr inbounds %struct.mount, %struct.mount* %m.075, i64 0, i32 3
  call void @mntput(%struct.vfsmount* noundef %mnt33) #23
  %tobool36.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr43 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -16, i32 1
  %4 = bitcast %struct.hlist_node*** %add.ptr43 to %struct.mount*
  %spec.select73 = select i1 %tobool36.not, %struct.mount* null, %struct.mount* %4
  %tobool29.not = icmp eq %struct.mount* %spec.select73, null
  br i1 %tobool29.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %if.end24
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 0
  %5 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  call void @dput(%struct.dentry* noundef %5) #21
  %mnt_sb = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 1
  %6 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  call void @deactivate_super(%struct.super_block* noundef %6) #21
  call fastcc void @mnt_free_id(%struct.mount* noundef %mnt) #23
  %mnt_rcu = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 4, i32 0
  call void @call_rcu(%struct.callback_head* noundef %mnt_rcu, void (%struct.callback_head*)* noundef nonnull @delayed_free_vfsmnt) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @llist_add_batch(%struct.llist_node* noundef, %struct.llist_node* noundef, %struct.llist_head* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #1 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef nonnull @delayed_mntput_work, i64 noundef 1) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @delayed_mntput(%struct.work_struct* nocapture noundef readnone %unused) #1 {
entry:
  %call = call fastcc %struct.llist_node* @llist_del_all() #23
  %add.ptr14 = getelementptr %struct.llist_node, %struct.llist_node* %call, i64 -8
  %cmp.not15 = icmp eq %struct.llist_node* %add.ptr14, inttoptr (i64 -64 to %struct.llist_node*)
  br i1 %cmp.not15, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %0 = bitcast %struct.llist_node* %add.ptr14 to %struct.mount*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.rhs
  %m.016 = phi %struct.mount* [ %4, %land.rhs ], [ %0, %land.rhs.preheader ]
  %1 = getelementptr inbounds %struct.mount, %struct.mount* %m.016, i64 0, i32 4
  %2 = bitcast %union.anon.82* %1 to i8**
  %3 = load i8*, i8** %2, align 8
  %add.ptr6 = getelementptr i8, i8* %3, i64 -64
  %4 = bitcast i8* %add.ptr6 to %struct.mount*
  call fastcc void @cleanup_mnt(%struct.mount* noundef %m.016) #23
  %cmp.not = icmp eq i8* %add.ptr6, inttoptr (i64 -64 to i8*)
  br i1 %cmp.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.llist_node* @llist_del_all() unnamed_addr #1 {
entry:
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i64 noundef 0, i8* noundef bitcast (%struct.llist_head* @delayed_mntput_list to i8*)) #21
  %0 = inttoptr i64 %call11.i to %struct.llist_node*
  ret %struct.llist_node* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_pin_kill(%struct.mount* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(%struct.super_block* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @delayed_free_vfsmnt(%struct.callback_head* noundef %head) #1 {
entry:
  %add.ptr2 = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 -4
  %0 = bitcast %struct.callback_head* %add.ptr2 to %struct.mount*
  call fastcc void @free_vfsmnt(%struct.mount* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_vfsmnt(%struct.mount* noundef %mnt) unnamed_addr #1 {
entry:
  %mnt1 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt1) #23
  %mnt_devname = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 9
  %0 = load i8*, i8** %mnt_devname, align 8
  call void @kfree_const(i8* noundef %0) #21
  %mnt_pcp = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 5
  %1 = bitcast %struct.mnt_pcp** %mnt_pcp to i8**
  %2 = load i8*, i8** %1, align 8
  call void @free_percpu(i8* noundef %2) #21
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @mnt_cache, align 8
  %4 = bitcast %struct.mount* %mnt to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %3, i8* noundef %4) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #1 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #24, !srcloc !63
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mnt_alloc_group_id(%struct.mount* nocapture noundef writeonly %mnt) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @ida_alloc_min() #23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mnt_group_id = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 21
  store i32 %call, i32* %mnt_group_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_mnt_shared(%struct.mount* nocapture noundef %mnt) unnamed_addr #17 {
entry:
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, -12289
  %or = or i32 %and, 4096
  store i32 %or, i32* %mnt_flags, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ida_alloc_min() unnamed_addr #1 {
entry:
  %call = call i32 @ida_alloc_range(%struct.ida* noundef nonnull @mnt_group_ida, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mount* @mnt_list_next(%struct.mnt_namespace* noundef %ns, %struct.list_head* nocapture noundef readonly %p) unnamed_addr #1 {
entry:
  call fastcc void @lock_ns_list(%struct.mnt_namespace* noundef %ns) #23
  %list = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %p.pn = phi %struct.list_head* [ %p, %entry ], [ %p.addr.0, %for.body ]
  %p.addr.0.in = getelementptr inbounds %struct.list_head, %struct.list_head* %p.pn, i64 0, i32 0
  %p.addr.0 = load %struct.list_head*, %struct.list_head** %p.addr.0.in, align 8
  %cmp.not = icmp eq %struct.list_head* %p.addr.0, %list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr11 = getelementptr %struct.list_head, %struct.list_head* %p.addr.0, i64 -9
  %0 = bitcast %struct.list_head* %add.ptr11 to %struct.mount*
  %call = call fastcc i1 @mnt_is_cursor(%struct.mount* noundef %0) #23
  br i1 %call, label %for.cond, label %for.end.split.loop.exit14

for.end.split.loop.exit14:                        ; preds = %for.body
  %1 = bitcast %struct.list_head* %add.ptr11 to %struct.mount*
  br label %for.end

for.end:                                          ; preds = %for.cond, %for.end.split.loop.exit14
  %ret.0 = phi %struct.mount* [ %1, %for.end.split.loop.exit14 ], [ null, %for.cond ]
  call fastcc void @unlock_ns_list(%struct.mnt_namespace* noundef %ns) #23
  ret %struct.mount* %ret.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #23
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.hlist_head* @mp_hash(%struct.dentry* noundef %dentry) unnamed_addr #6 {
entry:
  %0 = ptrtoint %struct.dentry* %dentry to i64
  %div = lshr i64 %0, 6
  %1 = load i32, i32* @mp_hash_shift, align 4
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %div, %sh_prom
  %add = add nuw nsw i64 %shr, %div
  %2 = load %struct.hlist_head*, %struct.hlist_head** @mountpoint_hashtable, align 8
  %3 = load i32, i32* @mp_hash_mask, align 4
  %conv = zext i32 %3 to i64
  %and = and i64 %add, %conv
  %arrayidx = getelementptr %struct.hlist_head, %struct.hlist_head* %2, i64 %and
  ret %struct.hlist_head* %arrayidx
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @propagate_mount_unlock(%struct.mount* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @propagate_umount(%struct.list_head* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__touch_mnt_namespace(%struct.mnt_namespace* noundef %ns) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.mnt_namespace* %ns, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %event = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 8
  %0 = load i64, i64* %event, align 8
  %1 = load i64, i64* @event, align 8
  %cmp.not = icmp eq i64 %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i64 %1, i64* %event, align 8
  %poll = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 7
  call void @__wake_up(%struct.wait_queue_head* noundef %poll, i32 noundef 1, i32 noundef 1, i8* noundef null) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @disconnect_mount(%struct.mount* noundef readonly %mnt, i32 noundef %how) unnamed_addr #6 {
entry:
  %and = and i32 %how, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @mnt_has_parent(%struct.mount* noundef %mnt) #23
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 1
  %0 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %0, i64 0, i32 3, i32 2
  %1 = load i32, i32* %mnt_flags, align 8
  %and5 = and i32 %1, 134217728
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %if.end3
  %and9 = and i32 %how, 4
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %return

if.end12:                                         ; preds = %if.end8
  %mnt_flags14 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %2 = load i32, i32* %mnt_flags14, align 8
  %and15 = and i32 %2, 8388608
  %tobool16.not = icmp eq i32 %and15, 0
  br label %return

return:                                           ; preds = %if.end12, %if.end8, %if.end3, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ true, %if.end ], [ true, %if.end3 ], [ false, %if.end8 ], [ %tobool16.not, %if.end12 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @change_mnt_propagation(%struct.mount* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @hlist_move_list(%struct.hlist_head* noundef %new) unnamed_addr #17 {
entry:
  %0 = load %struct.hlist_node*, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @unmounted, i64 0, i32 0), align 8
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %new, i64 0, i32 0
  store %struct.hlist_node* %0, %struct.hlist_node** %first1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store %struct.hlist_node** %first1, %struct.hlist_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.hlist_node* null, %struct.hlist_node** getelementptr inbounds (%struct.hlist_head, %struct.hlist_head* @unmounted, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_init(%struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @ex_mountpoints) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef nonnull @ex_mountpoints, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #23
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull @ex_mountpoints) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #17 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_umount_root(%struct.super_block* noundef %sb) unnamed_addr #1 {
entry:
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 14
  call void @down_write(%struct.rw_semaphore* noundef %s_umount) #21
  %call = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %sb) #23
  br i1 %call, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 13
  %0 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %call1 = call %struct.fs_context* @fs_context_for_reconfigure(%struct.dentry* noundef %0, i32 noundef 1, i32 noundef 1) #21
  %1 = bitcast %struct.fs_context* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #23
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %1) #23
  %conv = trunc i64 %call4 to i32
  br label %if.end9

if.else:                                          ; preds = %if.then
  %call5 = call i32 @parse_monolithic_mount_data(%struct.fs_context* noundef %call1, i8* noundef null) #21
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %call7 = call i32 @reconfigure_super(%struct.fs_context* noundef %call1) #21
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  %ret.0 = phi i32 [ %call5, %if.else ], [ %call7, %if.then6 ]
  call void @put_fs_context(%struct.fs_context* noundef %call1) #21
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end, %entry
  %ret.2 = phi i32 [ 0, %entry ], [ %conv, %if.then3 ], [ %ret.0, %if.end ]
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #21
  ret i32 %ret.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @shrink_submounts(%struct.mount* noundef %mnt) unnamed_addr #1 {
entry:
  %graveyard = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %graveyard to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %graveyard, i64 0, i32 0
  store %struct.list_head* %graveyard, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %graveyard, i64 0, i32 1
  store %struct.list_head* %graveyard, %struct.list_head** %prev, align 8
  %call12 = call fastcc i32 @select_submounts(%struct.mount* noundef %mnt, %struct.list_head* noundef nonnull %graveyard) #23
  %tobool.not13 = icmp eq i32 %call12, 0
  br i1 %tobool.not13, label %while.end6, label %while.cond1.preheader.lr.ph

while.cond1.preheader.lr.ph:                      ; preds = %entry
  %1 = bitcast %struct.list_head* %graveyard to i8**
  br label %while.cond1.preheader

while.cond.loopexit:                              ; preds = %while.body4, %while.cond1.preheader
  %call = call fastcc i32 @select_submounts(%struct.mount* noundef %mnt, %struct.list_head* noundef nonnull %graveyard) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end6, label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.cond1.preheader.lr.ph, %while.cond.loopexit
  %call210 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %graveyard) #23
  %tobool3.not11 = icmp eq i32 %call210, 0
  br i1 %tobool3.not11, label %while.body4, label %while.cond.loopexit

while.body4:                                      ; preds = %while.cond1.preheader, %while.body4
  %2 = load i8*, i8** %1, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 -160
  %3 = bitcast i8* %add.ptr to %struct.mount*
  %mnt_ns = getelementptr i8, i8* %2, i64 72
  %4 = bitcast i8* %mnt_ns to %struct.mnt_namespace**
  %5 = load %struct.mnt_namespace*, %struct.mnt_namespace** %4, align 8
  call fastcc void @touch_mnt_namespace(%struct.mnt_namespace* noundef %5) #23
  call fastcc void @umount_tree(%struct.mount* noundef %3, i32 noundef 3) #23
  %call2 = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %graveyard) #23
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.body4, label %while.cond.loopexit

while.end6:                                       ; preds = %while.cond.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fs_context* @fs_context_for_reconfigure(%struct.dentry* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reconfigure_super(%struct.fs_context* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @select_submounts(%struct.mount* noundef readonly %parent, %struct.list_head* noundef %graveyard) unnamed_addr #1 {
entry:
  br label %repeat

repeat.loopexit:                                  ; preds = %if.end
  %0 = bitcast %struct.list_head** %add.ptr to %struct.mount*
  br label %repeat

repeat:                                           ; preds = %repeat.loopexit, %entry
  %found.0 = phi i32 [ 0, %entry ], [ %found.252, %repeat.loopexit ]
  %this_parent.0 = phi %struct.mount* [ %parent, %entry ], [ %0, %repeat.loopexit ]
  %next1 = getelementptr inbounds %struct.mount, %struct.mount* %this_parent.0, i64 0, i32 6, i32 0
  br label %resume

resume:                                           ; preds = %if.then16, %repeat
  %found.1 = phi i32 [ %found.0, %repeat ], [ %found.2.lcssa, %if.then16 ]
  %next.0.in = phi %struct.list_head** [ %next1, %repeat ], [ %next17, %if.then16 ]
  %this_parent.1 = phi %struct.mount* [ %this_parent.0, %repeat ], [ %7, %if.then16 ]
  %next.0 = load %struct.list_head*, %struct.list_head** %next.0.in, align 8
  %mnt_mounts2 = getelementptr inbounds %struct.mount, %struct.mount* %this_parent.1, i64 0, i32 6
  %cmp.not51 = icmp eq %struct.list_head* %next.0, %mnt_mounts2
  br i1 %cmp.not51, label %while.end, label %while.body

while.body:                                       ; preds = %resume, %cleanup
  %next.153 = phi %struct.list_head* [ %2, %cleanup ], [ %next.0, %resume ]
  %found.252 = phi i32 [ %found.4, %cleanup ], [ %found.1, %resume ]
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %next.153, i64 -7, i32 1
  %1 = bitcast %struct.list_head** %add.ptr to %struct.mount*
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %next.153, i64 0, i32 0
  %2 = load %struct.list_head*, %struct.list_head** %next4, align 8
  %mnt_flags = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 6
  %3 = bitcast %struct.list_head** %mnt_flags to i32*
  %4 = load i32, i32* %3, align 8
  %and = and i32 %4, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %mnt_mounts6 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 11
  %5 = bitcast %struct.list_head** %mnt_mounts6 to %struct.list_head*
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %5) #23
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %repeat.loopexit, label %if.end9

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @propagate_mount_busy(%struct.mount* noundef %1, i32 noundef 1) #21
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end9
  %mnt_expire = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 20
  %6 = bitcast %struct.list_head** %mnt_expire to %struct.list_head*
  call fastcc void @list_move_tail(%struct.list_head* noundef %6, %struct.list_head* noundef %graveyard) #23
  %inc = add i32 %found.252, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then12, %while.body
  %found.4 = phi i32 [ %found.252, %while.body ], [ %found.252, %if.end9 ], [ %inc, %if.then12 ]
  %cmp.not = icmp eq %struct.list_head* %2, %mnt_mounts2
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %resume
  %found.2.lcssa = phi i32 [ %found.1, %resume ], [ %found.4, %cleanup ]
  %cmp15.not = icmp eq %struct.mount* %this_parent.1, %parent
  br i1 %cmp15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %while.end
  %next17 = getelementptr inbounds %struct.mount, %struct.mount* %this_parent.1, i64 0, i32 7, i32 0
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %this_parent.1, i64 0, i32 1
  %7 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  br label %resume

if.end18:                                         ; preds = %while.end
  ret i32 %found.2.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_umount(i8* noundef %name, i32 noundef %flags) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @ksys_umount(i8* noundef %name, i32 noundef %flags) #23
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ksys_umount(i8* noundef %name, i32 noundef %flags) unnamed_addr #1 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !34
  %tobool.not = icmp ult i32 %flags, 16
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %flags, 8
  %tobool2.not = icmp eq i32 %and1, 0
  %spec.select = select i1 %tobool2.not, i32 129, i32 128
  %call = call fastcc i32 @user_path_at(i32 noundef -100, i8* noundef %name, i32 noundef %spec.select, %struct.path* noundef nonnull %path) #23
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @path_umount(%struct.path* noundef nonnull %path, i32 noundef %flags) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -22, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_open_tree(i32 noundef %dfd, i8* noundef %filename, i32 noundef %flags) unnamed_addr #1 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !34
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %flags, -563458
  %tobool2.not = icmp ne i32 %and1, 0
  %and3 = and i32 %flags, 32769
  %cmp = icmp eq i32 %and3, 32768
  %or.cond = or i1 %tobool2.not, %cmp
  br i1 %or.cond, label %cleanup, label %if.end5

if.end5:                                          ; preds = %entry
  %and6 = and i32 %flags, 2048
  %tobool7.not = icmp eq i32 %and6, 0
  %spec.select = select i1 %tobool7.not, i32 5, i32 1
  %and11 = and i32 %flags, 256
  %tobool12.not = icmp eq i32 %and11, 0
  %and14 = and i32 %spec.select, 4
  %lookup_flags.1 = select i1 %tobool12.not, i32 %spec.select, i32 %and14
  %and16 = shl nuw nsw i32 %flags, 2
  %1 = and i32 %and16, 16384
  %2 = or i32 %lookup_flags.1, %1
  br i1 %tobool.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %call = call fastcc i1 @may_mount() #23
  br i1 %call, label %if.end22, label %cleanup

if.end22:                                         ; preds = %land.lhs.true, %if.end5
  %and23 = and i32 %flags, 524288
  %call24 = call i32 @get_unused_fd_flags(i32 noundef %and23) #21
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  %conv = sext i32 %call24 to i64
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %call28 = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %filename, i32 noundef %2, %struct.path* noundef nonnull %path) #23
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else, label %if.then33, !prof !23

if.then33:                                        ; preds = %if.end27
  %conv34 = sext i32 %call28 to i64
  %call35 = call fastcc i8* @ERR_PTR(i64 noundef %conv34) #23
  %3 = bitcast i8* %call35 to %struct.file*
  br label %if.end48

if.else:                                          ; preds = %if.end27
  br i1 %tobool.not, label %do.end44, label %if.then37

if.then37:                                        ; preds = %if.else
  %and38 = and i32 %flags, 32768
  %tobool39 = icmp ne i32 %and38, 0
  %call40 = call fastcc %struct.file* @open_detached_copy(%struct.path* noundef nonnull %path, i1 noundef %tobool39) #23
  br label %if.end47

do.end44:                                         ; preds = %if.else
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 80
  %6 = load %struct.cred*, %struct.cred** %cred, align 8
  %call46 = call %struct.file* @dentry_open(%struct.path* noundef nonnull %path, i32 noundef 2097152, %struct.cred* noundef %6) #21
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %if.then37
  %file.0 = phi %struct.file* [ %call40, %if.then37 ], [ %call46, %do.end44 ]
  call void @path_put(%struct.path* noundef nonnull %path) #21
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then33
  %file.1 = phi %struct.file* [ %3, %if.then33 ], [ %file.0, %if.end47 ]
  %7 = bitcast %struct.file* %file.1 to i8*
  %call49 = call fastcc i1 @IS_ERR(i8* noundef %7) #23
  br i1 %call49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @put_unused_fd(i32 noundef %call24) #21
  %call51 = call fastcc i64 @PTR_ERR(i8* noundef %7) #23
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  call void @fd_install(i32 noundef %call24, %struct.file* noundef %file.1) #21
  %conv5381 = zext i32 %call24 to i64
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end52, %if.then50, %if.then26
  %retval.0 = phi i64 [ %conv, %if.then26 ], [ %call51, %if.then50 ], [ %conv5381, %if.end52 ], [ -22, %entry ], [ -1, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @open_detached_copy(%struct.path* noundef %path, i1 noundef %recursive) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 86
  %2 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %2, i64 0, i32 3
  %3 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %user_ns1 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %3, i64 0, i32 4
  %4 = load %struct.user_namespace*, %struct.user_namespace** %user_ns1, align 8
  %call2 = call fastcc %struct.mnt_namespace* @alloc_mnt_ns(%struct.user_namespace* noundef %4, i1 noundef true) #23
  %5 = bitcast %struct.mnt_namespace* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %5) #23
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.mnt_namespace* %call2 to %struct.file*
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @namespace_lock() #23
  %conv = zext i1 %recursive to i32
  %call5 = call fastcc %struct.mount* @__do_loopback(%struct.path* noundef %path, i32 noundef %conv) #23
  %7 = bitcast %struct.mount* %call5 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %7) #23
  br i1 %call6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call fastcc void @namespace_unlock() #23
  call fastcc void @free_mnt_ns(%struct.mnt_namespace* noundef %call2) #23
  %8 = bitcast %struct.mount* %call5 to %struct.file*
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call fastcc void @lock_mount_hash() #23
  %tobool10.not54 = icmp eq %struct.mount* %call5, null
  br i1 %tobool10.not54, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end9
  %mounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call2, i64 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %p.055 = phi %struct.mount* [ %call5, %for.body.lr.ph ], [ %call12, %for.body ]
  %mnt_ns11 = getelementptr inbounds %struct.mount, %struct.mount* %p.055, i64 0, i32 16
  store %struct.mnt_namespace* %call2, %struct.mnt_namespace** %mnt_ns11, align 8
  %9 = load i32, i32* %mounts, align 8
  %inc = add i32 %9, 1
  store i32 %inc, i32* %mounts, align 8
  %call12 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %p.055, %struct.mount* noundef nonnull %call5) #23
  %tobool10.not = icmp eq %struct.mount* %call12, null
  br i1 %tobool10.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end9
  %root = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call2, i64 0, i32 1
  store %struct.mount* %call5, %struct.mount** %root, align 8
  %list = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call2, i64 0, i32 2
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %call5, i64 0, i32 10
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %mnt_list) #23
  %mnt13 = getelementptr inbounds %struct.mount, %struct.mount* %call5, i64 0, i32 3
  %call14 = call %struct.vfsmount* @mntget(%struct.vfsmount* noundef %mnt13) #23
  call fastcc void @unlock_mount_hash() #23
  call fastcc void @namespace_unlock() #23
  %mnt15 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %10 = load %struct.vfsmount*, %struct.vfsmount** %mnt15, align 8
  call void @mntput(%struct.vfsmount* noundef %10) #23
  store %struct.vfsmount* %mnt13, %struct.vfsmount** %mnt15, align 8
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %11 = load %struct.cred*, %struct.cred** %cred, align 8
  %call19 = call %struct.file* @dentry_open(%struct.path* noundef %path, i32 noundef 2097152, %struct.cred* noundef %11) #21
  %12 = bitcast %struct.file* %call19 to i8*
  %call20 = call fastcc i1 @IS_ERR(i8* noundef %12) #23
  br i1 %call20, label %if.then21, label %if.else

if.then21:                                        ; preds = %for.end
  %13 = load %struct.vfsmount*, %struct.vfsmount** %mnt15, align 8
  call void @dissolve_on_fput(%struct.vfsmount* noundef %13) #23
  br label %cleanup

if.else:                                          ; preds = %for.end
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %call19, i64 0, i32 8
  %14 = load i32, i32* %f_mode, align 4
  %or = or i32 %14, 268435456
  store i32 %or, i32* %f_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.else, %if.then7, %if.then
  %retval.0 = phi %struct.file* [ %6, %if.then ], [ %8, %if.then7 ], [ %call19, %if.else ], [ %call19, %if.then21 ]
  ret %struct.file* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @dentry_open(%struct.path* noundef, i32 noundef, %struct.cred* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, %struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mount* @__do_loopback(%struct.path* nocapture noundef readonly %old_path, i32 noundef %recurse) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #23
  %0 = bitcast i8* %call to %struct.mount*
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %call2 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %1) #23
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 3, i32 2
  %2 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %2, 8192
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @check_mnt(%struct.mount* noundef %call2) #23
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %dentry = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 8
  %4 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %cmp.not = icmp eq %struct.dentry_operations* %4, @ns_dentry_operations
  br i1 %cmp.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %tobool8.not = icmp eq i32 %recurse, 0
  %dentry10 = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 1
  %5 = load %struct.dentry*, %struct.dentry** %dentry10, align 8
  br i1 %tobool8.not, label %land.lhs.true9, label %if.then15

land.lhs.true9:                                   ; preds = %if.end7
  %call11 = call fastcc i1 @has_locked_children(%struct.mount* noundef %call2, %struct.dentry* noundef %5) #23
  br i1 %call11, label %cleanup, label %if.else

if.then15:                                        ; preds = %if.end7
  %call17 = call %struct.mount* @copy_tree(%struct.mount* noundef %call2, %struct.dentry* noundef %5, i32 noundef 64) #23
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true9
  %6 = load %struct.dentry*, %struct.dentry** %dentry10, align 8
  %call19 = call fastcc %struct.mount* @clone_mnt(%struct.mount* noundef %call2, %struct.dentry* noundef %6, i32 noundef 0) #23
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  %mnt.0 = phi %struct.mount* [ %call17, %if.then15 ], [ %call19, %if.else ]
  %7 = bitcast %struct.mount* %mnt.0 to i8*
  %call21 = call fastcc i1 @IS_ERR(i8* noundef %7) #23
  br i1 %call21, label %cleanup, label %if.then22

if.then22:                                        ; preds = %if.end20
  %mnt_flags24 = getelementptr inbounds %struct.mount, %struct.mount* %mnt.0, i64 0, i32 3, i32 2
  %8 = load i32, i32* %mnt_flags24, align 8
  %and25 = and i32 %8, -8388609
  store i32 %and25, i32* %mnt_flags24, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then22, %land.lhs.true9, %land.lhs.true, %entry
  %retval.0 = phi %struct.mount* [ %0, %entry ], [ %0, %land.lhs.true ], [ %0, %land.lhs.true9 ], [ %mnt.0, %if.then22 ], [ %mnt.0, %if.end20 ]
  ret %struct.mount* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_unlinked(%struct.dentry* noundef readonly %dentry) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @d_unhashed(%struct.dentry* noundef %dentry) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp = icmp ne %struct.dentry* %0, %dentry
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @d_set_mounted(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_unhashed(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %d_hash = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 2
  %call = call fastcc i1 @hlist_bl_unhashed(%struct.hlist_bl_node* noundef %d_hash) #23
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @hlist_bl_unhashed(%struct.hlist_bl_node* nocapture noundef readonly %h) unnamed_addr #6 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_bl_node, %struct.hlist_bl_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_bl_node**, %struct.hlist_bl_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_bl_node** %0, null
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_symlink(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #23
  %cmp = icmp eq i32 %call, 6291456
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @graft_tree(%struct.mount* noundef %mnt, %struct.mount* noundef %p, %struct.mountpoint* noundef %mp) unnamed_addr #1 {
entry:
  %mnt_sb = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 1
  %0 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 10
  %1 = load i64, i64* %s_flags, align 16
  %tobool.not = icmp ult i64 %1, 2147483648
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %m_dentry = getelementptr inbounds %struct.mountpoint, %struct.mountpoint* %mp, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %m_dentry, align 8
  %call = call fastcc i1 @d_is_dir(%struct.dentry* noundef %2) #23
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call3 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %3) #23
  %4 = xor i1 %call, %call3
  br i1 %4, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @attach_recursive_mnt(%struct.mount* noundef %mnt, %struct.mount* noundef %p, %struct.mountpoint* noundef %mp, i1 noundef false) #23
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -22, %entry ], [ -20, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__d_entry_type(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 7340032
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_dir(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @d_can_lookup(%struct.dentry* noundef %dentry) #23
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i1 @d_is_autodir(%struct.dentry* noundef %dentry) #23
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @attach_recursive_mnt(%struct.mount* noundef %source_mnt, %struct.mount* noundef %dest_mnt, %struct.mountpoint* noundef %dest_mp, i1 noundef %moving) unnamed_addr #1 {
entry:
  %tree_list = alloca %struct.hlist_head, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 86
  %2 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %2, i64 0, i32 3
  %3 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %user_ns1 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %3, i64 0, i32 4
  %4 = load %struct.user_namespace*, %struct.user_namespace** %user_ns1, align 8
  %5 = bitcast %struct.hlist_head* %tree_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #24
  %6 = bitcast %struct.hlist_head* %tree_list to i64*
  store i64 0, i64* %6, align 8
  %mnt_ns2 = getelementptr inbounds %struct.mount, %struct.mount* %dest_mnt, i64 0, i32 16
  %7 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns2, align 8
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %source_mnt, i64 0, i32 3, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call3 = call fastcc %struct.mountpoint* @get_mountpoint(%struct.dentry* noundef %8) #23
  %9 = bitcast %struct.mountpoint* %call3 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %9) #23
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call fastcc i64 @PTR_ERR(i8* noundef %9) #23
  %conv = trunc i64 %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %moving, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call i32 @count_mounts(%struct.mnt_namespace* noundef %7, %struct.mount* noundef %source_mnt) #23
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %out

if.end11:                                         ; preds = %if.then6, %if.end
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %dest_mnt, i64 0, i32 3, i32 2
  %10 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %10, 4096
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call15 = call fastcc i32 @invent_group_ids(%struct.mount* noundef %source_mnt, i1 noundef true) #23
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %out

if.end18:                                         ; preds = %if.then14
  %call19 = call i32 @propagate_mnt(%struct.mount* noundef %dest_mnt, %struct.mountpoint* noundef %dest_mp, %struct.mount* noundef %source_mnt, %struct.hlist_head* noundef nonnull %tree_list) #21
  call fastcc void @lock_mount_hash() #23
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.cond.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end18
  %call74153 = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef nonnull %tree_list) #23
  %tobool75.not154 = icmp eq i32 %call74153, 0
  br i1 %tobool75.not154, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %11 = bitcast %struct.hlist_head* %tree_list to %struct.mount**
  br label %while.body

for.cond.preheader:                               ; preds = %if.end18
  %tobool23.not155 = icmp eq %struct.mount* %source_mnt, null
  br i1 %tobool23.not155, label %if.end25, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %p.0156 = phi %struct.mount* [ %call24, %for.body ], [ %source_mnt, %for.cond.preheader ]
  call fastcc void @set_mnt_shared(%struct.mount* noundef nonnull %p.0156) #23
  %call24 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %p.0156, %struct.mount* noundef nonnull %source_mnt) #23
  %tobool23.not = icmp eq %struct.mount* %call24, null
  br i1 %tobool23.not, label %if.end25, label %for.body

if.else:                                          ; preds = %if.end11
  call fastcc void @lock_mount_hash() #23
  br label %if.end25

if.end25:                                         ; preds = %for.body, %for.cond.preheader, %if.else
  br i1 %moving, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.end25
  %call28 = call fastcc %struct.mountpoint* @unhash_mnt(%struct.mount* noundef %source_mnt) #23
  call fastcc void @attach_mnt(%struct.mount* noundef %source_mnt, %struct.mount* noundef %dest_mnt, %struct.mountpoint* noundef %dest_mp) #23
  %mnt_ns29 = getelementptr inbounds %struct.mount, %struct.mount* %source_mnt, i64 0, i32 16
  %12 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns29, align 8
  call fastcc void @touch_mnt_namespace(%struct.mnt_namespace* noundef %12) #23
  br label %if.end36

if.else30:                                        ; preds = %if.end25
  %mnt_ns31 = getelementptr inbounds %struct.mount, %struct.mount* %source_mnt, i64 0, i32 16
  %13 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns31, align 8
  %tobool32.not = icmp eq %struct.mnt_namespace* %13, null
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.else30
  %list = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %13, i64 0, i32 2
  call fastcc void @list_del_init(%struct.list_head* noundef %list) #23
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.else30
  call void @mnt_set_mountpoint(%struct.mount* noundef %dest_mnt, %struct.mountpoint* noundef %dest_mp, %struct.mount* noundef %source_mnt) #23
  call fastcc void @commit_tree(%struct.mount* noundef %source_mnt) #23
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then27
  %14 = bitcast %struct.hlist_head* %tree_list to %struct.mount**
  %15 = load %struct.mount*, %struct.mount** %14, align 8
  %tobool40.not157 = icmp eq %struct.mount* %15, null
  br i1 %tobool40.not157, label %for.end73, label %land.rhs

land.rhs:                                         ; preds = %if.end36, %if.end55
  %child.0158 = phi %struct.mount* [ %17, %if.end55 ], [ %15, %if.end36 ]
  %16 = bitcast %struct.mount* %child.0158 to %struct.mount**
  %17 = load %struct.mount*, %struct.mount** %16, align 8
  %mnt_hash = getelementptr inbounds %struct.mount, %struct.mount* %child.0158, i64 0, i32 0
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %mnt_hash) #23
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %child.0158, i64 0, i32 1
  %18 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %mnt45 = getelementptr inbounds %struct.mount, %struct.mount* %18, i64 0, i32 3
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %child.0158, i64 0, i32 2
  %19 = load %struct.dentry*, %struct.dentry** %mnt_mountpoint, align 8
  %call46 = call %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef %mnt45, %struct.dentry* noundef %19) #23
  %tobool47.not = icmp eq %struct.mount* %call46, null
  br i1 %tobool47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %land.rhs
  call void @mnt_change_mountpoint(%struct.mount* noundef nonnull %child.0158, %struct.mountpoint* noundef %call3, %struct.mount* noundef nonnull %call46) #23
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.rhs
  %20 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %mnt_ns51 = getelementptr inbounds %struct.mount, %struct.mount* %20, i64 0, i32 16
  %21 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns51, align 8
  %user_ns52 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %21, i64 0, i32 4
  %22 = load %struct.user_namespace*, %struct.user_namespace** %user_ns52, align 8
  %cmp.not = icmp eq %struct.user_namespace* %22, %4
  br i1 %cmp.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end49
  call fastcc void @lock_mnt_tree(%struct.mount* noundef nonnull %child.0158) #23
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end49
  %mnt_flags57 = getelementptr inbounds %struct.mount, %struct.mount* %child.0158, i64 0, i32 3, i32 2
  %23 = load i32, i32* %mnt_flags57, align 8
  %and58 = and i32 %23, -8388609
  store i32 %and58, i32* %mnt_flags57, align 8
  call fastcc void @commit_tree(%struct.mount* noundef nonnull %child.0158) #23
  %tobool40.not = icmp eq %struct.mount* %17, null
  br i1 %tobool40.not, label %for.end73, label %land.rhs

for.end73:                                        ; preds = %if.end55, %if.end36
  call fastcc void @put_mountpoint(%struct.mountpoint* noundef %call3) #23
  call fastcc void @unlock_mount_hash() #23
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %24 = load %struct.mount*, %struct.mount** %11, align 8
  %mnt_parent83 = getelementptr inbounds %struct.mount, %struct.mount* %24, i64 0, i32 1
  %25 = load %struct.mount*, %struct.mount** %mnt_parent83, align 8
  %mnt_ns84 = getelementptr inbounds %struct.mount, %struct.mount* %25, i64 0, i32 16
  %26 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns84, align 8
  %pending_mounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %26, i64 0, i32 10
  store i32 0, i32* %pending_mounts, align 4
  call fastcc void @umount_tree(%struct.mount* noundef %24, i32 noundef 1) #23
  %call74 = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef nonnull %tree_list) #23
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  call fastcc void @unlock_mount_hash() #23
  call fastcc void @cleanup_group_ids(%struct.mount* noundef %source_mnt, %struct.mount* noundef null) #23
  br label %out

out:                                              ; preds = %if.then14, %if.then6, %while.end
  %err.0 = phi i32 [ %call15, %if.then14 ], [ %call19, %while.end ], [ %call7, %if.then6 ]
  %pending_mounts85 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %7, i64 0, i32 10
  store i32 0, i32* %pending_mounts85, align 4
  call fastcc void @read_seqlock_excl() #23
  call fastcc void @put_mountpoint(%struct.mountpoint* noundef %call3) #23
  call fastcc void @read_sequnlock_excl() #23
  br label %cleanup

cleanup:                                          ; preds = %out, %for.end73, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %err.0, %out ], [ 0, %for.end73 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #24
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_can_lookup(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #23
  %cmp = icmp eq i32 %call, 2097152
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_autodir(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #23
  %cmp = icmp eq i32 %call, 3145728
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @invent_group_ids(%struct.mount* noundef %mnt, i1 noundef %recurse) unnamed_addr #1 {
entry:
  %tobool.not23 = icmp eq %struct.mount* %mnt, null
  br i1 %tobool.not23, label %cleanup9, label %for.body

for.body:                                         ; preds = %entry, %cond.end
  %p.024 = phi %struct.mount* [ %call8, %cond.end ], [ %mnt, %entry ]
  %mnt_group_id = getelementptr inbounds %struct.mount, %struct.mount* %p.024, i64 0, i32 21
  %0 = load i32, i32* %mnt_group_id, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %p.024, i64 0, i32 3, i32 2
  %1 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %1, 4096
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %call = call fastcc i32 @mnt_alloc_group_id(%struct.mount* noundef nonnull %p.024) #23
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.then
  call fastcc void @cleanup_group_ids(%struct.mount* noundef nonnull %mnt, %struct.mount* noundef nonnull %p.024) #23
  br label %cleanup9

for.inc:                                          ; preds = %if.then, %for.body, %land.lhs.true
  br i1 %recurse, label %cond.end, label %cleanup9

cond.end:                                         ; preds = %for.inc
  %call8 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %p.024, %struct.mount* noundef nonnull %mnt) #23
  %tobool.not = icmp eq %struct.mount* %call8, null
  br i1 %tobool.not, label %cleanup9, label %for.body

cleanup9:                                         ; preds = %for.inc, %cond.end, %entry, %cleanup
  %retval.3 = phi i32 [ %call, %cleanup ], [ 0, %entry ], [ 0, %cond.end ], [ 0, %for.inc ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @propagate_mnt(%struct.mount* noundef, %struct.mountpoint* noundef, %struct.mount* noundef, %struct.hlist_head* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @commit_tree(%struct.mount* noundef %mnt) unnamed_addr #1 {
entry:
  %head = alloca %struct.list_head, align 8
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 1
  %0 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %1 = bitcast %struct.list_head* %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #24
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  store %struct.list_head* %head, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  store %struct.list_head* %head, %struct.list_head** %prev, align 8
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %0, i64 0, i32 16
  %2 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %cmp = icmp eq %struct.mount* %0, %mnt
  br i1 %cmp, label %do.body2, label %do.end7, !prof !26

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namespace.c\22; .popsection; .long 14472b - 14470b; .short 915; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !64
  unreachable

do.end7:                                          ; preds = %entry
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 10
  call fastcc void @list_add_tail(%struct.list_head* noundef nonnull %head, %struct.list_head* noundef %mnt_list) #23
  %3 = bitcast %struct.list_head* %head to i8**
  %.pn45 = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn45 to %struct.list_head*
  %cmp13.not46 = icmp eq %struct.list_head* %head, %4
  br i1 %cmp13.not46, label %for.end, label %for.body

for.body:                                         ; preds = %do.end7, %for.body
  %.pn47 = phi i8* [ %.pn, %for.body ], [ %.pn45, %do.end7 ]
  %mnt_ns17 = getelementptr i8, i8* %.pn47, i64 88
  %5 = bitcast i8* %mnt_ns17 to %struct.mnt_namespace**
  store %struct.mnt_namespace* %2, %struct.mnt_namespace** %5, align 8
  %6 = bitcast i8* %.pn47 to i8**
  %.pn = load i8*, i8** %6, align 8
  %7 = bitcast i8* %.pn to %struct.list_head*
  %cmp13.not = icmp eq %struct.list_head* %head, %7
  br i1 %cmp13.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %do.end7
  %prev26 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %2, i64 0, i32 2, i32 1
  %8 = load %struct.list_head*, %struct.list_head** %prev26, align 8
  call fastcc void @list_splice(%struct.list_head* noundef nonnull %head, %struct.list_head* noundef %8) #23
  %pending_mounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %2, i64 0, i32 10
  %9 = load i32, i32* %pending_mounts, align 4
  %mounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %2, i64 0, i32 9
  %10 = load i32, i32* %mounts, align 8
  %add = add i32 %10, %9
  store i32 %add, i32* %mounts, align 8
  store i32 0, i32* %pending_mounts, align 4
  call fastcc void @__attach_mnt(%struct.mount* noundef %mnt, %struct.mount* noundef %0) #23
  call fastcc void @touch_mnt_namespace(%struct.mnt_namespace* noundef %2) #23
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cleanup_group_ids(%struct.mount* noundef %mnt, %struct.mount* noundef readnone %end) unnamed_addr #1 {
entry:
  %cmp.not9 = icmp eq %struct.mount* %mnt, %end
  br i1 %cmp.not9, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %p.010 = phi %struct.mount* [ %call, %for.inc ], [ %mnt, %entry ]
  %mnt_group_id = getelementptr inbounds %struct.mount, %struct.mount* %p.010, i64 0, i32 21
  %0 = load i32, i32* %mnt_group_id, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %p.010, i64 0, i32 3, i32 2
  %1 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %1, 4096
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @mnt_release_group_id(%struct.mount* noundef %p.010) #23
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %call = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef %p.010, %struct.mount* noundef %mnt) #23
  %cmp.not = icmp eq %struct.mount* %call, %end
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xchg_case_mb_32(i32 noundef %x, i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i32, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09stlxr\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i32* elementtype(i32) %0, i32 %x, i32* elementtype(i32) %0) #24, !srcloc !65
  %asmresult = extractvalue { i32, i64 } %1, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i64 noundef %x, i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %x, i64* elementtype(i64) %0) #24, !srcloc !66
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @can_change_locked_flags(%struct.mount* nocapture noundef readonly %mnt, i32 noundef %mnt_flags) unnamed_addr #6 {
entry:
  %mnt_flags2 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags2, align 8
  %and = and i32 %0, 4194304
  %tobool.not = icmp ne i32 %and, 0
  %and3 = and i32 %mnt_flags, 64
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = and i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and5 = and i32 %0, 2097152
  %tobool6.not = icmp ne i32 %and5, 0
  %and8 = and i32 %mnt_flags, 2
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond43 = and i1 %tobool9.not, %tobool6.not
  br i1 %or.cond43, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %and12 = and i32 %0, 1048576
  %tobool13.not = icmp ne i32 %and12, 0
  %and15 = and i32 %mnt_flags, 1
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond44 = and i1 %tobool16.not, %tobool13.not
  br i1 %or.cond44, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end11
  %and19 = and i32 %0, 524288
  %tobool20.not = icmp ne i32 %and19, 0
  %and22 = and i32 %mnt_flags, 4
  %tobool23.not = icmp eq i32 %and22, 0
  %or.cond45 = and i1 %tobool23.not, %tobool20.not
  br i1 %or.cond45, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end18
  %and26 = and i32 %0, 262144
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end32, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end25
  %1 = xor i32 %0, %mnt_flags
  %2 = and i32 %1, 56
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %land.lhs.true28, %if.end25
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true28, %if.end18, %if.end11, %if.end, %entry, %if.end32
  %retval.0 = phi i1 [ true, %if.end32 ], [ false, %entry ], [ false, %if.end ], [ false, %if.end11 ], [ false, %if.end18 ], [ false, %land.lhs.true28 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @change_mount_ro_state(%struct.mount* nocapture noundef %mnt, i32 noundef %mnt_flags) unnamed_addr #1 {
entry:
  %and = and i32 %mnt_flags, 64
  %and.lobit = lshr exact i32 %and, 6
  %mnt2 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3
  %call = call i1 @__mnt_is_readonly(%struct.vfsmount* noundef %mnt2) #23
  %conv3 = zext i1 %call to i32
  %cmp = icmp eq i32 %and.lobit, %conv3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc i32 @mnt_make_readonly(%struct.mount* noundef %mnt) #23
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %mnt_flags10 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags10, align 8
  %and11 = and i32 %0, -65
  store i32 %and11, i32* %mnt_flags10, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8, %if.then6
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ 0, %if.end8 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_mount_attributes(%struct.mount* nocapture noundef %mnt, i32 noundef %mnt_flags) unnamed_addr #1 {
entry:
  %mnt_flags2 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags2, align 8
  %and = and i32 %0, -256
  %or = or i32 %and, %mnt_flags
  store i32 %or, i32* %mnt_flags2, align 8
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 16
  %1 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  call fastcc void @touch_mnt_namespace(%struct.mnt_namespace* noundef %1) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mnt_warn_timestamp_expiry(%struct.path* noundef %mountpoint, %struct.vfsmount* noundef readonly %mnt) unnamed_addr #1 {
entry:
  %tm = alloca %struct.tm, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  %0 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call = call i1 @__mnt_is_readonly(%struct.vfsmount* noundef %mnt) #23
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i64 @ktime_get_real_seconds() #21
  %add = add i64 %call1, 946080000
  %s_time_max = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 30
  %1 = load i64, i64* %s_time_max, align 64
  %cmp = icmp sgt i64 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #21
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %2 = inttoptr i64 %call2 to i8*
  %call3 = call i8* @d_path(%struct.path* noundef %mountpoint, i8* noundef nonnull %2, i32 noundef 4096) #21
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -12) #23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call3, %cond.true ], [ %call4, %cond.false ]
  %3 = bitcast %struct.tm* %tm to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !34
  %4 = load i64, i64* %s_time_max, align 64
  call void @time64_to_tm(i64 noundef %4, i32 noundef 0, %struct.tm* noundef nonnull %tm) #21
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 5
  %5 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %name = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %5, i64 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %call6 = call fastcc i32 @is_mounted(%struct.vfsmount* noundef %mnt) #23
  %tobool7.not = icmp eq i32 %call6, 0
  %cond8 = select i1 %tobool7.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 5
  %7 = load i64, i64* %tm_year, align 8
  %add9 = add i64 %7, 1900
  %8 = load i64, i64* %s_time_max, align 64
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0), i8* noundef %6, i8* noundef %cond8, i8* noundef %cond, i64 noundef %add9, i64 noundef %8) #26
  call void @free_pages(i64 noundef %call2, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #24
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mnt_make_readonly(%struct.mount* nocapture noundef %mnt) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @mnt_hold_writers(%struct.mount* noundef %mnt) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %or = or i32 %0, 64
  store i32 %or, i32* %mnt_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @mnt_unhold_writers(%struct.mount* noundef %mnt) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mnt_hold_writers(%struct.mount* nocapture noundef %mnt) unnamed_addr #1 {
entry:
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %or = or i32 %0, 512
  store i32 %or, i32* %mnt_flags, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !67
  %call = call fastcc i32 @mnt_get_writers(%struct.mount* noundef %mnt) #23
  %cmp.not = icmp eq i32 %call, 0
  %. = select i1 %cmp.not, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mnt_unhold_writers(%struct.mount* nocapture noundef %mnt) unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !68
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, -513
  store i32 %and, i32* %mnt_flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @d_path(%struct.path* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, %struct.tm* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_mounted(%struct.vfsmount* noundef readonly %mnt) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %mnt) #23
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 16
  %0 = bitcast %struct.mnt_namespace** %mnt_ns to i8**
  %1 = load i8*, i8** %0, align 8
  %call1 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %1) #23
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(i8* noundef, i32 noundef, %struct.path* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @mnt_ns_loop(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @is_mnt_ns_file(%struct.dentry* noundef %dentry) #23
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 42
  %1 = bitcast i8** %i_private to %struct.ns_common**
  %2 = load %struct.ns_common*, %struct.ns_common** %1, align 8
  %call1 = call fastcc %struct.mnt_namespace* @to_mnt_ns(%struct.ns_common* noundef %2) #23
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 86
  %5 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns3 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %5, i64 0, i32 3
  %6 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns3, align 8
  %seq = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %6, i64 0, i32 6
  %7 = load i64, i64* %seq, align 8
  %seq4 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call1, i64 0, i32 6
  %8 = load i64, i64* %seq4, align 8
  %cmp = icmp uge i64 %7, %8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mountpoint* @lock_mount(%struct.path* noundef %path) unnamed_addr #1 {
entry:
  %dentry1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %d_inode51 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode51, align 8
  call fastcc void @inode_lock(%struct.inode* noundef %1) #23
  %call52 = call fastcc i32 @cant_mount(%struct.dentry* noundef %0) #23
  %tobool.not53 = icmp eq i32 %call52, 0
  br i1 %tobool.not53, label %if.end.lr.ph, label %if.then, !prof !23

if.end.lr.ph:                                     ; preds = %entry
  %mnt26 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  call fastcc void @namespace_lock() #23
  %call658 = call %struct.vfsmount* @lookup_mnt(%struct.path* noundef %path) #23
  %tobool7.not59 = icmp eq %struct.vfsmount* %call658, null
  br i1 %tobool7.not59, label %if.then17, label %if.end23, !prof !23

if.then:                                          ; preds = %if.end23, %entry
  %dentry.0.lcssa50 = phi %struct.dentry* [ %0, %entry ], [ %8, %if.end23 ]
  %d_inode.le49 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.0.lcssa50, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode.le49, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %2) #23
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -2) #23
  %3 = bitcast i8* %call5 to %struct.mountpoint*
  br label %cleanup29

if.end:                                           ; preds = %if.end23
  call fastcc void @namespace_lock() #23
  %call6 = call %struct.vfsmount* @lookup_mnt(%struct.path* noundef %path) #23
  %tobool7.not = icmp eq %struct.vfsmount* %call6, null
  br i1 %tobool7.not, label %if.then17, label %if.end23, !prof !23

if.then17:                                        ; preds = %if.end, %if.end.lr.ph
  %dentry.054.lcssa = phi %struct.dentry* [ %0, %if.end.lr.ph ], [ %8, %if.end ]
  %call18 = call fastcc %struct.mountpoint* @get_mountpoint(%struct.dentry* noundef %dentry.054.lcssa) #23
  %4 = bitcast %struct.mountpoint* %call18 to i8*
  %call19 = call fastcc i1 @IS_ERR(i8* noundef %4) #23
  br i1 %call19, label %if.then20, label %cleanup29

if.then20:                                        ; preds = %if.then17
  %d_inode.le = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.054.lcssa, i64 0, i32 5
  call fastcc void @namespace_unlock() #23
  %5 = load %struct.inode*, %struct.inode** %d_inode.le, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %5) #23
  br label %cleanup29

if.end23:                                         ; preds = %if.end.lr.ph, %if.end
  %call660 = phi %struct.vfsmount* [ %call6, %if.end ], [ %call658, %if.end.lr.ph ]
  call fastcc void @namespace_unlock() #23
  %6 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %d_inode25 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i64 0, i32 5
  %7 = load %struct.inode*, %struct.inode** %d_inode25, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %7) #23
  call void @path_put(%struct.path* noundef %path) #21
  store %struct.vfsmount* %call660, %struct.vfsmount** %mnt26, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %call660, i64 0, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call27 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %8) #23
  store %struct.dentry* %8, %struct.dentry** %dentry1, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i64 0, i32 5
  %9 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock(%struct.inode* noundef %9) #23
  %call = call fastcc i32 @cant_mount(%struct.dentry* noundef %8) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !23

cleanup29:                                        ; preds = %if.then20, %if.then17, %if.then
  %retval.1 = phi %struct.mountpoint* [ %3, %if.then ], [ %call18, %if.then17 ], [ %call18, %if.then20 ]
  ret %struct.mountpoint* %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.mnt_namespace* @to_mnt_ns(%struct.ns_common* noundef readnone %ns) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.ns_common* %ns to %struct.mnt_namespace*
  ret %struct.mnt_namespace* %0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @flags_to_propagation_type(i32 noundef %ms_flags) unnamed_addr #18 {
entry:
  %and = and i32 %ms_flags, -49153
  %and1 = and i32 %ms_flags, -2015233
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %and to i64
  %call = call fastcc i1 @is_power_of_2(i64 noundef %conv) #30
  %and. = select i1 %call, i32 %and, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %and., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #18 {
entry:
  %cmp.not = icmp eq i64 %n, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !69
  %cmp1 = icmp ult i64 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_move_mount(%struct.path* nocapture noundef readonly %old_path, %struct.path* noundef %new_path) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.mountpoint* @lock_mount(%struct.path* noundef %new_path) #23
  %0 = bitcast %struct.mountpoint* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #23
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #23
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %mnt = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call3 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %1) #23
  %mnt4 = getelementptr inbounds %struct.path, %struct.path* %new_path, i64 0, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt4, align 8
  %call5 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %2) #23
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %call3, i64 0, i32 1
  %3 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %call6 = call fastcc i32 @mnt_has_parent(%struct.mount* noundef %call3) #23
  %tobool = icmp ne i32 %call6, 0
  %mnt_mp = getelementptr inbounds %struct.mount, %struct.mount* %call3, i64 0, i32 17
  %4 = load %struct.mountpoint*, %struct.mountpoint** %mnt_mp, align 8
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call3, i64 0, i32 16
  %5 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %call7 = call fastcc i32 @check_mnt(%struct.mount* noundef %call5) #23
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %out.thread, label %if.end10

if.end10:                                         ; preds = %if.end
  %mnt11 = getelementptr inbounds %struct.mount, %struct.mount* %call3, i64 0, i32 3
  %call12 = call fastcc i32 @is_mounted(%struct.vfsmount* noundef %mnt11) #23
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %out.thread, label %if.end15

if.end15:                                         ; preds = %if.end10
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  %call18 = call fastcc i32 @check_mnt(%struct.mount* noundef %call3) #23
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %out.thread, label %if.end23

cond.false:                                       ; preds = %if.end15
  %call20 = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef %5) #23
  br i1 %call20, label %if.end23, label %out.thread

if.end23:                                         ; preds = %cond.false, %cond.true
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call3, i64 0, i32 3, i32 2
  %6 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %6, 8388608
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end27, label %out.thread

if.end27:                                         ; preds = %if.end23
  %dentry = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 1
  %7 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %1, i64 0, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp.not = icmp eq %struct.dentry* %7, %8
  br i1 %cmp.not, label %if.end31, label %out.thread

if.end31:                                         ; preds = %if.end27
  %dentry32 = getelementptr inbounds %struct.path, %struct.path* %new_path, i64 0, i32 1
  %9 = load %struct.dentry*, %struct.dentry** %dentry32, align 8
  %call33 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %9) #23
  %call36 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %7) #23
  %10 = xor i1 %call33, %call36
  br i1 %10, label %out.thread, label %if.end41

if.end41:                                         ; preds = %if.end31
  br i1 %tobool, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %if.end41
  %mnt_flags45 = getelementptr inbounds %struct.mount, %struct.mount* %3, i64 0, i32 3, i32 2
  %11 = load i32, i32* %mnt_flags45, align 8
  %and46 = and i32 %11, 4096
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end49, label %out.thread

if.end49:                                         ; preds = %land.lhs.true, %if.end41
  %mnt_flags51 = getelementptr inbounds %struct.mount, %struct.mount* %call5, i64 0, i32 3, i32 2
  %12 = load i32, i32* %mnt_flags51, align 8
  %and52 = and i32 %12, 4096
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end58, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end49
  %call55 = call fastcc i32 @tree_contains_unbindable(%struct.mount* noundef %call3) #23
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %out.thread

if.end58:                                         ; preds = %land.lhs.true54, %if.end49
  %call59 = call fastcc i1 @check_for_nsfs_mounts(%struct.mount* noundef %call3) #23
  br i1 %call59, label %for.cond.preheader, label %out.thread

for.cond.preheader:                               ; preds = %if.end58
  %call62135 = call fastcc i32 @mnt_has_parent(%struct.mount* noundef %call5) #23
  %tobool63.not136 = icmp eq i32 %call62135, 0
  br i1 %tobool63.not136, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %p.0137 = phi %struct.mount* [ %13, %for.inc ], [ %call5, %for.cond.preheader ]
  %cmp64 = icmp eq %struct.mount* %p.0137, %call3
  br i1 %cmp64, label %out.thread, label %for.inc

for.inc:                                          ; preds = %for.body
  %mnt_parent68 = getelementptr inbounds %struct.mount, %struct.mount* %p.0137, i64 0, i32 1
  %13 = load %struct.mount*, %struct.mount** %mnt_parent68, align 8
  %call62 = call fastcc i32 @mnt_has_parent(%struct.mount* noundef %13) #23
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %14 = load %struct.vfsmount*, %struct.vfsmount** %mnt4, align 8
  %call70 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %14) #23
  %call72 = call fastcc i32 @attach_recursive_mnt(%struct.mount* noundef %call3, %struct.mount* noundef %call70, %struct.mountpoint* noundef %call, i1 noundef %tobool) #23
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %out.thread

if.end75:                                         ; preds = %for.end
  %mnt_expire = getelementptr inbounds %struct.mount, %struct.mount* %call3, i64 0, i32 11
  call fastcc void @list_del_init(%struct.list_head* noundef %mnt_expire) #23
  br i1 %tobool, label %if.then82, label %if.else

out.thread:                                       ; preds = %for.body, %if.end23, %if.end27, %if.end31, %land.lhs.true, %land.lhs.true54, %for.end, %if.end58, %cond.true, %cond.false, %if.end10, %if.end
  %err.0.ph = phi i32 [ -22, %if.end ], [ -22, %if.end10 ], [ -22, %cond.false ], [ -22, %cond.true ], [ -40, %if.end58 ], [ %call72, %for.end ], [ -22, %land.lhs.true54 ], [ -22, %land.lhs.true ], [ -22, %if.end31 ], [ -22, %if.end27 ], [ -22, %if.end23 ], [ -40, %for.body ]
  call fastcc void @unlock_mount(%struct.mountpoint* noundef %call) #23
  br label %cleanup

if.then82:                                        ; preds = %if.end75
  call fastcc void @put_mountpoint(%struct.mountpoint* noundef %4) #23
  call fastcc void @unlock_mount(%struct.mountpoint* noundef %call) #23
  call fastcc void @mntput_no_expire(%struct.mount* noundef %3) #23
  br label %cleanup

if.else:                                          ; preds = %if.end75
  call fastcc void @unlock_mount(%struct.mountpoint* noundef %call) #23
  call fastcc void @free_mnt_ns(%struct.mnt_namespace* noundef %5) #23
  br label %cleanup

cleanup:                                          ; preds = %out.thread, %if.else, %if.then82, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.then82 ], [ 0, %if.else ], [ %err.0.ph, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @tree_contains_unbindable(%struct.mount* noundef readonly %mnt) unnamed_addr #9 {
entry:
  %tobool.not7 = icmp eq %struct.mount* %mnt, null
  br i1 %tobool.not7, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %p.08 = phi %struct.mount* [ %call, %for.inc ], [ %mnt, %entry ]
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %p.08, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %0, 8192
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %call = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %p.08, %struct.mount* noundef nonnull %mnt) #23
  %tobool.not = icmp eq %struct.mount* %call, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.inc ], [ 1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @check_for_nsfs_mounts(%struct.mount* noundef readonly %subtree) unnamed_addr #1 {
entry:
  call fastcc void @lock_mount_hash() #23
  %tobool.not7 = icmp eq %struct.mount* %subtree, null
  br i1 %tobool.not7, label %out, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %p.08 = phi %struct.mount* [ %call1, %for.inc ], [ %subtree, %entry ]
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %p.08, i64 0, i32 3, i32 0
  %0 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call = call fastcc i1 @mnt_ns_loop(%struct.dentry* noundef %0) #23
  br i1 %call, label %out.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body
  %call1 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef nonnull %p.08, %struct.mount* noundef nonnull %subtree) #23
  %tobool.not = icmp eq %struct.mount* %call1, null
  br i1 %tobool.not, label %out.loopexit, label %for.body

out.loopexit:                                     ; preds = %for.inc, %for.body
  %1 = xor i1 %call, true
  br label %out

out:                                              ; preds = %out.loopexit, %entry
  %tobool.not.lcssa = phi i1 [ true, %entry ], [ %1, %out.loopexit ]
  call fastcc void @unlock_mount_hash() #23
  ret i1 %tobool.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file_system_type* @get_fs_type(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mount_capable(%struct.fs_context* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_new_mount_fc(%struct.fs_context* noundef %fc, %struct.path* noundef %mountpoint, i32 noundef %mnt_flags) unnamed_addr #1 {
entry:
  %mnt_flags.addr = alloca i32, align 4
  store i32 %mnt_flags, i32* %mnt_flags.addr, align 4
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %fc, i64 0, i32 5
  %0 = load %struct.dentry*, %struct.dentry** %root, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call1 = call fastcc i1 @mount_too_revealing(%struct.super_block* noundef %1, i32* noundef nonnull %mnt_flags.addr) #23
  br i1 %call1, label %if.then5, label %if.end6, !prof !26

if.then5:                                         ; preds = %entry
  call void @fc_drop_locked(%struct.fs_context* noundef %fc) #21
  br label %cleanup

if.end6:                                          ; preds = %entry
  %s_umount = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 14
  call void @up_write(%struct.rw_semaphore* noundef %s_umount) #21
  %call7 = call %struct.vfsmount* @vfs_create_mount(%struct.fs_context* noundef %fc) #23
  %2 = bitcast %struct.vfsmount* %call7 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %2) #23
  br i1 %call8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %call10 = call fastcc i64 @PTR_ERR(i8* noundef %2) #23
  %conv11 = trunc i64 %call10 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call fastcc void @mnt_warn_timestamp_expiry(%struct.path* noundef %mountpoint, %struct.vfsmount* noundef %call7) #23
  %call13 = call fastcc %struct.mountpoint* @lock_mount(%struct.path* noundef %mountpoint) #23
  %3 = bitcast %struct.mountpoint* %call13 to i8*
  %call14 = call fastcc i1 @IS_ERR(i8* noundef %3) #23
  br i1 %call14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @mntput(%struct.vfsmount* noundef %call7) #23
  %call16 = call fastcc i64 @PTR_ERR(i8* noundef %3) #23
  %conv17 = trunc i64 %call16 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call19 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %call7) #23
  %4 = load i32, i32* %mnt_flags.addr, align 4
  %call20 = call fastcc i32 @do_add_mount(%struct.mount* noundef %call19, %struct.mountpoint* noundef %call13, %struct.path* noundef %mountpoint, i32 noundef %4) #23
  call fastcc void @unlock_mount(%struct.mountpoint* noundef %call13) #23
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.then22, label %cleanup

if.then22:                                        ; preds = %if.end18
  call void @mntput(%struct.vfsmount* noundef %call7) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then22, %if.then15, %if.then9, %if.then5
  %retval.0 = phi i32 [ -1, %if.then5 ], [ %conv11, %if.then9 ], [ %conv17, %if.then15 ], [ %call20, %if.then22 ], [ %call20, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mount_too_revealing(%struct.super_block* nocapture noundef readonly %sb, i32* nocapture noundef %new_mnt_flags) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 86
  %2 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %2, i64 0, i32 3
  %3 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %user_ns = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %3, i64 0, i32 4
  %4 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %cmp = icmp eq %struct.user_namespace* %4, @init_user_ns
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %s_iflags1 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 11
  %5 = load i64, i64* %s_iflags1, align 8
  %and = and i64 %5, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %and4 = and i64 %5, 6
  %cmp5.not = icmp eq i64 %and4, 6
  br i1 %cmp5.not, label %if.end45, label %if.then6

if.then6:                                         ; preds = %if.end3
  %.b60 = load i1, i1* @mount_too_revealing.__already_done, align 1
  br i1 %.b60, label %cleanup, label %if.then12, !prof !23

if.then12:                                        ; preds = %if.then6
  store i1 true, i1* @mount_too_revealing.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i64 noundef 6) #21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namespace.c\22; .popsection; .long 14472b - 14470b; .short 4501; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !70
  br label %cleanup

if.end45:                                         ; preds = %if.end3
  %call46 = call fastcc i1 @mnt_already_visible(%struct.mnt_namespace* noundef %3, %struct.super_block* noundef %sb, i32* noundef %new_mnt_flags) #23
  %lnot47 = xor i1 %call46, true
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then12, %if.end, %entry, %if.end45
  %retval.0 = phi i1 [ %lnot47, %if.end45 ], [ false, %entry ], [ false, %if.end ], [ true, %if.then12 ], [ true, %if.then6 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_drop_locked(%struct.fs_context* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mnt_already_visible(%struct.mnt_namespace* noundef %ns, %struct.super_block* nocapture noundef readonly %sb, i32* nocapture noundef %new_mnt_flags) unnamed_addr #1 {
entry:
  %0 = load i32, i32* %new_mnt_flags, align 4
  call void @down_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  call fastcc void @lock_ns_list(%struct.mnt_namespace* noundef %ns) #23
  %list = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %ns, i64 0, i32 2
  %1 = bitcast %struct.list_head* %list to i8**
  %.pn136 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn136 to %struct.list_head*
  %cmp.not137 = icmp eq %struct.list_head* %list, %2
  br i1 %cmp.not137, label %cleanup79, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %s_type3 = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 5
  %and20 = and i32 %0, 64
  %tobool21.not = icmp eq i32 %and20, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc68
  %.pn138 = phi i8* [ %.pn136, %for.body.lr.ph ], [ %.pn, %for.inc68 ]
  %mnt.0.in = getelementptr i8, i8* %.pn138, i64 -144
  %mnt.0 = bitcast i8* %mnt.0.in to %struct.mount*
  %call = call fastcc i1 @mnt_is_cursor(%struct.mount* noundef %mnt.0) #23
  br i1 %call, label %for.inc68, label %if.end

if.end:                                           ; preds = %for.body
  %mnt_sb = getelementptr i8, i8* %.pn138, i64 -104
  %3 = bitcast i8* %mnt_sb to %struct.super_block**
  %4 = load %struct.super_block*, %struct.super_block** %3, align 8
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 5
  %5 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %6 = load %struct.file_system_type*, %struct.file_system_type** %s_type3, align 8
  %cmp4.not = icmp eq %struct.file_system_type* %5, %6
  br i1 %cmp4.not, label %if.end6, label %for.inc68

if.end6:                                          ; preds = %if.end
  %mnt2 = getelementptr i8, i8* %.pn138, i64 -112
  %mnt_root = bitcast i8* %mnt2 to %struct.dentry**
  %7 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 13
  %8 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %cmp10.not = icmp eq %struct.dentry* %7, %8
  br i1 %cmp10.not, label %if.end12, label %for.inc68

if.end12:                                         ; preds = %if.end6
  %mnt_flags14 = getelementptr i8, i8* %.pn138, i64 -96
  %9 = bitcast i8* %mnt_flags14 to i32*
  %10 = load i32, i32* %9, align 8
  %call17 = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %4) #23
  %or = or i32 %10, 4194304
  %spec.select = select i1 %call17, i32 %or, i32 %10
  %and = and i32 %spec.select, 4194304
  %tobool.not = icmp ne i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %for.inc68, label %if.end23

if.end23:                                         ; preds = %if.end12
  %and24 = and i32 %spec.select, 262144
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end31, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end23
  %11 = xor i32 %spec.select, %0
  %12 = and i32 %11, 56
  %cmp29.not = icmp eq i32 %12, 0
  br i1 %cmp29.not, label %if.end31, label %for.inc68

if.end31:                                         ; preds = %land.lhs.true26, %if.end23
  %mnt_mounts = getelementptr i8, i8* %.pn138, i64 -56
  %.pn122.in129 = bitcast i8* %mnt_mounts to i8**
  %.pn122130 = load i8*, i8** %.pn122.in129, align 8
  %cmp41.not131 = icmp eq i8* %.pn122130, %mnt_mounts
  br i1 %cmp41.not131, label %cleanup64, label %for.body43

for.body43:                                       ; preds = %if.end31, %for.inc
  %.pn122132 = phi i8* [ %.pn122, %for.inc ], [ %.pn122130, %if.end31 ]
  %mnt_flags45 = getelementptr i8, i8* %.pn122132, i64 -56
  %13 = bitcast i8* %mnt_flags45 to i32*
  %14 = load i32, i32* %13, align 8
  %and46 = and i32 %14, 8388608
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %for.inc, label %if.end49

if.end49:                                         ; preds = %for.body43
  %mnt_mountpoint = getelementptr i8, i8* %.pn122132, i64 -80
  %15 = bitcast i8* %mnt_mountpoint to %struct.dentry**
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i64 0, i32 5
  %17 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call50 = call i1 @is_empty_dir_inode(%struct.inode* noundef %17) #21
  br i1 %call50, label %for.inc, label %for.inc68

for.inc:                                          ; preds = %if.end49, %for.body43
  %.pn122.in = bitcast i8* %.pn122132 to i8**
  %.pn122 = load i8*, i8** %.pn122.in, align 8
  %cmp41.not = icmp eq i8* %.pn122, %mnt_mounts
  br i1 %cmp41.not, label %cleanup64, label %for.body43

cleanup64:                                        ; preds = %if.end31, %for.inc
  %and61 = and i32 %spec.select, 4456448
  %18 = load i32, i32* %new_mnt_flags, align 4
  %or62 = or i32 %18, %and61
  store i32 %or62, i32* %new_mnt_flags, align 4
  br label %cleanup79

for.inc68:                                        ; preds = %if.end49, %for.body, %if.end, %if.end6, %if.end12, %land.lhs.true26
  %19 = bitcast i8* %.pn138 to i8**
  %.pn = load i8*, i8** %19, align 8
  %20 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %list, %20
  br i1 %cmp.not, label %cleanup79, label %for.body

cleanup79:                                        ; preds = %for.inc68, %entry, %cleanup64
  %cmp.not128 = phi i1 [ true, %cleanup64 ], [ false, %entry ], [ false, %for.inc68 ]
  call fastcc void @unlock_ns_list(%struct.mnt_namespace* noundef %ns) #23
  call void @up_read(%struct.rw_semaphore* noundef nonnull @namespace_sem) #21
  ret i1 %cmp.not128
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_empty_dir_inode(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, i8* noundef, i32 noundef, %struct.path* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_free_inum(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dec_mnt_namespaces(%struct.ucounts* noundef %ucounts) unnamed_addr #1 {
entry:
  call void @dec_ucount(%struct.ucounts* noundef %ucounts, i32 noundef 5) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(%struct.ucounts* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #21
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !26

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !23

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #21
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #24, !srcloc !71
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.ucounts* @inc_mnt_namespaces(%struct.user_namespace* noundef %ns) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call1 = call %struct.ucounts* @inc_ucount(%struct.user_namespace* noundef %ns, i64 %coerce.val.ii, i32 noundef 5) #21
  ret %struct.ucounts* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 4197824) #21
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ns_alloc_inum(%struct.ns_common* noundef %ns) unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.ns_common, %struct.ns_common* %ns, i64 0, i32 0, i32 0
  store volatile i64 0, i64* %counter.i.i, align 8
  %inum = getelementptr inbounds %struct.ns_common, %struct.ns_common* %ns, i64 0, i32 2
  %call = call i32 @proc_alloc_inum(i32* noundef %inum) #21
  ret i32 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #8 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ucounts* @inc_ucount(%struct.user_namespace* noundef, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_alloc_inum(i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return() unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @mnt_ns_seq, i64 0, i32 0), i64 1, i64* elementtype(i64) getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @mnt_ns_seq, i64 0, i32 0)) #24, !srcloc !72
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mount(i8* noundef %dev_name, i8* noundef %dir_name, i8* noundef %type, i64 noundef %flags, i8* noundef %data) unnamed_addr #1 {
entry:
  %call = call fastcc i8* @copy_mount_string(i8* noundef %type) #23
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %call) #23
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %call) #23
  br i1 %call2, label %out_type, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i8* @copy_mount_string(i8* noundef %dev_name) #23
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %call3) #23
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %call3) #23
  br i1 %call6, label %out_dev, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i8* @copy_mount_options(i8* noundef %data) #23
  %call10 = call fastcc i64 @PTR_ERR(i8* noundef %call9) #23
  %call12 = call fastcc i1 @IS_ERR(i8* noundef %call9) #23
  br i1 %call12, label %out_data, label %if.end14

if.end14:                                         ; preds = %if.end8
  %call15 = call i64 @do_mount(i8* noundef %call3, i8* noundef %dir_name, i8* noundef %call, i64 noundef %flags, i8* noundef %call9) #23
  call void @kfree(i8* noundef %call9) #21
  br label %out_data

out_data:                                         ; preds = %if.end8, %if.end14
  %ret.0.in = phi i64 [ %call10, %if.end8 ], [ %call15, %if.end14 ]
  call void @kfree(i8* noundef %call3) #21
  br label %out_dev

out_dev:                                          ; preds = %if.end, %out_data
  %ret.1.in = phi i64 [ %call4, %if.end ], [ %ret.0.in, %out_data ]
  call void @kfree(i8* noundef %call) #21
  br label %out_type

out_type:                                         ; preds = %entry, %out_dev
  %ret.2.in = phi i64 [ %call1, %entry ], [ %ret.1.in, %out_dev ]
  %sext = shl i64 %ret.2.in, 32
  %conv17 = ashr exact i64 %sext, 32
  ret i64 %conv17
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @copy_mount_string(i8* noundef %data) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %data, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call i8* @strndup_user(i8* noundef nonnull %data, i64 noundef 4096) #21
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @copy_mount_options(i8* noundef %data) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %data, null
  br i1 %tobool.not, label %cleanup32, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 12), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #21
  %tobool1.not = icmp eq i8* %call.i.i, null
  br i1 %tobool1.not, label %cleanup32.sink.split, label %if.end4

if.end4:                                          ; preds = %if.end
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %call.i.i, i8* noundef nonnull %data, i64 noundef 4096) #21
  %conv = trunc i64 %call2.i to i32
  %tobool8.not65 = icmp eq i32 %conv, 0
  br i1 %tobool8.not65, label %cleanup32, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end4
  %conv7 = sub i32 4096, %conv
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %cleanup
  %offset.067 = phi i32 [ %inc, %cleanup ], [ %conv7, %while.body.preheader ]
  %left.066 = phi i32 [ %dec, %cleanup ], [ %conv, %while.body.preheader ]
  %idx.ext = zext i32 %offset.067 to i64
  %add.ptr = getelementptr i8, i8* %data, i64 %idx.ext
  %call9 = call fastcc i64 @__range_ok(i8* noundef %add.ptr, i64 noundef 1) #23
  %tobool10.not = icmp eq i64 %call9, 0
  br i1 %tobool10.not, label %while.end, label %if.end21

if.end21:                                         ; preds = %while.body
  %call12 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr) #23
  %1 = call { i32, i64 } asm sideeffect "1:\09ldtrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %call12, i32 -14, i32 0) #24, !srcloc !73
  %asmresult = extractvalue { i32, i64 } %1, 0
  %tobool24.not = icmp eq i32 %asmresult, 0
  br i1 %tobool24.not, label %cleanup, label %while.end

cleanup:                                          ; preds = %if.end21
  %asmresult16 = extractvalue { i32, i64 } %1, 1
  %conv17 = trunc i64 %asmresult16 to i8
  %arrayidx = getelementptr i8, i8* %call.i.i, i64 %idx.ext
  store i8 %conv17, i8* %arrayidx, align 1
  %dec = add i32 %left.066, -1
  %inc = add i32 %offset.067, 1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %cleanup32, label %while.body

while.end:                                        ; preds = %while.body, %if.end21
  %cmp = icmp eq i32 %left.066, 4096
  br i1 %cmp, label %if.then29, label %cleanup32

if.then29:                                        ; preds = %while.end
  call void @kfree(i8* noundef nonnull %call.i.i) #21
  br label %cleanup32.sink.split

cleanup32.sink.split:                             ; preds = %if.end, %if.then29
  %.sink = phi i64 [ -14, %if.then29 ], [ -12, %if.end ]
  %call30 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #23
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup, %cleanup32.sink.split, %if.end4, %while.end, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call.i.i, %while.end ], [ %call.i.i, %if.end4 ], [ %call30, %cleanup32.sink.split ], [ %call.i.i, %cleanup ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strndup_user(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #24, !srcloc !74
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #24, !srcloc !75
  call void asm sideeffect "hint #20", "~{memory}"() #24, !srcloc !76
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #23
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !26

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #23
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !23

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #21
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_fsmount(i32 noundef %fs_fd, i32 noundef %flags, i32 noundef %attr_flags) unnamed_addr #1 {
entry:
  %newmount = alloca %struct.path, align 8
  %mnt_flags = alloca i32, align 4
  %0 = bitcast %struct.path* %newmount to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !34
  %1 = bitcast i32* %mnt_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #24
  %call = call fastcc i1 @may_mount() #23
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp ult i32 %flags, 2
  %and3 = and i32 %attr_flags, -2097408
  %tobool.not = icmp eq i32 %and3, 0
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %conv = zext i32 %attr_flags to i64
  %call6 = call fastcc i32 @attr_flags_to_mnt_flags(i64 noundef %conv) #23
  store i32 %call6, i32* %mnt_flags, align 4
  %and7 = and i32 %attr_flags, 112
  switch i32 %and7, label %cleanup [
    i32 32, label %sw.epilog
    i32 16, label %sw.bb
    i32 0, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end5
  %or = or i32 %call6, 8
  store i32 %or, i32* %mnt_flags, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end5
  %or9 = or i32 %call6, 32
  store i32 %or9, i32* %mnt_flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb, %if.end5
  %call10 = call fastcc [2 x i64] @fdget(i32 noundef %fs_fd) #23
  %call10.fca.0.extract = extractvalue [2 x i64] %call10, 0
  %2 = inttoptr i64 %call10.fca.0.extract to %struct.file*
  %tobool12.not = icmp eq i64 %call10.fca.0.extract, 0
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %sw.epilog
  %f_op = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 3
  %3 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp16.not = icmp eq %struct.file_operations* %3, @fscontext_fops
  br i1 %cmp16.not, label %if.end19, label %err_fsfd

if.end19:                                         ; preds = %if.end14
  %private_data = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 15
  %4 = bitcast i8** %private_data to %struct.fs_context**
  %5 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %uapi_mutex = getelementptr inbounds %struct.fs_context, %struct.fs_context* %5, i64 0, i32 1
  %call21 = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %uapi_mutex) #21
  %conv22 = sext i32 %call21 to i64
  %cmp23 = icmp slt i32 %call21, 0
  br i1 %cmp23, label %err_fsfd, label %if.end26

if.end26:                                         ; preds = %if.end19
  %root = getelementptr inbounds %struct.fs_context, %struct.fs_context* %5, i64 0, i32 5
  %6 = load %struct.dentry*, %struct.dentry** %root, align 8
  %tobool27.not = icmp eq %struct.dentry* %6, null
  br i1 %tobool27.not, label %err_unlock, label %if.end29

if.end29:                                         ; preds = %if.end26
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i64 0, i32 9
  %7 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call31 = call fastcc i1 @mount_too_revealing(%struct.super_block* noundef %7, i32* noundef nonnull %mnt_flags) #23
  br i1 %call31, label %do.end, label %if.end35

do.end:                                           ; preds = %if.end29
  %call34 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0)) #26
  br label %err_unlock

if.end35:                                         ; preds = %if.end29
  %phase = getelementptr inbounds %struct.fs_context, %struct.fs_context* %5, i64 0, i32 17
  %8 = bitcast i24* %phase to i32*
  %bf.load = load i32, i32* %8, align 8
  %9 = and i32 %bf.load, 65280
  %cmp36.not = icmp eq i32 %9, 512
  br i1 %cmp36.not, label %if.end39, label %err_unlock

if.end39:                                         ; preds = %if.end35
  %sb_flags = getelementptr inbounds %struct.fs_context, %struct.fs_context* %5, i64 0, i32 13
  %10 = load i32, i32* %sb_flags, align 8
  %and40 = and i32 %10, 64
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end39
  call fastcc void @warn_mandlock() #23
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39
  %call44 = call %struct.vfsmount* @vfs_create_mount(%struct.fs_context* noundef %5) #23
  %mnt45 = getelementptr inbounds %struct.path, %struct.path* %newmount, i64 0, i32 0
  store %struct.vfsmount* %call44, %struct.vfsmount** %mnt45, align 8
  %11 = bitcast %struct.vfsmount* %call44 to i8*
  %call47 = call fastcc i1 @IS_ERR(i8* noundef %11) #23
  br i1 %call47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end43
  %call50 = call fastcc i64 @PTR_ERR(i8* noundef %11) #23
  br label %err_unlock

if.end51:                                         ; preds = %if.end43
  %12 = load %struct.dentry*, %struct.dentry** %root, align 8
  %call53 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %12) #23
  %dentry = getelementptr inbounds %struct.path, %struct.path* %newmount, i64 0, i32 1
  store %struct.dentry* %12, %struct.dentry** %dentry, align 8
  %13 = load i32, i32* %mnt_flags, align 4
  %mnt_flags55 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %call44, i64 0, i32 2
  store i32 %13, i32* %mnt_flags55, align 8
  call void @vfs_clean_context(%struct.fs_context* noundef %5) #21
  %14 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %15 = inttoptr i64 %14 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i64 0, i32 86
  %16 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %16, i64 0, i32 3
  %17 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %user_ns = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %17, i64 0, i32 4
  %18 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call57 = call fastcc %struct.mnt_namespace* @alloc_mnt_ns(%struct.user_namespace* noundef %18, i1 noundef true) #23
  %19 = bitcast %struct.mnt_namespace* %call57 to i8*
  %call58 = call fastcc i1 @IS_ERR(i8* noundef %19) #23
  br i1 %call58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end51
  %call60 = call fastcc i64 @PTR_ERR(i8* noundef %19) #23
  br label %err_path

if.end61:                                         ; preds = %if.end51
  %call63 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %call44) #23
  %mnt_ns64 = getelementptr inbounds %struct.mount, %struct.mount* %call63, i64 0, i32 16
  store %struct.mnt_namespace* %call57, %struct.mnt_namespace** %mnt_ns64, align 8
  %root65 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call57, i64 0, i32 1
  store %struct.mount* %call63, %struct.mount** %root65, align 8
  %mounts = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call57, i64 0, i32 9
  store i32 1, i32* %mounts, align 8
  %mnt_list = getelementptr inbounds %struct.mount, %struct.mount* %call63, i64 0, i32 10
  %list = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %call57, i64 0, i32 2
  call fastcc void @list_add(%struct.list_head* noundef %mnt_list, %struct.list_head* noundef %list) #23
  %call67 = call %struct.vfsmount* @mntget(%struct.vfsmount* noundef %call44) #23
  %cred = getelementptr inbounds %struct.fs_context, %struct.fs_context* %5, i64 0, i32 8
  %20 = load %struct.cred*, %struct.cred** %cred, align 8
  %call68 = call %struct.file* @dentry_open(%struct.path* noundef nonnull %newmount, i32 noundef 2097152, %struct.cred* noundef %20) #21
  %21 = bitcast %struct.file* %call68 to i8*
  %call69 = call fastcc i1 @IS_ERR(i8* noundef %21) #23
  br i1 %call69, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end61
  %22 = load %struct.vfsmount*, %struct.vfsmount** %mnt45, align 8
  call void @dissolve_on_fput(%struct.vfsmount* noundef %22) #23
  %call72 = call fastcc i64 @PTR_ERR(i8* noundef %21) #23
  br label %err_path

if.end73:                                         ; preds = %if.end61
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %call68, i64 0, i32 8
  %23 = load i32, i32* %f_mode, align 4
  %or74 = or i32 %23, 268435456
  store i32 %or74, i32* %f_mode, align 4
  %and75 = shl nuw nsw i32 %flags, 19
  %24 = and i32 %and75, 524288
  %call77 = call i32 @get_unused_fd_flags(i32 noundef %24) #21
  %conv78 = sext i32 %call77 to i64
  %cmp79 = icmp sgt i32 %call77, -1
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %if.end73
  call void @fd_install(i32 noundef %call77, %struct.file* noundef %call68) #21
  br label %err_path

if.else:                                          ; preds = %if.end73
  call void @fput(%struct.file* noundef %call68) #21
  br label %err_path

err_path:                                         ; preds = %if.then81, %if.else, %if.then70, %if.then59
  %ret.0 = phi i64 [ %call60, %if.then59 ], [ %call72, %if.then70 ], [ %conv78, %if.then81 ], [ %conv78, %if.else ]
  call void @path_put(%struct.path* noundef nonnull %newmount) #21
  br label %err_unlock

err_unlock:                                       ; preds = %if.end35, %if.end26, %err_path, %if.then48, %do.end
  %ret.1 = phi i64 [ -1, %do.end ], [ -16, %if.end35 ], [ %call50, %if.then48 ], [ %ret.0, %err_path ], [ -22, %if.end26 ]
  call void @mutex_unlock(%struct.mutex* noundef %uapi_mutex) #21
  br label %err_fsfd

err_fsfd:                                         ; preds = %if.end19, %if.end14, %err_unlock
  %ret.2 = phi i64 [ -22, %if.end14 ], [ %conv22, %if.end19 ], [ %ret.1, %err_unlock ]
  call fastcc void @fdput([2 x i64] %call10) #23
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end5, %if.end, %entry, %err_fsfd
  %retval.0 = phi i64 [ %ret.2, %err_fsfd ], [ -1, %entry ], [ -22, %if.end ], [ -22, %if.end5 ], [ -9, %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #24
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @attr_flags_to_mnt_flags(i64 noundef %attr_flags) unnamed_addr #7 {
entry:
  %0 = trunc i64 %attr_flags to i32
  %1 = shl i32 %0, 6
  %2 = and i32 %1, 64
  %3 = lshr i32 %0, 1
  %4 = and i32 %3, 1
  %5 = or i32 %4, %2
  %6 = and i32 %3, 2
  %7 = or i32 %5, %6
  %8 = and i32 %3, 4
  %9 = or i32 %7, %8
  %10 = lshr i32 %0, 3
  %11 = and i32 %10, 16
  %12 = or i32 %9, %11
  %13 = lshr i32 %0, 14
  %14 = and i32 %13, 128
  %15 = or i32 %12, %14
  ret i32 %15
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #1 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #21
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #23
  ret [2 x i64] %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfs_clean_context(%struct.fs_context* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #1 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #7 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_move_mount(i32 noundef %from_dfd, i8* noundef %from_pathname, i32 noundef %to_dfd, i8* noundef %to_pathname, i32 noundef %flags) unnamed_addr #1 {
entry:
  %from_path = alloca %struct.path, align 8
  %to_path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %from_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !34
  %1 = bitcast %struct.path* %to_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !34
  %call = call fastcc i1 @may_mount() #23
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, -376
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %and3 = and i32 %flags, 1
  %and7 = shl nuw nsw i32 %flags, 1
  %2 = and i32 %and7, 4
  %3 = or i32 %2, %and3
  %and12 = shl nuw nsw i32 %flags, 12
  %4 = and i32 %and12, 16384
  %5 = or i32 %3, %4
  %call17 = call fastcc i32 @user_path_at(i32 noundef %from_dfd, i8* noundef %from_pathname, i32 noundef %5, %struct.path* noundef nonnull %from_path) #23
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end2
  %conv = sext i32 %call17 to i64
  br label %cleanup

if.end19:                                         ; preds = %if.end2
  %and20 = lshr i32 %flags, 4
  %and20.lobit = and i32 %and20, 1
  %and25 = lshr i32 %flags, 3
  %6 = and i32 %and25, 4
  %7 = or i32 %6, %and20.lobit
  %and30 = shl nuw nsw i32 %flags, 8
  %8 = and i32 %and30, 16384
  %9 = or i32 %7, %8
  %call35 = call fastcc i32 @user_path_at(i32 noundef %to_dfd, i8* noundef %to_pathname, i32 noundef %9, %struct.path* noundef nonnull %to_path) #23
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %out_from, label %if.end39

if.end39:                                         ; preds = %if.end19
  %and45 = and i32 %flags, 256
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end39
  %call48 = call fastcc i32 @do_set_group(%struct.path* noundef nonnull %from_path, %struct.path* noundef nonnull %to_path) #23
  br label %out_to

if.else:                                          ; preds = %if.end39
  %call49 = call fastcc i32 @do_move_mount(%struct.path* noundef nonnull %from_path, %struct.path* noundef nonnull %to_path) #23
  br label %out_to

out_to:                                           ; preds = %if.then47, %if.else
  %ret.0 = phi i32 [ %call48, %if.then47 ], [ %call49, %if.else ]
  call void @path_put(%struct.path* noundef nonnull %to_path) #21
  br label %out_from

out_from:                                         ; preds = %if.end19, %out_to
  %ret.1 = phi i32 [ %call35, %if.end19 ], [ %ret.0, %out_to ]
  call void @path_put(%struct.path* noundef nonnull %from_path) #21
  %conv51 = sext i32 %ret.1 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %out_from, %if.then18
  %retval.0 = phi i64 [ %conv, %if.then18 ], [ %conv51, %out_from ], [ -1, %entry ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #24
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_set_group(%struct.path* nocapture noundef readonly %from_path, %struct.path* nocapture noundef readonly %to_path) unnamed_addr #1 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %from_path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %to_path, i64 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %call2 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %1) #23
  call fastcc void @namespace_lock() #23
  %mnt3 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3
  %call4 = call fastcc i32 @is_mounted(%struct.vfsmount* noundef %mnt3) #23
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %mnt5 = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 3
  %call6 = call fastcc i32 @is_mounted(%struct.vfsmount* noundef %mnt5) #23
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %out, label %if.end9

if.end9:                                          ; preds = %if.end
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 16
  %2 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %user_ns = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %2, i64 0, i32 4
  %3 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call10 = call i1 @ns_capable(%struct.user_namespace* noundef %3, i32 noundef 21) #21
  br i1 %call10, label %if.end12, label %out

if.end12:                                         ; preds = %if.end9
  %mnt_ns13 = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 16
  %4 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns13, align 8
  %user_ns14 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %4, i64 0, i32 4
  %5 = load %struct.user_namespace*, %struct.user_namespace** %user_ns14, align 8
  %call15 = call i1 @ns_capable(%struct.user_namespace* noundef %5, i32 noundef 21) #21
  br i1 %call15, label %if.end17, label %out

if.end17:                                         ; preds = %if.end12
  %dentry = getelementptr inbounds %struct.path, %struct.path* %from_path, i64 0, i32 1
  %6 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %7 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %7, i64 0, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp.not = icmp eq %struct.dentry* %6, %8
  br i1 %cmp.not, label %if.end20, label %out

if.end20:                                         ; preds = %if.end17
  %dentry21 = getelementptr inbounds %struct.path, %struct.path* %to_path, i64 0, i32 1
  %9 = load %struct.dentry*, %struct.dentry** %dentry21, align 8
  %10 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %mnt_root23 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %10, i64 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %mnt_root23, align 8
  %cmp24.not = icmp eq %struct.dentry* %9, %11
  br i1 %cmp24.not, label %if.end26, label %out

if.end26:                                         ; preds = %if.end20
  %mnt_sb = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 1
  %12 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %mnt_sb29 = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 3, i32 1
  %13 = load %struct.super_block*, %struct.super_block** %mnt_sb29, align 8
  %cmp30.not = icmp eq %struct.super_block* %12, %13
  br i1 %cmp30.not, label %if.end32, label %out

if.end32:                                         ; preds = %if.end26
  %mnt_root34 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt5, i64 0, i32 0
  %14 = load %struct.dentry*, %struct.dentry** %mnt_root34, align 8
  %mnt_root36 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt3, i64 0, i32 0
  %15 = load %struct.dentry*, %struct.dentry** %mnt_root36, align 8
  %call37 = call i1 @is_subdir(%struct.dentry* noundef %14, %struct.dentry* noundef %15) #21
  br i1 %call37, label %if.end39, label %out

if.end39:                                         ; preds = %if.end32
  %16 = load %struct.dentry*, %struct.dentry** %mnt_root34, align 8
  %call42 = call fastcc i1 @has_locked_children(%struct.mount* noundef %call, %struct.dentry* noundef %16) #23
  br i1 %call42, label %out, label %if.end44

if.end44:                                         ; preds = %if.end39
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 3, i32 2
  %17 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %17, 4096
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %out

lor.lhs.false:                                    ; preds = %if.end44
  %mnt_master = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 15
  %18 = load %struct.mount*, %struct.mount** %mnt_master, align 8
  %tobool47.not = icmp eq %struct.mount* %18, null
  br i1 %tobool47.not, label %if.end49, label %out

if.end49:                                         ; preds = %lor.lhs.false
  %mnt_flags51 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 2
  %19 = load i32, i32* %mnt_flags51, align 8
  %and52 = and i32 %19, 4096
  %tobool53.not = icmp eq i32 %and52, 0
  %mnt_master54 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 15
  %20 = load %struct.mount*, %struct.mount** %mnt_master54, align 8
  %tobool55.not = icmp eq %struct.mount* %20, null
  br i1 %tobool53.not, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %if.end49
  br i1 %tobool55.not, label %out, label %if.end63

if.end57:                                         ; preds = %if.end49
  br i1 %tobool55.not, label %if.then68, label %if.end63

if.end63:                                         ; preds = %land.lhs.true, %if.end57
  %mnt_slave = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 14
  %mnt_slave_list = getelementptr inbounds %struct.mount, %struct.mount* %20, i64 0, i32 13
  call fastcc void @list_add(%struct.list_head* noundef %mnt_slave, %struct.list_head* noundef %mnt_slave_list) #23
  store %struct.mount* %20, %struct.mount** %mnt_master, align 8
  %.pre103 = load i32, i32* %mnt_flags51, align 8
  %.pre104 = and i32 %.pre103, 4096
  %tobool67.not = icmp eq i32 %.pre104, 0
  br i1 %tobool67.not, label %out, label %if.then68

if.then68:                                        ; preds = %if.end57, %if.end63
  %mnt_group_id = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 21
  %21 = load i32, i32* %mnt_group_id, align 4
  %mnt_group_id69 = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 21
  store i32 %21, i32* %mnt_group_id69, align 4
  %mnt_share = getelementptr inbounds %struct.mount, %struct.mount* %call2, i64 0, i32 12
  %mnt_share70 = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 12
  call fastcc void @list_add(%struct.list_head* noundef %mnt_share, %struct.list_head* noundef %mnt_share70) #23
  call fastcc void @lock_mount_hash() #23
  call fastcc void @set_mnt_shared(%struct.mount* noundef %call2) #23
  call fastcc void @unlock_mount_hash() #23
  br label %out

out:                                              ; preds = %if.end63, %if.then68, %land.lhs.true, %if.end44, %lor.lhs.false, %if.end39, %if.end32, %if.end26, %if.end20, %if.end17, %if.end12, %if.end9, %if.end, %entry
  %err.0 = phi i32 [ -22, %if.end17 ], [ -22, %if.end20 ], [ -22, %if.end26 ], [ -22, %if.end39 ], [ -22, %if.end44 ], [ -22, %lor.lhs.false ], [ -22, %land.lhs.true ], [ -22, %if.end32 ], [ -1, %if.end12 ], [ -1, %if.end9 ], [ -22, %if.end ], [ -22, %entry ], [ 0, %if.then68 ], [ 0, %if.end63 ]
  call fastcc void @namespace_unlock() #23
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pivot_root(i8* noundef %new_root, i8* noundef %put_old) unnamed_addr #1 {
entry:
  %new = alloca %struct.path, align 8
  %old = alloca %struct.path, align 8
  %root = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !34
  %1 = bitcast %struct.path* %old to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !34
  %2 = bitcast %struct.path* %root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !34
  %call = call fastcc i1 @may_mount() #23
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @user_path_at(i32 noundef -100, i8* noundef %new_root, i32 noundef 3, %struct.path* noundef nonnull %new) #23
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %out0

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @user_path_at(i32 noundef -100, i8* noundef %put_old, i32 noundef 3, %struct.path* noundef nonnull %old) #23
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %out1

if.end7:                                          ; preds = %if.end3
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !28
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 83
  %5 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  call fastcc void @get_fs_root(%struct.fs_struct* noundef %5, %struct.path* noundef nonnull %root) #23
  %call13 = call fastcc %struct.mountpoint* @lock_mount(%struct.path* noundef nonnull %old) #23
  %6 = bitcast %struct.mountpoint* %call13 to i8*
  %call14 = call fastcc i64 @PTR_ERR(i8* noundef %6) #23
  %conv = trunc i64 %call14 to i32
  %call15 = call fastcc i1 @IS_ERR(i8* noundef %6) #23
  br i1 %call15, label %out3, label %if.end17

if.end17:                                         ; preds = %if.end7
  %mnt = getelementptr inbounds %struct.path, %struct.path* %new, i64 0, i32 0
  %7 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call18 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %7) #23
  %mnt19 = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 0
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt19, align 8
  %call20 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %8) #23
  %mnt21 = getelementptr inbounds %struct.path, %struct.path* %old, i64 0, i32 0
  %9 = load %struct.vfsmount*, %struct.vfsmount** %mnt21, align 8
  %call22 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %9) #23
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %call18, i64 0, i32 1
  %10 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %mnt_parent23 = getelementptr inbounds %struct.mount, %struct.mount* %call20, i64 0, i32 1
  %11 = load %struct.mount*, %struct.mount** %mnt_parent23, align 8
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %call22, i64 0, i32 3, i32 2
  %12 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %12, 4096
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %out4.thread

lor.lhs.false:                                    ; preds = %if.end17
  %mnt_flags27 = getelementptr inbounds %struct.mount, %struct.mount* %10, i64 0, i32 3, i32 2
  %13 = load i32, i32* %mnt_flags27, align 8
  %and28 = and i32 %13, 4096
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %out4.thread

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %mnt_flags32 = getelementptr inbounds %struct.mount, %struct.mount* %11, i64 0, i32 3, i32 2
  %14 = load i32, i32* %mnt_flags32, align 8
  %and33 = and i32 %14, 4096
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end36, label %out4.thread

if.end36:                                         ; preds = %lor.lhs.false30
  %call37 = call fastcc i32 @check_mnt(%struct.mount* noundef %call20) #23
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %out4.thread, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end36
  %call40 = call fastcc i32 @check_mnt(%struct.mount* noundef %call18) #23
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %out4.thread, label %if.end43

if.end43:                                         ; preds = %lor.lhs.false39
  %mnt_flags45 = getelementptr inbounds %struct.mount, %struct.mount* %call18, i64 0, i32 3, i32 2
  %15 = load i32, i32* %mnt_flags45, align 8
  %and46 = and i32 %15, 8388608
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end49, label %out4.thread

if.end49:                                         ; preds = %if.end43
  %dentry = getelementptr inbounds %struct.path, %struct.path* %new, i64 0, i32 1
  %16 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call50 = call fastcc i32 @d_unlinked(%struct.dentry* noundef %16) #23
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %out4.thread

if.end53:                                         ; preds = %if.end49
  %cmp = icmp eq %struct.mount* %call18, %call20
  %cmp56 = icmp eq %struct.mount* %call22, %call20
  %or.cond = select i1 %cmp, i1 true, i1 %cmp56
  br i1 %or.cond, label %out4.thread, label %if.end59

if.end59:                                         ; preds = %if.end53
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %8, i64 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %dentry61 = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 1
  %18 = load %struct.dentry*, %struct.dentry** %dentry61, align 8
  %cmp62.not = icmp eq %struct.dentry* %17, %18
  br i1 %cmp62.not, label %if.end65, label %out4.thread

if.end65:                                         ; preds = %if.end59
  %call66 = call fastcc i32 @mnt_has_parent(%struct.mount* noundef %call20) #23
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %out4.thread, label %if.end69

if.end69:                                         ; preds = %if.end65
  %mnt_root71 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %7, i64 0, i32 0
  %19 = load %struct.dentry*, %struct.dentry** %mnt_root71, align 8
  %cmp73.not = icmp eq %struct.dentry* %19, %16
  br i1 %cmp73.not, label %if.end76, label %out4.thread

if.end76:                                         ; preds = %if.end69
  %call77 = call fastcc i32 @mnt_has_parent(%struct.mount* noundef %call18) #23
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %out4.thread, label %if.end80

if.end80:                                         ; preds = %if.end76
  %dentry81 = getelementptr inbounds %struct.path, %struct.path* %old, i64 0, i32 1
  %20 = load %struct.dentry*, %struct.dentry** %dentry81, align 8
  %call82 = call i1 @is_path_reachable(%struct.mount* noundef %call22, %struct.dentry* noundef %20, %struct.path* noundef nonnull %new) #23
  br i1 %call82, label %if.end84, label %out4.thread

if.end84:                                         ; preds = %if.end80
  %21 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call86 = call i1 @is_path_reachable(%struct.mount* noundef %call18, %struct.dentry* noundef %21, %struct.path* noundef nonnull %root) #23
  br i1 %call86, label %if.end88, label %out4.thread

if.end88:                                         ; preds = %if.end84
  call fastcc void @lock_mount_hash() #23
  call fastcc void @umount_mnt(%struct.mount* noundef %call18) #23
  %call89 = call fastcc %struct.mountpoint* @unhash_mnt(%struct.mount* noundef %call20) #23
  %mnt_flags91 = getelementptr inbounds %struct.mount, %struct.mount* %call20, i64 0, i32 3, i32 2
  %22 = load i32, i32* %mnt_flags91, align 8
  %and92 = and i32 %22, 8388608
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.then103, label %if.then94

if.then94:                                        ; preds = %if.end88
  %23 = load i32, i32* %mnt_flags45, align 8
  %or = or i32 %23, 8388608
  store i32 %or, i32* %mnt_flags45, align 8
  %24 = load i32, i32* %mnt_flags91, align 8
  %and99 = and i32 %24, -8388609
  store i32 %and99, i32* %mnt_flags91, align 8
  br label %if.then103

out4.thread:                                      ; preds = %if.end84, %if.end80, %if.end76, %if.end69, %if.end65, %if.end59, %if.end53, %if.end49, %if.end43, %if.end36, %lor.lhs.false39, %if.end17, %lor.lhs.false, %lor.lhs.false30
  %error.0.ph = phi i32 [ -22, %lor.lhs.false30 ], [ -22, %lor.lhs.false ], [ -22, %if.end17 ], [ -22, %lor.lhs.false39 ], [ -22, %if.end36 ], [ -22, %if.end43 ], [ -2, %if.end49 ], [ -16, %if.end53 ], [ -22, %if.end59 ], [ -22, %if.end65 ], [ -22, %if.end69 ], [ -22, %if.end76 ], [ -22, %if.end80 ], [ -22, %if.end84 ]
  call fastcc void @unlock_mount(%struct.mountpoint* noundef %call13) #23
  br label %out3

if.then103:                                       ; preds = %if.then94, %if.end88
  call fastcc void @attach_mnt(%struct.mount* noundef %call20, %struct.mount* noundef %call22, %struct.mountpoint* noundef %call13) #23
  call fastcc void @attach_mnt(%struct.mount* noundef %call18, %struct.mount* noundef %11, %struct.mountpoint* noundef %call89) #23
  call fastcc void @mnt_add_count(%struct.mount* noundef %11, i32 noundef -1) #23
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 86
  %25 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %mnt_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %25, i64 0, i32 3
  %26 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  call fastcc void @touch_mnt_namespace(%struct.mnt_namespace* noundef %26) #23
  %mnt_expire = getelementptr inbounds %struct.mount, %struct.mount* %call18, i64 0, i32 11
  call fastcc void @list_del_init(%struct.list_head* noundef %mnt_expire) #23
  call fastcc void @put_mountpoint(%struct.mountpoint* noundef %call89) #23
  call fastcc void @unlock_mount_hash() #23
  call void @chroot_fs_refs(%struct.path* noundef nonnull %root, %struct.path* noundef nonnull %new) #21
  call fastcc void @unlock_mount(%struct.mountpoint* noundef %call13) #23
  call fastcc void @mntput_no_expire(%struct.mount* noundef %10) #23
  br label %out3

out3:                                             ; preds = %out4.thread, %if.then103, %if.end7
  %error.1 = phi i32 [ %conv, %if.end7 ], [ 0, %if.then103 ], [ %error.0.ph, %out4.thread ]
  call void @path_put(%struct.path* noundef nonnull %root) #21
  call void @path_put(%struct.path* noundef nonnull %old) #21
  br label %out1

out1:                                             ; preds = %if.end3, %out3
  %error.3 = phi i32 [ %call4, %if.end3 ], [ %error.1, %out3 ]
  call void @path_put(%struct.path* noundef nonnull %new) #21
  br label %out0

out0:                                             ; preds = %if.end, %out1
  %error.4 = phi i32 [ %call1, %if.end ], [ %error.3, %out1 ]
  %conv105 = sext i32 %error.4 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %out0
  %retval.0 = phi i64 [ %conv105, %out0 ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #24
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #24
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @chroot_fs_refs(%struct.path* noundef, %struct.path* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mount_setattr(i32 noundef %dfd, i8* noundef %path, i32 noundef %flags, %struct.mount_attr* noundef %uattr, i64 noundef %usize) unnamed_addr #1 {
entry:
  %target = alloca %struct.path, align 8
  %attr = alloca %struct.mount_attr, align 8
  %kattr = alloca %struct.mount_kattr, align 8
  %0 = bitcast %struct.path* %target to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !34
  %1 = bitcast %struct.mount_attr* %attr to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !34
  %2 = bitcast %struct.mount_kattr* %kattr to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #24
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !34
  %and = and i32 %flags, -39169
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp ugt i64 %usize, 4096
  br i1 %cmp, label %cleanup, label %if.end4, !prof !26

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp ult i64 %usize, 32
  br i1 %cmp5, label %cleanup, label %if.end15, !prof !26

if.end15:                                         ; preds = %if.end4
  %call = call fastcc i1 @may_mount() #23
  br i1 %call, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end15
  %3 = bitcast %struct.mount_attr* %uattr to i8*
  %cmp.i = icmp ugt i64 %usize, 32
  %cond.i = select i1 %cmp.i, i64 32, i64 %usize
  br i1 %cmp.i, label %if.then9.i, label %if.end19.i

if.then9.i:                                       ; preds = %if.end17
  %sub.i = sub nuw nsw i64 %usize, %cond.i
  %add.ptr10.i = getelementptr i8, i8* %3, i64 %cond.i
  %call11.i = call i32 @check_zeroed_user(i8* noundef %add.ptr10.i, i64 noundef %sub.i) #21
  %cmp12.i = icmp slt i32 %call11.i, 1
  %tobool.not.i = icmp eq i32 %call11.i, 0
  %..i = select i1 %tobool.not.i, i32 -7, i32 %call11.i
  br i1 %cmp12.i, label %if.then20, label %if.end19.i

if.end19.i:                                       ; preds = %if.then9.i, %if.end17
  %call2.i.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef %3, i64 noundef %cond.i) #21
  %tobool21.not.i = icmp eq i64 %call2.i.i, 0
  br i1 %tobool21.not.i, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.then9.i, %if.end19.i
  %retval.1.i.ph = phi i32 [ -14, %if.end19.i ], [ %..i, %if.then9.i ]
  %conv21 = sext i32 %retval.1.i.ph to i64
  br label %cleanup

if.end22:                                         ; preds = %if.end19.i
  %attr_set = getelementptr inbounds %struct.mount_attr, %struct.mount_attr* %attr, i64 0, i32 0
  %4 = load i64, i64* %attr_set, align 8
  %cmp23 = icmp eq i64 %4, 0
  %attr_clr = getelementptr inbounds %struct.mount_attr, %struct.mount_attr* %attr, i64 0, i32 1
  %5 = load i64, i64* %attr_clr, align 8
  %cmp25 = icmp eq i64 %5, 0
  %or.cond = select i1 %cmp23, i1 %cmp25, i1 false
  %propagation = getelementptr inbounds %struct.mount_attr, %struct.mount_attr* %attr, i64 0, i32 2
  %6 = load i64, i64* %propagation, align 8
  %cmp28 = icmp eq i64 %6, 0
  %or.cond47 = select i1 %or.cond, i1 %cmp28, i1 false
  br i1 %or.cond47, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end22
  %call32 = call fastcc i32 @build_mount_kattr(%struct.mount_attr* noundef nonnull %attr, %struct.mount_kattr* noundef nonnull %kattr, i32 noundef %flags) #23
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end31
  %conv35 = sext i32 %call32 to i64
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %lookup_flags = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 3
  %7 = load i32, i32* %lookup_flags, align 4
  %call37 = call fastcc i32 @user_path_at(i32 noundef %dfd, i8* noundef %path, i32 noundef %7, %struct.path* noundef nonnull %target) #23
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end36
  %conv40 = sext i32 %call37 to i64
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %call42 = call fastcc i32 @do_mount_setattr(%struct.path* noundef nonnull %target, %struct.mount_kattr* noundef nonnull %kattr) #23
  call fastcc void @finish_mount_kattr(%struct.mount_kattr* noundef nonnull %kattr) #23
  call void @path_put(%struct.path* noundef nonnull %target) #21
  %conv43 = sext i32 %call42 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end15, %if.end4, %if.end, %entry, %if.end41, %if.then39, %if.then34, %if.then20
  %retval.0 = phi i64 [ %conv21, %if.then20 ], [ %conv35, %if.then34 ], [ %conv40, %if.then39 ], [ %conv43, %if.end41 ], [ -22, %entry ], [ -7, %if.end ], [ -22, %if.end4 ], [ -1, %if.end15 ], [ 0, %if.end22 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #24
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #24
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @build_mount_kattr(%struct.mount_attr* nocapture noundef readonly %attr, %struct.mount_kattr* nocapture noundef %kattr, i32 noundef %flags) unnamed_addr #1 {
entry:
  %and = and i32 %flags, 2048
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 5, i32 1
  %and2 = and i32 %flags, 256
  %tobool3.not = icmp eq i32 %and2, 0
  %and5 = and i32 %spec.select, 4
  %lookup_flags.1 = select i1 %tobool3.not, i32 %spec.select, i32 %and5
  %and7 = shl i32 %flags, 2
  %0 = and i32 %and7, 16384
  %1 = or i32 %lookup_flags.1, %0
  %and12 = lshr i32 %flags, 15
  %2 = trunc i32 %and12 to i8
  %3 = and i8 %2, 1
  %.compoundliteral.sroa.0.0..sroa_cast = bitcast %struct.mount_kattr* %kattr to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef align 8 dereferenceable(12) %.compoundliteral.sroa.0.0..sroa_cast, i8 0, i64 12, i1 false)
  %.compoundliteral.sroa.2.0..sroa_idx382 = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 3
  store i32 %1, i32* %.compoundliteral.sroa.2.0..sroa_idx382, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 4
  store i8 %3, i8* %.compoundliteral.sroa.3.0..sroa_idx, align 8
  %.compoundliteral.sroa.4.0..sroa_raw_idx = getelementptr inbounds i8, i8* %.compoundliteral.sroa.0.0..sroa_cast, i64 17
  call void @llvm.memset.p0i8.i64(i8* noundef align 1 dereferenceable(15) %.compoundliteral.sroa.4.0..sroa_raw_idx, i8 0, i64 15, i1 false)
  %propagation = getelementptr inbounds %struct.mount_attr, %struct.mount_attr* %attr, i64 0, i32 2
  %4 = load i64, i64* %propagation, align 8
  %and15 = and i64 %4, -1966081
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %cond.false, label %cleanup

cond.false:                                       ; preds = %entry
  %5 = trunc i64 %4 to i32
  %conv = and i32 %5, 1966080
  %call = call fastcc i32 @__arch_hweight32(i32 noundef %conv) #23
  %cmp = icmp ugt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end340

if.end340:                                        ; preds = %cond.false
  %6 = load i64, i64* %propagation, align 8
  %conv342 = trunc i64 %6 to i32
  %propagation343 = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 2
  store i32 %conv342, i32* %propagation343, align 8
  %attr_set = getelementptr inbounds %struct.mount_attr, %struct.mount_attr* %attr, i64 0, i32 0
  %7 = load i64, i64* %attr_set, align 8
  %attr_clr = getelementptr inbounds %struct.mount_attr, %struct.mount_attr* %attr, i64 0, i32 1
  %8 = load i64, i64* %attr_clr, align 8
  %or344 = or i64 %8, %7
  %and345 = and i64 %or344, -3145984
  %tobool346.not = icmp eq i64 %and345, 0
  br i1 %tobool346.not, label %if.end348, label %cleanup

if.end348:                                        ; preds = %if.end340
  %call350 = call fastcc i32 @attr_flags_to_mnt_flags(i64 noundef %7) #23
  %attr_set351 = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 0
  store i32 %call350, i32* %attr_set351, align 8
  %9 = load i64, i64* %attr_clr, align 8
  %call353 = call fastcc i32 @attr_flags_to_mnt_flags(i64 noundef %9) #23
  %attr_clr354 = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 1
  store i32 %call353, i32* %attr_clr354, align 4
  %10 = load i64, i64* %attr_clr, align 8
  %and356 = and i64 %10, 112
  switch i64 %and356, label %cleanup [
    i64 0, label %if.else
    i64 112, label %if.end364
  ]

if.end364:                                        ; preds = %if.end348
  %or366 = or i32 %call353, 40
  store i32 %or366, i32* %attr_clr354, align 4
  %11 = load i64, i64* %attr_set, align 8
  %and368 = and i64 %11, 112
  switch i64 %and368, label %cleanup [
    i64 0, label %if.end379.sink.split
    i64 16, label %sw.bb371
    i64 32, label %if.end379
  ]

sw.bb371:                                         ; preds = %if.end364
  br label %if.end379.sink.split

if.else:                                          ; preds = %if.end348
  %12 = load i64, i64* %attr_set, align 8
  %and375 = and i64 %12, 112
  %tobool376.not = icmp eq i64 %and375, 0
  br i1 %tobool376.not, label %if.end379, label %cleanup

if.end379.sink.split:                             ; preds = %if.end364, %sw.bb371
  %.sink = phi i32 [ 8, %sw.bb371 ], [ 32, %if.end364 ]
  %or370 = or i32 %call350, %.sink
  store i32 %or370, i32* %attr_set351, align 8
  br label %if.end379

if.end379:                                        ; preds = %if.end379.sink.split, %if.else, %if.end364
  %call380 = call fastcc i32 @build_mount_idmapped(%struct.mount_attr* noundef %attr, %struct.mount_kattr* noundef %kattr) #23
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end364, %if.end348, %if.end340, %cond.false, %entry, %if.end379
  %retval.0 = phi i32 [ %call380, %if.end379 ], [ -22, %entry ], [ -22, %cond.false ], [ -22, %if.end340 ], [ -22, %if.end348 ], [ -22, %if.end364 ], [ -22, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_mount_setattr(%struct.path* nocapture noundef readonly %path, %struct.mount_kattr* nocapture noundef readonly %kattr) unnamed_addr #1 {
entry:
  %err = alloca i32, align 4
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #23
  %1 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #24
  store i32 0, i32* %err, align 4
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %mnt_root = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 3, i32 0
  %3 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp.not = icmp eq %struct.dentry* %2, %3
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %propagation = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 2
  %4 = load i32, i32* %propagation, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end13, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @namespace_lock() #23
  %5 = load i32, i32* %propagation, align 8
  %cmp5 = icmp eq i32 %5, 1048576
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.then3
  %recurse = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 4
  %6 = load i8, i8* %recurse, align 8, !range !77
  %tobool7 = icmp ne i8 %6, 0
  %call8 = call fastcc i32 @invent_group_ids(%struct.mount* noundef %call, i1 noundef %tobool7) #23
  store i32 %call8, i32* %err, align 4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.then6
  call fastcc void @namespace_unlock() #23
  br label %cleanup

if.end13:                                         ; preds = %if.then3, %if.then6, %if.end
  call fastcc void @lock_mount_hash() #23
  %call14 = call fastcc %struct.mount* @mount_setattr_prepare(%struct.mount_kattr* noundef %kattr, %struct.mount* noundef %call, i32* noundef nonnull %err) #23
  %tobool15.not = icmp eq %struct.mount* %call14, null
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  %7 = load i32, i32* %err, align 4
  call fastcc void @mount_setattr_commit(%struct.mount_kattr* noundef %kattr, %struct.mount* noundef %call, %struct.mount* noundef nonnull %call14, i32 noundef %7) #23
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  call fastcc void @unlock_mount_hash() #23
  %8 = load i32, i32* %propagation, align 8
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %if.end17.if.end24_crit_edge, label %if.then20

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  %.pre = load i32, i32* %err, align 4
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call fastcc void @namespace_unlock() #23
  %9 = load i32, i32* %err, align 4
  %tobool21.not = icmp eq i32 %9, 0
  br i1 %tobool21.not, label %cleanup, label %if.then22

if.then22:                                        ; preds = %if.then20
  call fastcc void @cleanup_group_ids(%struct.mount* noundef %call, %struct.mount* noundef null) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.then20, %if.end17.if.end24_crit_edge, %entry, %if.then10
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ -22, %entry ], [ %.pre, %if.end17.if.end24_crit_edge ], [ 0, %if.then20 ], [ %9, %if.then22 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #24
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @finish_mount_kattr(%struct.mount_kattr* nocapture noundef writeonly %kattr) unnamed_addr #16 {
entry:
  %mnt_userns = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 5
  store %struct.user_namespace* null, %struct.user_namespace** %mnt_userns, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__arch_hweight32(i32 noundef %w) unnamed_addr #1 {
entry:
  %call = call i32 @__sw_hweight32(i32 noundef %w) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @build_mount_idmapped(%struct.mount_attr* nocapture noundef readonly %attr, %struct.mount_kattr* nocapture noundef writeonly %kattr) unnamed_addr #1 {
entry:
  %attr_set = getelementptr inbounds %struct.mount_attr, %struct.mount_attr* %attr, i64 0, i32 0
  %0 = load i64, i64* %attr_set, align 8
  %attr_clr = getelementptr inbounds %struct.mount_attr, %struct.mount_attr* %attr, i64 0, i32 1
  %1 = load i64, i64* %attr_clr, align 8
  %or = or i64 %1, %0
  %and = and i64 %or, 1048576
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and2 = and i64 %1, 1048576
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %userns_fd = getelementptr inbounds %struct.mount_attr, %struct.mount_attr* %attr, i64 0, i32 3
  %2 = load i64, i64* %userns_fd, align 8
  %cmp = icmp ugt i64 %2, 2147483647
  br i1 %cmp, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end5
  %conv = trunc i64 %2 to i32
  %call = call %struct.file* @fget(i32 noundef %conv) #21
  %tobool9.not = icmp eq %struct.file* %call, null
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = call i1 @proc_ns_file(%struct.file* noundef nonnull %call) #21
  br i1 %call12, label %if.end14, label %out_fput

if.end14:                                         ; preds = %if.end11
  %call15 = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %call) #23
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %call15, i64 0, i32 42
  %3 = load i8*, i8** %i_private, align 8
  %ops = getelementptr inbounds i8, i8* %3, i64 8
  %4 = bitcast i8* %ops to %struct.proc_ns_operations**
  %5 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %4, align 8
  %type = getelementptr inbounds %struct.proc_ns_operations, %struct.proc_ns_operations* %5, i64 0, i32 2
  %6 = load i32, i32* %type, align 8
  %cmp16.not = icmp eq i32 %6, 268435456
  br i1 %cmp16.not, label %if.end19, label %out_fput

if.end19:                                         ; preds = %if.end14
  %add.ptr = getelementptr i8, i8* %3, i64 -240
  %cmp20 = icmp eq i8* %add.ptr, bitcast (%struct.user_namespace* @init_user_ns to i8*)
  br i1 %cmp20, label %out_fput, label %if.end23

if.end23:                                         ; preds = %if.end19
  %mnt_userns25 = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 5
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %mnt_userns25, align 8
  br label %out_fput

out_fput:                                         ; preds = %if.end19, %if.end14, %if.end11, %if.end23
  %err.0 = phi i32 [ 0, %if.end23 ], [ -22, %if.end11 ], [ -22, %if.end14 ], [ -1, %if.end19 ]
  call void @fput(%struct.file* noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end5, %if.end, %entry, %out_fput
  %retval.0 = phi i32 [ %err.0, %out_fput ], [ 0, %entry ], [ -22, %if.end ], [ -22, %if.end5 ], [ -9, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @proc_ns_file(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mount* @mount_setattr_prepare(%struct.mount_kattr* nocapture noundef readonly %kattr, %struct.mount* noundef %mnt, i32* nocapture noundef writeonly %err) unnamed_addr #1 {
entry:
  %mnt1 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3
  %call = call fastcc i32 @is_mounted(%struct.vfsmount* noundef %mnt1) #23
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup30.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @mnt_has_parent(%struct.mount* noundef %mnt) #23
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %call4 = call fastcc i32 @check_mnt(%struct.mount* noundef %mnt) #23
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup30.sink.split, label %if.end8

cond.false:                                       ; preds = %if.end
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 16
  %0 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %call6 = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef %0) #23
  br i1 %call6, label %if.end8, label %cleanup30.sink.split

if.end8:                                          ; preds = %cond.false, %cond.true
  %attr_set = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 0
  %recurse = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 4
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end8
  %m.0 = phi %struct.mount* [ %mnt, %if.end8 ], [ %call28, %land.rhs ]
  %last.0 = phi %struct.mount* [ null, %if.end8 ], [ %m.0, %land.rhs ]
  %call9 = call fastcc i32 @recalc_flags(%struct.mount_kattr* noundef %kattr, %struct.mount* noundef %m.0) #23
  %call10 = call fastcc i1 @can_change_locked_flags(%struct.mount* noundef %m.0, i32 noundef %call9) #23
  br i1 %call10, label %if.end12, label %cleanup30.sink.split

if.end12:                                         ; preds = %do.body
  %call13 = call fastcc i32 @can_idmap_mount(%struct.mount_kattr* noundef %kattr, %struct.mount* noundef %m.0) #23
  store i32 %call13, i32* %err, align 4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup30

if.end16:                                         ; preds = %if.end12
  %1 = load i32, i32* %attr_set, align 8
  %and = and i32 %1, 64
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %do.cond, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %m.0, i64 0, i32 3, i32 2
  %2 = load i32, i32* %mnt_flags, align 8
  %and19 = and i32 %2, 64
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %do.cond

if.then21:                                        ; preds = %land.lhs.true
  %call22 = call fastcc i32 @mnt_hold_writers(%struct.mount* noundef %m.0) #23
  store i32 %call22, i32* %err, align 4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.cond, label %cleanup30

do.cond:                                          ; preds = %if.then21, %land.lhs.true, %if.end16
  %3 = load i8, i8* %recurse, align 8, !range !77
  %tobool27.not = icmp eq i8 %3, 0
  br i1 %tobool27.not, label %cleanup30, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %call28 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef %m.0, %struct.mount* noundef %mnt) #23
  %tobool29.not = icmp eq %struct.mount* %call28, null
  br i1 %tobool29.not, label %cleanup30, label %do.body

cleanup30.sink.split:                             ; preds = %do.body, %cond.true, %cond.false, %entry
  %.sink = phi i32 [ -22, %entry ], [ -22, %cond.false ], [ -22, %cond.true ], [ -1, %do.body ]
  %last.2.ph = phi %struct.mount* [ null, %entry ], [ null, %cond.false ], [ null, %cond.true ], [ %last.0, %do.body ]
  store i32 %.sink, i32* %err, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %if.then21, %if.end12, %land.rhs, %do.cond, %cleanup30.sink.split
  %last.2 = phi %struct.mount* [ %last.2.ph, %cleanup30.sink.split ], [ %last.0, %if.end12 ], [ %m.0, %if.then21 ], [ %m.0, %do.cond ], [ %m.0, %land.rhs ]
  ret %struct.mount* %last.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mount_setattr_commit(%struct.mount_kattr* nocapture noundef readonly %kattr, %struct.mount* noundef %mnt, %struct.mount* noundef readnone %last, i32 noundef %err) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %err, 0
  %attr_set = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 0
  %propagation = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 2
  %recurse = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 4
  br label %do.body

do.body:                                          ; preds = %land.rhs, %entry
  %m.0 = phi %struct.mount* [ %mnt, %entry ], [ %call28, %land.rhs ]
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call fastcc void @do_idmap_mount(%struct.mount_kattr* noundef %kattr, %struct.mount* noundef %m.0) #23
  %call = call fastcc i32 @recalc_flags(%struct.mount_kattr* noundef %kattr, %struct.mount* noundef %m.0) #23
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %m.0, i64 0, i32 3, i32 2
  store volatile i32 %call, i32* %mnt_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %0 = load i32, i32* %attr_set, align 8
  %and = and i32 %0, 64
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %mnt_flags11 = getelementptr inbounds %struct.mount, %struct.mount* %m.0, i64 0, i32 3, i32 2
  %1 = load i32, i32* %mnt_flags11, align 8
  %and12 = and i32 %1, 512
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  call fastcc void @mnt_unhold_writers(%struct.mount* noundef %m.0) #23
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.end
  br i1 %tobool.not, label %land.lhs.true17, label %land.lhs.true23.critedge

land.lhs.true17:                                  ; preds = %if.end15
  %2 = load i32, i32* %propagation, align 8
  %tobool18.not = icmp eq i32 %2, 0
  br i1 %tobool18.not, label %do.cond26, label %if.then19

if.then19:                                        ; preds = %land.lhs.true17
  call void @change_mnt_propagation(%struct.mount* noundef %m.0, i32 noundef %2) #21
  br label %do.cond26

land.lhs.true23.critedge:                         ; preds = %if.end15
  %cmp.old = icmp eq %struct.mount* %m.0, %last
  br i1 %cmp.old, label %if.end33, label %do.cond26

do.cond26:                                        ; preds = %land.lhs.true17, %if.then19, %land.lhs.true23.critedge
  %3 = load i8, i8* %recurse, align 8, !range !77
  %tobool27.not = icmp eq i8 %3, 0
  br i1 %tobool27.not, label %do.end30, label %land.rhs

land.rhs:                                         ; preds = %do.cond26
  %call28 = call fastcc %struct.mount* @next_mnt(%struct.mount* noundef %m.0, %struct.mount* noundef %mnt) #23
  %tobool29.not = icmp eq %struct.mount* %call28, null
  br i1 %tobool29.not, label %do.end30, label %do.body

do.end30:                                         ; preds = %do.cond26, %land.rhs
  br i1 %tobool.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.end30
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 16
  %4 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  call fastcc void @touch_mnt_namespace(%struct.mnt_namespace* noundef %4) #23
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true23.critedge, %if.then32, %do.end30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @recalc_flags(%struct.mount_kattr* nocapture noundef readonly %kattr, %struct.mount* nocapture noundef readonly %mnt) unnamed_addr #6 {
entry:
  %mnt_flags = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 2
  %0 = load i32, i32* %mnt_flags, align 8
  %attr_clr = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 1
  %1 = load i32, i32* %attr_clr, align 4
  %neg = xor i32 %1, -1
  %and = and i32 %0, %neg
  %attr_set = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 0
  %2 = load i32, i32* %attr_set, align 8
  %or = or i32 %and, %2
  ret i32 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @can_idmap_mount(%struct.mount_kattr* nocapture noundef readonly %kattr, %struct.mount* noundef %mnt) unnamed_addr #1 {
entry:
  %mnt_userns = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 5
  %0 = load %struct.user_namespace*, %struct.user_namespace** %mnt_userns, align 8
  %tobool.not = icmp eq %struct.user_namespace* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mnt1 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt1) #23
  %cmp.not = icmp eq %struct.user_namespace* %call, @init_user_ns
  br i1 %cmp.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %mnt_sb = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 1
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 5
  %2 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %fs_flags = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %2, i64 0, i32 1
  %3 = load i32, i32* %fs_flags, align 8
  %and = and i32 %3, 32
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 46
  %4 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %cmp8.not = icmp eq %struct.user_namespace* %4, @init_user_ns
  br i1 %cmp8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = call i1 @capable(i32 noundef 21) #21
  br i1 %call11, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end10
  %mnt_ns = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 16
  %5 = load %struct.mnt_namespace*, %struct.mnt_namespace** %mnt_ns, align 8
  %call14 = call fastcc i1 @is_anon_ns(%struct.mnt_namespace* noundef %5) #23
  %. = select i1 %call14, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end10, %if.end6, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %if.end ], [ -22, %if.end3 ], [ -22, %if.end6 ], [ -1, %if.end10 ], [ %., %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_idmap_mount(%struct.mount_kattr* nocapture noundef readonly %kattr, %struct.mount* noundef %mnt) unnamed_addr #1 {
entry:
  %mnt_userns1 = getelementptr inbounds %struct.mount_kattr, %struct.mount_kattr* %kattr, i64 0, i32 5
  %0 = load %struct.user_namespace*, %struct.user_namespace** %mnt_userns1, align 8
  %tobool.not = icmp eq %struct.user_namespace* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mnt_userns4 = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 3, i32 3
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns4, i64 ptrtoint (%struct.user_namespace* @init_user_ns to i64)) #24, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(%struct.fs_struct* noundef, %struct.path* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_root(%struct.fs_struct* noundef, %struct.path* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #23
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #21
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #24, !srcloc !79
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !23

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #24, !srcloc !80
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #21
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #20

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #13 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #14 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #15 = { nofree nounwind readonly }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #20 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nobuiltin nounwind "no-builtins" }
attributes #22 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #23 = { nobuiltin "no-builtins" }
attributes #24 = { nounwind }
attributes #25 = { nounwind readnone }
attributes #26 = { cold nobuiltin nounwind "no-builtins" }
attributes #27 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #28 = { cold nobuiltin "no-builtins" }
attributes #29 = { nounwind readonly }
attributes #30 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!8 = !{i64 2155876588}
!9 = !{i64 2155876638}
!10 = !{i64 2155879455}
!11 = !{i64 2155879525}
!12 = !{i64 2155866643}
!13 = !{i64 2155867575}
!14 = !{i64 2038508}
!15 = !{i64 2155876521}
!16 = !{i64 2155873228}
!17 = !{i64 2155874160}
!18 = !{i64 2155879803}
!19 = !{i64 2155879851}
!20 = !{i64 2155885880}
!21 = !{i64 2155885956}
!22 = !{i64 2155893263}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2155853240}
!25 = !{i64 2155854152}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2150258805}
!28 = !{i64 1515777}
!29 = !{i64 2155860480}
!30 = !{i64 2155861392}
!31 = !{i64 2155958397}
!32 = !{i64 2155959695}
!33 = !{i64 2155971269}
!34 = !{!"auto-init"}
!35 = !{i64 2156044951}
!36 = !{i64 2156068253}
!37 = !{i64 2149302547, i64 2149302589, i64 2149302648, i64 2149302701}
!38 = !{i64 2149277657, i64 2149277704, i64 2149277710, i64 2149277747, i64 2149277765, i64 2149278692, i64 2149278740, i64 2149278788, i64 2149278851, i64 2149278900, i64 2149277843, i64 2149277868, i64 2149277894, i64 2149277900, i64 2149277937, i64 2149277943, i64 2149277993, i64 2149278039, i64 2149278072}
!39 = !{i64 2151801363}
!40 = !{i64 2151804786}
!41 = !{i64 2151805628}
!42 = !{i64 2151806814}
!43 = !{i64 2151819723}
!44 = !{i64 2151823584}
!45 = !{i64 2151824426}
!46 = !{i64 2151825680}
!47 = !{i64 2151833564}
!48 = !{i64 2151834406}
!49 = !{i64 2151835658}
!50 = !{i64 2149704512}
!51 = !{i64 2148197297, i64 2148197330, i64 2148197383, i64 2148197442, i64 2148197476, i64 2148197531, i64 2148197560, i64 2148197580}
!52 = !{i64 2150243843}
!53 = !{i64 2150244084}
!54 = !{i64 2149711793}
!55 = !{i64 2149504023}
!56 = !{i64 2150243602}
!57 = !{i64 2149938427}
!58 = !{i64 2149938210}
!59 = !{i64 2150032761}
!60 = !{i64 2155928544}
!61 = !{i64 2148101435, i64 2148101951, i64 2148101981, i64 2148102008, i64 2148102042, i64 2148102072}
!62 = !{i64 2155941534}
!63 = !{i64 2151867155}
!64 = !{i64 2155930350}
!65 = !{i64 2148235214, i64 2148235246, i64 2148235291, i64 2148235339, i64 2148235365}
!66 = !{i64 2148236313, i64 2148236345, i64 2148236389, i64 2148236436, i64 2148236462}
!67 = !{i64 2155880295}
!68 = !{i64 2155880537}
!69 = !{i64 0, i64 65}
!70 = !{i64 2156166276}
!71 = !{i64 2148107399, i64 2148108063, i64 2148108093, i64 2148108125, i64 2148108159, i64 2148108194, i64 2148108219}
!72 = !{i64 2148142969, i64 2148143617, i64 2148143647, i64 2148143678, i64 2148143710, i64 2148143745, i64 2148143770}
!73 = !{i64 2156062598, i64 2156062635, i64 2156062652, i64 2156062687, i64 2156062709, i64 2156062735, i64 2156062758, i64 2156062776, i64 2156062939, i64 2156062980, i64 2156063002, i64 2156063048}
!74 = !{i64 4083858, i64 4083941, i64 4084165, i64 4084385, i64 4084408}
!75 = !{i64 4088560, i64 4088584}
!76 = !{i64 2151641344}
!77 = !{i8 0, i8 2}
!78 = !{i64 2156121730}
!79 = !{i64 2150758627}
!80 = !{i64 2148119181, i64 2148119855, i64 2148119885, i64 2148119917, i64 2148119951, i64 2148119987, i64 2148120012}
