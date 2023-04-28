; ModuleID = 'fs/proc/base.c'
source_filename = "fs/proc/base.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { %struct.anon, [48 x i8] }
%struct.anon = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.74, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.2 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.4, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.4 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.5, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.6, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.5 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.6 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.7, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.81, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, {}*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.29, %struct.list_head, %struct.list_head, %union.anon.30 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.14, i8* }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.29 = type { %struct.list_head }
%union.anon.30 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
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
%struct.kqid = type { %union.anon.18, i32 }
%union.anon.18 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.19, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.19 = type { %struct.kernfs_elem_dir }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.20, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.20 = type {}
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.21, %union.anon.22, %union.anon.23, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.28, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.21 = type { %struct.hlist_node }
%union.anon.22 = type { %struct.rb_node }
%union.anon.23 = type { %struct.anon.27 }
%struct.anon.27 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.28 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.25, %union.anon.26, i32 }
%union.anon.25 = type { %struct.list_head }
%union.anon.26 = type { %struct.hlist_node }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.31 }
%union.anon.31 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.32, %union.anon.33 }
%union.anon.32 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.33 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.37 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.35, %struct.qspinlock }
%union.anon.35 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.37 = type { %struct.nfs_lock_info }
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
%union.anon.53 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.66, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.66 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.13, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.39 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
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
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.54 }
%struct.anon.54 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.58 }
%struct.anon.58 = type { i32, i32, i32, i64, i64 }
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
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.75, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.75 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.76, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.pid_entry = type { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, %union.proc_op }
%union.proc_op = type { i32 (%struct.dentry*, %struct.path*)* }
%struct.limit_names = type { i8*, i8* }
%struct.proc_inode = type { %struct.pid*, i32, %union.proc_op, %struct.proc_dir_entry*, %struct.ctl_table_header*, %struct.ctl_table*, %struct.hlist_node, %struct.proc_ns_operations*, %struct.inode }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, %struct.completion*, %struct.inode_operations*, %union.anon.82, %struct.dentry_operations*, %union.anon.83, i32 (%struct.file*, i8*, i64)*, i8*, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.proc_dir_entry*, %struct.rb_root, %struct.rb_node, i8*, i16, i8, i8, [0 x i8] }
%union.anon.82 = type { %struct.proc_ops* }
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%union.anon.83 = type { %struct.seq_operations* }
%struct.proc_fs_info = type { %struct.pid_namespace*, %struct.dentry*, %struct.dentry*, %struct.kgid_t, i32, i32 }
%struct.anon.15 = type { i32, i32 }
%struct.syscall_info = type { i64, %struct.seccomp_data }
%struct.seccomp_data = type { i32, i32, i64, [6 x i64] }
%struct.anon.86 = type { %struct.__genradix, [0 x %struct.map_files_info] }
%struct.__genradix = type { %struct.genradix_root* }
%struct.genradix_root = type opaque
%struct.map_files_info = type { i64, i64, i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 8
@proc_pid_link_inode_operations = dso_local constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @proc_pid_get_link, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* @proc_pid_readlink, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@pid_dentry_operations = dso_local constant %struct.dentry_operations { i32 (%struct.dentry*, i32)* @pid_revalidate, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* null, i32 (%struct.dentry*)* @pid_delete_dentry, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* null, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@proc_tgid_base_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @proc_tgid_base_readdir, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"thread-self\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@nlink_tid = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@nlink_tgid = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@proc_def_inode_operations = internal constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@proc_tgid_base_inode_operations = internal constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_tgid_base_lookup, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* @proc_pid_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @pid_getattr, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@.str.9 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@proc_fd_inode_operations = external dso_local constant %struct.inode_operations, align 64
@proc_fd_operations = external dso_local constant %struct.file_operations, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"fdinfo\00", align 1
@proc_fdinfo_inode_operations = external dso_local constant %struct.inode_operations, align 64
@proc_fdinfo_operations = external dso_local constant %struct.file_operations, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@proc_ns_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@proc_ns_dir_operations = external dso_local constant %struct.file_operations, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"environ\00", align 1
@proc_environ_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @environ_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @environ_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @mem_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"auxv\00", align 1
@proc_auxv_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @auxv_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @auxv_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @mem_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@proc_single_file_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @proc_single_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"personality\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"limits\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@proc_pid_set_comm_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* @comm_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @comm_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"cmdline\00", align 1
@proc_pid_cmdline_ops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @proc_pid_cmdline_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"statm\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@proc_pid_maps_operations = external dso_local constant %struct.file_operations, align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@proc_mem_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @mem_lseek, i64 (%struct.file*, i8*, i64, i64*)* @mem_read, i64 (%struct.file*, i8*, i64, i64*)* @mem_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @mem_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @mem_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.24 = private unnamed_addr constant [4 x i8] c"cwd\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"exe\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"mounts\00", align 1
@proc_mounts_operations = external dso_local constant %struct.file_operations, align 8
@.str.28 = private unnamed_addr constant [10 x i8] c"mountinfo\00", align 1
@proc_mountinfo_operations = external dso_local constant %struct.file_operations, align 8
@.str.29 = private unnamed_addr constant [11 x i8] c"clear_refs\00", align 1
@proc_clear_refs_operations = external dso_local constant %struct.file_operations, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"smaps\00", align 1
@proc_pid_smaps_operations = external dso_local constant %struct.file_operations, align 8
@.str.31 = private unnamed_addr constant [13 x i8] c"smaps_rollup\00", align 1
@proc_pid_smaps_rollup_operations = external dso_local constant %struct.file_operations, align 8
@.str.32 = private unnamed_addr constant [8 x i8] c"pagemap\00", align 1
@proc_pagemap_operations = external dso_local constant %struct.file_operations, align 8
@.str.33 = private unnamed_addr constant [6 x i8] c"wchan\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"oom_score\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"oom_adj\00", align 1
@proc_oom_adj_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @oom_adj_read, i64 (%struct.file*, i8*, i64, i64*)* @oom_adj_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.36 = private unnamed_addr constant [14 x i8] c"oom_score_adj\00", align 1
@proc_oom_score_adj_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @default_llseek, i64 (%struct.file*, i8*, i64, i64*)* @oom_score_adj_read, i64 (%struct.file*, i8*, i64, i64*)* @oom_score_adj_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@tid_base_stuff = internal constant <{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry }> <{ %struct.pid_entry { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2, i16 16704, %struct.inode_operations* @proc_fd_inode_operations, %struct.file_operations* @proc_fd_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 6, i16 16749, %struct.inode_operations* @proc_fdinfo_inode_operations, %struct.file_operations* @proc_fdinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 2, i16 16713, %struct.inode_operations* @proc_ns_dir_inode_operations, %struct.file_operations* @proc_ns_dir_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 7, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_environ_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 4, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_auxv_operations, %union.proc_op zeroinitializer }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 6, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_status } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 11, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_personality } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 6, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_limits } }, %struct.pid_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 4, i16 -32348, %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_tid_comm_inode_operations to %struct.inode_operations*), %struct.file_operations* @proc_pid_set_comm_operations, %union.proc_op zeroinitializer }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 7, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_syscall } }, %struct.pid_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 7, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_pid_cmdline_ops, %union.proc_op zeroinitializer }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 4, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_tid_stat } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 5, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_statm } }, %struct.pid_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 4, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_pid_maps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 3, i16 -32384, %struct.inode_operations* null, %struct.file_operations* @proc_mem_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 3, i16 -24065, %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_pid_link_inode_operations to %struct.inode_operations*), %struct.file_operations* null, %union.proc_op { i32 (%struct.dentry*, %struct.path*)* @proc_cwd_link } }, %struct.pid_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 4, i16 -24065, %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_pid_link_inode_operations to %struct.inode_operations*), %struct.file_operations* null, %union.proc_op { i32 (%struct.dentry*, %struct.path*)* @proc_root_link } }, %struct.pid_entry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 3, i16 -24065, %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_pid_link_inode_operations to %struct.inode_operations*), %struct.file_operations* null, %union.proc_op { i32 (%struct.dentry*, %struct.path*)* @proc_exe_link } }, %struct.pid_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 6, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_mounts_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 9, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_mountinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 10, i16 -32640, %struct.inode_operations* null, %struct.file_operations* @proc_clear_refs_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 5, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_pid_smaps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 12, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_pid_smaps_rollup_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 7, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_pagemap_operations, %union.proc_op zeroinitializer }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 5, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_wchan } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 9, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_oom_score } }, %struct.pid_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 7, i16 -32348, %struct.inode_operations* null, %struct.file_operations* @proc_oom_adj_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i32 13, i16 -32348, %struct.inode_operations* null, %struct.file_operations* @proc_oom_score_adj_operations, %union.proc_op zeroinitializer } }>, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.39 = private unnamed_addr constant [80 x i8] c"Limit                     Soft Limit           Hard Limit           Units     \0A\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"%-25s %-20s \00", align 1
@lnames = internal unnamed_addr constant [16 x %struct.limit_names] [%struct.limit_names { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0) }, %struct.limit_names { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), i8* null }, %struct.limit_names { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i8* null }, %struct.limit_names { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0) }], align 8
@.str.41 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"%-25s %-20lu \00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%-20s \00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"%-20lu \00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"%-10s\0A\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Max cpu time\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Max file size\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Max data size\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"Max stack size\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"Max core file size\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"Max resident set\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Max processes\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"processes\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Max open files\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"Max locked memory\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"Max address space\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"Max file locks\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"locks\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"Max pending signals\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"Max msgqueue size\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"Max nice priority\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"Max realtime priority\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"Max realtime timeout\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@proc_tid_comm_inode_operations = internal constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* @proc_tid_comm_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* null, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@.str.70 = private unnamed_addr constant [9 x i8] c"running\0A\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"%d 0x%llx 0x%llx\0A\00", align 1
@.str.72 = private unnamed_addr constant [60 x i8] c"%d 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx\0A\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"%ps\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@.str.75 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@oom_adj_mutex = external dso_local global %struct.mutex, align 8
@__set_oom_adj.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.76 = private unnamed_addr constant [87 x i8] c"\014%s (%d): /proc/%d/oom_adj is deprecated, please use /proc/%d/oom_score_adj instead.\0A\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@.str.77 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@proc_task_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @proc_task_readdir, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.79 = private unnamed_addr constant [10 x i8] c"map_files\00", align 1
@proc_map_files_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @proc_map_files_readdir, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.80 = private unnamed_addr constant [11 x i8] c"mountstats\00", align 1
@proc_mountstats_operations = external dso_local constant %struct.file_operations, align 8
@.str.81 = private unnamed_addr constant [16 x i8] c"coredump_filter\00", align 1
@proc_coredump_filter_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @proc_coredump_filter_read, i64 (%struct.file*, i8*, i64, i64*)* @proc_coredump_filter_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.82 = private unnamed_addr constant [14 x i8] c"timerslack_ns\00", align 1
@proc_pid_set_timerslack_ns_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* @timerslack_ns_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @timerslack_ns_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@tgid_base_stuff = internal constant <{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry }> <{ %struct.pid_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 4, i16 16749, %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_task_inode_operations to %struct.inode_operations*), %struct.file_operations* @proc_task_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2, i16 16704, %struct.inode_operations* @proc_fd_inode_operations, %struct.file_operations* @proc_fd_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 9, i16 16704, %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_map_files_inode_operations to %struct.inode_operations*), %struct.file_operations* @proc_map_files_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 6, i16 16749, %struct.inode_operations* @proc_fdinfo_inode_operations, %struct.file_operations* @proc_fdinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 2, i16 16713, %struct.inode_operations* @proc_ns_dir_inode_operations, %struct.file_operations* @proc_ns_dir_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 7, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_environ_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 4, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_auxv_operations, %union.proc_op zeroinitializer }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 6, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_status } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 11, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_personality } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 6, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_limits } }, %struct.pid_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 4, i16 -32348, %struct.inode_operations* null, %struct.file_operations* @proc_pid_set_comm_operations, %union.proc_op zeroinitializer }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 7, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_syscall } }, %struct.pid_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 7, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_pid_cmdline_ops, %union.proc_op zeroinitializer }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 4, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_tgid_stat } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 5, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_statm } }, %struct.pid_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 4, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_pid_maps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 3, i16 -32384, %struct.inode_operations* null, %struct.file_operations* @proc_mem_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 3, i16 -24065, %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_pid_link_inode_operations to %struct.inode_operations*), %struct.file_operations* null, %union.proc_op { i32 (%struct.dentry*, %struct.path*)* @proc_cwd_link } }, %struct.pid_entry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 4, i16 -24065, %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_pid_link_inode_operations to %struct.inode_operations*), %struct.file_operations* null, %union.proc_op { i32 (%struct.dentry*, %struct.path*)* @proc_root_link } }, %struct.pid_entry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 3, i16 -24065, %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_pid_link_inode_operations to %struct.inode_operations*), %struct.file_operations* null, %union.proc_op { i32 (%struct.dentry*, %struct.path*)* @proc_exe_link } }, %struct.pid_entry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 6, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_mounts_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 9, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_mountinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i32 10, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_mountstats_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 10, i16 -32640, %struct.inode_operations* null, %struct.file_operations* @proc_clear_refs_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 5, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_pid_smaps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 12, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_pid_smaps_rollup_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 7, i16 -32512, %struct.inode_operations* null, %struct.file_operations* @proc_pagemap_operations, %union.proc_op zeroinitializer }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 5, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_wchan } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 9, i16 -32476, %struct.inode_operations* null, %struct.file_operations* @proc_single_file_operations, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_oom_score } }, %struct.pid_entry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 7, i16 -32348, %struct.inode_operations* null, %struct.file_operations* @proc_oom_adj_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i32 13, i16 -32348, %struct.inode_operations* null, %struct.file_operations* @proc_oom_score_adj_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i32 15, i16 -32348, %struct.inode_operations* null, %struct.file_operations* @proc_coredump_filter_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i32 13, i16 -32330, %struct.inode_operations* null, %struct.file_operations* @proc_pid_set_timerslack_ns_operations, %union.proc_op zeroinitializer } }>, align 8
@proc_task_inode_operations = internal constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_task_lookup, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* @proc_pid_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @proc_task_getattr, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@proc_tid_base_operations = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @generic_file_llseek, i64 (%struct.file*, i8*, i64, i64*)* @generic_read_dir, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* @proc_tid_base_readdir, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@proc_tid_base_inode_operations = internal constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_tid_base_lookup, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* @pid_getattr, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@proc_map_files_inode_operations = internal constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @proc_map_files_lookup, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* null, i32 (%struct.user_namespace*, %struct.inode*, i32)* @proc_fd_permission, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@tid_map_files_dentry_operations = internal constant %struct.dentry_operations { i32 (%struct.dentry*, i32)* @map_files_d_revalidate, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* null, i32 (%struct.dentry*)* @pid_delete_dentry, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* null, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@proc_map_files_link_inode_operations = internal constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @proc_map_files_get_link, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* @proc_pid_readlink, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* @proc_setattr, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@.str.88 = private unnamed_addr constant [8 x i8] c"%lx-%lx\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"%08lx\0A\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_setattr(%struct.user_namespace* nocapture readnone %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %attr) #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #14
  %ia_valid = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 0
  %0 = load i32, i32* %ia_valid, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @setattr_prepare(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %attr) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  call void @setattr_copy(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.iattr* noundef %attr) #15
  call fastcc void @mark_inode_dirty(%struct.inode* noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %entry ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.iattr* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 7) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.mm_struct* @proc_mem_open(%struct.inode* noundef %inode, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %inode) #14
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -3) #14
  %0 = bitcast i8* %call1 to %struct.mm_struct*
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %or = or i32 %mode, 8
  %call2 = call %struct.mm_struct* @mm_access(%struct.task_struct* noundef nonnull %call, i32 noundef %or) #15
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #14
  %1 = bitcast %struct.mm_struct* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %1) #14
  br i1 %call3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.then
  call fastcc void @mmgrab(%struct.mm_struct* noundef %call2) #14
  call void @mmput(%struct.mm_struct* noundef %call2) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then4, %entry
  %mm.0 = phi %struct.mm_struct* [ %call2, %if.then ], [ %call2, %if.then4 ], [ %0, %entry ]
  ret %struct.mm_struct* %mm.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pid* @proc_pid(%struct.inode* noundef %inode) #14
  %call1 = call %struct.task_struct* @get_pid_task(%struct.pid* noundef %call, i32 noundef 0) #15
  ret %struct.task_struct* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @mm_access(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #14
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmgrab(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %mm_count) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(%struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i64 @mem_lseek(%struct.file* nocapture noundef %file, i64 noundef %offset, i32 noundef %orig) #5 {
entry:
  switch i32 %orig, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  store i64 %offset, i64* %f_pos, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  %f_pos2 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 10
  %0 = load i64, i64* %f_pos2, align 8
  %add = add i64 %0, %offset
  store i64 %add, i64* %f_pos2, align 8
  br label %return

return:                                           ; preds = %sw.bb, %sw.bb1, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ %add, %sw.bb1 ], [ %offset, %sw.bb ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @proc_pid_get_link(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode, %struct.delayed_call* nocapture noundef readnone %done) #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @proc_fd_access_allowed(%struct.inode* noundef %inode) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %out, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #14
  %proc_get_link = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call5, i64 0, i32 2, i32 0
  %1 = load i32 (%struct.dentry*, %struct.path*)*, i32 (%struct.dentry*, %struct.path*)** %proc_get_link, align 8
  %call6 = call i32 %1(%struct.dentry* noundef nonnull %dentry, %struct.path* noundef nonnull %path) #15
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %out

if.end9:                                          ; preds = %if.end4
  %call10 = call i32 @nd_jump_link(%struct.path* noundef nonnull %path) #15
  br label %out

out:                                              ; preds = %if.end4, %if.end, %if.end9
  %error.0 = phi i32 [ %call6, %if.end4 ], [ %call10, %if.end9 ], [ -13, %if.end ]
  %conv = sext i32 %error.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %conv.sink = phi i64 [ %conv, %out ], [ -10, %entry ]
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef %conv.sink) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #16
  ret i8* %call11
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_pid_readlink(%struct.dentry* noundef %dentry, i8* noundef %buffer, i32 noundef %buflen) #0 {
entry:
  %path = alloca %struct.path, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #14
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call1 = call fastcc i32 @proc_fd_access_allowed(%struct.inode* noundef %call) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %call) #14
  %proc_get_link = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call2, i64 0, i32 2, i32 0
  %1 = load i32 (%struct.dentry*, %struct.path*)*, i32 (%struct.dentry*, %struct.path*)** %proc_get_link, align 8
  %call3 = call i32 %1(%struct.dentry* noundef %dentry, %struct.path* noundef nonnull %path) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %out

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @do_proc_readlink(%struct.path* noundef nonnull %path, i8* noundef %buffer, i32 noundef %buflen) #14
  call void @path_put(%struct.path* noundef nonnull %path) #15
  br label %out

