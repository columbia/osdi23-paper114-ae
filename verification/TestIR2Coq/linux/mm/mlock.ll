; ModuleID = 'mm/mlock.c'
source_filename = "mm/mlock.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.atomic64_t = type { i64 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.40, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.13 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.42, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.42 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.43, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.44, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.43 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.44 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon, %union.anon.69, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.46, %struct.list_head, %struct.list_head, %union.anon.47 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.46 = type { %struct.list_head }
%union.anon.47 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.45, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.45 = type { %struct.kernfs_elem_dir }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.24, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.24 = type {}
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.70, %union.anon.71, %union.anon.72, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.75, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.70 = type { %struct.hlist_node }
%union.anon.71 = type { %struct.rb_node }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.75 = type { %struct.__call_single_data }
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
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.48 }
%union.anon.48 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.49, %union.anon.50 }
%union.anon.49 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.50 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.54 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.52, %struct.qspinlock }
%union.anon.52 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.54 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, {}*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, {}*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.69 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [48 x i8] }
%struct.anon.20 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.23 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.23 = type { %struct.callback_head }
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
%struct.kernel_siginfo = type { %struct.anon.27 }
%struct.anon.27 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.31 }
%struct.anon.31 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.39, i32, [12 x i8] }
%union.anon.39 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.40 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.41, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.41 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }
%struct.vm_event_state = type { [53 x i64] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pagevec = type { i8, i8, [15 x %struct.page*] }
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mempolicy = type {}

@shmlock_user_lock = internal global %struct.spinlock zeroinitializer, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @can_do_mlock() local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @rlimit() #14
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i1 @capable(i32 noundef 14) #15
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %call1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #14
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clear_page_mlock(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call2.i = call fastcc i1 @test_and_clear_bit(i64 noundef 21, i64* noundef %flags.i) #15
  br i1 %call2.i, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #14
  call void @mod_zone_page_state(%struct.zone* noundef nonnull %call2, i32 noundef 7, i64 noundef -1) #15
  call fastcc void @count_vm_events(i32 noundef 51, i64 noundef 1) #14
  %call4 = call i32 @isolate_lru_page(%struct.page* noundef %page) #15
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @putback_lru_page(%struct.page* noundef %page) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i21 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %1 = inttoptr i64 %call.i21 to %struct.page*
  %flags.i22 = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i22, align 8
  %3 = and i64 %2, 1048576
  %tobool8.not = icmp eq i64 %3, 0
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.else
  call fastcc void @count_vm_events(i32 noundef 52, i64 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then9, %if.else, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_zone_page_state(%struct.zone* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.zone* @page_zone(%struct.page* nocapture noundef readonly %page) unnamed_addr #3 {
entry:
  %call2 = call fastcc i32 @page_zonenum(%struct.page* noundef %page) #14
  %idxprom = zext i32 %call2 to i64
  %arrayidx = getelementptr %struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 0, i64 %idxprom
  ret %struct.zone* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @count_vm_events(i32 noundef %item, i64 noundef %delta) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %1, i64 noundef %delta) #14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_lru_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_lru_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mlock_vma_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i29 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i29, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !11

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mlock.c\22; .popsection; .long 14472b - 14470b; .short 94; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !12
  unreachable

do.end7:                                          ; preds = %entry
  %call.i27 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %2 = inttoptr i64 %call.i27 to %struct.page*
  %flags.i28 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %call2.i = call fastcc i1 @test_and_set_bit(i64* noundef %flags.i28) #15
  br i1 %call2.i, label %if.end19, label %if.then10

if.then10:                                        ; preds = %do.end7
  %call12 = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #14
  call void @mod_zone_page_state(%struct.zone* noundef nonnull %call12, i32 noundef 7, i64 noundef 1) #15
  call fastcc void @count_vm_events(i32 noundef 49, i64 noundef 1) #14
  %call15 = call i32 @isolate_lru_page(%struct.page* noundef %page) #15
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then10
  call void @putback_lru_page(%struct.page* noundef %page) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.then17, %do.end7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @munlock_vma_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %conv.i.i32 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i.i32, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !11

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/mlock.c\22; .popsection; .long 14472b - 14470b; .short 173; .short 0; .popsection; 14471: brk 0x800", ""() #17, !srcloc !13
  unreachable

do.end9:                                          ; preds = %entry
  %call.i30 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %2 = inttoptr i64 %call.i30 to %struct.page*
  %flags.i31 = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %call2.i = call fastcc i1 @test_and_clear_bit(i64 noundef 21, i64* noundef %flags.i31) #15
  br i1 %call2.i, label %if.end13, label %cleanup

if.end13:                                         ; preds = %do.end9
  %call15 = call fastcc %struct.zone* @page_zone(%struct.page* noundef %page) #14
  call void @mod_zone_page_state(%struct.zone* noundef nonnull %call15, i32 noundef 7, i64 noundef -1) #15
  %call17 = call i32 @isolate_lru_page(%struct.page* noundef %page) #15
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end13
  call fastcc void @__munlock_isolated_page(%struct.page* noundef %page) #14
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call fastcc void @__munlock_isolation_failed(%struct.page* noundef %page) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.else, %do.end9
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__munlock_isolated_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_mapcount(%struct.page* noundef %page) #14
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @page_mlock(%struct.page* noundef %page) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 2097152
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call fastcc void @count_vm_events(i32 noundef 50, i64 noundef 1) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  call void @putback_lru_page(%struct.page* noundef %page) #15
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__munlock_isolation_failed(%struct.page* noundef %page) unnamed_addr #4 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 1048576
  %tobool.not = icmp eq i64 %2, 0
  %. = select i1 %tobool.not, i32 50, i32 52
  call fastcc void @__count_vm_events(i32 noundef %.) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @munlock_vma_pages_range(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 {
entry:
  %pvec = alloca %struct.pagevec, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, -532481
  store i64 %and, i64* %vm_flags, align 8
  %cmp38 = icmp ult i64 %start, %end
  br i1 %cmp38, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %1 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %next
  %start.addr.039 = phi i64 [ %start, %while.body.lr.ph ], [ %start.addr.1, %next ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !14
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec) #14
  %call = call %struct.page* @follow_page(%struct.vm_area_struct* noundef %vma, i64 noundef %start.addr.039, i32 noundef 12) #15
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %2 = bitcast %struct.page* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef nonnull %2) #14
  br i1 %call1, label %if.end14, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call10 = call fastcc i32 @pagevec_add(%struct.pagevec* noundef nonnull %pvec, %struct.page* noundef nonnull %call) #14
  %call11 = call fastcc %struct.zone* @page_zone(%struct.page* noundef nonnull %call) #14
  %call12 = call fastcc i64 @__munlock_pagevec_fill(%struct.pagevec* noundef nonnull %pvec, %struct.vm_area_struct* noundef %vma, %struct.zone* noundef nonnull %call11, i64 noundef %start.addr.039, i64 noundef %end) #14
  call fastcc void @__munlock_pagevec(%struct.pagevec* noundef nonnull %pvec, %struct.zone* noundef nonnull %call11) #14
  br label %next

if.end14:                                         ; preds = %land.lhs.true, %while.body
  %add15 = add i64 %start.addr.039, 4096
  br label %next

next:                                             ; preds = %if.end14, %if.then
  %start.addr.1 = phi i64 [ %add15, %if.end14 ], [ %call12, %if.then ]
  call fastcc void @_cond_resched() #14
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #17
  %cmp = icmp ult i64 %start.addr.1, %end
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %next, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pagevec_init(%struct.pagevec* nocapture noundef writeonly %pvec) unnamed_addr #6 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  store i8 0, i8* %nr, align 8
  %percpu_pvec_drained = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 1
  store i8 0, i8* %percpu_pvec_drained, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @follow_page(%struct.vm_area_struct* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #14
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @pagevec_add(%struct.pagevec* nocapture noundef %pvec, %struct.page* noundef %page) unnamed_addr #8 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %inc = add i8 %0, 1
  store i8 %inc, i8* %nr, align 8
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %idxprom
  store %struct.page* %page, %struct.page** %arrayidx, align 8
  %call = call fastcc i32 @pagevec_space(%struct.pagevec* noundef %pvec) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__munlock_pagevec_fill(%struct.pagevec* nocapture noundef %pvec, %struct.vm_area_struct* noundef %vma, %struct.zone* noundef readnone %zone, i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  %ptl = alloca %struct.spinlock*, align 8
  %0 = bitcast %struct.spinlock** %ptl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.spinlock* null, %struct.spinlock** %ptl, align 8, !annotation !14
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %1 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %call = call fastcc %struct.pte_t* @get_locked_pte(%struct.mm_struct* noundef %1, i64 noundef %start, %struct.spinlock** noundef nonnull %ptl) #14
  %add = add i64 %start, 1073741824
  %and = and i64 %add, -1073741824
  %sub = add i64 %and, -1
  %sub1 = add i64 %end, -1
  %cmp = icmp ult i64 %sub, %sub1
  %cond = select i1 %cmp, i64 %and, i64 %end
  %add3 = add i64 %start, 2097152
  %and4 = and i64 %add3, -2097152
  %sub6 = add i64 %and4, -1
  %sub7 = add i64 %cond, -1
  %cmp8 = icmp ult i64 %sub6, %sub7
  %cond12 = select i1 %cmp8, i64 %and4, i64 %cond
  %add13 = add i64 %start, 4096
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %entry
  %pte.0 = phi %struct.pte_t* [ %call, %entry ], [ %incdec.ptr, %if.end22 ]
  %start.addr.0 = phi i64 [ %add13, %entry ], [ %add27, %if.end22 ]
  %cmp14 = icmp ult i64 %start.addr.0, %cond12
  br i1 %cmp14, label %while.body, label %do.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %pte.0, i64 1
  %pte15 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %incdec.ptr, i64 0, i32 0
  %2 = load i64, i64* %pte15, align 8
  %and16 = and i64 %2, 288230376151711745
  %tobool.not = icmp eq i64 %and16, 0
  br i1 %tobool.not, label %do.body, label %if.end

if.end:                                           ; preds = %while.body
  %call17 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %vma, i64 noundef %start.addr.0, i64 %2) #15
  %tobool18.not = icmp eq %struct.page* %call17, null
  br i1 %tobool18.not, label %do.body, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call19 = call fastcc %struct.zone* @page_zone(%struct.page* noundef nonnull %call17) #14
  %cmp20.not = icmp eq %struct.zone* %call19, %zone
  br i1 %cmp20.not, label %if.end22, label %do.body

if.end22:                                         ; preds = %lor.lhs.false
  call fastcc void @get_page(%struct.page* noundef nonnull %call17) #14
  %add27 = add i64 %start.addr.0, 4096
  %call28 = call fastcc i32 @pagevec_add(%struct.pagevec* noundef %pvec, %struct.page* noundef nonnull %call17) #14
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %do.body, label %while.cond

do.body:                                          ; preds = %if.end22, %while.body, %if.end, %lor.lhs.false, %while.cond
  %start.addr.2 = phi i64 [ %start.addr.0, %while.cond ], [ %start.addr.0, %if.end ], [ %start.addr.0, %lor.lhs.false ], [ %start.addr.0, %while.body ], [ %add27, %if.end22 ]
  %3 = load %struct.spinlock*, %struct.spinlock** %ptl, align 8
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i64 %start.addr.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__munlock_pagevec(%struct.pagevec* nocapture noundef %pvec, %struct.zone* noundef %zone) unnamed_addr #0 {
entry:
  %pvec_putback = alloca %struct.pagevec, align 8
  %pgrescued = alloca i32, align 4
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %sub = sub i32 0, %call
  %0 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec_putback, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !14
  %1 = bitcast i32* %pgrescued to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #17
  store i32 0, i32* %pgrescued, align 4
  call fastcc void @pagevec_init(%struct.pagevec* noundef nonnull %pvec_putback) #14
  %cmp85 = icmp sgt i32 %call, 0
  br i1 %cmp85, label %for.body.preheader, label %if.else18

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cleanup ]
  %lruvec.088 = phi %struct.lruvec* [ null, %for.body.preheader ], [ %lruvec.1, %cleanup ]
  %delta_munlocked.087 = phi i32 [ %sub, %for.body.preheader ], [ %delta_munlocked.2, %cleanup ]
  %arrayidx = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %indvars.iv
  %2 = load %struct.page*, %struct.page** %arrayidx, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %2) #15
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %call2.i = call fastcc i1 @test_and_clear_bit(i64 noundef 21, i64* noundef %flags.i) #15
  br i1 %call2.i, label %if.then, label %if.else6

if.then:                                          ; preds = %for.body
  %call.i81 = call fastcc i64 @_compound_head(%struct.page* noundef %2) #15
  %4 = inttoptr i64 %call.i81 to %struct.page*
  %flags.i82 = getelementptr inbounds %struct.page, %struct.page* %4, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_clear_bit(i64 noundef 4, i64* noundef %flags.i82) #15
  br i1 %call1.i, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %call5 = call fastcc %struct.lruvec* @relock_page_lruvec_irq(%struct.page* noundef %2, %struct.lruvec* noundef %lruvec.088) #14
  %lru.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 1, i32 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %lru.i) #15
  %call.i.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %2) #15
  %5 = inttoptr i64 %call.i.i.i to %struct.page*
  %flags.i.i.i = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i.i.i, align 8
  %7 = and i64 %6, 1048576
  %tobool.not.i.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %del_page_from_lru_list.exit

if.end.i.i:                                       ; preds = %if.then4
  %call1.i.i = call fastcc i32 @page_is_file_lru(%struct.page* noundef %2) #15
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 0, i32 2
  %call.i11.i.i = call fastcc i64 @_compound_head(%struct.page* noundef %2) #15
  %8 = inttoptr i64 %call.i11.i.i to %struct.page*
  %flags.i12.i.i = getelementptr inbounds %struct.page, %struct.page* %8, i64 0, i32 0
  %9 = load volatile i64, i64* %flags.i12.i.i, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i32 %10, 5
  %12 = and i32 %11, 1
  %13 = or i32 %12, %cond.i.i
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.then4, %if.end.i.i
  %retval.0.i.i = phi i32 [ %13, %if.end.i.i ], [ 4, %if.then4 ]
  %call1.i84 = call fastcc i32 @page_zonenum(%struct.page* noundef %2) #15
  %call.i.i = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %call5) #15
  call fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %call5, i32 noundef %retval.0.i.i) #15
  %idxprom.i.i = zext i32 %call1.i84 to i64
  %arrayidx.i.i = getelementptr %struct.pglist_data, %struct.pglist_data* %call.i.i, i64 0, i32 0, i64 %idxprom.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  call void @__mod_zone_page_state(%struct.zone* noundef %arrayidx.i.i, i32 noundef %add1.i.i, i64 noundef -1) #15
  br label %cleanup