out:                                              ; preds = %if.end, %entry, %if.end6
  %error.0 = phi i32 [ %call3, %if.end ], [ %call7, %if.end6 ], [ -13, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #16
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @task_dump_owner(%struct.task_struct* noundef %task, i16 noundef %mode, %struct.kuid_t* nocapture noundef writeonly %ruid, %struct.kgid_t* nocapture noundef writeonly %rgid) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !8

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #15
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 79
  %1 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %1, i64 0, i32 5, i32 0
  %uid.sroa.0.0.copyload = load i32, i32* %uid.sroa.0.0..sroa_idx, align 4
  %gid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %1, i64 0, i32 6, i32 0
  %gid.sroa.0.0.copyload = load i32, i32* %gid.sroa.0.0..sroa_idx, align 8
  call fastcc void @rcu_read_unlock() #14
  %cmp.not = icmp eq i16 %mode, 16749
  br i1 %cmp.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end
  call fastcc void @task_lock(%struct.task_struct* noundef %task) #14
  %mm12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm12, align 8
  %tobool13.not = icmp eq %struct.mm_struct* %2, null
  br i1 %tobool13.not, label %if.end42, label %if.then14

if.then14:                                        ; preds = %if.then11
  %call = call fastcc i32 @get_dumpable(%struct.mm_struct* noundef nonnull %2) #14
  %cmp15.not = icmp eq i32 %call, 1
  %spec.select = select i1 %cmp15.not, i32 %gid.sroa.0.0.copyload, i32 0
  %spec.select68 = select i1 %cmp15.not, i32 %uid.sroa.0.0.copyload, i32 0
  br label %if.end42

if.end42:                                         ; preds = %if.then14, %if.then11
  %gid.sroa.0.1 = phi i32 [ 0, %if.then11 ], [ %spec.select, %if.then14 ]
  %uid.sroa.0.1 = phi i32 [ 0, %if.then11 ], [ %spec.select68, %if.then14 ]
  call fastcc void @task_unlock(%struct.task_struct* noundef %task) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end42, %entry
  %uid.sroa.0.2.sink = phi i32 [ 0, %entry ], [ %uid.sroa.0.1, %if.end42 ], [ %uid.sroa.0.0.copyload, %if.end ]
  %gid.sroa.0.2.sink = phi i32 [ 0, %entry ], [ %gid.sroa.0.1, %if.end42 ], [ %gid.sroa.0.0.copyload, %if.end ]
  %uid.sroa.0.0..sroa_idx57 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %ruid, i64 0, i32 0
  store i32 %uid.sroa.0.2.sink, i32* %uid.sroa.0.0..sroa_idx57, align 4
  %gid.sroa.0.0..sroa_idx54 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %rgid, i64 0, i32 0
  store i32 %gid.sroa.0.2.sink, i32* %gid.sroa.0.0..sroa_idx54, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_dumpable(%struct.mm_struct* nocapture noundef readonly %mm) unnamed_addr #2 {
entry:
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  %0 = load i64, i64* %flags, align 8
  %call = call fastcc i32 @__get_dumpable(i64 noundef %0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @proc_pid_evict_inode(%struct.proc_inode* noundef %ei) local_unnamed_addr #0 {
entry:
  %pid1 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %ei, i64 0, i32 0
  %0 = load %struct.pid*, %struct.pid** %pid1, align 8
  %i_mode = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %ei, i64 0, i32 8, i32 0
  %1 = load i16, i16* %i_mode, align 8
  %2 = and i16 %1, -4096
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.pid, %struct.pid* %0, i64 0, i32 2, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %sibling_inodes = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %ei, i64 0, i32 6
  call fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef %sibling_inodes) #14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @put_pid(%struct.pid* noundef %0) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init_rcu(%struct.hlist_node* noundef %n) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #14
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.inode* @proc_pid_make_inode(%struct.super_block* noundef %sb, %struct.task_struct* noundef %task, i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %call = call %struct.inode* @new_inode(%struct.super_block* noundef %sb) #15
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef nonnull %call) #14
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  store i16 %mode, i16* %i_mode, align 8
  %call2 = call i32 @get_next_ino() #15
  %conv = zext i32 %call2 to i64
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  store i64 %conv, i64* %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 12
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %call3 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call) #15
  %call3.fca.0.extract = extractvalue [2 x i64] %call3, 0
  %call3.fca.1.extract = extractvalue [2 x i64] %call3, 1
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 0
  store i64 %call3.fca.0.extract, i64* %tmp.sroa.0.0..sroa_idx, align 8
  %tmp.sroa.4.0..sroa_idx17 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 1
  store i64 %call3.fca.1.extract, i64* %tmp.sroa.4.0..sroa_idx17, align 8
  %0 = bitcast %struct.timespec64* %i_atime to i8*
  %1 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %2 = bitcast %struct.timespec64* %i_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_def_inode_operations to %struct.inode_operations*), %struct.inode_operations** %i_op, align 8
  %call4 = call %struct.pid* @get_task_pid(%struct.task_struct* noundef %task, i32 noundef 0) #15
  %tobool5.not = icmp eq %struct.pid* %call4, null
  br i1 %tobool5.not, label %out_unlock, label %if.end7

if.end7:                                          ; preds = %if.end
  %pid8 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call1, i64 0, i32 0
  store %struct.pid* %call4, %struct.pid** %pid8, align 8
  %3 = and i16 %mode, -4096
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %rlock.i = getelementptr inbounds %struct.pid, %struct.pid* %call4, i64 0, i32 2, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %sibling_inodes = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call1, i64 0, i32 6
  %inodes = getelementptr inbounds %struct.pid, %struct.pid* %call4, i64 0, i32 4
  call fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %sibling_inodes, %struct.hlist_head* noundef %inodes) #14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  %i_uid = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 3
  call void @task_dump_owner(%struct.task_struct* noundef %task, i16 noundef 0, %struct.kuid_t* noundef %i_uid, %struct.kgid_t* noundef %i_gid) #14
  br label %cleanup

out_unlock:                                       ; preds = %if.end
  call void @iput(%struct.inode* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry, %out_unlock
  %retval.0 = phi %struct.inode* [ null, %out_unlock ], [ null, %entry ], [ %call, %if.end13 ]
  ret %struct.inode* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @new_inode(%struct.super_block* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef readnone %inode) unnamed_addr #4 {
entry:
  %add.ptr = getelementptr %struct.inode, %struct.inode* %inode, i64 -1, i32 38, i32 11
  %0 = bitcast i32* %add.ptr to %struct.proc_inode*
  ret %struct.proc_inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @get_task_pid(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #0 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev, align 8
  %1 = ptrtoint %struct.hlist_node* %n to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_node** elementtype(%struct.hlist_node*) %first1, i64 %1) #16, !srcloc !9
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end41, label %do.body34

do.body34:                                        ; preds = %entry
  %pprev36 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev36, align 8
  br label %if.end41

if.end41:                                         ; preds = %do.body34, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pid_getattr(%struct.user_namespace* nocapture readnone %mnt_userns, %struct.path* nocapture noundef readonly %path, %struct.kstat* noundef %stat, i32 %request_mask, i32 %query_flags) #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %0) #14
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call1 = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %1) #14
  call void @generic_fillattr(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.kstat* noundef %stat) #15
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 9, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral2.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 10, i32 0
  store i32 0, i32* %.compoundliteral2.sroa.0.0..sroa_idx, align 4
  call fastcc void @__rcu_read_lock() #15
  %call4 = call fastcc %struct.pid* @proc_pid(%struct.inode* noundef %call) #14
  %call5 = call %struct.task_struct* @pid_task(%struct.pid* noundef %call4, i32 noundef 0) #15
  %tobool.not = icmp eq %struct.task_struct* %call5, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call6 = call fastcc i1 @has_pid_permissions(%struct.proc_fs_info* noundef %call1, %struct.task_struct* noundef nonnull %call5, i32 noundef 2) #14
  br i1 %call6, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %2 = load i16, i16* %i_mode, align 8
  %uid8 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 9
  %gid9 = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 10
  call void @task_dump_owner(%struct.task_struct* noundef nonnull %call5, i16 noundef %2, %struct.kuid_t* noundef %uid8, %struct.kgid_t* noundef %gid9) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ 0, %if.end ], [ 0, %entry ]
  call fastcc void @rcu_read_unlock() #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #2 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.proc_fs_info**
  %1 = load %struct.proc_fs_info*, %struct.proc_fs_info** %0, align 8
  ret %struct.proc_fs_info* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(%struct.user_namespace* noundef, %struct.inode* noundef, %struct.kstat* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @proc_pid(%struct.inode* noundef readonly %inode) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %inode) #14
  %pid = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call, i64 0, i32 0
  %0 = load %struct.pid*, %struct.pid** %pid, align 8
  ret %struct.pid* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @has_pid_permissions(%struct.proc_fs_info* nocapture noundef readonly %fs_info, %struct.task_struct* noundef %task, i32 noundef %hide_pid_min) unnamed_addr #0 {
entry:
  %hide_pid = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %fs_info, i64 0, i32 4
  %0 = load i32, i32* %hide_pid, align 4
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %return.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i32 %0, %hide_pid_min
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %coerce.dive = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %fs_info, i64 0, i32 3, i32 0
  %1 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %1 to i64
  %call5 = call i32 @in_group_p(i64 %coerce.val.ii) #15
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end4, %entry
  %call8 = call i1 @ptrace_may_access(%struct.task_struct* noundef %task, i32 noundef 9) #15
  br label %return

return:                                           ; preds = %return.sink.split, %if.end4, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ true, %if.end4 ], [ %call8, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pid_update_inode(%struct.task_struct* noundef %task, %struct.inode* nocapture noundef %inode) local_unnamed_addr #0 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %i_uid = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3
  call void @task_dump_owner(%struct.task_struct* noundef %task, i16 noundef %0, %struct.kuid_t* noundef %i_uid, %struct.kgid_t* noundef %i_gid) #14
  %1 = load i16, i16* %i_mode, align 8
  %2 = and i16 %1, -3073
  store i16 %2, i16* %i_mode, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @pid_delete_dentry(%struct.dentry* nocapture noundef readonly %dentry) #2 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #14
  %call1 = call fastcc i1 @proc_inode_is_dead(%struct.inode* noundef %call) #14
  %conv = zext i1 %call1 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @proc_inode_is_dead(%struct.inode* noundef readonly %inode) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.pid* @proc_pid(%struct.inode* noundef %inode) #14
  %first = getelementptr inbounds %struct.pid, %struct.pid* %call, i64 0, i32 3, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pid_revalidate(%struct.dentry* nocapture noundef readonly %dentry, i32 noundef %flags) #0 {
entry:
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool2.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @pid_update_inode(%struct.task_struct* noundef nonnull %call1, %struct.inode* noundef %call) #14
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ -10, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @proc_fill_cache(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %len, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* nocapture noundef readonly %instantiate, %struct.task_struct* noundef %task, i8* noundef %ptr) local_unnamed_addr #0 {
entry:
  %qname = alloca %struct.qstr, align 8
  %wq = alloca %struct.wait_queue_head, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %1 = bitcast %struct.qstr* %qname to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #16
  %2 = bitcast %struct.qstr* %qname to %struct.anon.15*
  %len1 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %2, i64 0, i32 1
  %3 = getelementptr inbounds %struct.qstr, %struct.qstr* %qname, i64 0, i32 0, i32 0
  store i64 0, i64* %3, align 8
  store i32 %len, i32* %len1, align 4
  %name2 = getelementptr inbounds %struct.qstr, %struct.qstr* %qname, i64 0, i32 1
  store i8* %name, i8** %name2, align 8
  %call = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* noundef %0, %struct.qstr* noundef nonnull %qname) #15
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.wait_queue_head* %wq to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #16
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq, i64 0, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %5 = bitcast %struct.wait_queue_head* %wq to i64*
  store i64 0, i64* %5, align 8
  store %struct.list_head* %head, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq, i64 0, i32 1, i32 1
  store %struct.list_head* %head, %struct.list_head** %prev, align 8
  %call5 = call %struct.dentry* @d_alloc_parallel(%struct.dentry* noundef %0, %struct.qstr* noundef nonnull %qname, %struct.wait_queue_head* noundef nonnull %wq) #15
  %6 = bitcast %struct.dentry* %call5 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %6) #14
  br i1 %call6, label %cleanup21, label %if.end

if.end:                                           ; preds = %if.then
  %call8 = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %call5) #14
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup21.thread, label %if.then10

if.then10:                                        ; preds = %if.end
  %call11 = call %struct.dentry* %instantiate(%struct.dentry* noundef %call5, %struct.task_struct* noundef %task, i8* noundef %ptr) #15
  call fastcc void @d_lookup_done(%struct.dentry* noundef %call5) #14
  %tobool12.not = icmp eq %struct.dentry* %call11, null
  br i1 %tobool12.not, label %cleanup21.thread, label %if.then15, !prof !8

if.then15:                                        ; preds = %if.then10
  call void @dput(%struct.dentry* noundef %call5) #15
  %7 = bitcast %struct.dentry* %call11 to i8*
  %call16 = call fastcc i1 @IS_ERR(i8* noundef nonnull %7) #14
  br i1 %call16, label %cleanup21, label %cleanup21.thread

cleanup21.thread:                                 ; preds = %if.end, %if.then10, %if.then15
  %child.3.ph = phi %struct.dentry* [ %call5, %if.end ], [ %call11, %if.then15 ], [ %call5, %if.then10 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #16
  br label %if.end24

cleanup21:                                        ; preds = %if.then15, %if.then
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #16
  br label %cleanup28

if.end24:                                         ; preds = %cleanup21.thread, %entry
  %child.4 = phi %struct.dentry* [ %call, %entry ], [ %child.3.ph, %cleanup21.thread ]
  %call25 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %child.4) #14
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call25, i64 0, i32 8
  %8 = load i64, i64* %i_ino, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call25, i64 0, i32 0
  %9 = load i16, i16* %i_mode, align 8
  %10 = lshr i16 %9, 12
  %11 = zext i16 %10 to i32
  call void @dput(%struct.dentry* noundef %child.4) #15
  br label %cleanup28

cleanup28:                                        ; preds = %if.end24, %cleanup21
  %type.0 = phi i32 [ %11, %if.end24 ], [ 0, %cleanup21 ]
  %ino.0 = phi i64 [ %8, %if.end24 ], [ 1, %cleanup21 ]
  %call27 = call fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %len, i64 noundef %ino.0, i32 noundef %type.0) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #16
  ret i1 %call27
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry* noundef, %struct.qstr* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_alloc_parallel(%struct.dentry* noundef, %struct.qstr* noundef, %struct.wait_queue_head* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_in_lookup(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #2 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 268435456
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_lookup_done(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.16* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  call void @__d_lookup_done(%struct.dentry* noundef %dentry) #15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %namelen, i64 noundef %ino, i32 noundef %type) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef %name, i32 noundef %namelen, i64 noundef %1, i64 noundef %ino, i32 noundef %type) #15
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.pid* @tgid_pidfd_to_pid(%struct.file* nocapture noundef readonly %file) local_unnamed_addr #2 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp.not = icmp eq %struct.file_operations* %0, @proc_tgid_base_operations
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -9) #14
  %1 = bitcast i8* %call to %struct.pid*
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %call2 = call fastcc %struct.pid* @proc_pid(%struct.inode* noundef %call1) #14
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.pid* [ %1, %if.then ], [ %call2, %if.end ]
  ret %struct.pid* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #2 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @proc_flush_pid(%struct.pid* noundef %pid) local_unnamed_addr #0 {
entry:
  %inodes = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 4
  %lock = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 2
  call void @proc_invalidate_siblings_dcache(%struct.hlist_head* noundef %inodes, %struct.spinlock* noundef %lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_invalidate_siblings_dcache(%struct.hlist_head* noundef, %struct.spinlock* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @proc_pid_lookup(%struct.dentry* noundef %dentry, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @ERR_PTR(i64 noundef -2) #14
  %0 = bitcast i8* %call to %struct.dentry*
  %d_name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4
  %call1 = call i32 @name_to_int(%struct.qstr* noundef %d_name) #15
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %out, label %if.end

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call2 = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %1) #14
  %pid_ns = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call2, i64 0, i32 0
  %2 = load %struct.pid_namespace*, %struct.pid_namespace** %pid_ns, align 8
  call fastcc void @__rcu_read_lock() #15
  %call3 = call %struct.task_struct* @find_task_by_pid_ns(i32 noundef %call1, %struct.pid_namespace* noundef %2) #15
  %tobool.not = icmp eq %struct.task_struct* %call3, null
  br i1 %tobool.not, label %out.critedge, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @get_task_struct(%struct.task_struct* noundef nonnull %call3) #14
  call fastcc void @rcu_read_unlock() #14
  %hide_pid = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call2, i64 0, i32 4
  %3 = load i32, i32* %hide_pid, align 4
  %cmp10 = icmp eq i32 %3, 4
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.then4
  %call12 = call fastcc i1 @has_pid_permissions(%struct.proc_fs_info* noundef %call2, %struct.task_struct* noundef nonnull %call3, i32 noundef 1) #14
  br i1 %call12, label %if.end15, label %out_put_task

if.end15:                                         ; preds = %if.then11, %if.then4
  %call16 = call %struct.dentry* @proc_pid_instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef nonnull %call3, i8* noundef null) #14
  br label %out_put_task

out_put_task:                                     ; preds = %if.then11, %if.end15
  %result.0 = phi %struct.dentry* [ %call16, %if.end15 ], [ %0, %if.then11 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call3) #14
  br label %out

out.critedge:                                     ; preds = %if.end
  call fastcc void @rcu_read_unlock() #14
  br label %out

out:                                              ; preds = %out.critedge, %entry, %out_put_task
  %result.1 = phi %struct.dentry* [ %0, %entry ], [ %result.0, %out_put_task ], [ %0, %out.critedge ]
  ret %struct.dentry* %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_int(%struct.qstr* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_pid_instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef %task, i8* nocapture noundef readnone %ptr) #0 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call = call %struct.inode* @proc_pid_make_inode(%struct.super_block* noundef %0, %struct.task_struct* noundef %task, i16 noundef 16749) #14
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -2) #14
  %1 = bitcast i8* %call1 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_tgid_base_inode_operations to %struct.inode_operations*), %struct.inode_operations** %i_op, align 8
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  store %struct.file_operations* @proc_tgid_base_operations, %struct.file_operations** %i_fop, align 8
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %2 = load i32, i32* %i_flags, align 4
  %or = or i32 %2, 8
  store i32 %or, i32* %i_flags, align 4
  %3 = load i8, i8* @nlink_tgid, align 1
  %conv = zext i8 %3 to i32
  call void @set_nlink(%struct.inode* noundef nonnull %call, i32 noundef %conv) #15
  call void @pid_update_inode(%struct.task_struct* noundef %task, %struct.inode* noundef nonnull %call) #14
  call void @d_set_d_op(%struct.dentry* noundef %dentry, %struct.dentry_operations* noundef nonnull @pid_dentry_operations) #15
  %call2 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef nonnull %call, %struct.dentry* noundef %dentry) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.dentry* [ %call2, %if.end ], [ %1, %if.then ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_pid_readdir(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) local_unnamed_addr #0 {
entry:
  %name = alloca [11 x i8], align 1
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call1 = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %0) #14
  %call4 = call fastcc %struct.pid_namespace* @proc_pid_ns(%struct.super_block* noundef %0) #14
  %pos5 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos5, align 8
  %cmp = icmp ugt i64 %1, 4194561
  br i1 %cmp, label %cleanup57, label %if.end

if.end:                                           ; preds = %entry
  switch i64 %1, label %if.end27 [
    i64 256, label %if.then7
    i64 257, label %if.then15
  ]

if.then7:                                         ; preds = %if.end
  %proc_self = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call1, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %proc_self, align 8
  %call8 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %2) #14
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call8, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  %call9 = call fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef 4, i64 noundef %3, i32 noundef 10) #14
  br i1 %call9, label %if.end13.thread, label %cleanup57

if.end13.thread:                                  ; preds = %if.then7
  store i64 257, i64* %pos5, align 8
  br label %if.then15

if.then15:                                        ; preds = %if.end, %if.end13.thread
  %proc_thread_self = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call1, i64 0, i32 2
  %4 = load %struct.dentry*, %struct.dentry** %proc_thread_self, align 8
  %call17 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %4) #14
  %i_ino18 = getelementptr inbounds %struct.inode, %struct.inode* %call17, i64 0, i32 8
  %5 = load i64, i64* %i_ino18, align 8
  %call19 = call fastcc i1 @dir_emit(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 11, i64 noundef %5, i32 noundef 10) #14
  br i1 %call19, label %cleanup24.thread, label %cleanup57

cleanup24.thread:                                 ; preds = %if.then15
  store i64 258, i64* %pos5, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end, %cleanup24.thread
  %pos.3 = phi i64 [ 258, %cleanup24.thread ], [ %1, %if.end ]
  %conv = add nuw nsw i64 %pos.3, 4294967038
  %iter.sroa.0.sroa.0.0.insert.ext = and i64 %conv, 4294967295
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %iter.sroa.0.sroa.0.0.insert.ext, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 0, 1
  %call28 = call fastcc [2 x i64] @next_tgid(%struct.pid_namespace* noundef %call4, [2 x i64] %.fca.1.insert) #14
  %iter.sroa.12.0.in146 = extractvalue [2 x i64] %call28, 1
  %tobool.not148 = icmp eq i64 %iter.sroa.12.0.in146, 0
  br i1 %tobool.not148, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end27
  %6 = getelementptr inbounds [11 x i8], [11 x i8]* %name, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %iter.sroa.12.0.in154 = phi i64 [ %iter.sroa.12.0.in146, %for.body.lr.ph ], [ %iter.sroa.12.0.in, %for.inc ]
  %call28.pn149 = phi [2 x i64] [ %call28, %for.body.lr.ph ], [ %call55, %for.inc ]
  %iter.sroa.0.sroa.12.0.in.in150 = extractvalue [2 x i64] %call28.pn149, 0
  %iter.sroa.0.sroa.12.0.in153 = and i64 %iter.sroa.0.sroa.12.0.in.in150, -4294967296
  %iter.sroa.12.0155 = inttoptr i64 %iter.sroa.12.0.in154 to %struct.task_struct*
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %6) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %6, i8 0, i64 11, i1 false), !annotation !7
  call fastcc void @_cond_resched() #14
  %call33 = call fastcc i1 @has_pid_permissions(%struct.proc_fs_info* noundef %call1, %struct.task_struct* noundef nonnull %iter.sroa.12.0155, i32 noundef 2) #14
  br i1 %call33, label %if.end35, label %for.inc

if.end35:                                         ; preds = %for.body
  %iter.sroa.0.sroa.0.0152 = trunc i64 %iter.sroa.0.sroa.12.0.in.in150 to i32
  %call37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %6, i64 noundef 11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %iter.sroa.0.sroa.0.0152) #15
  %add39 = add i64 %iter.sroa.0.sroa.12.0.in.in150, 258
  %conv40 = and i64 %add39, 4294967295
  store i64 %conv40, i64* %pos5, align 8
  %call44 = call i1 @proc_fill_cache(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, i8* noundef nonnull %6, i32 noundef %call37, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef nonnull @proc_pid_instantiate, %struct.task_struct* noundef nonnull %iter.sroa.12.0155, i8* noundef null) #14
  br i1 %call44, label %for.inc, label %cleanup48

cleanup48:                                        ; preds = %if.end35
  %iter.sroa.12.0.in.le = extractvalue [2 x i64] %call28.pn149, 1
  %iter.sroa.12.0.le = inttoptr i64 %iter.sroa.12.0.in.le to %struct.task_struct*
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %iter.sroa.12.0.le) #14
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %6) #16
  br label %cleanup57

for.inc:                                          ; preds = %for.body, %if.end35
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %6) #16
  %add53 = add i64 %iter.sroa.0.sroa.12.0.in.in150, 1
  %iter.sroa.0.sroa.0.0.insert.ext104 = and i64 %add53, 4294967295
  %iter.sroa.0.sroa.0.0.insert.insert106 = or i64 %iter.sroa.0.sroa.0.0.insert.ext104, %iter.sroa.0.sroa.12.0.in153
  %.fca.0.insert86 = insertvalue [2 x i64] poison, i64 %iter.sroa.0.sroa.0.0.insert.insert106, 0
  %.fca.1.insert89 = insertvalue [2 x i64] %.fca.0.insert86, i64 %iter.sroa.12.0.in154, 1
  %call55 = call fastcc [2 x i64] @next_tgid(%struct.pid_namespace* noundef %call4, [2 x i64] %.fca.1.insert89) #14
  %iter.sroa.12.0.in = extractvalue [2 x i64] %call55, 1
  %tobool.not = icmp eq i64 %iter.sroa.12.0.in, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end27
  store i64 4194562, i64* %pos5, align 8
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup48, %if.then15, %if.then7, %entry, %for.end
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid_namespace* @proc_pid_ns(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %sb) #14
  %pid_ns = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call, i64 0, i32 0
  %0 = load %struct.pid_namespace*, %struct.pid_namespace** %pid_ns, align 8
  ret %struct.pid_namespace* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @next_tgid(%struct.pid_namespace* noundef %ns, [2 x i64] %iter.coerce) unnamed_addr #0 {
entry:
  %iter.coerce.fca.0.extract = extractvalue [2 x i64] %iter.coerce, 0
  %iter.sroa.0.sroa.0.0.extract.trunc = trunc i64 %iter.coerce.fca.0.extract to i32
  %iter.coerce.fca.1.extract = extractvalue [2 x i64] %iter.coerce, 1
  %tobool.not = icmp eq i64 %iter.coerce.fca.1.extract, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = inttoptr i64 %iter.coerce.fca.1.extract to %struct.task_struct*
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__rcu_read_lock() #15
  %call30 = call %struct.pid* @find_ge_pid(i32 noundef %iter.sroa.0.sroa.0.0.extract.trunc, %struct.pid_namespace* noundef %ns) #15
  %tobool3.not31 = icmp eq %struct.pid* %call30, null
  br i1 %tobool3.not31, label %if.end16, label %if.then4

if.then4:                                         ; preds = %if.end, %if.then11
  %call32 = phi %struct.pid* [ %call, %if.then11 ], [ %call30, %if.end ]
  %call5 = call i32 @pid_nr_ns(%struct.pid* noundef nonnull %call32, %struct.pid_namespace* noundef %ns) #15
  %call7 = call %struct.task_struct* @pid_task(%struct.pid* noundef nonnull %call32, i32 noundef 1) #15
  %tobool10.not = icmp eq %struct.task_struct* %call7, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then4
  %add = add i32 %call5, 1
  %call = call %struct.pid* @find_ge_pid(i32 noundef %add, %struct.pid_namespace* noundef %ns) #15
  %tobool3.not = icmp eq %struct.pid* %call, null
  br i1 %tobool3.not, label %if.end16, label %if.then4

if.end13:                                         ; preds = %if.then4
  call fastcc void @get_task_struct(%struct.task_struct* noundef nonnull %call7) #14
  %phi.cast = ptrtoint %struct.task_struct* %call7 to i64
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end, %if.end13
  %iter.sroa.6.0 = phi i64 [ %phi.cast, %if.end13 ], [ 0, %if.end ], [ 0, %if.then11 ]
  %iter.sroa.0.sroa.0.1 = phi i32 [ %call5, %if.end13 ], [ %iter.sroa.0.sroa.0.0.extract.trunc, %if.end ], [ %add, %if.then11 ]
  %iter.sroa.0.sroa.6.0.extract.shift = and i64 %iter.coerce.fca.0.extract, -4294967296
  call fastcc void @rcu_read_unlock() #14
  %iter.sroa.0.sroa.0.0.insert.ext = zext i32 %iter.sroa.0.sroa.0.1 to i64
  %iter.sroa.0.sroa.0.0.insert.insert = or i64 %iter.sroa.0.sroa.6.0.extract.shift, %iter.sroa.0.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %iter.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %iter.sroa.6.0, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize
define dso_local void @set_proc_pid_nlink() local_unnamed_addr #9 section ".init.text" {
entry:
  %call = call fastcc i32 @pid_entry_nlink(%struct.pid_entry* noundef getelementptr inbounds (<{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry }>, <{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry }>* @tid_base_stuff, i64 0, i32 0), i32 noundef 28) #17
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* @nlink_tid, align 1
  %call1 = call fastcc i32 @pid_entry_nlink(%struct.pid_entry* noundef getelementptr inbounds (<{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry }>, <{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry }>* @tgid_base_stuff, i64 0, i32 0), i32 noundef 33) #17
  %conv2 = trunc i32 %call1 to i8
  store i8 %conv2, i8* @nlink_tgid, align 1
  ret void
}

; Function Attrs: cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly
define internal fastcc i32 @pid_entry_nlink(%struct.pid_entry* nocapture noundef readonly %entries, i32 noundef %n) unnamed_addr #10 section ".init.text" {
entry:
  %cmp9.not = icmp eq i32 %n, 0
  br i1 %cmp9.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %count.011 = phi i32 [ 2, %for.body.preheader ], [ %spec.select, %for.body ]
  %mode = getelementptr %struct.pid_entry, %struct.pid_entry* %entries, i64 %indvars.iv, i32 2
  %0 = load i16, i16* %mode, align 4
  %1 = and i16 %0, -4096
  %cmp1 = icmp eq i16 %1, 16384
  %inc = zext i1 %cmp1 to i32
  %spec.select = add i32 %count.011, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i32 [ 2, %entry ], [ %spec.select, %for.body ]
  ret i32 %count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @get_pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #14
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #14
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
  call void asm sideeffect "dmb ishld", "~{memory}"() #16, !srcloc !10
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !8

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #16, !srcloc !11
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #16, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @proc_fd_access_allowed(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %inode) #14
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i1 @ptrace_may_access(%struct.task_struct* noundef nonnull %call, i32 noundef 9) #15
  %conv = zext i1 %call1 to i32
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %allowed.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %allowed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nd_jump_link(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ptrace_may_access(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_proc_readlink(%struct.path* noundef %path, i8* noundef %buffer, i32 noundef %buflen) unnamed_addr #0 {
entry:
  %call = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #15
  %0 = inttoptr i64 %call to i8*
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @d_path(%struct.path* noundef %path, i8* noundef nonnull %0, i32 noundef 4096) #15
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %call1) #14
  %conv = trunc i64 %call2 to i32
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %call1) #14
  br i1 %call3, label %out, label %if.end5

if.end5:                                          ; preds = %if.end
  %add.ptr6 = getelementptr i8, i8* %0, i64 4095
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv7 = trunc i64 %sub.ptr.sub to i32
  %cmp = icmp sgt i32 %conv7, %buflen
  %spec.select = select i1 %cmp, i32 %buflen, i32 %conv7
  %cmp11.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !13

check_copy_size.exit.i:                           ; preds = %if.end5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !14
  br label %out

if.then.i:                                        ; preds = %if.end5
  %conv1131 = zext i32 %spec.select to i64
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buffer, i8* noundef %call1, i64 noundef %conv1131) #15
  %phi.cmp = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %spec.select, i32 -14
  br label %out

out:                                              ; preds = %if.then.i, %check_copy_size.exit.i, %if.end
  %len.1 = phi i32 [ %conv, %if.end ], [ %phi.sel, %if.then.i ], [ -14, %check_copy_size.exit.i ]
  call void @free_pages(i64 noundef %call, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %len.1, %out ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @d_path(%struct.path* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #14
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #14
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #15
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #16, !srcloc !15
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #16, !srcloc !16
  call void asm sideeffect "hint #20", "~{memory}"() #16, !srcloc !17
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  call void @rcu_read_unlock_strict() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__get_dumpable(i64 noundef %mm_flags) unnamed_addr #4 {
entry:
  %0 = trunc i64 %mm_flags to i32
  %conv = and i32 %0, 3
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #16, !srcloc !21
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #2 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #16, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p(i64) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(%struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_read_dir(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_tgid_base_readdir(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) #0 {
entry:
  %call = call fastcc i32 @proc_pident_readdir(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, %struct.pid_entry* noundef getelementptr inbounds (<{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry }>, <{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry }>* @tgid_base_stuff, i64 0, i32 0), i32 noundef 33) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @proc_pident_readdir(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx, %struct.pid_entry* noundef %ents, i32 noundef %nents) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @dir_emit_dots(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #14
  br i1 %call2, label %if.end4, label %out

if.end4:                                          ; preds = %if.end
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %0 = load i64, i64* %pos, align 8
  %add = add i32 %nents, 2
  %conv = zext i32 %add to i64
  %cmp.not = icmp slt i64 %0, %conv
  br i1 %cmp.not, label %if.end7, label %out

if.end7:                                          ; preds = %if.end4
  %sub = add i64 %0, -2
  %add.ptr = getelementptr %struct.pid_entry, %struct.pid_entry* %ents, i64 %sub
  %idx.ext = zext i32 %nents to i64
  %add.ptr9 = getelementptr %struct.pid_entry, %struct.pid_entry* %ents, i64 %idx.ext
  %cmp1033 = icmp ult %struct.pid_entry* %add.ptr, %add.ptr9
  br i1 %cmp1033, label %for.body, label %out

for.body:                                         ; preds = %if.end7, %if.end14
  %p.034 = phi %struct.pid_entry* [ %incdec.ptr, %if.end14 ], [ %add.ptr, %if.end7 ]
  %name = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %p.034, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %len = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %p.034, i64 0, i32 1
  %2 = load i32, i32* %len, align 8
  %3 = bitcast %struct.pid_entry* %p.034 to i8*
  %call12 = call i1 @proc_fill_cache(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, i8* noundef %1, i32 noundef %2, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef nonnull @proc_pident_instantiate, %struct.task_struct* noundef nonnull %call1, i8* noundef %3) #14
  br i1 %call12, label %if.end14, label %out

if.end14:                                         ; preds = %for.body
  %4 = load i64, i64* %pos, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %pos, align 8
  %incdec.ptr = getelementptr %struct.pid_entry, %struct.pid_entry* %p.034, i64 1
  %cmp10 = icmp ult %struct.pid_entry* %incdec.ptr, %add.ptr9
  br i1 %cmp10, label %for.body, label %out

out:                                              ; preds = %for.body, %if.end14, %if.end7, %if.end4, %if.end
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ 0, %out ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dots(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %0 = load i64, i64* %pos, align 8
  switch i64 %0, label %return [
    i64 0, label %if.then
    i64 1, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @dir_emit_dot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #14
  br i1 %call, label %if.end3.thread, label %return

if.end3.thread:                                   ; preds = %if.then
  store i64 1, i64* %pos, align 8
  br label %if.then6

if.then6:                                         ; preds = %entry, %if.end3.thread
  %call7 = call fastcc i1 @dir_emit_dotdot(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #14
  br i1 %call7, label %if.end9, label %return

if.end9:                                          ; preds = %if.then6
  store i64 2, i64* %pos, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9, %if.then6, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then6 ], [ true, %if.end9 ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_pident_instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef %task, i8* nocapture noundef readonly %ptr) #0 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %mode = getelementptr inbounds i8, i8* %ptr, i64 12
  %1 = bitcast i8* %mode to i16*
  %2 = load i16, i16* %1, align 4
  %call = call %struct.inode* @proc_pid_make_inode(%struct.super_block* noundef %0, %struct.task_struct* noundef %task, i16 noundef %2) #14
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -2) #14
  %3 = bitcast i8* %call1 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef nonnull %call) #14
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  %4 = load i16, i16* %i_mode, align 8
  %5 = and i16 %4, -4096
  %cmp = icmp eq i16 %5, 16384
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @set_nlink(%struct.inode* noundef nonnull %call, i32 noundef 2) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %iop = getelementptr inbounds i8, i8* %ptr, i64 16
  %6 = bitcast i8* %iop to %struct.inode_operations**
  %7 = load %struct.inode_operations*, %struct.inode_operations** %6, align 8
  %tobool6.not = icmp eq %struct.inode_operations* %7, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* %7, %struct.inode_operations** %i_op, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %fop = getelementptr inbounds i8, i8* %ptr, i64 24
  %8 = bitcast i8* %fop to %struct.file_operations**
  %9 = load %struct.file_operations*, %struct.file_operations** %8, align 8
  %tobool10.not = icmp eq %struct.file_operations* %9, null
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  store %struct.file_operations* %9, %struct.file_operations** %i_fop, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %op = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call2, i64 0, i32 2
  %op14 = getelementptr inbounds i8, i8* %ptr, i64 32
  %10 = bitcast i8* %op14 to i64*
  %11 = bitcast %union.proc_op* %op to i64*
  %12 = load i64, i64* %10, align 8
  store i64 %12, i64* %11, align 8
  call void @pid_update_inode(%struct.task_struct* noundef %task, %struct.inode* noundef nonnull %call) #14
  call void @d_set_d_op(%struct.dentry* noundef %dentry, %struct.dentry_operations* noundef nonnull @pid_dentry_operations) #15
  %call15 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef nonnull %call, %struct.dentry* noundef %dentry) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  %retval.0 = phi %struct.dentry* [ %call15, %if.end13 ], [ %3, %if.then ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 8
  %4 = load i64, i64* %i_ino, align 8
  %call = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef 1, i64 noundef %1, i64 noundef %4, i32 noundef 4) #15
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @dir_emit_dotdot(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) unnamed_addr #0 {
entry:
  %actor = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 0
  %0 = load i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)** %actor, align 8
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %1 = load i64, i64* %pos, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc i64 @parent_ino(%struct.dentry* noundef %2) #14
  %call1 = call i32 %0(%struct.dir_context* noundef %ctx, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef 2, i64 noundef %1, i64 noundef %call, i32 noundef 4) #15
  %cmp = icmp eq i32 %call1, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @parent_ino(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.16* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %1 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %2, i64 0, i32 8
  %3 = load i64, i64* %i_ino, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(%struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(%struct.dentry* noundef, %struct.dentry_operations* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_splice_alias(%struct.inode* noundef, %struct.dentry* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #15
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !13

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !8

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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #16, !srcloc !24
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_tgid_base_lookup(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i32 noundef %flags) #0 {
entry:
  %call = call fastcc %struct.dentry* @proc_pident_lookup(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, %struct.pid_entry* noundef getelementptr inbounds (<{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry }>, <{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry }>* @tgid_base_stuff, i64 0, i32 0), %struct.pid_entry* noundef getelementptr inbounds (<{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry }>, <{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry }>* @tgid_base_stuff, i64 1, i32 0)) #14
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_pid_permission(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %0) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %inode) #14
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @has_pid_permissions(%struct.proc_fs_info* noundef %call, %struct.task_struct* noundef nonnull %call1, i32 noundef 1) #14
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br i1 %call2, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %hide_pid = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call, i64 0, i32 4
  %1 = load i32, i32* %hide_pid, align 4
  %cmp = icmp eq i32 %1, 2
  %. = select i1 %cmp, i32 -2, i32 -1
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @generic_permission(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %inode, i32 noundef %mask) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %entry, %if.end7
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -3, %entry ], [ %., %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @proc_pident_lookup(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, %struct.pid_entry* noundef readonly %p, %struct.pid_entry* noundef readnone %end) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %dir) #14
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -2) #14
  %0 = bitcast i8* %call1 to %struct.dentry*
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %out_no_task, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp26 = icmp ult %struct.pid_entry* %p, %end
  br i1 %cmp26, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %d_name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4
  %1 = bitcast %struct.qstr* %d_name to %struct.anon.15*
  %len2 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %1, i64 0, i32 1
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %p.addr.027 = phi %struct.pid_entry* [ %p, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %len = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %p.addr.027, i64 0, i32 1
  %2 = load i32, i32* %len, align 8
  %3 = load i32, i32* %len2, align 4
  %cmp3.not = icmp eq i32 %2, %3
  br i1 %cmp3.not, label %if.end5, label %for.inc

if.end5:                                          ; preds = %for.body
  %4 = load i8*, i8** %name, align 8
  %name7 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %p.addr.027, i64 0, i32 0
  %5 = load i8*, i8** %name7, align 8
  %conv = zext i32 %2 to i64
  %call9 = call i32 @memcmp(i8* noundef %4, i8* noundef %5, i64 noundef %conv) #15
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %for.inc

if.then11:                                        ; preds = %if.end5
  %6 = bitcast %struct.pid_entry* %p.addr.027 to i8*
  %call12 = call %struct.dentry* @proc_pident_instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef nonnull %call, i8* noundef %6) #14
  br label %for.end

for.inc:                                          ; preds = %if.end5, %for.body
  %incdec.ptr = getelementptr %struct.pid_entry, %struct.pid_entry* %p.addr.027, i64 1
  %cmp = icmp ult %struct.pid_entry* %incdec.ptr, %end
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader, %if.then11
  %res.0 = phi %struct.dentry* [ %call12, %if.then11 ], [ %0, %for.cond.preheader ], [ %0, %for.inc ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #14
  br label %out_no_task

out_no_task:                                      ; preds = %entry, %for.end
  %res.1 = phi %struct.dentry* [ %res.0, %for.end ], [ %0, %entry ]
  ret %struct.dentry* %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_ge_pid(i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(%struct.pid* noundef, %struct.pid_namespace* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_pid_status(%struct.seq_file* noundef, %struct.pid_namespace* noundef, %struct.pid* noundef, %struct.task_struct* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_pid_personality(%struct.seq_file* noundef %m, %struct.pid_namespace* nocapture noundef readnone %ns, %struct.pid* nocapture noundef readnone %pid, %struct.task_struct* noundef %task) #0 {
entry:
  %call = call fastcc i32 @lock_trace(%struct.task_struct* noundef %task) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 44
  %0 = load i32, i32* %personality, align 16
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 noundef %0) #15
  call fastcc void @unlock_trace(%struct.task_struct* noundef %task) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_pid_limits(%struct.seq_file* noundef %m, %struct.pid_namespace* nocapture noundef readnone %ns, %struct.pid* nocapture noundef readnone %pid, %struct.task_struct* noundef %task) #0 {
entry:
  %flags = alloca i64, align 8
  %rlim = alloca [16 x %struct.rlimit], align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %flags, align 8, !annotation !7
  %1 = bitcast [16 x %struct.rlimit]* %rlim to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %1, i8 0, i64 256, i1 false), !annotation !7
  %call = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef nonnull %flags) #14
  %tobool.not = icmp eq %struct.sighand_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arraydecay2 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 49, i64 0
  %3 = bitcast %struct.rlimit* %arraydecay2 to i8*
  %call3 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef %3, i64 noundef 256) #15
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %task, i64* noundef nonnull %flags) #14
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.39, i64 0, i64 0)) #15
  br label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.inc ]
  %rlim_cur = getelementptr [16 x %struct.rlimit], [16 x %struct.rlimit]* %rlim, i64 0, i64 %indvars.iv, i32 0
  %4 = load i64, i64* %rlim_cur, align 8
  %cmp4 = icmp eq i64 %4, -1
  %name = getelementptr [16 x %struct.limit_names], [16 x %struct.limit_names]* @lnames, i64 0, i64 %indvars.iv, i32 0
  %5 = load i8*, i8** %name, align 8
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i8* noundef %5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)) #15
  br label %if.end14