if.else:                                          ; preds = %if.then
  call fastcc void @__munlock_isolation_failed(%struct.page* noundef %2) #14
  br label %if.end7

if.else6:                                         ; preds = %for.body
  %inc = add i32 %delta_munlocked.087, 1
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.else
  %delta_munlocked.1 = phi i32 [ %delta_munlocked.087, %if.else ], [ %inc, %if.else6 ]
  %14 = load %struct.page*, %struct.page** %arrayidx, align 8
  %call11 = call fastcc i32 @pagevec_add(%struct.pagevec* noundef nonnull %pvec_putback, %struct.page* noundef %14) #14
  store %struct.page* null, %struct.page** %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %del_page_from_lru_list.exit
  %delta_munlocked.2 = phi i32 [ %delta_munlocked.087, %del_page_from_lru_list.exit ], [ %delta_munlocked.1, %if.end7 ]
  %lruvec.1 = phi %struct.lruvec* [ %call5, %del_page_from_lru_list.exit ], [ %lruvec.088, %if.end7 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup
  %tobool16.not = icmp eq %struct.lruvec* %lruvec.1, null
  br i1 %tobool16.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %for.end
  %conv = sext i32 %delta_munlocked.2 to i64
  call void @__mod_zone_page_state(%struct.zone* noundef %zone, i32 noundef 7, i64 noundef %conv) #15
  call fastcc void @unlock_page_lruvec_irq(%struct.lruvec* noundef nonnull %lruvec.1) #14
  br label %if.end23

if.else18:                                        ; preds = %entry, %for.end
  %delta_munlocked.0.lcssa101 = phi i32 [ %delta_munlocked.2, %for.end ], [ %sub, %entry ]
  %tobool19.not = icmp eq i32 %delta_munlocked.0.lcssa101, 0
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.else18
  %conv21 = sext i32 %delta_munlocked.0.lcssa101 to i64
  call void @mod_zone_page_state(%struct.zone* noundef %zone, i32 noundef 7, i64 noundef %conv21) #15
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then20, %if.then17
  call fastcc void @pagevec_release(%struct.pagevec* noundef nonnull %pvec_putback) #14
  br i1 %cmp85, label %for.body27.preheader, label %for.end40

for.body27.preheader:                             ; preds = %if.end23
  %wide.trip.count96 = zext i32 %call to i64
  br label %for.body27

for.body27:                                       ; preds = %for.body27.preheader, %if.end37
  %indvars.iv93 = phi i64 [ 0, %for.body27.preheader ], [ %indvars.iv.next94, %if.end37 ]
  %arrayidx31 = getelementptr %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 2, i64 %indvars.iv93
  %15 = load %struct.page*, %struct.page** %arrayidx31, align 8
  %tobool32.not = icmp eq %struct.page* %15, null
  br i1 %tobool32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %for.body27
  call fastcc void @lock_page(%struct.page* noundef nonnull %15) #14
  %call34 = call fastcc i1 @__putback_lru_fast_prepare(%struct.page* noundef nonnull %15, %struct.pagevec* noundef nonnull %pvec_putback, i32* noundef nonnull %pgrescued) #14
  br i1 %call34, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.then33
  call fastcc void @get_page(%struct.page* noundef nonnull %15) #14
  call fastcc void @__munlock_isolated_page(%struct.page* noundef nonnull %15) #14
  call void @unlock_page(%struct.page* noundef nonnull %15) #15
  call fastcc void @put_page(%struct.page* noundef nonnull %15) #14
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.then35, %for.body27
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %for.end40, label %for.body27

for.end40:                                        ; preds = %if.end37, %if.end23
  %call41 = call fastcc i32 @pagevec_count(%struct.pagevec* noundef nonnull %pvec_putback) #14
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %for.end40
  %16 = load i32, i32* %pgrescued, align 4
  call fastcc void @__putback_lru_fast(%struct.pagevec* noundef nonnull %pvec_putback, i32 noundef %16) #14
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %for.end40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mlock(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_mlock(i64 noundef %0, i64 noundef %1) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mlock(i64 noundef %start, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__do_sys_mlock(i64 noundef %start, i64 noundef %len) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mlock2(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_mlock2(i64 noundef %0, i64 noundef %1, i64 noundef %2) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mlock2(i64 noundef %start, i64 noundef %len, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_mlock2(i64 noundef %start, i64 noundef %len, i32 noundef %conv) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_munlock(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_munlock(i64 noundef %0, i64 noundef %1) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_munlock(i64 noundef %start, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__do_sys_munlock(i64 noundef %start, i64 noundef %len) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mlockall(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_mlockall(i64 noundef %0) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mlockall(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_mlockall(i32 noundef %conv) #14
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_munlockall(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call1 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @apply_mlockall_flags(i32 noundef 0) #14
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ 0, %if.end ], [ -4, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @apply_mlockall_flags(i32 noundef %flags) unnamed_addr #0 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %0 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %prev, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %def_flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 25
  %4 = load i64, i64* %def_flags, align 8
  %and = and i64 %4, -532481
  store i64 %and, i64* %def_flags, align 8
  %and1 = and i32 %flags, 2
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  %.pre = and i32 %flags, 1
  %.pre4 = and i32 %flags, 4
  %phi.cmp = icmp eq i32 %.pre, 0
  br label %if.end16

if.then:                                          ; preds = %entry
  %5 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %def_flags4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i64 0, i32 0, i32 25
  %6 = load i64, i64* %def_flags4, align 8
  %or = or i64 %6, 8192
  store i64 %or, i64* %def_flags4, align 8
  %and5 = and i32 %flags, 4
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then
  %7 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %def_flags10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i64 0, i32 0, i32 25
  %8 = load i64, i64* %def_flags10, align 8
  %or11 = or i64 %8, 524288
  store i64 %or11, i64* %def_flags10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %and12 = and i32 %flags, 1
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %out, label %if.end16

if.end16:                                         ; preds = %entry.if.end16_crit_edge, %if.end
  %and21.pre-phi = phi i32 [ %.pre4, %entry.if.end16_crit_edge ], [ %and5, %if.end ]
  %and17.pre-phi = phi i1 [ %phi.cmp, %entry.if.end16_crit_edge ], [ false, %if.end ]
  %tobool22.not = icmp eq i32 %and21.pre-phi, 0
  %spec.select = select i1 %tobool22.not, i64 8192, i64 532480
  %to_add.0 = select i1 %and17.pre-phi, i64 0, i64 %spec.select
  %9 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i64 0, i32 0, i32 0
  %vma.01 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  %tobool29.not2 = icmp eq %struct.vm_area_struct* %vma.01, null
  br i1 %tobool29.not2, label %out, label %for.body

for.body:                                         ; preds = %if.end16, %for.body
  %vma.03 = phi %struct.vm_area_struct* [ %vma.0, %for.body ], [ %vma.01, %if.end16 ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.03, i64 0, i32 8
  %10 = load i64, i64* %vm_flags, align 8
  %and30 = and i64 %10, -532481
  %or31 = or i64 %and30, %to_add.0
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.03, i64 0, i32 0
  %11 = load i64, i64* %vm_start, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.03, i64 0, i32 1
  %12 = load i64, i64* %vm_end, align 8
  %call32 = call fastcc i32 @mlock_fixup(%struct.vm_area_struct* noundef nonnull %vma.03, %struct.vm_area_struct** noundef nonnull %prev, i64 noundef %11, i64 noundef %12, i64 noundef %or31) #14
  call fastcc void @_cond_resched() #14
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i64 0, i32 2
  %vma.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool29.not = icmp eq %struct.vm_area_struct* %vma.0, null
  br i1 %tobool29.not, label %out, label %for.body

out:                                              ; preds = %for.body, %if.end16, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @user_shm_lock(i64 noundef %size, %struct.ucounts* noundef %ucounts) local_unnamed_addr #0 {
entry:
  %sub = add i64 %size, 4095
  %shr = lshr i64 %sub, 12
  %call = call fastcc i64 @rlimit() #14
  %cmp = icmp eq i64 %call, -1
  %spec.select = zext i1 %cmp to i32
  call fastcc void @__raw_spin_lock() #15
  %call2 = call i64 @inc_rlimit_ucounts(%struct.ucounts* noundef %ucounts, i32 noundef 11, i64 noundef %shr) #15
  br i1 %cmp, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %shr1 = lshr i64 %call, 12
  %cmp3 = icmp eq i64 %call2, 9223372036854775807
  %cmp4 = icmp ugt i64 %call2, %shr1
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  br i1 %or.cond, label %land.lhs.true5, label %if.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = call i1 @capable(i32 noundef 14) #15
  br i1 %call6, label %if.end9, label %out.sink.split

if.end9:                                          ; preds = %land.lhs.true, %land.lhs.true5, %entry
  %call10 = call %struct.ucounts* @get_ucounts(%struct.ucounts* noundef %ucounts) #15
  %tobool11.not = icmp eq %struct.ucounts* %call10, null
  br i1 %tobool11.not, label %out.sink.split, label %out

out.sink.split:                                   ; preds = %if.end9, %land.lhs.true5
  %allowed.1.ph = phi i32 [ 0, %land.lhs.true5 ], [ %spec.select, %if.end9 ]
  %call13 = call i1 @dec_rlimit_ucounts(%struct.ucounts* noundef %ucounts, i32 noundef 11, i64 noundef %shr) #15
  br label %out

out:                                              ; preds = %out.sink.split, %if.end9
  %allowed.1 = phi i32 [ 1, %if.end9 ], [ %allowed.1.ph, %out.sink.split ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @shmlock_user_lock, i64 0, i32 0, i32 0)) #15
  ret i32 %allowed.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @inc_rlimit_ucounts(%struct.ucounts* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @dec_rlimit_ucounts(%struct.ucounts* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ucounts* @get_ucounts(%struct.ucounts* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @user_shm_unlock(i64 noundef %size, %struct.ucounts* noundef %ucounts) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock() #15
  %sub = add i64 %size, 4095
  %shr = lshr i64 %sub, 12
  %call = call i1 @dec_rlimit_ucounts(%struct.ucounts* noundef %ucounts, i32 noundef 11, i64 noundef %shr) #15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @shmlock_user_lock, i64 0, i32 0, i32 0)) #15
  call void @put_ucounts(%struct.ucounts* noundef %ucounts) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ucounts(%struct.ucounts* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #9 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 8, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #15
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !15

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
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !16
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @page_zonenum(%struct.page* nocapture noundef readonly %page) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load i64, i64* %flags, align 16
  %shr = lshr i64 %0, 62
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #17, !srcloc !17
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !18
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 2097152
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %1) #15
  %2 = and i64 %call.i.i.i, 2097152
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 2097152, i64* elementtype(i64) %counter) #17, !srcloc !19
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_mapcount(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.then

PageCompound.exit:                                ; preds = %entry
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !15

if.then:                                          ; preds = %entry, %PageCompound.exit
  %call3 = call i32 @__page_mapcount(%struct.page* noundef %page) #15
  br label %return

if.end:                                           ; preds = %PageCompound.exit
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 2, i32 0, i32 0
  %5 = load volatile i32, i32* %counter.i, align 4
  %add = add i32 %5, 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %add, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_mlock(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @__count_vm_events(i32 noundef %item) unnamed_addr #4 {
entry:
  %idxprom = zext i32 %item to i64
  %arrayidx = getelementptr %struct.vm_event_state, %struct.vm_event_state* @vm_event_states, i64 0, i32 0, i64 %idxprom
  %0 = ptrtoint i64* %arrayidx to i64
  %call = call fastcc i64 @__kern_my_cpu_offset() #14
  %add = add i64 %call, %0
  %1 = inttoptr i64 %add to i64*
  %2 = load i64, i64* %1, align 8
  %add7 = add i64 %2, 1
  store i64 %add7, i64* %1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #15
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !20
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #14
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #15
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #17, !srcloc !21
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pagevec_space(%struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #3 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %conv = zext i8 %0 to i32
  %sub = sub nsw i32 15, %conv
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pte_t* @get_locked_pte(%struct.mm_struct* noundef %mm, i64 noundef %addr, %struct.spinlock** noundef %ptl) unnamed_addr #0 {
entry:
  %call = call %struct.pte_t* @__get_locked_pte(%struct.mm_struct* noundef %mm, i64 noundef %addr, %struct.spinlock** noundef %ptl) #15
  ret %struct.pte_t* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef, i64 noundef, i64) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #14
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pte_t* @__get_locked_pte(%struct.mm_struct* noundef, i64 noundef, %struct.spinlock** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pagevec_count(%struct.pagevec* nocapture noundef readonly %pvec) unnamed_addr #3 {
entry:
  %nr = getelementptr inbounds %struct.pagevec, %struct.pagevec* %pvec, i64 0, i32 0
  %0 = load i8, i8* %nr, align 8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.lruvec* @relock_page_lruvec_irq(%struct.page* nocapture noundef readnone %page, %struct.lruvec* noundef %locked_lruvec) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.lruvec* %locked_lruvec, null
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @page_matches_lruvec(%struct.page* noundef %page, %struct.lruvec* noundef nonnull %locked_lruvec) #14
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %if.then
  call fastcc void @unlock_page_lruvec_irq(%struct.lruvec* noundef nonnull %locked_lruvec) #14
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  call fastcc void @lock_page_lruvec_irq(%struct.page* noundef %page) #14
  br label %return

return:                                           ; preds = %if.then, %if.end2
  %retval.0 = phi %struct.lruvec* [ getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16), %if.end2 ], [ %locked_lruvec, %if.then ]
  ret %struct.lruvec* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(%struct.zone* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_page_lruvec_irq(%struct.lruvec* noundef %lruvec) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.lruvec, %struct.lruvec* %lruvec, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pagevec_release(%struct.pagevec* noundef %pvec) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__pagevec_release(%struct.pagevec* noundef %pvec) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__putback_lru_fast_prepare(%struct.page* noundef %page, %struct.pagevec* nocapture noundef %pvec, i32* nocapture noundef %pgrescued) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_mapcount(%struct.page* noundef %page) #14
  %cmp = icmp slt i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i1 @page_evictable(%struct.page* noundef %page) #14
  br i1 %call1, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %call2 = call fastcc i32 @pagevec_add(%struct.pagevec* noundef %pvec, %struct.page* noundef %page) #14
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1.i = call fastcc i1 @test_and_clear_bit(i64 noundef 20, i64* noundef %flags.i) #15
  br i1 %call1.i, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %1 = load i32, i32* %pgrescued, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %pgrescued, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  call void @unlock_page(%struct.page* noundef %page) #15
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.end
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__putback_lru_fast(%struct.pagevec* noundef %pvec, i32 noundef %pgrescued) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @pagevec_count(%struct.pagevec* noundef %pvec) #14
  %conv = zext i32 %call to i64
  call fastcc void @count_vm_events(i32 noundef 50, i64 noundef %conv) #14
  call void @__pagevec_lru_add(%struct.pagevec* noundef %pvec) #15
  %conv1 = sext i32 %pgrescued to i64
  call fastcc void @count_vm_events(i32 noundef 48, i64 noundef %conv1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @page_matches_lruvec(%struct.page* nocapture noundef readnone %page, %struct.lruvec* noundef readnone %lruvec) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #14
  %cmp = icmp eq %struct.pglist_data* %call, @contig_page_data
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page_lruvec_irq(%struct.page* nocapture noundef readnone %page) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock_irq() #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef readnone %lruvec) unnamed_addr #7 {
entry:
  %add.ptr = getelementptr %struct.lruvec, %struct.lruvec* %lruvec, i64 -38, i32 0, i64 3
  %0 = bitcast %struct.list_head* %add.ptr to %struct.pglist_data*
  ret %struct.pglist_data* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.pglist_data, %struct.pglist_data* @contig_page_data, i64 0, i32 16, i32 1, i32 0, i32 0)) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #14
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #17, !srcloc !24
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #9 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #17, !srcloc !25
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #12 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #14
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #12 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #12 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mod_lruvec_state(%struct.lruvec* noundef %lruvec, i32 noundef %idx) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pglist_data* @lruvec_pgdat(%struct.lruvec* noundef %lruvec) #14
  call void @__mod_node_page_state(%struct.pglist_data* noundef %call, i32 noundef %idx, i64 noundef -1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_is_file_lru(%struct.page* noundef %page) unnamed_addr #9 {
entry:
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 19
  %4 = and i32 %3, 1
  %5 = xor i32 %4, 1
  ret i32 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call fastcc void @arch_local_irq_enable() #14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #17, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #17, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(%struct.pagevec* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @page_evictable(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %call = call %struct.address_space* @page_mapping(%struct.page* noundef %page) #15
  %call1 = call fastcc i1 @mapping_unevictable(%struct.address_space* noundef %call) #14
  br i1 %call1, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #15
  %0 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 2097152
  %tobool.not = icmp eq i64 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool.not, %land.rhs ]
  call fastcc void @rcu_read_unlock() #14
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @mapping_unevictable(%struct.address_space* noundef %mapping) unnamed_addr #9 {
entry:
  %tobool.not = icmp eq %struct.address_space* %mapping, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 10
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 8
  %tobool1 = icmp ne i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.address_space* @page_mapping(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !30
  call void @rcu_read_unlock_strict() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_lru_add(%struct.pagevec* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mlock(i64 noundef %start, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_mlock(i64 noundef %start, i64 noundef %len, i64 noundef 8192) #14
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_mlock(i64 noundef %start, i64 noundef %len, i64 noundef %flags) unnamed_addr #0 {
entry:
  %shl.i = shl i64 %start, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %start
  %call1 = call i1 @can_do_mlock() #14
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i64 %and, 4095
  %add = add i64 %len, 4095
  %add3 = add i64 %add, %and2
  %and4 = and i64 %add3, -4096
  %and5 = and i64 %and, -4096
  %call6 = call fastcc i64 @rlimit() #14
  %shr = lshr i64 %call6, 12
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call9 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #14
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end
  %shr7 = lshr i64 %add3, 12
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 20
  %4 = load i64, i64* %locked_vm, align 8
  %add14 = add i64 %4, %shr7
  %cmp = icmp ugt i64 %add14, %shr
  br i1 %cmp, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end11
  %call15 = call i1 @capable(i32 noundef 14) #15
  br i1 %call15, label %if.end20, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  %5 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call19 = call fastcc i64 @count_mm_mlocked_page_nr(%struct.mm_struct* noundef %5, i64 noundef %and5, i64 noundef %and4) #14
  %sub = sub i64 %add14, %call19
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true, %if.end11
  %locked.0 = phi i64 [ %add14, %land.lhs.true ], [ %sub, %if.then16 ], [ %add14, %if.end11 ]
  %cmp21.not = icmp ugt i64 %locked.0, %shr
  br i1 %cmp21.not, label %lor.lhs.false, label %if.end25

lor.lhs.false:                                    ; preds = %if.end20
  %call22 = call i1 @capable(i32 noundef 14) #15
  br i1 %call22, label %if.end25, label %if.end25.thread

if.end25.thread:                                  ; preds = %lor.lhs.false
  %6 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %6) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end20, %lor.lhs.false
  %call24 = call fastcc i32 @apply_vma_lock_flags(i64 noundef %and5, i64 noundef %and4, i64 noundef %flags) #14
  %7 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %7) #14
  %tobool28.not = icmp eq i32 %call24, 0
  br i1 %tobool28.not, label %if.end30, label %cleanup

if.end30:                                         ; preds = %if.end25
  %call31 = call i32 @__mm_populate(i64 noundef %and5, i64 noundef %and4, i32 noundef 0) #15
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %if.end30
  %conv = sext i32 %call31 to i64
  %call34 = call fastcc i32 @__mlock_posix_error_return(i64 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end25.thread, %if.end30, %if.end25, %if.end, %entry, %if.then33
  %retval.0 = phi i32 [ %call34, %if.then33 ], [ -1, %entry ], [ -4, %if.end ], [ %call24, %if.end25 ], [ 0, %if.end30 ], [ -12, %if.end25.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @count_mm_mlocked_page_nr(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %len) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.mm_struct* %mm, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mm.addr.0 = phi %struct.mm_struct* [ %2, %if.then ], [ %mm, %entry ]
  %call2 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm.addr.0, i64 noundef %start) #15
  %cmp3 = icmp eq %struct.vm_area_struct* %call2, null
  br i1 %cmp3, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %add = add i64 %len, %start
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %count.064 = phi i64 [ 0, %for.body.lr.ph ], [ %count.2, %for.inc ]
  %vma.063 = phi %struct.vm_area_struct* [ %call2, %for.body.lr.ph ], [ %7, %for.inc ]
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.063, i64 0, i32 1
  %3 = load i64, i64* %vm_end, align 8
  %cmp6.not = icmp ugt i64 %3, %start
  br i1 %cmp6.not, label %if.end8, label %for.inc

if.end8:                                          ; preds = %for.body
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.063, i64 0, i32 0
  %4 = load i64, i64* %vm_start, align 8
  %cmp9.not = icmp ugt i64 %add, %4
  br i1 %cmp9.not, label %if.end11, label %for.end

if.end11:                                         ; preds = %if.end8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.063, i64 0, i32 8
  %5 = load i64, i64* %vm_flags, align 8
  %and = and i64 %5, 8192
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %if.end11
  %6 = call i64 @llvm.usub.sat.i64(i64 %start, i64 %4)
  %count.1 = sub i64 %count.064, %6
  %cmp22 = icmp ult i64 %add, %3
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.then13
  %sub26 = sub i64 %add, %4
  %add27 = add i64 %sub26, %count.1
  br label %for.end

if.end28:                                         ; preds = %if.then13
  %sub31 = sub i64 %3, %4
  %add32 = add i64 %sub31, %count.1
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.end28, %for.body
  %count.2 = phi i64 [ %count.064, %for.body ], [ %add32, %if.end28 ], [ %count.064, %if.end11 ]
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.063, i64 0, i32 2
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool.not = icmp eq %struct.vm_area_struct* %7, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end8, %if.then23
  %count.3 = phi i64 [ %add27, %if.then23 ], [ %count.2, %for.inc ], [ %count.064, %if.end8 ]
  %shr = lshr i64 %count.3, 12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end
  %retval.0 = phi i64 [ %shr, %for.end ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @apply_vma_lock_flags(i64 noundef %start, i64 noundef %len, i64 noundef %flags) unnamed_addr #0 {
entry:
  %prev = alloca %struct.vm_area_struct*, align 8
  %0 = bitcast %struct.vm_area_struct** %prev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  %add = add i64 %len, %start
  %cmp = icmp ult i64 %add, %start
  br i1 %cmp, label %cleanup33, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %len, 0
  br i1 %cmp1, label %cleanup33, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call4 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %3, i64 noundef %start) #15
  %tobool.not = icmp eq %struct.vm_area_struct* %call4, null
  br i1 %tobool.not, label %cleanup33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call4, i64 0, i32 0
  %4 = load i64, i64* %vm_start, align 8
  %cmp5 = icmp ugt i64 %4, %start
  br i1 %cmp5, label %cleanup33, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call4, i64 0, i32 3
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_prev, align 8
  %cmp9 = icmp ult i64 %4, %start
  %spec.store.select = select i1 %cmp9, %struct.vm_area_struct* %call4, %struct.vm_area_struct* %5
  store %struct.vm_area_struct* %spec.store.select, %struct.vm_area_struct** %prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false28, %if.end7
  %nstart.0 = phi i64 [ %start, %if.end7 ], [ %spec.select73, %lor.lhs.false28 ]
  %vma.0 = phi %struct.vm_area_struct* [ %call4, %if.end7 ], [ %10, %lor.lhs.false28 ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 8
  %6 = load i64, i64* %vm_flags, align 8
  %and = and i64 %6, -532481
  %or = or i64 %and, %flags
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 1
  %7 = load i64, i64* %vm_end, align 8
  %cmp12 = icmp ugt i64 %7, %add
  %spec.select = select i1 %cmp12, i64 %add, i64 %7
  %call15 = call fastcc i32 @mlock_fixup(%struct.vm_area_struct* noundef nonnull %vma.0, %struct.vm_area_struct** noundef nonnull %prev, i64 noundef %nstart.0, i64 noundef %spec.select, i64 noundef %or) #14
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %cleanup33

if.end18:                                         ; preds = %for.cond
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %vm_end19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i64 0, i32 1
  %9 = load i64, i64* %vm_end19, align 8
  %cmp20 = icmp ult i64 %spec.select, %9
  %spec.select73 = select i1 %cmp20, i64 %9, i64 %spec.select
  %cmp24.not = icmp ult i64 %spec.select73, %add
  br i1 %cmp24.not, label %if.end26, label %cleanup33

if.end26:                                         ; preds = %if.end18
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i64 0, i32 2
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool27.not = icmp eq %struct.vm_area_struct* %10, null
  br i1 %tobool27.not, label %cleanup33, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end26
  %vm_start29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i64 0, i32 0
  %11 = load i64, i64* %vm_start29, align 8
  %cmp30.not = icmp eq i64 %11, %spec.select73
  br i1 %cmp30.not, label %for.cond, label %cleanup33

cleanup33:                                        ; preds = %lor.lhs.false28, %if.end26, %if.end18, %for.cond, %if.end3, %lor.lhs.false, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.end ], [ -12, %lor.lhs.false ], [ -12, %if.end3 ], [ %call15, %for.cond ], [ 0, %if.end18 ], [ -12, %if.end26 ], [ -12, %lor.lhs.false28 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__mlock_posix_error_return(i64 noundef %retval1) unnamed_addr #7 {
entry:
  %cmp = icmp eq i64 %retval1, -14
  %cmp2 = icmp eq i64 %retval1, -12
  %0 = trunc i64 %retval1 to i32
  %phi.cast = select i1 %cmp2, i32 -11, i32 %0
  %retval.addr.0 = select i1 %cmp, i32 -12, i32 %phi.cast
  ret i32 %retval.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mlock_fixup(%struct.vm_area_struct* noundef %vma, %struct.vm_area_struct** nocapture noundef %prev, i64 noundef %start, i64 noundef %end, i64 noundef %newflags) unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %and = and i64 %newflags, 8192
  %tobool.not = icmp eq i64 %and, 0
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %cmp = icmp ne i64 %1, %newflags
  %and4 = and i64 %1, 268715008
  %tobool5.not = icmp eq i64 %and4, 0
  %or.cond = and i1 %cmp, %tobool5.not
  br i1 %or.cond, label %lor.lhs.false6, label %out

lor.lhs.false6:                                   ; preds = %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !8
  %cmp11 = icmp eq %struct.vm_area_struct* %vma, null
  br i1 %cmp11, label %out, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %call15 = call i1 @vma_is_secretmem(%struct.vm_area_struct* noundef nonnull %vma) #15
  br i1 %call15, label %out, label %if.end

if.end:                                           ; preds = %lor.lhs.false12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 13
  %3 = load i64, i64* %vm_pgoff, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %4 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %start, %4
  %shr = lshr i64 %sub, 12
  %add = add i64 %shr, %3
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %prev, align 8
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 11
  %6 = load %struct.anon_vma*, %struct.anon_vma** %anon_vma, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 14
  %7 = load %struct.file*, %struct.file** %vm_file, align 8
  %call16 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef %5, i64 noundef %start, i64 noundef %end, i64 noundef %newflags, %struct.anon_vma* noundef %6, %struct.file* noundef %7, i64 noundef %add, %struct.mempolicy* noundef null) #15
  store %struct.vm_area_struct* %call16, %struct.vm_area_struct** %prev, align 8
  %tobool17.not = icmp eq %struct.vm_area_struct* %call16, null
  br i1 %tobool17.not, label %if.end19, label %success

if.end19:                                         ; preds = %if.end
  %8 = load i64, i64* %vm_start, align 8
  %cmp21.not = icmp eq i64 %8, %start
  br i1 %cmp21.not, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.end19
  %call23 = call i32 @split_vma(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef nonnull %vma, i64 noundef %start, i32 noundef 1) #15
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %out

if.end27:                                         ; preds = %if.then22, %if.end19
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %9 = load i64, i64* %vm_end, align 8
  %cmp28.not = icmp eq i64 %9, %end
  br i1 %cmp28.not, label %success, label %if.then29

if.then29:                                        ; preds = %if.end27
  %call30 = call i32 @split_vma(%struct.mm_struct* noundef %0, %struct.vm_area_struct* noundef nonnull %vma, i64 noundef %end, i32 noundef 0) #15
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %success, label %out

success:                                          ; preds = %if.end, %if.end27, %if.then29
  %vma.addr.0 = phi %struct.vm_area_struct* [ %vma, %if.then29 ], [ %vma, %if.end27 ], [ %call16, %if.end ]
  %sub35 = sub i64 %end, %start
  %shr36 = lshr i64 %sub35, 12
  %sub39 = sub nsw i64 0, %shr36
  %and40 = and i64 %1, 8192
  %tobool41.not = icmp eq i64 %and40, 0
  %spec.select = select i1 %tobool41.not, i64 %shr36, i64 0
  %nr_pages.0 = select i1 %tobool.not, i64 %sub39, i64 %spec.select
  %sext = shl i64 %nr_pages.0, 32
  %conv45 = ashr exact i64 %sext, 32
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 20
  %10 = load i64, i64* %locked_vm, align 8
  %add46 = add i64 %10, %conv45
  store i64 %add46, i64* %locked_vm, align 8
  br i1 %tobool.not, label %if.else50, label %if.then48

if.then48:                                        ; preds = %success
  %vm_flags49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.addr.0, i64 0, i32 8
  store i64 %newflags, i64* %vm_flags49, align 8
  br label %out

if.else50:                                        ; preds = %success
  call void @munlock_vma_pages_range(%struct.vm_area_struct* noundef nonnull %vma.addr.0, i64 noundef %start, i64 noundef %end) #14
  br label %out

out:                                              ; preds = %if.then48, %if.else50, %if.then29, %if.then22, %entry, %lor.lhs.false6, %lor.lhs.false12
  %vma.addr.1 = phi %struct.vm_area_struct* [ %vma, %entry ], [ null, %lor.lhs.false6 ], [ %vma, %lor.lhs.false12 ], [ %vma.addr.0, %if.then48 ], [ %vma.addr.0, %if.else50 ], [ %vma, %if.then22 ], [ %vma, %if.then29 ]
  %ret.2 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false12 ], [ 0, %if.then48 ], [ 0, %if.else50 ], [ %call23, %if.then22 ], [ %call30, %if.then29 ]
  store %struct.vm_area_struct* %vma.addr.1, %struct.vm_area_struct** %prev, align 8
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @vma_is_secretmem(%struct.vm_area_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct* noundef, %struct.vm_area_struct* noundef, i64 noundef, i64 noundef, i64 noundef, %struct.anon_vma* noundef, %struct.file* noundef, i64 noundef, %struct.mempolicy* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @split_vma(%struct.mm_struct* noundef, %struct.vm_area_struct* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mlock2(i64 noundef %start, i64 noundef %len, i32 noundef %flags) unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq i32 %flags, 0
  %spec.select = select i1 %tobool2.not, i64 8192, i64 532480
  %call = call fastcc i32 @do_mlock(i64 noundef %start, i64 noundef %len, i64 noundef %spec.select) #14
  %conv = sext i32 %call to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_munlock(i64 noundef %start, i64 noundef %len) unnamed_addr #0 {
entry:
  %shl.i = shl i64 %start, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %start
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call6 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #14
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i64 %and, -4096
  %and1 = and i64 %and, 4095
  %add = add i64 %len, 4095
  %add2 = add i64 %add, %and1
  %and3 = and i64 %add2, -4096
  %call7 = call fastcc i32 @apply_vma_lock_flags(i64 noundef %and4, i64 noundef %and3, i64 noundef 0) #14
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %3) #14
  %conv = sext i32 %call7 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -4, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mlockall(i32 noundef %flags) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tobool1 = icmp ugt i32 %flags, 7
  %cmp = icmp eq i32 %flags, 4
  %or.cond = or i1 %tobool1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = call i1 @can_do_mlock() #14
  br i1 %call, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i64 @rlimit() #14
  %shr = lshr i64 %call5, 12
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call7 = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %2) #14
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end4
  %and11 = and i32 %flags, 1
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %cleanup.critedge, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end10
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 19
  %4 = load i64, i64* %total_vm, align 8
  %cmp16.not = icmp ugt i64 %4, %shr
  br i1 %cmp16.not, label %lor.lhs.false17, label %if.end21

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = call i1 @capable(i32 noundef 14) #15
  br i1 %call18, label %if.end21, label %if.end21.thread

if.end21.thread:                                  ; preds = %lor.lhs.false17
  %5 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %5) #14
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false13, %lor.lhs.false17
  call fastcc void @apply_mlockall_flags(i32 noundef %flags) #14
  %6 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %6) #14
  br i1 %tobool12.not, label %cleanup, label %if.then27

if.then27:                                        ; preds = %if.end21
  %7 = load i64, i64* @vabits_actual, align 8
  %shl = shl nuw i64 1, %7
  call fastcc void @mm_populate(i64 noundef %shl) #14
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end10
  call fastcc void @apply_mlockall_flags(i32 noundef %flags) #14
  %8 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %8) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.end21.thread, %if.then27, %if.end21, %if.end4, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i64 [ -22, %lor.lhs.false ], [ -22, %entry ], [ -1, %if.end ], [ -4, %if.end4 ], [ 0, %if.end21 ], [ 0, %if.then27 ], [ -12, %if.end21.thread ], [ 0, %cleanup.critedge ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_populate(i64 noundef %len) unnamed_addr #0 {
entry:
  %call = call i32 @__mm_populate(i64 noundef 0, i64 noundef %len, i32 noundef 1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @shmlock_user_lock, i64 0, i32 0, i32 0)) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #14
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #13

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly }

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
!8 = !{i64 1415523}
!9 = !{i64 2152527009}
!10 = !{i64 2152527961}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2155650116}
!13 = !{i64 2155651774}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148092806, i64 2148093468, i64 2148093498, i64 2148093529, i64 2148093561, i64 2148093596, i64 2148093621}
!17 = !{i64 2149201040, i64 2149201081, i64 2149201137, i64 2149201189}
!18 = !{i64 2149175094, i64 2149175141, i64 2149175147, i64 2149175184, i64 2149175202, i64 2149176129, i64 2149176177, i64 2149176225, i64 2149176288, i64 2149176337, i64 2149175280, i64 2149175305, i64 2149175331, i64 2149175337, i64 2149175374, i64 2149175380, i64 2149175430, i64 2149175476, i64 2149175509}
!19 = !{i64 2148082229, i64 2148082881, i64 2148082911, i64 2148082942, i64 2148082974, i64 2148083009, i64 2148083034}
!20 = !{i64 2148022876, i64 2148023524, i64 2148023554, i64 2148023586, i64 2148023620, i64 2148023656, i64 2148023681}
!21 = !{i64 2148084271, i64 2148084941, i64 2148084971, i64 2148085003, i64 2148085035, i64 2148085069, i64 2148085094}
!22 = !{i64 2148012303, i64 2148012819, i64 2148012849, i64 2148012876, i64 2148012910, i64 2148012940}
!23 = !{i64 2149591241}
!24 = !{i64 2149147072, i64 2149147119, i64 2149147125, i64 2149147162, i64 2149147180, i64 2149148521, i64 2149148569, i64 2149148617, i64 2149148680, i64 2149148729, i64 2149147258, i64 2149147283, i64 2149147309, i64 2149147315, i64 2149148187, i64 2149148227, i64 2149148245, i64 2149148277, i64 2149148305, i64 2149148359, i64 2149148379, i64 2149148476, i64 2149147338, i64 2149147352, i64 2149147358, i64 2149147408, i64 2149147454, i64 2149147487}
!25 = !{i64 2148112226, i64 2148112259, i64 2148112312, i64 2148112371, i64 2148112405, i64 2148112460, i64 2148112489, i64 2148112509}
!26 = !{i64 2149616094}
!27 = !{i64 2149401460}
!28 = !{i64 2149137616, i64 2149137663, i64 2149137669, i64 2149137706, i64 2149137724, i64 2149139064, i64 2149139112, i64 2149139160, i64 2149139223, i64 2149139272, i64 2149137802, i64 2149137827, i64 2149137853, i64 2149137859, i64 2149138730, i64 2149138770, i64 2149138788, i64 2149138820, i64 2149138848, i64 2149138902, i64 2149138922, i64 2149139019, i64 2149137882, i64 2149137896, i64 2149137902, i64 2149137952, i64 2149137998, i64 2149138031}
!29 = !{i64 2150067379}
!30 = !{i64 2150067596}
!31 = !{i64 2149601949}
!32 = !{i64 2149609230}