if.else:                                          ; preds = %for.body
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* noundef %5, i64 noundef %4) #15
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then5
  %rlim_max = getelementptr [16 x %struct.rlimit], [16 x %struct.rlimit]* %rlim, i64 0, i64 %indvars.iv, i32 1
  %6 = load i64, i64* %rlim_max, align 8
  %cmp17 = icmp eq i64 %6, -1
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end14
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)) #15
  br label %if.end23

if.else19:                                        ; preds = %if.end14
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i64 noundef %6) #15
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.then18
  %7 = trunc i64 %indvars.iv to i32
  %8 = add i32 %7, -13
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %if.else31, label %if.then27

if.then27:                                        ; preds = %if.end23
  %unit = getelementptr [16 x %struct.limit_names], [16 x %struct.limit_names]* @lnames, i64 0, i64 %indvars.iv, i32 1
  %10 = load i8*, i8** %unit, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* noundef %10) #15
  br label %for.inc

if.else31:                                        ; preds = %if.end23
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %if.else31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_pid_syscall(%struct.seq_file* noundef %m, %struct.pid_namespace* nocapture noundef readnone %ns, %struct.pid* nocapture noundef readnone %pid, %struct.task_struct* noundef %task) #0 {
entry:
  %info = alloca %struct.syscall_info, align 8
  %0 = bitcast %struct.syscall_info* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !7
  %arrayidx = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 1, i32 3, i64 0
  %call = call fastcc i32 @lock_trace(%struct.task_struct* noundef %task) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @task_current_syscall(%struct.task_struct* noundef %task, %struct.syscall_info* noundef nonnull %info) #15
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0)) #15
  br label %if.end23

if.else:                                          ; preds = %if.end
  %nr = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 1, i32 0
  %1 = load i32, i32* %nr, align 8
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then6, label %if.else10

if.then6:                                         ; preds = %if.else
  %sp = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 0
  %2 = load i64, i64* %sp, align 8
  %instruction_pointer = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 1, i32 2
  %3 = load i64, i64* %instruction_pointer, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i64 0, i64 0), i32 noundef %1, i64 noundef %2, i64 noundef %3) #15
  br label %if.end23

if.else10:                                        ; preds = %if.else
  %4 = load i64, i64* %arrayidx, align 8
  %arrayidx14 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 1, i32 3, i64 1
  %5 = load i64, i64* %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 1, i32 3, i64 2
  %6 = load i64, i64* %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 1, i32 3, i64 3
  %7 = load i64, i64* %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 1, i32 3, i64 4
  %8 = load i64, i64* %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 1, i32 3, i64 5
  %9 = load i64, i64* %arrayidx18, align 8
  %sp19 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 0
  %10 = load i64, i64* %sp19, align 8
  %instruction_pointer21 = getelementptr inbounds %struct.syscall_info, %struct.syscall_info* %info, i64 0, i32 1, i32 2
  %11 = load i64, i64* %instruction_pointer21, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.72, i64 0, i64 0), i32 noundef %1, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then6, %if.else10, %if.then4
  call fastcc void @unlock_trace(%struct.task_struct* noundef %task) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end23
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_tid_stat(%struct.seq_file* noundef, %struct.pid_namespace* noundef, %struct.pid* noundef, %struct.task_struct* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_pid_statm(%struct.seq_file* noundef, %struct.pid_namespace* noundef, %struct.pid* noundef, %struct.task_struct* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_cwd_link(%struct.dentry* nocapture noundef readonly %dentry, %struct.path* noundef %path) #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @task_lock(%struct.task_struct* noundef nonnull %call1) #14
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 83
  %0 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %tobool2.not = icmp eq %struct.fs_struct* %0, null
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call fastcc void @get_fs_pwd(%struct.fs_struct* noundef nonnull %0, %struct.path* noundef %path) #14
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %result.0 = phi i32 [ 0, %if.then3 ], [ -2, %if.then ]
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call1) #14
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %result.1 = phi i32 [ %result.0, %if.end ], [ -2, %entry ]
  ret i32 %result.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_root_link(%struct.dentry* nocapture noundef readonly %dentry, %struct.path* noundef %path) #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @get_task_root(%struct.task_struct* noundef nonnull %call1, %struct.path* noundef %path) #14
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %result.0 = phi i32 [ %call2, %if.then ], [ -2, %entry ]
  ret i32 %result.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_exe_link(%struct.dentry* nocapture noundef readonly %dentry, %struct.path* nocapture noundef writeonly %exe_path) #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.file* @get_task_exe_file(%struct.task_struct* noundef nonnull %call1) #15
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  %tobool3.not = icmp eq %struct.file* %call2, null
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %f_path = getelementptr inbounds %struct.file, %struct.file* %call2, i64 0, i32 1
  %0 = bitcast %struct.path* %exe_path to i8*
  %1 = bitcast %struct.path* %f_path to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %f_path) #15
  call void @fput(%struct.file* noundef nonnull %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -2, %entry ], [ -2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_pid_wchan(%struct.seq_file* noundef %m, %struct.pid_namespace* nocapture noundef readnone %ns, %struct.pid* nocapture noundef readnone %pid, %struct.task_struct* noundef %task) #0 {
entry:
  %call = call i1 @ptrace_may_access(%struct.task_struct* noundef %task, i32 noundef 9) #15
  br i1 %call, label %if.end, label %if.else3

if.end:                                           ; preds = %entry
  %call1 = call i64 @get_wchan(%struct.task_struct* noundef %task) #15
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.else3, label %if.then2

if.then2:                                         ; preds = %if.end
  %0 = inttoptr i64 %call1 to i8*
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i8* noundef nonnull %0) #15
  br label %if.end4

if.else3:                                         ; preds = %entry, %if.end
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 48) #15
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_oom_score(%struct.seq_file* noundef %m, %struct.pid_namespace* nocapture noundef readnone %ns, %struct.pid* nocapture noundef readnone %pid, %struct.task_struct* noundef %task) #0 {
entry:
  %call = call fastcc i64 @totalram_pages() #14
  %call1 = call i64 @oom_badness(%struct.task_struct* noundef %task, i64 noundef %call) #15
  %cmp.not = icmp eq i64 %call1, -9223372036854775808
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mul = mul i64 %call1, 1000
  %div = sdiv i64 %mul, %call
  %add2 = shl i64 %div, 1
  %mul3 = add i64 %add2, 2000
  %div4 = sdiv i64 %mul3, 3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %points.0 = phi i64 [ %div4, %if.then ], [ 0, %entry ]
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i64 noundef %points.0) #15
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @environ_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef %ppos) #0 {
entry:
  %0 = load i64, i64* %ppos, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.mm_struct**
  %2 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %tobool.not = icmp eq %struct.mm_struct* %2, null
  br i1 %tobool.not, label %cleanup43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %env_end1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 38
  %3 = load i64, i64* %env_end1, align 8
  %tobool2.not = icmp eq i64 %3, 0
  br i1 %tobool2.not, label %cleanup43, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #15
  %4 = inttoptr i64 %call to i8*
  %tobool3.not = icmp eq i64 %call, 0
  br i1 %tobool3.not, label %cleanup43, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i1 @mmget_not_zero(%struct.mm_struct* noundef nonnull %2) #14
  br i1 %call6, label %if.end8, label %free

if.end8:                                          ; preds = %if.end5
  %rlock.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 27, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %env_start9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 37
  %5 = load i64, i64* %env_start9, align 8
  %6 = load i64, i64* %env_end1, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  %sub = sub i64 %6, %5
  %cmp.not105 = icmp ne i64 %count, 0
  %cmp13.not106 = icmp ult i64 %0, %sub
  %or.cond107 = select i1 %cmp.not105, i1 %cmp13.not106, i1 false
  br i1 %or.cond107, label %if.end15, label %while.end

if.end15:                                         ; preds = %if.end8, %cleanup
  %buf.addr.0111 = phi i8* [ %add.ptr, %cleanup ], [ %buf, %if.end8 ]
  %count.addr.0110 = phi i64 [ %sub39, %cleanup ], [ %count, %if.end8 ]
  %src.0109 = phi i64 [ %add37, %cleanup ], [ %0, %if.end8 ]
  %ret.0108 = phi i32 [ %add35, %cleanup ], [ 0, %if.end8 ]
  %add = add i64 %src.0109, %5
  %sub16 = sub i64 %6, %add
  %7 = icmp ult i64 %count.addr.0110, 4096
  %cond = select i1 %7, i64 %count.addr.0110, i64 4096
  %cmp19 = icmp ult i64 %cond, %sub16
  %cond23 = select i1 %cmp19, i64 %cond, i64 %sub16
  %conv = trunc i64 %cond23 to i32
  %call25 = call i32 @access_remote_vm(%struct.mm_struct* noundef nonnull %2, i64 noundef %add, i8* noundef nonnull %4, i32 noundef %conv, i32 noundef 32768) #15
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %while.end, label %if.end29

if.end29:                                         ; preds = %if.end15
  %conv30104 = zext i32 %call25 to i64
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buf.addr.0111, i8* noundef nonnull %4, i64 noundef %conv30104) #15
  %tobool32.not = icmp eq i64 %call2.i, 0
  br i1 %tobool32.not, label %cleanup, label %while.end

cleanup:                                          ; preds = %if.end29
  %add35 = add i32 %call25, %ret.0108
  %add37 = add i64 %src.0109, %conv30104
  %add.ptr = getelementptr i8, i8* %buf.addr.0111, i64 %conv30104
  %sub39 = sub i64 %count.addr.0110, %conv30104
  %cmp.not = icmp ne i64 %sub39, 0
  %cmp13.not = icmp ult i64 %add37, %sub
  %or.cond = select i1 %cmp.not, i1 %cmp13.not, i1 false
  br i1 %or.cond, label %if.end15, label %while.end

while.end:                                        ; preds = %cleanup, %if.end15, %if.end29, %if.end8
  %src.0.lcssa = phi i64 [ %0, %if.end8 ], [ %src.0109, %if.end29 ], [ %src.0109, %if.end15 ], [ %add37, %cleanup ]
  %ret.2 = phi i32 [ 0, %if.end8 ], [ -14, %if.end29 ], [ %call25, %if.end15 ], [ %add35, %cleanup ]
  store i64 %src.0.lcssa, i64* %ppos, align 8
  call void @mmput(%struct.mm_struct* noundef nonnull %2) #15
  br label %free

free:                                             ; preds = %if.end5, %while.end
  %ret.3 = phi i32 [ %ret.2, %while.end ], [ 0, %if.end5 ]
  call void @free_pages(i64 noundef %call, i32 noundef 0) #15
  %conv42 = sext i32 %ret.3 to i64
  br label %cleanup43

cleanup43:                                        ; preds = %if.end, %entry, %lor.lhs.false, %free
  %retval.0 = phi i64 [ %conv42, %free ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ -12, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @environ_open(%struct.inode* noundef %inode, %struct.file* nocapture noundef writeonly %file) #0 {
entry:
  %call = call fastcc i32 @__mem_open(%struct.inode* noundef %inode, %struct.file* noundef %file, i32 noundef 1) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @mem_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.mm_struct**
  %1 = load %struct.mm_struct*, %struct.mm_struct** %0, align 8
  %tobool.not = icmp eq %struct.mm_struct* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @mmdrop(%struct.mm_struct* noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

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
  br i1 %cmp.i.i.i.i, label %atomic_inc_not_zero.exit, label %do.cond.i.i.i.i, !prof !13

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %c.0.i.i.i.i, 1
  %call11.i.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i.i.i, i32 noundef %add.i.i.i.i) #15
  %cmp.not.i.i.i.i.i = icmp eq i32 %c.0.i.i.i.i, %call11.i.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %atomic_inc_not_zero.exit, label %do.body.i.i.i.i, !prof !8

atomic_inc_not_zero.exit:                         ; preds = %do.body.i.i.i.i, %do.cond.i.i.i.i
  %2 = xor i1 %cmp.i.i.i.i, true
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @access_remote_vm(%struct.mm_struct* noundef, i64 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #16, !srcloc !25
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__mem_open(%struct.inode* noundef %inode, %struct.file* nocapture noundef writeonly %file, i32 noundef %mode) unnamed_addr #0 {
entry:
  %call = call %struct.mm_struct* @proc_mem_open(%struct.inode* noundef %inode, i32 noundef %mode) #14
  %0 = bitcast %struct.mm_struct* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #14
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #14
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.mm_struct**
  store %struct.mm_struct* %call, %struct.mm_struct** %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmdrop(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_count) #15
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void @__mmdrop(%struct.mm_struct* noundef %mm) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(%struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #16, !srcloc !26
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @auxv_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.mm_struct**
  %1 = load %struct.mm_struct*, %struct.mm_struct** %0, align 8
  %tobool.not = icmp eq %struct.mm_struct* %1, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry, %do.body
  %nwords.0 = phi i32 [ %add, %do.body ], [ 0, %entry ]
  %add = add i32 %nwords.0, 2
  %idxprom = zext i32 %nwords.0 to i64
  %arrayidx = getelementptr %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 39, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %arraydecay = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 39, i64 0
  %3 = bitcast i64* %arraydecay to i8*
  %conv = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv, 3
  %call = call i64 @simple_read_from_buffer(i8* noundef %buf, i64 noundef %count, i64* noundef %ppos, i8* noundef %3, i64 noundef %mul) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end
  %retval.0 = phi i64 [ %call, %do.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @auxv_open(%struct.inode* noundef %inode, %struct.file* nocapture noundef writeonly %file) #0 {
entry:
  %call = call fastcc i32 @__mem_open(%struct.inode* noundef %inode, %struct.file* noundef %file, i32 noundef 9) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_read_from_buffer(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_single_open(%struct.inode* noundef %inode, %struct.file* noundef %filp) #0 {
entry:
  %0 = bitcast %struct.inode* %inode to i8*
  %call = call i32 @single_open(%struct.file* noundef %filp, i32 (%struct.seq_file*, i8*)* noundef nonnull @proc_single_show, i8* noundef %0) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(%struct.inode* noundef, %struct.file* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(%struct.file* noundef, i32 (%struct.seq_file*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_single_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.inode**
  %1 = load %struct.inode*, %struct.inode** %0, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc %struct.pid_namespace* @proc_pid_ns(%struct.super_block* noundef %2) #14
  %call1 = call fastcc %struct.pid* @proc_pid(%struct.inode* noundef %1) #14
  %call2 = call %struct.task_struct* @get_pid_task(%struct.pid* noundef %call1, i32 noundef 0) #15
  %tobool.not = icmp eq %struct.task_struct* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef %1) #14
  %op = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call3, i64 0, i32 2
  %proc_show = bitcast %union.proc_op* %op to i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)**
  %3 = load i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)*, i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)** %proc_show, align 8
  %call4 = call i32 %3(%struct.seq_file* noundef %m, %struct.pid_namespace* noundef %call, %struct.pid* noundef %call1, %struct.task_struct* noundef nonnull %call2) #15
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call2) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ -3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @lock_trace(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 55
  %call = call i32 @down_read_killable(%struct.rw_semaphore* noundef %exec_update_lock) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i1 @ptrace_may_access(%struct.task_struct* noundef %task, i32 noundef 10) #15
  br i1 %call1, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock4 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 55
  call void @up_read(%struct.rw_semaphore* noundef %exec_update_lock4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ %call, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_trace(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 55
  call void @up_read(%struct.rw_semaphore* noundef %exec_update_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) #15
  ret %struct.sighand_struct* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_task_sighand(%struct.task_struct* nocapture noundef readonly %task, i64* nocapture noundef readonly %flags) unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %1 = load i64, i64* %flags, align 8
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #16, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_tid_comm_permission(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) #0 {
entry:
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %inode) #14
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !29
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call2 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %1, %struct.task_struct* noundef nonnull %call) #14
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #14
  %and = and i32 %mask, 1
  %tobool4.not = icmp eq i32 %and, 0
  %2 = and i1 %tobool4.not, %call2
  br i1 %2, label %cleanup, label %if.end9, !prof !8

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @generic_permission(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %inode, i32 noundef %mask) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ -3, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @comm_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readnone %offset) #0 {
entry:
  %buffer = alloca [16 x i8], align 1
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call1 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 16) #15
  %1 = icmp ult i64 %count, 15
  %cond = select i1 %1, i64 %count, i64 15
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %buf, i64 noundef %cond) #15
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool5.not = icmp eq %struct.task_struct* %call4, null
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !29
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call9 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %3, %struct.task_struct* noundef nonnull %call4) #14
  br i1 %call9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call fastcc void @set_task_comm(%struct.task_struct* noundef nonnull %call4, i8* noundef nonnull %0) #14
  br label %if.end12

if.end12:                                         ; preds = %if.end7, %if.then10
  %count.addr.0 = phi i64 [ %count, %if.then10 ], [ -22, %if.end7 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end12
  %retval.0 = phi i64 [ %count.addr.0, %if.end12 ], [ -14, %entry ], [ -3, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #16
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @comm_open(%struct.inode* noundef %inode, %struct.file* noundef %filp) #0 {
entry:
  %0 = bitcast %struct.inode* %inode to i8*
  %call = call i32 @single_open(%struct.file* noundef %filp, i32 (%struct.seq_file*, i8*)* noundef nonnull @comm_show, i8* noundef %0) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_task_comm(%struct.task_struct* noundef %tsk, i8* noundef %from) unnamed_addr #0 {
entry:
  call void @__set_task_comm(%struct.task_struct* noundef %tsk, i8* noundef %from, i1 noundef false) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #14
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #14
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !8

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(%struct.task_struct* noundef, i8* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @comm_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.inode**
  %1 = load %struct.inode*, %struct.inode** %0, align 8
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %1) #14
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @proc_task_name(%struct.seq_file* noundef %m, %struct.task_struct* noundef nonnull %call, i1 noundef false) #15
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #15
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_task_name(%struct.seq_file* noundef, %struct.task_struct* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_current_syscall(%struct.task_struct* noundef, %struct.syscall_info* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_pid_cmdline_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef %pos) #0 {
entry:
  %0 = load i64, i64* %pos, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !13

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/proc/base.c\22; .popsection; .long 14472b - 14470b; .short 363; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !30
  unreachable

do.end7:                                          ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %call8 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool9.not = icmp eq %struct.task_struct* %call8, null
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %do.end7
  %call12 = call fastcc i64 @get_task_cmdline(%struct.task_struct* noundef nonnull %call8, i8* noundef %buf, i64 noundef %count, i64* noundef %pos) #14
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call8) #14
  %cmp13 = icmp sgt i64 %call12, 0
  br i1 %cmp13, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end11
  %1 = load i64, i64* %pos, align 8
  %add = add i64 %1, %call12
  store i64 %add, i64* %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then15, %do.end7
  %retval.0 = phi i64 [ -3, %do.end7 ], [ %call12, %if.then15 ], [ %call12, %if.end11 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_task_cmdline(%struct.task_struct* noundef %tsk, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readonly %pos) unnamed_addr #0 {
entry:
  %call = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef %tsk) #15
  %tobool.not = icmp eq %struct.mm_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @get_mm_cmdline(%struct.mm_struct* noundef nonnull %call, i8* noundef %buf, i64 noundef %count, i64* noundef %pos) #14
  call void @mmput(%struct.mm_struct* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_mm_cmdline(%struct.mm_struct* noundef %mm, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readonly %ppos) unnamed_addr #0 {
entry:
  %c = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #16
  store i8 0, i8* %c, align 4, !annotation !7
  %env_end1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 38
  %0 = load i64, i64* %env_end1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %cleanup78, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 27, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %arg_start2 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 35
  %1 = load i64, i64* %arg_start2, align 8
  %arg_end3 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 36
  %2 = load i64, i64* %arg_end3, align 8
  %env_start4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 37
  %3 = load i64, i64* %env_start4, align 8
  %4 = load i64, i64* %env_end1, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  %cmp.not = icmp ult i64 %1, %2
  br i1 %cmp.not, label %if.end8, label %cleanup78

if.end8:                                          ; preds = %if.end
  %cmp9.not = icmp ne i64 %3, %2
  %cmp10 = icmp ult i64 %4, %3
  %or.cond158 = select i1 %cmp9.not, i1 true, i1 %cmp10
  %env_end.0 = select i1 %or.cond158, i64 %2, i64 %4
  %sub = sub i64 %env_end.0, %1
  %5 = load i64, i64* %ppos, align 8
  %cmp13.not = icmp ugt i64 %sub, %5
  br i1 %cmp13.not, label %if.end15, label %cleanup78

if.end15:                                         ; preds = %if.end8
  %sub16 = sub i64 %sub, %5
  %cmp17 = icmp ult i64 %sub16, %count
  %spec.select = select i1 %cmp17, i64 %sub16, i64 %count
  %tobool21.not = icmp eq i64 %spec.select, 0
  br i1 %tobool21.not, label %cleanup78, label %if.end23

if.end23:                                         ; preds = %if.end15
  %sub24 = add i64 %2, -1
  %call = call i32 @access_remote_vm(%struct.mm_struct* noundef %mm, i64 noundef %sub24, i8* noundef nonnull %c, i32 noundef 1, i32 noundef 32768) #15
  %cmp25 = icmp eq i32 %call, 1
  %6 = load i8, i8* %c, align 4
  %tobool26 = icmp ne i8 %6, 0
  %or.cond = select i1 %cmp25, i1 %tobool26, i1 false
  br i1 %or.cond, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %call28 = call fastcc i64 @get_mm_proctitle(%struct.mm_struct* noundef %mm, i8* noundef %buf, i64 noundef %spec.select, i64 noundef %5, i64 noundef %1) #14
  br label %cleanup78

if.end29:                                         ; preds = %if.end23
  %add = add i64 %5, %1
  %cmp30 = icmp uge i64 %add, %1
  %cmp33.not = icmp ugt i64 %2, %add
  %or.cond159 = select i1 %cmp30, i1 %cmp33.not, i1 false
  br i1 %or.cond159, label %if.end36, label %cleanup78

if.end36:                                         ; preds = %if.end29
  %sub37 = sub i64 %2, %add
  %cmp38 = icmp ugt i64 %spec.select, %sub37
  %spec.select160 = select i1 %cmp38, i64 %sub37, i64 %spec.select
  %call43 = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #15
  %7 = inttoptr i64 %call43 to i8*
  %tobool44.not = icmp eq i64 %call43, 0
  br i1 %tobool44.not, label %cleanup78, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end36
  %tobool47.not170 = icmp eq i64 %spec.select160, 0
  br i1 %tobool47.not170, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cleanup
  %buf.addr.0174 = phi i8* [ %add.ptr, %cleanup ], [ %buf, %while.cond.preheader ]
  %count.addr.2173 = phi i64 [ %sub76, %cleanup ], [ %spec.select160, %while.cond.preheader ]
  %len.0172 = phi i64 [ %add74, %cleanup ], [ 0, %while.cond.preheader ]
  %pos.0171 = phi i64 [ %add72, %cleanup ], [ %add, %while.cond.preheader ]
  %8 = icmp ult i64 %count.addr.2173, 4096
  %cond = select i1 %8, i64 %count.addr.2173, i64 4096
  %conv50 = trunc i64 %cond to i32
  %call51 = call i32 @access_remote_vm(%struct.mm_struct* noundef %mm, i64 noundef %pos.0171, i8* noundef nonnull %7, i32 noundef %conv50, i32 noundef 32768) #15
  %cmp52 = icmp slt i32 %call51, 1
  br i1 %cmp52, label %while.end, label %if.end55

if.end55:                                         ; preds = %while.body
  %conv56168 = zext i32 %call51 to i64
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buf.addr.0174, i8* noundef nonnull %7, i64 noundef %conv56168) #15
  %9 = trunc i64 %call2.i to i32
  %conv60 = sub i32 %call51, %9
  %tobool61.not = icmp eq i32 %conv60, 0
  br i1 %tobool61.not, label %if.then66, label %cleanup, !prof !13

if.then66:                                        ; preds = %if.end55
  %tobool67.not = icmp eq i64 %len.0172, 0
  %spec.store.select = select i1 %tobool67.not, i64 -14, i64 %len.0172
  br label %while.end

cleanup:                                          ; preds = %if.end55
  %conv71 = sext i32 %conv60 to i64
  %add72 = add i64 %pos.0171, %conv71
  %add.ptr = getelementptr i8, i8* %buf.addr.0174, i64 %conv71
  %add74 = add i64 %len.0172, %conv71
  %sub76 = sub i64 %count.addr.2173, %conv71
  %tobool47.not = icmp eq i64 %sub76, 0
  br i1 %tobool47.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %while.body, %while.cond.preheader, %if.then66
  %len.2 = phi i64 [ %spec.store.select, %if.then66 ], [ 0, %while.cond.preheader ], [ %add74, %cleanup ], [ %len.0172, %while.body ]
  call void @free_pages(i64 noundef %call43, i32 noundef 0) #15
  br label %cleanup78

cleanup78:                                        ; preds = %if.end36, %if.end29, %if.end15, %if.end8, %if.end, %entry, %while.end, %if.then27
  %retval.0 = phi i64 [ %call28, %if.then27 ], [ %len.2, %while.end ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end8 ], [ 0, %if.end15 ], [ 0, %if.end29 ], [ -12, %if.end36 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #16
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @get_mm_proctitle(%struct.mm_struct* noundef %mm, i8* noundef %buf, i64 noundef %count, i64 noundef %pos, i64 noundef %arg_start) unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %pos, 4095
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #15
  %0 = inttoptr i64 %call to i8*
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @access_remote_vm(%struct.mm_struct* noundef %mm, i64 noundef %arg_start, i8* noundef nonnull %0, i32 noundef 4096, i32 noundef 32768) #15
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end33

if.then5:                                         ; preds = %if.end2
  %conv63 = zext i32 %call3 to i64
  %call6 = call i64 @strnlen(i8* noundef nonnull %0, i64 noundef %conv63) #15
  %conv7 = trunc i64 %call6 to i32
  %cmp8 = icmp sgt i32 %call3, %conv7
  %inc = zext i1 %cmp8 to i64
  %spec.select = add i64 %call6, %inc
  %sext59 = shl i64 %spec.select, 32
  %conv12 = ashr exact i64 %sext59, 32
  %cmp13 = icmp ugt i64 %conv12, %pos
  br i1 %cmp13, label %if.then15, label %if.end33

if.then15:                                        ; preds = %if.then5
  %sub = sub i64 %spec.select, %pos
  %sext60 = shl i64 %sub, 32
  %conv18 = ashr exact i64 %sext60, 32
  %cmp19 = icmp ugt i64 %conv18, %count
  %spec.select62 = select i1 %cmp19, i64 %count, i64 %sub
  %sext61 = shl i64 %spec.select62, 32
  %conv24 = ashr exact i64 %sext61, 32
  %cmp11.i.i = icmp ugt i64 %sext61, 9223372032559808512
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !13

check_copy_size.exit.i:                           ; preds = %if.then15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !14
  br label %copy_to_user.exit

if.then.i:                                        ; preds = %if.then15
  %add.ptr = getelementptr i8, i8* %0, i64 %pos
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buf, i8* noundef %add.ptr, i64 noundef %conv24) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %n.addr.0.i = phi i64 [ %call2.i, %if.then.i ], [ %conv24, %check_copy_size.exit.i ]
  %sub27 = sub i64 %conv24, %n.addr.0.i
  %conv28 = trunc i64 %sub27 to i32
  %tobool29.not = icmp eq i32 %conv28, 0
  %sub27.op = shl i64 %sub27, 32
  %sub27.op.op = ashr exact i64 %sub27.op, 32
  %phi.bo64 = select i1 %tobool29.not, i64 -14, i64 %sub27.op.op
  br label %if.end33

if.end33:                                         ; preds = %if.then5, %copy_to_user.exit, %if.end2
  %ret.1 = phi i64 [ 0, %if.end2 ], [ %phi.bo64, %copy_to_user.exit ], [ 0, %if.then5 ]
  call void @free_pages(i64 noundef %call, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end33
  %retval.0 = phi i64 [ %ret.1, %if.end33 ], [ 0, %entry ], [ -12, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strnlen(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @mem_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef %ppos) #0 {
entry:
  %call = call fastcc i64 @mem_rw(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos, i32 noundef 0) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @mem_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef %ppos) #0 {
entry:
  %call = call fastcc i64 @mem_rw(%struct.file* noundef %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos, i32 noundef 1) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @mem_open(%struct.inode* noundef %inode, %struct.file* nocapture noundef %file) #0 {
entry:
  %call = call fastcc i32 @__mem_open(%struct.inode* noundef %inode, %struct.file* noundef %file, i32 noundef 2) #14
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %or = or i32 %0, 8192
  store i32 %or, i32* %f_mode, align 4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @mem_rw(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef %ppos, i32 noundef %write) unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.mm_struct**
  %1 = load %struct.mm_struct*, %struct.mm_struct** %0, align 8
  %2 = load i64, i64* %ppos, align 8
  %tobool.not = icmp eq %struct.mm_struct* %1, null
  br i1 %tobool.not, label %cleanup30, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #15
  %3 = inttoptr i64 %call to i8*
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %cleanup30, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i1 @mmget_not_zero(%struct.mm_struct* noundef nonnull %1) #14
  br i1 %call4, label %if.end6, label %free

if.end6:                                          ; preds = %if.end3
  %tobool7.not = icmp eq i32 %write, 0
  %not.tobool7.not = xor i1 %tobool7.not, true
  %cond = zext i1 %not.tobool7.not to i32
  %or = or i32 %cond, 16
  %cmp.not92 = icmp eq i64 %count, 0
  br i1 %cmp.not92, label %while.end, label %while.body

while.body:                                       ; preds = %if.end6, %cleanup
  %buf.addr.098 = phi i8* [ %add.ptr, %cleanup ], [ %buf, %if.end6 ]
  %count.addr.097 = phi i64 [ %sub, %cleanup ], [ %count, %if.end6 ]
  %copied.095 = phi i64 [ %add29, %cleanup ], [ 0, %if.end6 ]
  %addr.093 = phi i64 [ %add, %cleanup ], [ %2, %if.end6 ]
  %cmp8 = icmp ult i64 %count.addr.097, 4096
  %cond9 = select i1 %cmp8, i64 %count.addr.097, i64 4096
  br i1 %tobool7.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %3, i8* noundef %buf.addr.098, i64 noundef %cond9) #15
  %tobool12.not = icmp eq i64 %call2.i, 0
  br i1 %tobool12.not, label %if.end14.thread, label %while.end

if.end14:                                         ; preds = %while.body
  %conv = trunc i64 %cond9 to i32
  %call15 = call i32 @access_remote_vm(%struct.mm_struct* noundef nonnull %1, i64 noundef %addr.093, i8* noundef nonnull %3, i32 noundef %conv, i32 noundef %or) #15
  %conv16 = sext i32 %call15 to i64
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true24

if.end14.thread:                                  ; preds = %land.lhs.true
  %conv72 = trunc i64 %cond9 to i32
  %call1573 = call i32 @access_remote_vm(%struct.mm_struct* noundef nonnull %1, i64 noundef %addr.093, i8* noundef nonnull %3, i32 noundef %conv72, i32 noundef %or) #15
  %conv1674 = sext i32 %call1573 to i64
  %tobool17.not75 = icmp eq i32 %call1573, 0
  br i1 %tobool17.not75, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.end14.thread, %if.end14
  %tobool19.not = icmp eq i64 %copied.095, 0
  %spec.store.select = select i1 %tobool19.not, i64 -5, i64 %copied.095
  br label %while.end

land.lhs.true24:                                  ; preds = %if.end14
  %cmp11.i.i = icmp slt i32 %call15, 0
  br i1 %cmp11.i.i, label %copy_to_user.exit.thread, label %copy_to_user.exit, !prof !13

copy_to_user.exit.thread:                         ; preds = %land.lhs.true24
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !14
  br label %while.end

copy_to_user.exit:                                ; preds = %land.lhs.true24
  %call2.i71 = call fastcc i64 @_copy_to_user(i8* noundef %buf.addr.098, i8* noundef nonnull %3, i64 noundef %conv16) #15
  %tobool26.not = icmp eq i64 %call2.i71, 0
  br i1 %tobool26.not, label %cleanup, label %while.end

cleanup:                                          ; preds = %if.end14.thread, %copy_to_user.exit
  %conv167678 = phi i64 [ %conv16, %copy_to_user.exit ], [ %conv1674, %if.end14.thread ]
  %add.ptr = getelementptr i8, i8* %buf.addr.098, i64 %conv167678
  %add = add i64 %conv167678, %addr.093
  %add29 = add i64 %conv167678, %copied.095
  %sub = sub i64 %count.addr.097, %conv167678
  %cmp.not = icmp eq i64 %sub, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %land.lhs.true, %copy_to_user.exit, %if.end6, %copy_to_user.exit.thread, %if.then18
  %addr.091 = phi i64 [ %addr.093, %copy_to_user.exit.thread ], [ %addr.093, %if.then18 ], [ %2, %if.end6 ], [ %add, %cleanup ], [ %addr.093, %land.lhs.true ], [ %addr.093, %copy_to_user.exit ]
  %copied.2 = phi i64 [ -14, %copy_to_user.exit.thread ], [ %spec.store.select, %if.then18 ], [ 0, %if.end6 ], [ %add29, %cleanup ], [ -14, %land.lhs.true ], [ -14, %copy_to_user.exit ]
  store i64 %addr.091, i64* %ppos, align 8
  call void @mmput(%struct.mm_struct* noundef nonnull %1) #15
  br label %free

free:                                             ; preds = %if.end3, %while.end
  %copied.3 = phi i64 [ %copied.2, %while.end ], [ 0, %if.end3 ]
  call void @free_pages(i64 noundef %call, i32 noundef 0) #15
  br label %cleanup30

cleanup30:                                        ; preds = %if.end, %entry, %free
  %retval.0 = phi i64 [ %copied.3, %free ], [ 0, %entry ], [ -12, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_fs_pwd(%struct.fs_struct* noundef %fs, %struct.path* noundef %pwd) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %pwd1 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 6
  %0 = bitcast %struct.path* %pwd to i8*
  %1 = bitcast %struct.path* %pwd1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %pwd) #15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(%struct.path* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_task_root(%struct.task_struct* noundef %task, %struct.path* noundef %root) unnamed_addr #0 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %task) #14
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 83
  %0 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %tobool.not = icmp eq %struct.fs_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @get_fs_root(%struct.fs_struct* noundef nonnull %0, %struct.path* noundef %root) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %result.0 = phi i32 [ 0, %if.then ], [ -2, %entry ]
  call fastcc void @task_unlock(%struct.task_struct* noundef %task) #14
  ret i32 %result.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_fs_root(%struct.fs_struct* noundef %fs, %struct.path* noundef %root) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %root1 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 5
  %0 = bitcast %struct.path* %root to i8*
  %1 = bitcast %struct.path* %root1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %root) #15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @get_task_exe_file(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_wchan(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @totalram_pages() unnamed_addr #11 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0), align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @oom_badness(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @oom_adj_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #0 {
entry:
  %buffer = alloca [13 x i8], align 1
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %0, i8 0, i64 13, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 51
  %2 = load i16, i16* %oom_score_adj, align 2
  %cmp = icmp eq i16 %2, 1000
  br i1 %cmp, label %if.end7.thread, label %if.end7

if.end7.thread:                                   ; preds = %if.end
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %4

if.end7:                                          ; preds = %if.end
  %conv = sext i16 %2 to i32
  %mul = mul nsw i32 %conv, 17
  %div = sdiv i32 %mul, 1000
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  %3 = icmp slt i32 %div, 15
  %spec.select = select i1 %3, i32 %div, i32 15
  br label %4

4:                                                ; preds = %if.end7, %if.end7.thread
  %5 = phi i32 [ 15, %if.end7.thread ], [ %spec.select, %if.end7 ]
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), i32 noundef %5) #15
  %conv13 = sext i32 %call12 to i64
  %call15 = call i64 @simple_read_from_buffer(i8* noundef %buf, i64 noundef %count, i64* noundef %ppos, i8* noundef nonnull %0, i64 noundef %conv13) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %4
  %retval.0 = phi i64 [ %call15, %4 ], [ -3, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %0) #16
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @oom_adj_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readnone %ppos) #0 {
entry:
  %buffer = alloca [13 x i8], align 1
  %oom_adj = alloca i32, align 4
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %0, i8 0, i64 13, i1 false), !annotation !7
  %1 = bitcast i32* %oom_adj to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  store i32 0, i32* %oom_adj, align 4, !annotation !7
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 13) #15
  %2 = icmp ult i64 %count, 12
  %spec.store.select = select i1 %2, i64 %count, i64 12
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %buf, i64 noundef %spec.store.select) #15
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end4, label %out.thread

if.end4:                                          ; preds = %entry
  %call6 = call fastcc i8* @strstrip(i8* noundef nonnull %0) #14
  %call7 = call i32 @kstrtoint(i8* noundef %call6, i32 noundef 0, i32* noundef nonnull %oom_adj) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %out

if.end10:                                         ; preds = %if.end4
  %3 = load i32, i32* %oom_adj, align 4
  %4 = add i32 %3, -16
  %5 = icmp ult i32 %4, -33
  br i1 %5, label %out.thread, label %if.end15

if.end15:                                         ; preds = %if.end10
  %cmp16 = icmp eq i32 %3, 15
  br i1 %cmp16, label %if.end18, label %if.else

if.else:                                          ; preds = %if.end15
  %6 = trunc i32 %3 to i16
  %div.lhs.trunc = mul nsw i16 %6, 1000
  %div31 = sdiv i16 %div.lhs.trunc, 17
  %div.sext = sext i16 %div31 to i32
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.else
  %storemerge = phi i32 [ %div.sext, %if.else ], [ 1000, %if.end15 ]
  store i32 %storemerge, i32* %oom_adj, align 4
  %call19 = call fastcc i32 @__set_oom_adj(%struct.file* noundef %file, i32 noundef %storemerge, i1 noundef true) #14
  br label %out

out:                                              ; preds = %if.end4, %if.end18
  %err.0 = phi i32 [ %call7, %if.end4 ], [ %call19, %if.end18 ]
  %cmp20 = icmp slt i32 %err.0, 0
  %conv = sext i32 %err.0 to i64
  br i1 %cmp20, label %out.thread, label %7

out.thread:                                       ; preds = %if.end10, %entry, %out
  %conv30 = phi i64 [ %conv, %out ], [ -22, %if.end10 ], [ -14, %entry ]
  br label %7

7:                                                ; preds = %out, %out.thread
  %8 = phi i64 [ %conv30, %out.thread ], [ %spec.store.select, %out ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %0) #16
  ret i64 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @strstrip(i8* noundef %str) unnamed_addr #0 {
entry:
  %call = call i8* @strim(i8* noundef %str) #15
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__set_oom_adj(%struct.file* nocapture noundef readonly %file, i32 noundef %oom_adj, i1 noundef %legacy) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @oom_adj_mutex) #15
  br i1 %legacy, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 51
  %1 = load i16, i16* %oom_score_adj, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp sgt i32 %conv, %oom_adj
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.then3
  %call5 = call i1 @capable(i32 noundef 24) #15
  br i1 %call5, label %if.end7, label %err_unlock

if.end7:                                          ; preds = %land.lhs.true, %if.then3
  %.b153 = load i1, i1* @__set_oom_adj.__already_done, align 1
  br i1 %.b153, label %if.end41, label %if.then15, !prof !8

if.then15:                                        ; preds = %if.end7
  store i1 true, i1* @__set_oom_adj.__already_done, align 1
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !29
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 81, i64 0
  %call18 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %3) #14
  %call19 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef nonnull %call1) #14
  %call21 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.76, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %call18, i32 noundef %call19, i32 noundef %call19) #19
  br label %if.end41

if.else:                                          ; preds = %if.end
  %sext = shl i32 %oom_adj, 16
  %conv32 = ashr exact i32 %sext, 16
  %signal33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 87
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal33, align 8
  %oom_score_adj_min = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 52
  %5 = load i16, i16* %oom_score_adj_min, align 4
  %conv34 = sext i16 %5 to i32
  %cmp35 = icmp slt i32 %conv32, %conv34
  br i1 %cmp35, label %land.lhs.true37, label %if.end41

land.lhs.true37:                                  ; preds = %if.else
  %call38 = call i1 @capable(i32 noundef 24) #15
  br i1 %call38, label %if.end41, label %err_unlock

if.end41:                                         ; preds = %if.end7, %if.then15, %if.else, %land.lhs.true37
  %vfork_done = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 63
  %6 = load %struct.completion*, %struct.completion** %vfork_done, align 8
  %tobool42.not = icmp eq %struct.completion* %6, null
  br i1 %tobool42.not, label %if.then43, label %if.end54

if.then43:                                        ; preds = %if.end41
  %call44 = call %struct.task_struct* @find_lock_task_mm(%struct.task_struct* noundef nonnull %call1) #15
  %tobool45.not = icmp eq %struct.task_struct* %call44, null
  br i1 %tobool45.not, label %if.end54, label %if.then46

if.then46:                                        ; preds = %if.then43
  %mm47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call44, i64 0, i32 35
  %7 = load %struct.mm_struct*, %struct.mm_struct** %mm47, align 8
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i64 0, i32 0, i32 43
  %8 = load volatile i64, i64* %flags, align 8
  %9 = and i64 %8, 134217728
  %tobool49.not = icmp eq i64 %9, 0
  br i1 %tobool49.not, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.then46
  call fastcc void @mmgrab(%struct.mm_struct* noundef %7) #14
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then46
  %mm.0 = phi %struct.mm_struct* [ %7, %if.then50 ], [ null, %if.then46 ]
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call44) #14
  br label %if.end54

if.end54:                                         ; preds = %if.then43, %if.end52, %if.end41
  %mm.2 = phi %struct.mm_struct* [ null, %if.end41 ], [ %mm.0, %if.end52 ], [ null, %if.then43 ]
  %conv55 = trunc i32 %oom_adj to i16
  %signal56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 87
  %10 = load %struct.signal_struct*, %struct.signal_struct** %signal56, align 8
  %oom_score_adj57 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 51
  store i16 %conv55, i16* %oom_score_adj57, align 2
  br i1 %legacy, label %if.end67, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.end54
  %11 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !29
  %12 = inttoptr i64 %11 to %struct.task_struct*
  %call61 = call i1 @has_capability_noaudit(%struct.task_struct* noundef %12, i32 noundef 24) #15
  br i1 %call61, label %if.then63, label %if.end67

if.then63:                                        ; preds = %land.lhs.true59
  %13 = load %struct.signal_struct*, %struct.signal_struct** %signal56, align 8
  %oom_score_adj_min66 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %13, i64 0, i32 52
  store i16 %conv55, i16* %oom_score_adj_min66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %land.lhs.true59, %if.end54
  %tobool68.not = icmp eq %struct.mm_struct* %mm.2, null
  br i1 %tobool68.not, label %err_unlock, label %if.then69

if.then69:                                        ; preds = %if.end67
  call fastcc void @__rcu_read_lock() #15
  %14 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr154 = getelementptr %struct.list_head, %struct.list_head* %14, i64 -42, i32 1
  %cmp79.not155 = icmp eq %struct.list_head** %add.ptr154, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp79.not155, label %for.end, label %for.body

for.body:                                         ; preds = %if.then69, %for.cond.backedge
  %add.ptr156 = phi %struct.list_head** [ %add.ptr, %for.cond.backedge ], [ %add.ptr154, %if.then69 ]
  %15 = bitcast %struct.list_head** %add.ptr156 to %struct.task_struct*
  %call81 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef nonnull %call1, %struct.task_struct* noundef %15) #14
  br i1 %call81, label %for.cond.backedge, label %if.end83

if.end83:                                         ; preds = %for.body
  %flags84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i64 0, i32 4
  %16 = load i32, i32* %flags84, align 4
  %and = and i32 %16, 2097152
  %tobool85.not = icmp eq i32 %and, 0
  br i1 %tobool85.not, label %lor.lhs.false, label %for.cond.backedge

lor.lhs.false:                                    ; preds = %if.end83
  %call86 = call fastcc i32 @is_global_init(%struct.task_struct* noundef %15) #14
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end83, %lor.lhs.false, %if.end109, %for.body
  %17 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr156, i64 83
  %18 = load volatile %struct.list_head*, %struct.list_head** %17, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %18, i64 -42, i32 1
  %cmp79.not = icmp eq %struct.list_head** %add.ptr, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp79.not, label %for.end, label %for.body

if.end89:                                         ; preds = %lor.lhs.false
  call fastcc void @task_lock(%struct.task_struct* noundef %15) #14
  %vfork_done90 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr156, i64 141
  %19 = bitcast %struct.list_head** %vfork_done90 to %struct.completion**
  %20 = load %struct.completion*, %struct.completion** %19, align 8
  %tobool91.not = icmp eq %struct.completion* %20, null
  br i1 %tobool91.not, label %land.lhs.true92, label %if.end109

land.lhs.true92:                                  ; preds = %if.end89
  %call93 = call i1 @process_shares_mm(%struct.task_struct* noundef %15, %struct.mm_struct* noundef nonnull %mm.2) #15
  br i1 %call93, label %if.then95, label %if.end109

if.then95:                                        ; preds = %land.lhs.true92
  %signal97 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr156, i64 177
  %21 = bitcast %struct.list_head** %signal97 to %struct.signal_struct**
  %22 = load %struct.signal_struct*, %struct.signal_struct** %21, align 8
  %oom_score_adj98 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %22, i64 0, i32 51
  store i16 %conv55, i16* %oom_score_adj98, align 2
  br i1 %legacy, label %if.end109, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %if.then95
  %23 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !29
  %24 = inttoptr i64 %23 to %struct.task_struct*
  %call102 = call i1 @has_capability_noaudit(%struct.task_struct* noundef %24, i32 noundef 24) #15
  br i1 %call102, label %if.then104, label %if.end109

if.then104:                                       ; preds = %land.lhs.true100
  %25 = load %struct.signal_struct*, %struct.signal_struct** %21, align 8
  %oom_score_adj_min107 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %25, i64 0, i32 52
  store i16 %conv55, i16* %oom_score_adj_min107, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then95, %land.lhs.true100, %if.then104, %land.lhs.true92, %if.end89
  call fastcc void @task_unlock(%struct.task_struct* noundef %15) #14
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %if.then69
  call fastcc void @rcu_read_unlock() #14
  call fastcc void @mmdrop(%struct.mm_struct* noundef nonnull %mm.2) #14
  br label %err_unlock

err_unlock:                                       ; preds = %land.lhs.true37, %land.lhs.true, %if.end67, %for.end
  %err.0 = phi i32 [ 0, %for.end ], [ 0, %if.end67 ], [ -13, %land.lhs.true ], [ -13, %land.lhs.true37 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @oom_adj_mutex) #15
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %err_unlock
  %retval.0 = phi i32 [ %err.0, %err_unlock ], [ -3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strim(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #2 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_lock_task_mm(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @has_capability_noaudit(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_global_init(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @task_tgid_nr(%struct.task_struct* noundef %tsk) #14
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @process_shares_mm(%struct.task_struct* noundef, %struct.mm_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_tgid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #2 {
entry:
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 51
  %0 = load i32, i32* %tgid, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @oom_score_adj_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #0 {
entry:
  %buffer = alloca [13 x i8], align 1
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %0, i8 0, i64 13, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_score_adj2 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 51
  %2 = load i16, i16* %oom_score_adj2, align 2
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  %conv = sext i16 %2 to i32
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv) #15
  %conv4 = sext i32 %call3 to i64
  %call6 = call i64 @simple_read_from_buffer(i8* noundef %buf, i64 noundef %count, i64* noundef %ppos, i8* noundef nonnull %0, i64 noundef %conv4) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call6, %if.end ], [ -3, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %0) #16
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @oom_score_adj_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readnone %ppos) #0 {
entry:
  %buffer = alloca [13 x i8], align 1
  %oom_score_adj = alloca i32, align 4
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %0, i8 0, i64 13, i1 false), !annotation !7
  %1 = bitcast i32* %oom_score_adj to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  store i32 0, i32* %oom_score_adj, align 4, !annotation !7
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 13) #15
  %2 = icmp ult i64 %count, 12
  %spec.store.select = select i1 %2, i64 %count, i64 12
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %buf, i64 noundef %spec.store.select) #15
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end4, label %out.thread

if.end4:                                          ; preds = %entry
  %call6 = call fastcc i8* @strstrip(i8* noundef nonnull %0) #14
  %call7 = call i32 @kstrtoint(i8* noundef %call6, i32 noundef 0, i32* noundef nonnull %oom_score_adj) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %out

if.end10:                                         ; preds = %if.end4
  %3 = load i32, i32* %oom_score_adj, align 4
  %4 = add i32 %3, -1001
  %5 = icmp ult i32 %4, -2001
  br i1 %5, label %out.thread, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i32 @__set_oom_adj(%struct.file* noundef %file, i32 noundef %3, i1 noundef false) #14
  br label %out

out:                                              ; preds = %if.end4, %if.end14
  %err.0 = phi i32 [ %call7, %if.end4 ], [ %call15, %if.end14 ]
  %cmp16 = icmp slt i32 %err.0, 0
  %conv = sext i32 %err.0 to i64
  br i1 %cmp16, label %out.thread, label %6

out.thread:                                       ; preds = %if.end10, %entry, %out
  %conv25 = phi i64 [ %conv, %out ], [ -22, %if.end10 ], [ -14, %entry ]
  br label %6

6:                                                ; preds = %out, %out.thread
  %7 = phi i64 [ %conv25, %out.thread ], [ %spec.store.select, %out ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %0) #16
  ret i64 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_tgid_stat(%struct.seq_file* noundef, %struct.pid_namespace* noundef, %struct.pid* noundef, %struct.task_struct* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_task_lookup(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i32 noundef %flags) #0 {
entry:
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %dir) #14
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -2) #14
  %0 = bitcast i8* %call1 to %struct.dentry*
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %out_no_task, label %if.end

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4
  %call2 = call i32 @name_to_int(%struct.qstr* noundef %d_name) #15
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %out, label %if.end4

if.end4:                                          ; preds = %if.end
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call5 = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %1) #14
  %pid_ns = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call5, i64 0, i32 0
  %2 = load %struct.pid_namespace*, %struct.pid_namespace** %pid_ns, align 8
  call fastcc void @__rcu_read_lock() #15
  %call6 = call %struct.task_struct* @find_task_by_pid_ns(i32 noundef %call2, %struct.pid_namespace* noundef %2) #15
  %tobool7.not = icmp eq %struct.task_struct* %call6, null
  br i1 %tobool7.not, label %out.critedge, label %if.then8

if.then8:                                         ; preds = %if.end4
  call fastcc void @get_task_struct(%struct.task_struct* noundef nonnull %call6) #14
  call fastcc void @rcu_read_unlock() #14
  %call14 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef nonnull %call, %struct.task_struct* noundef nonnull %call6) #14
  br i1 %call14, label %if.end16, label %out_drop_task

if.end16:                                         ; preds = %if.then8
  %call17 = call %struct.dentry* @proc_task_instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef nonnull %call6, i8* noundef null) #14
  br label %out_drop_task

out_drop_task:                                    ; preds = %if.then8, %if.end16
  %result.0 = phi %struct.dentry* [ %call17, %if.end16 ], [ %0, %if.then8 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call6) #14
  br label %out

out.critedge:                                     ; preds = %if.end4
  call fastcc void @rcu_read_unlock() #14
  br label %out

out:                                              ; preds = %out.critedge, %if.end, %out_drop_task
  %result.1 = phi %struct.dentry* [ %0, %if.end ], [ %result.0, %out_drop_task ], [ %0, %out.critedge ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #14
  br label %out_no_task

out_no_task:                                      ; preds = %entry, %out
  %result.2 = phi %struct.dentry* [ %result.1, %out ], [ %0, %entry ]
  ret %struct.dentry* %result.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_task_getattr(%struct.user_namespace* nocapture noundef readnone %mnt_userns, %struct.path* nocapture noundef readonly %path, %struct.kstat* noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %0) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  call void @generic_fillattr(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %call, %struct.kstat* noundef %stat) #15
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @get_nr_threads(%struct.task_struct* noundef nonnull %call1) #14
  %nlink = getelementptr inbounds %struct.kstat, %struct.kstat* %stat, i64 0, i32 2
  %1 = load i32, i32* %nlink, align 8
  %add = add i32 %1, %call2
  store i32 %add, i32* %nlink, align 8
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_task_instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef %task, i8* nocapture noundef readnone %ptr) #0 {
entry:
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call = call %struct.inode* @proc_pid_make_inode(%struct.super_block* noundef %0, %struct.task_struct* noundef %task, i16 noundef 16749) #14
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -2) #14
  %1 = bitcast i8* %call1 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_tid_base_inode_operations to %struct.inode_operations*), %struct.inode_operations** %i_op, align 8
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  store %struct.file_operations* @proc_tid_base_operations, %struct.file_operations** %i_fop, align 8
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %2 = load i32, i32* %i_flags, align 4
  %or = or i32 %2, 8
  store i32 %or, i32* %i_flags, align 4
  %3 = load i8, i8* @nlink_tid, align 1
  %conv = zext i8 %3 to i32
  call void @set_nlink(%struct.inode* noundef nonnull %call, i32 noundef %conv) #15
  call void @pid_update_inode(%struct.task_struct* noundef %task, %struct.inode* noundef nonnull %call) #14
  call void @d_set_d_op(%struct.dentry* noundef %dentry, %struct.dentry_operations* noundef nonnull @pid_dentry_operations) #15
  %call2 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef nonnull %call, %struct.dentry* noundef %dentry) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.dentry* [ %call2, %if.end ], [ %1, %if.then ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_tid_base_lookup(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i32 noundef %flags) #0 {
entry:
  %call = call fastcc %struct.dentry* @proc_pident_lookup(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, %struct.pid_entry* noundef getelementptr inbounds (<{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry }>, <{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry }>* @tid_base_stuff, i64 0, i32 0), %struct.pid_entry* noundef getelementptr inbounds (<{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry }>, <{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry }>* @tid_base_stuff, i64 1, i32 0)) #14
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_tid_base_readdir(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) #0 {
entry:
  %call = call fastcc i32 @proc_pident_readdir(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, %struct.pid_entry* noundef getelementptr inbounds (<{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry }>, <{ %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, %struct.pid_entry, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, { i8*, i32, i16, %struct.inode_operations*, %struct.file_operations*, { i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* } }, %struct.pid_entry, %struct.pid_entry }>* @tid_base_stuff, i64 0, i32 0), i32 noundef 28) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_nr_threads(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #2 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %nr_threads = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 2
  %1 = load i32, i32* %nr_threads, align 8
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_task_readdir(%struct.file* nocapture noundef %file, %struct.dir_context* noundef %ctx) #0 {
entry:
  %name = alloca [11 x i8], align 1
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %call1 = call fastcc i1 @proc_inode_is_dead(%struct.inode* noundef %call) #14
  br i1 %call1, label %cleanup20, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @dir_emit_dots(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #14
  br i1 %call2, label %if.end4, label %cleanup20

if.end4:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call5 = call fastcc %struct.pid_namespace* @proc_pid_ns(%struct.super_block* noundef %0) #14
  %f_version = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 14
  %1 = load i64, i64* %f_version, align 8
  %conv = trunc i64 %1 to i32
  store i64 0, i64* %f_version, align 8
  %call7 = call fastcc %struct.pid* @proc_pid(%struct.inode* noundef %call) #14
  %pos = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %2 = load i64, i64* %pos, align 8
  %sub = add i64 %2, -2
  %call8 = call fastcc %struct.task_struct* @first_tid(%struct.pid* noundef %call7, i32 noundef %conv, i64 noundef %sub, %struct.pid_namespace* noundef %call5) #14
  %tobool.not49 = icmp eq %struct.task_struct* %call8, null
  br i1 %tobool.not49, label %cleanup20, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end4
  %3 = getelementptr inbounds [11 x i8], [11 x i8]* %name, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %task.050 = phi %struct.task_struct* [ %call8, %for.body.lr.ph ], [ %call18, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %3) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %3, i8 0, i64 11, i1 false), !annotation !7
  %call9 = call fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef nonnull %task.050, %struct.pid_namespace* noundef %call5) #14
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %3, i64 noundef 11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call9) #15
  %call12 = call i1 @proc_fill_cache(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, i8* noundef nonnull %3, i32 noundef %call10, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef nonnull @proc_task_instantiate, %struct.task_struct* noundef nonnull %task.050, i8* noundef null) #14
  br i1 %call12, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  %conv14 = sext i32 %call9 to i64
  store i64 %conv14, i64* %f_version, align 8
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %task.050) #14
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %3) #16
  br label %cleanup20

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %3) #16
  %call18 = call fastcc %struct.task_struct* @next_tid(%struct.task_struct* noundef nonnull %task.050) #14
  %4 = load i64, i64* %pos, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %pos, align 8
  %tobool.not = icmp eq %struct.task_struct* %call18, null
  br i1 %tobool.not, label %cleanup20, label %for.body

cleanup20:                                        ; preds = %for.inc, %if.end4, %cleanup, %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ 0, %if.end ], [ 0, %cleanup ], [ 0, %if.end4 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @first_tid(%struct.pid* noundef %pid, i32 noundef %tid, i64 noundef %f_pos, %struct.pid_namespace* noundef %ns) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %call = call %struct.task_struct* @pid_task(%struct.pid* noundef %pid, i32 noundef 0) #15
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %out, label %if.end2

if.end2:                                          ; preds = %entry
  %tobool3 = icmp ne i32 %tid, 0
  %tobool4 = icmp ne i64 %f_pos, 0
  %or.cond = and i1 %tobool3, %tobool4
  br i1 %or.cond, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end2
  %call6 = call %struct.task_struct* @find_task_by_pid_ns(i32 noundef %tid, %struct.pid_namespace* noundef %ns) #15
  %tobool7.not = icmp eq %struct.task_struct* %call6, null
  br i1 %tobool7.not, label %if.end12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.then5
  %call9 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef nonnull %call6, %struct.task_struct* noundef nonnull %call) #14
  br i1 %call9, label %found, label %if.end12

if.end12:                                         ; preds = %if.then5, %land.lhs.true8, %if.end2
  %call13 = call fastcc i32 @get_nr_threads(%struct.task_struct* noundef nonnull %call) #14
  %conv = sext i32 %call13 to i64
  %cmp14.not = icmp ugt i64 %conv, %f_pos
  br i1 %cmp14.not, label %if.end17, label %out

if.end17:                                         ; preds = %if.end12
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 56
  %0 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end17
  %pos.0 = phi %struct.task_struct* [ %0, %if.end17 ], [ %call21, %do.cond ]
  %nr.0 = phi i64 [ %f_pos, %if.end17 ], [ %dec, %do.cond ]
  %tobool18.not = icmp eq i64 %nr.0, 0
  br i1 %tobool18.not, label %found, label %do.cond

do.cond:                                          ; preds = %do.body
  %dec = add i64 %nr.0, -1
  %call21 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %pos.0) #14
  %cmp22.not = icmp eq %struct.task_struct* %call21, %0
  br i1 %cmp22.not, label %out, label %do.body

found:                                            ; preds = %do.body, %land.lhs.true8
  %pos.1 = phi %struct.task_struct* [ %call6, %land.lhs.true8 ], [ %pos.0, %do.body ]
  call fastcc void @get_task_struct(%struct.task_struct* noundef %pos.1) #14
  br label %out

out:                                              ; preds = %do.cond, %entry, %if.end12, %found
  %pos.2 = phi %struct.task_struct* [ %pos.1, %found ], [ null, %if.end12 ], [ null, %entry ], [ null, %do.cond ]
  call fastcc void @rcu_read_unlock() #14
  ret %struct.task_struct* %pos.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef %tsk, %struct.pid_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef %ns) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @next_tid(%struct.task_struct* noundef %start) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %call = call fastcc i32 @pid_alive(%struct.task_struct* noundef %start) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %start) #14
  %call2 = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef %call1) #14
  br i1 %call2, label %if.end5, label %if.else

if.else:                                          ; preds = %if.then
  call fastcc void @get_task_struct(%struct.task_struct* noundef %call1) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.else, %entry
  %pos.0 = phi %struct.task_struct* [ %call1, %if.else ], [ null, %entry ], [ null, %if.then ]
  call fastcc void @rcu_read_unlock() #14
  call fastcc void @put_task_struct(%struct.task_struct* noundef %start) #14
  ret %struct.task_struct* %pos.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p) unnamed_addr #11 {
entry:
  %next = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %0, i64 -69, i32 1
  %1 = bitcast %struct.list_head** %add.ptr to %struct.task_struct*
  ret %struct.task_struct* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pid_alive(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  %cmp = icmp ne %struct.pid* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @thread_group_leader(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #2 {
entry:
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 41
  %0 = load i32, i32* %exit_signal, align 4
  %cmp = icmp sgt i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_map_files_lookup(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i32 noundef %flags) #0 {
entry:
  %vm_start = alloca i64, align 8
  %vm_end = alloca i64, align 8
  %0 = bitcast i64* %vm_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %vm_start, align 8, !annotation !7
  %1 = bitcast i64* %vm_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  store i64 0, i64* %vm_end, align 8, !annotation !7
  %call = call fastcc i8* @ERR_PTR(i64 noundef -2) #14
  %2 = bitcast i8* %call to %struct.dentry*
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %dir) #14
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -13) #14
  %3 = bitcast i8* %call2 to %struct.dentry*
  %call3 = call i1 @ptrace_may_access(%struct.task_struct* noundef nonnull %call1, i32 noundef 9) #15
  br i1 %call3, label %if.end5, label %out_put_task

if.end5:                                          ; preds = %if.end
  %call7 = call fastcc i32 @dname_to_vma_addr(%struct.dentry* noundef %dentry, i64* noundef nonnull %vm_start, i64* noundef nonnull %vm_end) #14
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %out_put_task

if.end10:                                         ; preds = %if.end5
  %call11 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef nonnull %call1) #15
  %tobool12.not = icmp eq %struct.mm_struct* %call11, null
  br i1 %tobool12.not, label %out_put_task, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i8* @ERR_PTR(i64 noundef -4) #14
  %4 = bitcast i8* %call15 to %struct.dentry*
  %call16 = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef nonnull %call11) #14
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %out_put_mm

if.end19:                                         ; preds = %if.end14
  %5 = load i64, i64* %vm_start, align 8
  %6 = load i64, i64* %vm_end, align 8
  %call21 = call fastcc %struct.vm_area_struct* @find_exact_vma(%struct.mm_struct* noundef nonnull %call11, i64 noundef %5, i64 noundef %6) #14
  %tobool22.not = icmp eq %struct.vm_area_struct* %call21, null
  br i1 %tobool22.not, label %out_no_vma, label %if.end24

if.end24:                                         ; preds = %if.end19
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call21, i64 0, i32 14
  %7 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool25.not = icmp eq %struct.file* %7, null
  br i1 %tobool25.not, label %out_no_vma, label %if.then26

if.then26:                                        ; preds = %if.end24
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %7, i64 0, i32 8
  %8 = load i32, i32* %f_mode, align 4
  %conv = zext i32 %8 to i64
  %9 = inttoptr i64 %conv to i8*
  %call28 = call %struct.dentry* @proc_map_files_instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef nonnull %call1, i8* noundef %9) #14
  br label %out_no_vma

out_no_vma:                                       ; preds = %if.end24, %if.then26, %if.end19
  %result.0 = phi %struct.dentry* [ %call28, %if.then26 ], [ %2, %if.end24 ], [ %2, %if.end19 ]
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %call11) #14
  br label %out_put_mm

out_put_mm:                                       ; preds = %if.end14, %out_no_vma
  %result.1 = phi %struct.dentry* [ %4, %if.end14 ], [ %result.0, %out_no_vma ]
  call void @mmput(%struct.mm_struct* noundef nonnull %call11) #15
  br label %out_put_task

out_put_task:                                     ; preds = %if.end10, %if.end5, %if.end, %out_put_mm
  %result.2 = phi %struct.dentry* [ %2, %if.end5 ], [ %result.1, %out_put_mm ], [ %2, %if.end10 ], [ %3, %if.end ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %out

out:                                              ; preds = %entry, %out_put_task
  %result.3 = phi %struct.dentry* [ %result.2, %out_put_task ], [ %2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret %struct.dentry* %result.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_fd_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dname_to_vma_addr(%struct.dentry* nocapture noundef readonly %dentry, i64* nocapture noundef writeonly %start, i64* nocapture noundef writeonly %end) unnamed_addr #0 {
entry:
  %sval = alloca i64, align 8
  %eval = alloca i64, align 8
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 4, i32 1
  %0 = load i8*, i8** %name, align 8
  %1 = bitcast i64* %sval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  store i64 0, i64* %sval, align 8, !annotation !7
  %2 = bitcast i64* %eval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  store i64 0, i64* %eval, align 8, !annotation !7
  %3 = load i8, i8* %0, align 1
  %cmp = icmp eq i8 %3, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, i8* %0, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %cmp4.not = icmp eq i8 %4, 45
  br i1 %cmp4.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call i32 @_parse_integer(i8* noundef %0, i32 noundef 16, i64* noundef nonnull %sval) #15
  %tobool.not = icmp sgt i32 %call, -1
  br i1 %tobool.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext
  %5 = load i8, i8* %add.ptr, align 1
  %cmp13.not = icmp eq i8 %5, 45
  br i1 %cmp13.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end11
  %incdec.ptr = getelementptr i8, i8* %add.ptr, i64 1
  %6 = load i8, i8* %incdec.ptr, align 1
  %cmp19 = icmp eq i8 %6, 48
  br i1 %cmp19, label %land.lhs.true21, label %if.end26

land.lhs.true21:                                  ; preds = %if.end16
  %arrayidx22 = getelementptr i8, i8* %incdec.ptr, i64 1
  %7 = load i8, i8* %arrayidx22, align 1
  %tobool24.not = icmp eq i8 %7, 0
  br i1 %tobool24.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %land.lhs.true21, %if.end16
  %call27 = call i32 @_parse_integer(i8* noundef %incdec.ptr, i32 noundef 16, i64* noundef nonnull %eval) #15
  %tobool29.not = icmp sgt i32 %call27, -1
  br i1 %tobool29.not, label %if.end35, label %cleanup

if.end35:                                         ; preds = %if.end26
  %idx.ext36 = zext i32 %call27 to i64
  %add.ptr37 = getelementptr i8, i8* %incdec.ptr, i64 %idx.ext36
  %8 = load i8, i8* %add.ptr37, align 1
  %cmp39.not = icmp eq i8 %8, 0
  br i1 %cmp39.not, label %if.end42, label %cleanup

if.end42:                                         ; preds = %if.end35
  %9 = load i64, i64* %sval, align 8
  store i64 %9, i64* %start, align 8
  %10 = load i64, i64* %eval, align 8
  store i64 %10, i64* %end, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end26, %land.lhs.true21, %if.end11, %if.end, %land.lhs.true, %if.end42
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -22, %land.lhs.true ], [ -22, %if.end ], [ -22, %if.end11 ], [ -22, %land.lhs.true21 ], [ -22, %if.end26 ], [ -22, %if.end35 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_read_killable(%struct.rw_semaphore* noundef %mmap_lock) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.vm_area_struct* @find_exact_vma(%struct.mm_struct* noundef %mm, i64 noundef %vm_start, i64 noundef %vm_end) unnamed_addr #0 {
entry:
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm, i64 noundef %vm_start) #15
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %vm_start1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %0 = load i64, i64* %vm_start1, align 8
  %cmp.not = icmp eq i64 %0, %vm_start
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %vm_end2 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 1
  %1 = load i64, i64* %vm_end2, align 8
  %cmp3.not = icmp eq i64 %1, %vm_end
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %vma.0 = phi %struct.vm_area_struct* [ null, %if.then ], [ %call, %lor.lhs.false ], [ null, %entry ]
  ret %struct.vm_area_struct* %vma.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal %struct.dentry* @proc_map_files_instantiate(%struct.dentry* noundef %dentry, %struct.task_struct* noundef %task, i8* noundef %ptr) #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %trunc = trunc i64 %0 to i9
  %rev = call i9 @llvm.bitreverse.i9(i9 %trunc)
  %mask = and i9 %rev, -128
  %or = zext i9 %mask to i16
  %or4 = or i16 %or, -24576
  %call = call %struct.inode* @proc_pid_make_inode(%struct.super_block* noundef %1, %struct.task_struct* noundef %task, i16 noundef %or4) #14
  %tobool6.not = icmp eq %struct.inode* %call, null
  br i1 %tobool6.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef -2) #14
  %2 = bitcast i8* %call7 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call fastcc %struct.proc_inode* @PROC_I(%struct.inode* noundef nonnull %call) #14
  %proc_get_link = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %call8, i64 0, i32 2, i32 0
  store i32 (%struct.dentry*, %struct.path*)* @map_files_get_link, i32 (%struct.dentry*, %struct.path*)** %proc_get_link, align 8
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  store %struct.inode_operations* bitcast ({ %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }* @proc_map_files_link_inode_operations to %struct.inode_operations*), %struct.inode_operations** %i_op, align 8
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 11
  store i64 64, i64* %i_size, align 8
  call void @d_set_d_op(%struct.dentry* noundef %dentry, %struct.dentry_operations* noundef nonnull @tid_map_files_dentry_operations) #15
  %call9 = call %struct.dentry* @d_splice_alias(%struct.inode* noundef nonnull %call, %struct.dentry* noundef %dentry) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.dentry* [ %call9, %if.end ], [ %2, %if.then ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @map_files_get_link(%struct.dentry* nocapture noundef readonly %dentry, %struct.path* noundef %path) #0 {
entry:
  %vm_start = alloca i64, align 8
  %vm_end = alloca i64, align 8
  %0 = bitcast i64* %vm_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %vm_start, align 8, !annotation !7
  %1 = bitcast i64* %vm_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  store i64 0, i64* %vm_end, align 8, !annotation !7
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef nonnull %call1) #15
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  %tobool3.not = icmp eq %struct.mm_struct* %call2, null
  br i1 %tobool3.not, label %out, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @dname_to_vma_addr(%struct.dentry* noundef %dentry, i64* noundef nonnull %vm_start, i64* noundef nonnull %vm_end) #14
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %out_mmput

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef nonnull %call2) #14
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %out_mmput

if.end13:                                         ; preds = %if.end9
  %2 = load i64, i64* %vm_start, align 8
  %3 = load i64, i64* %vm_end, align 8
  %call14 = call fastcc %struct.vm_area_struct* @find_exact_vma(%struct.mm_struct* noundef nonnull %call2, i64 noundef %2, i64 noundef %3) #14
  %tobool15.not = icmp eq %struct.vm_area_struct* %call14, null
  br i1 %tobool15.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call14, i64 0, i32 14
  %4 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool16.not = icmp eq %struct.file* %4, null
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  %f_path = getelementptr inbounds %struct.file, %struct.file* %4, i64 0, i32 1
  %5 = bitcast %struct.path* %path to i8*
  %6 = bitcast %struct.path* %f_path to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %5, i8* noundef align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %path) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true, %if.end13
  %rc.0 = phi i32 [ 0, %if.then17 ], [ -2, %land.lhs.true ], [ -2, %if.end13 ]
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %call2) #14
  br label %out_mmput

out_mmput:                                        ; preds = %if.end9, %if.end5, %if.end19
  %rc.1 = phi i32 [ %call6, %if.end5 ], [ %call10, %if.end9 ], [ %rc.0, %if.end19 ]
  call void @mmput(%struct.mm_struct* noundef nonnull %call2) #15
  br label %out

out:                                              ; preds = %if.end, %entry, %out_mmput
  %rc.2 = phi i32 [ %rc.1, %out_mmput ], [ -2, %if.end ], [ -2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %rc.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @proc_map_files_get_link(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode, %struct.delayed_call* nocapture noundef readnone %done) #0 {
entry:
  %call = call fastcc i1 @checkpoint_restore_ns_capable() #14
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -1) #14
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @proc_pid_get_link(%struct.dentry* noundef %dentry, %struct.inode* noundef %inode, %struct.delayed_call* noundef %done) #14
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call2, %if.end ], [ %call1, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @checkpoint_restore_ns_capable() unnamed_addr #0 {
entry:
  %call = call i1 @ns_capable(%struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 40) #15
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef nonnull @init_user_ns, i32 noundef 21) #15
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @map_files_d_revalidate(%struct.dentry* nocapture noundef readonly %dentry, i32 noundef %flags) #0 {
entry:
  %vm_start = alloca i64, align 8
  %vm_end = alloca i64, align 8
  %0 = bitcast i64* %vm_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %vm_start, align 8, !annotation !7
  %1 = bitcast i64* %vm_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  store i64 0, i64* %vm_end, align 8, !annotation !7
  %and = and i32 %flags, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool2.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.mm_struct* @mm_access(%struct.task_struct* noundef nonnull %call1, i32 noundef 9) #15
  %2 = bitcast %struct.mm_struct* %call5 to i8*
  %call6 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %2) #14
  br i1 %call6, label %out, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @dname_to_vma_addr(%struct.dentry* noundef %dentry, i64* noundef nonnull %vm_start, i64* noundef nonnull %vm_end) #14
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end19.thread

if.then11:                                        ; preds = %if.end8
  %call12 = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %call5) #14
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %if.end19.thread

if.end19.thread:                                  ; preds = %if.end8, %if.then11
  %status.0.ph = phi i32 [ %call12, %if.then11 ], [ 0, %if.end8 ]
  call void @mmput(%struct.mm_struct* noundef %call5) #15
  br label %out

if.end19:                                         ; preds = %if.then11
  %3 = load i64, i64* %vm_start, align 8
  %4 = load i64, i64* %vm_end, align 8
  %call15 = call fastcc %struct.vm_area_struct* @find_exact_vma(%struct.mm_struct* noundef %call5, i64 noundef %3, i64 noundef %4) #14
  %tobool16.not = icmp eq %struct.vm_area_struct* %call15, null
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %call5) #14
  call void @mmput(%struct.mm_struct* noundef %call5) #15
  br i1 %tobool16.not, label %out, label %if.then21

if.then21:                                        ; preds = %if.end19
  %i_uid = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 3
  call void @task_dump_owner(%struct.task_struct* noundef nonnull %call1, i16 noundef 0, %struct.kuid_t* noundef %i_uid, %struct.kgid_t* noundef %i_gid) #14
  br label %out

out:                                              ; preds = %if.end19.thread, %if.end19, %if.then21, %if.end4
  %status.1 = phi i32 [ 0, %if.end4 ], [ 1, %if.then21 ], [ 0, %if.end19 ], [ %status.0.ph, %if.end19.thread ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end, %entry
  %retval.0 = phi i32 [ -10, %entry ], [ %status.1, %out ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_map_files_readdir(%struct.file* nocapture noundef readonly %file, %struct.dir_context* noundef %ctx) #0 {
entry:
  %fa = alloca %struct.anon.86, align 8
  %buf = alloca [34 x i8], align 1
  %0 = bitcast %struct.anon.86* %fa to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.anon.86, %struct.anon.86* %fa, i64 0, i32 0, i32 0
  store %struct.genradix_root* null, %struct.genradix_root** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i1 @ptrace_may_access(%struct.task_struct* noundef nonnull %call1, i32 noundef 9) #15
  br i1 %call2, label %if.end4, label %out_put_task

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i1 @dir_emit_dots(%struct.file* noundef %file, %struct.dir_context* noundef %ctx) #14
  br i1 %call5, label %if.end7, label %out_put_task

if.end7:                                          ; preds = %if.end4
  %call8 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef nonnull %call1) #15
  %tobool9.not = icmp eq %struct.mm_struct* %call8, null
  br i1 %tobool9.not, label %out_put_task, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef nonnull %call8) #14
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @mmput(%struct.mm_struct* noundef nonnull %call8) #15
  br label %out_put_task

if.end15:                                         ; preds = %if.end11
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call8, i64 0, i32 0, i32 0
  %vma.0104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  %tobool16.not105 = icmp eq %struct.vm_area_struct* %vma.0104, null
  br i1 %tobool16.not105, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end15
  %pos20 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  %tree23 = getelementptr inbounds %struct.anon.86, %struct.anon.86* %fa, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %vma.0108 = phi %struct.vm_area_struct* [ %vma.0104, %for.body.lr.ph ], [ %vma.0, %for.inc ]
  %pos.0107 = phi i64 [ 2, %for.body.lr.ph ], [ %pos.1, %for.inc ]
  %nr_files.0106 = phi i64 [ 0, %for.body.lr.ph ], [ %nr_files.1, %for.inc ]
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0108, i64 0, i32 14
  %1 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool17.not = icmp eq %struct.file* %1, null
  br i1 %tobool17.not, label %for.inc, label %if.end19

if.end19:                                         ; preds = %for.body
  %inc = add i64 %pos.0107, 1
  %2 = load i64, i64* %pos20, align 8
  %cmp.not = icmp ugt i64 %inc, %2
  br i1 %cmp.not, label %if.end22, label %for.inc

if.end22:                                         ; preds = %if.end19
  %call25 = call fastcc i64 @__idx_to_offset(i64 noundef %nr_files.0106) #14
  %call26 = call i8* @__genradix_ptr_alloc(%struct.__genradix* noundef nonnull %tree23, i64 noundef %call25, i32 noundef 3264) #15
  %tobool27.not = icmp eq i8* %call26, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end22
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %call8) #14
  call void @mmput(%struct.mm_struct* noundef nonnull %call8) #15
  br label %out_put_task

if.end29:                                         ; preds = %if.end22
  %inc24 = add i64 %nr_files.0106, 1
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0108, i64 0, i32 0
  %3 = load i64, i64* %vm_start, align 8
  %start = bitcast i8* %call26 to i64*
  store i64 %3, i64* %start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0108, i64 0, i32 1
  %4 = load i64, i64* %vm_end, align 8
  %end = getelementptr inbounds i8, i8* %call26, i64 8
  %5 = bitcast i8* %end to i64*
  store i64 %4, i64* %5, align 8
  %6 = load %struct.file*, %struct.file** %vm_file, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %6, i64 0, i32 8
  %7 = load i32, i32* %f_mode, align 4
  %mode = getelementptr inbounds i8, i8* %call26, i64 16
  %8 = bitcast i8* %mode to i32*
  store i32 %7, i32* %8, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %for.body, %if.end29
  %nr_files.1 = phi i64 [ %nr_files.0106, %if.end19 ], [ %inc24, %if.end29 ], [ %nr_files.0106, %for.body ]
  %pos.1 = phi i64 [ %inc, %if.end19 ], [ %inc, %if.end29 ], [ %pos.0107, %for.body ]
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0108, i64 0, i32 2
  %vma.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool16.not = icmp eq %struct.vm_area_struct* %vma.0, null
  br i1 %tobool16.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end15
  %nr_files.0.lcssa = phi i64 [ 0, %if.end15 ], [ %nr_files.1, %for.inc ]
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %call8) #14
  call void @mmput(%struct.mm_struct* noundef nonnull %call8) #15
  %cmp32109.not = icmp eq i64 %nr_files.0.lcssa, 0
  br i1 %cmp32109.not, label %out_put_task, label %for.body33.lr.ph

for.body33.lr.ph:                                 ; preds = %for.end
  %9 = getelementptr inbounds [34 x i8], [34 x i8]* %buf, i64 0, i64 0
  %tree34 = getelementptr inbounds %struct.anon.86, %struct.anon.86* %fa, i64 0, i32 0
  %pos45 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %ctx, i64 0, i32 1
  br label %for.body33

for.body33:                                       ; preds = %for.body33.lr.ph, %for.inc48
  %i.0110 = phi i64 [ 0, %for.body33.lr.ph ], [ %inc49, %for.inc48 ]
  call void @llvm.lifetime.start.p0i8(i64 34, i8* nonnull %9) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(34) %9, i8 0, i64 34, i1 false), !annotation !7
  %call35 = call fastcc i64 @__idx_to_offset(i64 noundef %i.0110) #14
  %call36 = call i8* @__genradix_ptr(%struct.__genradix* noundef nonnull %tree34, i64 noundef %call35) #15
  %start37 = bitcast i8* %call36 to i64*
  %10 = load i64, i64* %start37, align 8
  %end38 = getelementptr inbounds i8, i8* %call36, i64 8
  %11 = bitcast i8* %end38 to i64*
  %12 = load i64, i64* %11, align 8
  %call39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %9, i64 noundef 34, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0), i64 noundef %10, i64 noundef %12) #15
  %mode41 = getelementptr inbounds i8, i8* %call36, i64 16
  %13 = bitcast i8* %mode41 to i32*
  %14 = load i32, i32* %13, align 8
  %conv = zext i32 %14 to i64
  %15 = inttoptr i64 %conv to i8*
  %call42 = call i1 @proc_fill_cache(%struct.file* noundef %file, %struct.dir_context* noundef %ctx, i8* noundef nonnull %9, i32 noundef %call39, %struct.dentry* (%struct.dentry*, %struct.task_struct*, i8*)* noundef nonnull @proc_map_files_instantiate, %struct.task_struct* noundef nonnull %call1, i8* noundef %15) #14
  br i1 %call42, label %for.inc48, label %cleanup

cleanup:                                          ; preds = %for.body33
  call void @llvm.lifetime.end.p0i8(i64 34, i8* nonnull %9) #16
  br label %out_put_task

for.inc48:                                        ; preds = %for.body33
  %16 = load i64, i64* %pos45, align 8
  %inc46 = add i64 %16, 1
  store i64 %inc46, i64* %pos45, align 8
  call void @llvm.lifetime.end.p0i8(i64 34, i8* nonnull %9) #16
  %inc49 = add nuw i64 %i.0110, 1
  %exitcond.not = icmp eq i64 %inc49, %nr_files.0.lcssa
  br i1 %exitcond.not, label %out_put_task, label %for.body33

out_put_task:                                     ; preds = %for.inc48, %for.end, %cleanup, %if.end7, %if.end4, %if.end, %if.then28, %if.then14
  %ret.0 = phi i32 [ %call12, %if.then14 ], [ -12, %if.then28 ], [ 0, %cleanup ], [ 0, %if.end7 ], [ 0, %if.end4 ], [ -13, %if.end ], [ 0, %for.end ], [ 0, %for.inc48 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %out

out:                                              ; preds = %entry, %out_put_task
  %ret.1 = phi i32 [ %ret.0, %out_put_task ], [ -2, %entry ]
  %tree51 = getelementptr inbounds %struct.anon.86, %struct.anon.86* %fa, i64 0, i32 0
  call void @__genradix_free(%struct.__genradix* noundef nonnull %tree51) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__genradix_ptr_alloc(%struct.__genradix* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__idx_to_offset(i64 noundef %idx) unnamed_addr #4 {
entry:
  %div14 = udiv i64 %idx, 170
  %mul = shl i64 %div14, 12
  %0 = mul i64 %div14, 170
  %rem.decomposed = sub i64 %idx, %0
  %mul15 = mul nuw nsw i64 %rem.decomposed, 24
  %add = add nuw i64 %mul, %mul15
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__genradix_ptr(%struct.__genradix* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__genradix_free(%struct.__genradix* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_coredump_filter_read(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* noundef %ppos) #0 {
entry:
  %buffer = alloca [13 x i8], align 1
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %call1 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %0, i8 0, i64 13, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef nonnull %call1) #15
  %tobool3.not = icmp eq %struct.mm_struct* %call2, null
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call2, i64 0, i32 0, i32 43
  %1 = load i64, i64* %flags, align 8
  %and = lshr i64 %1, 2
  %shr = and i64 %and, 511
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %0, i64 noundef 13, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0), i64 noundef %shr) #15
  %conv = sext i32 %call5 to i64
  call void @mmput(%struct.mm_struct* noundef nonnull %call2) #15
  %call7 = call i64 @simple_read_from_buffer(i8* noundef %buf, i64 noundef %count, i64* noundef %ppos, i8* noundef nonnull %0, i64 noundef %conv) #15
  %sext = shl i64 %call7, 32
  %phi.cast = ashr exact i64 %sext, 32
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %ret.0 = phi i64 [ %phi.cast, %if.then4 ], [ 0, %if.end ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9
  %retval.0 = phi i64 [ %ret.0, %if.end9 ], [ -3, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %0) #16
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @proc_coredump_filter_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readnone %ppos) #0 {
entry:
  %val = alloca i32, align 4
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %val, align 4, !annotation !7
  %call = call i32 @kstrtouint_from_user(i8* noundef %buf, i64 noundef %count, i32 noundef 0, i32* noundef nonnull %val) #15
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %call2 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call1) #14
  %tobool.not = icmp eq %struct.task_struct* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef nonnull %call2) #15
  %tobool6.not = icmp eq %struct.mm_struct* %call5, null
  br i1 %tobool6.not, label %out_no_task.thread51, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end4
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %call5, i64 0, i32 0, i32 43
  %1 = load i32, i32* %val, align 4
  %2 = and i32 %1, 1
  %tobool12.not = icmp eq i32 %2, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

out_no_task.thread51:                             ; preds = %if.end4
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call2) #14
  br label %cleanup

if.then13:                                        ; preds = %for.cond.preheader
  call fastcc void @set_bit(i64 noundef 2, i64* noundef %flags) #14
  br label %for.inc

if.else:                                          ; preds = %for.cond.preheader
  call fastcc void @clear_bit(i64 noundef 2, i64* noundef %flags) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.else
  %3 = load i32, i32* %val, align 4
  %4 = and i32 %3, 2
  %tobool12.not.1 = icmp eq i32 %4, 0
  br i1 %tobool12.not.1, label %if.else.1, label %if.then13.1

if.then13.1:                                      ; preds = %for.inc
  call fastcc void @set_bit(i64 noundef 3, i64* noundef %flags) #14
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call fastcc void @clear_bit(i64 noundef 3, i64* noundef %flags) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then13.1
  %5 = load i32, i32* %val, align 4
  %6 = and i32 %5, 4
  %tobool12.not.2 = icmp eq i32 %6, 0
  br i1 %tobool12.not.2, label %if.else.2, label %if.then13.2

if.then13.2:                                      ; preds = %for.inc.1
  call fastcc void @set_bit(i64 noundef 4, i64* noundef %flags) #14
  br label %for.inc.2

if.else.2:                                        ; preds = %for.inc.1
  call fastcc void @clear_bit(i64 noundef 4, i64* noundef %flags) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %if.then13.2
  %7 = load i32, i32* %val, align 4
  %8 = and i32 %7, 8
  %tobool12.not.3 = icmp eq i32 %8, 0
  br i1 %tobool12.not.3, label %if.else.3, label %if.then13.3

if.then13.3:                                      ; preds = %for.inc.2
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %flags) #14
  br label %for.inc.3

if.else.3:                                        ; preds = %for.inc.2
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags) #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %if.then13.3
  %9 = load i32, i32* %val, align 4
  %10 = and i32 %9, 16
  %tobool12.not.4 = icmp eq i32 %10, 0
  br i1 %tobool12.not.4, label %if.else.4, label %if.then13.4

if.then13.4:                                      ; preds = %for.inc.3
  call fastcc void @set_bit(i64 noundef 6, i64* noundef %flags) #14
  br label %for.inc.4

if.else.4:                                        ; preds = %for.inc.3
  call fastcc void @clear_bit(i64 noundef 6, i64* noundef %flags) #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %if.then13.4
  %11 = load i32, i32* %val, align 4
  %12 = and i32 %11, 32
  %tobool12.not.5 = icmp eq i32 %12, 0
  br i1 %tobool12.not.5, label %if.else.5, label %if.then13.5

if.then13.5:                                      ; preds = %for.inc.4
  call fastcc void @set_bit(i64 noundef 7, i64* noundef %flags) #14
  br label %for.inc.5

if.else.5:                                        ; preds = %for.inc.4
  call fastcc void @clear_bit(i64 noundef 7, i64* noundef %flags) #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.else.5, %if.then13.5
  %13 = load i32, i32* %val, align 4
  %14 = and i32 %13, 64
  %tobool12.not.6 = icmp eq i32 %14, 0
  br i1 %tobool12.not.6, label %if.else.6, label %if.then13.6

if.then13.6:                                      ; preds = %for.inc.5
  call fastcc void @set_bit(i64 noundef 8, i64* noundef %flags) #14
  br label %for.inc.6

if.else.6:                                        ; preds = %for.inc.5
  call fastcc void @clear_bit(i64 noundef 8, i64* noundef %flags) #14
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.else.6, %if.then13.6
  %15 = load i32, i32* %val, align 4
  %16 = and i32 %15, 128
  %tobool12.not.7 = icmp eq i32 %16, 0
  br i1 %tobool12.not.7, label %if.else.7, label %if.then13.7

if.then13.7:                                      ; preds = %for.inc.6
  call fastcc void @set_bit(i64 noundef 9, i64* noundef %flags) #14
  br label %for.inc.7

if.else.7:                                        ; preds = %for.inc.6
  call fastcc void @clear_bit(i64 noundef 9, i64* noundef %flags) #14
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.else.7, %if.then13.7
  %17 = load i32, i32* %val, align 4
  %18 = and i32 %17, 256
  %tobool12.not.8 = icmp eq i32 %18, 0
  br i1 %tobool12.not.8, label %if.else.8, label %if.then13.8

if.then13.8:                                      ; preds = %for.inc.7
  call fastcc void @set_bit(i64 noundef 10, i64* noundef %flags) #14
  br label %for.inc.8

if.else.8:                                        ; preds = %for.inc.7
  call fastcc void @clear_bit(i64 noundef 10, i64* noundef %flags) #14
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.else.8, %if.then13.8
  call void @mmput(%struct.mm_struct* noundef nonnull %call5) #15
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc.8, %out_no_task.thread51, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %count, %for.inc.8 ], [ -3, %out_no_task.thread51 ], [ -3, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(i8* noundef, i64 noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #16, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #16, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @timerslack_ns_write(%struct.file* nocapture noundef readonly %file, i8* noundef %buf, i64 noundef %count, i64* nocapture noundef readnone %offset) #0 {
entry:
  %slack_ns = alloca i64, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #14
  %0 = bitcast i64* %slack_ns to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %slack_ns, align 8, !annotation !7
  %call1 = call i32 @kstrtoull_from_user(i8* noundef %buf, i64 noundef %count, i32 noundef 10, i64* noundef nonnull %slack_ns) #15
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call1 to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %call) #14
  %tobool.not = icmp eq %struct.task_struct* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !29
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cmp6.not = icmp eq %struct.task_struct* %call2, %2
  br i1 %cmp6.not, label %if.end21, label %if.then8

if.then8:                                         ; preds = %if.end4
  call fastcc void @__rcu_read_lock() #15
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call2, i64 0, i32 79
  %3 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 16
  %4 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call13 = call i1 @ns_capable(%struct.user_namespace* noundef %4, i32 noundef 23) #15
  call fastcc void @rcu_read_unlock() #14
  br i1 %call13, label %if.end15, label %out

if.end15:                                         ; preds = %if.then8
  %call16 = call fastcc i32 @security_task_setscheduler(%struct.task_struct* noundef nonnull %call2) #14
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end15
  %conv19 = sext i32 %call16 to i64
  br label %out

if.end21:                                         ; preds = %if.end15, %if.end4
  call fastcc void @task_lock(%struct.task_struct* noundef nonnull %call2) #14
  %5 = load i64, i64* %slack_ns, align 8
  %cmp22 = icmp eq i64 %5, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  %default_timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call2, i64 0, i32 132
  %6 = load i64, i64* %default_timer_slack_ns, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end21, %if.then24
  %.sink = phi i64 [ %6, %if.then24 ], [ %5, %if.end21 ]
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call2, i64 0, i32 131
  store i64 %.sink, i64* %7, align 64
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call2) #14
  br label %out

out:                                              ; preds = %if.then8, %if.end26, %if.then18
  %count.addr.0 = phi i64 [ %conv19, %if.then18 ], [ %count, %if.end26 ], [ -1, %if.then8 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %out, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %count.addr.0, %out ], [ -3, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @timerslack_ns_open(%struct.inode* noundef %inode, %struct.file* noundef %filp) #0 {
entry:
  %0 = bitcast %struct.inode* %inode to i8*
  %call = call i32 @single_open(%struct.file* noundef %filp, i32 (%struct.seq_file*, i8*)* noundef nonnull @timerslack_ns_show, i8* noundef %0) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull_from_user(i8* noundef, i64 noundef, i32 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_task_setscheduler(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %call = call i32 @cap_task_setscheduler(%struct.task_struct* noundef %p) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_setscheduler(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @timerslack_ns_show(%struct.seq_file* noundef %m, i8* nocapture noundef readnone %v) #0 {
entry:
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 11
  %0 = bitcast i8** %private to %struct.inode**
  %1 = load %struct.inode*, %struct.inode** %0, align 8
  %call = call fastcc %struct.task_struct* @get_proc_task(%struct.inode* noundef %1) #14
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !29
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cmp.not = icmp eq %struct.task_struct* %call, %3
  br i1 %cmp.not, label %if.end14, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @__rcu_read_lock() #15
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 79
  %4 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %4, i64 0, i32 16
  %5 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call7 = call i1 @ns_capable(%struct.user_namespace* noundef %5, i32 noundef 23) #15
  call fastcc void @rcu_read_unlock() #14
  br i1 %call7, label %if.end14, label %out

if.end14:                                         ; preds = %if.then2, %if.end
  call fastcc void @task_lock(%struct.task_struct* noundef nonnull %call) #14
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 131
  %6 = load i64, i64* %timer_slack_ns, align 64
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0), i64 noundef %6) #15
  call fastcc void @task_unlock(%struct.task_struct* noundef nonnull %call) #14
  br label %out

out:                                              ; preds = %if.then2, %if.end14
  %err.1 = phi i32 [ 0, %if.end14 ], [ -1, %if.then2 ]
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %err.1, %out ], [ -3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i9 @llvm.bitreverse.i9(i9) #13

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { cold nobuiltin "no-builtins" }
attributes #18 = { nounwind readnone }
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
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2149631641}
!10 = !{i64 2149944945}
!11 = !{i64 2147997317, i64 2147997991, i64 2147998021, i64 2147998053, i64 2147998087, i64 2147998123, i64 2147998148}
!12 = !{i64 2147979571, i64 2147980087, i64 2147980117, i64 2147980144, i64 2147980178, i64 2147980208}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2149127902}
!15 = !{i64 3070392, i64 3070475, i64 3070699, i64 3070919, i64 3070942}
!16 = !{i64 3075094, i64 3075118}
!17 = !{i64 2150874552}
!18 = !{i64 2149541151}
!19 = !{i64 2149541368}
!20 = !{i64 2149785640}
!21 = !{i64 2148075433, i64 2148075466, i64 2148075519, i64 2148075578, i64 2148075612, i64 2148075667, i64 2148075696, i64 2148075716}
!22 = !{i64 2149792921}
!23 = !{i64 2149739769}
!24 = !{i64 2147985535, i64 2147986199, i64 2147986229, i64 2147986261, i64 2147986295, i64 2147986330, i64 2147986355}
!25 = !{i64 2148092641, i64 2148092674, i64 2148092726, i64 2148092785, i64 2148092819, i64 2148092875, i64 2148092904, i64 2148092931}
!26 = !{i64 2147990144, i64 2147990792, i64 2147990822, i64 2147990854, i64 2147990888, i64 2147990924, i64 2147990949}
!27 = !{i64 2149796482}
!28 = !{i64 2149031200, i64 2149031247, i64 2149031253, i64 2149031290, i64 2149031308, i64 2149032619, i64 2149032667, i64 2149032715, i64 2149032778, i64 2149032827, i64 2149031386, i64 2149031411, i64 2149031437, i64 2149031443, i64 2149032285, i64 2149032325, i64 2149032343, i64 2149032375, i64 2149032403, i64 2149032457, i64 2149032477, i64 2149032574, i64 2149031466, i64 2149031480, i64 2149031486, i64 2149031536, i64 2149031582, i64 2149031615}
!29 = !{i64 308616}
!30 = !{i64 2155584821}
!31 = !{i64 2148048651, i64 2148049162, i64 2148049192, i64 2148049218, i64 2148049250, i64 2148049279}
!32 = !{i64 2148059221, i64 2148059742, i64 2148059772, i64 2148059798, i64 2148059830, i64 2148059859}
