; ModuleID = 'mm/gup.c'
source_filename = "mm/gup.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.atomic64_t = type { i64 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.poll_table_struct = type opaque
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
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
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
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.follow_page_context = type { %struct.dev_pagemap*, i32 }
%struct.dev_pagemap = type { %struct.vmem_altmap, %struct.percpu_ref*, %struct.percpu_ref, %struct.completion, i32, i32, %struct.dev_pagemap_ops*, i8*, i32, %union.anon.68 }
%struct.vmem_altmap = type { i64, i64, i64, i64, i64, i64 }
%struct.dev_pagemap_ops = type { void (%struct.page*)*, void (%struct.dev_pagemap*)*, void (%struct.dev_pagemap*)*, i32 (%struct.vm_fault*)* }
%union.anon.68 = type { %struct.range }
%struct.range = type { i64, i64 }
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.anon.63 = type { i64, i8, i8, %struct.atomic_t, i32 }

@contig_page_data = external dso_local global %struct.pglist_data, align 64
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@zero_pfn = external dso_local local_unnamed_addr global i64, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@secretmem_aops = external dso_local constant %struct.address_space_operations, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @try_grab_compound_head(%struct.page* noundef %page, i32 noundef %refs, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.page* @try_get_compound_head(%struct.page* noundef %page, i32 noundef %refs) #11
  br label %return

if.else:                                          ; preds = %entry
  %and1 = and i32 %flags, 262144
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then31, label %if.end

if.end:                                           ; preds = %if.else
  %call11 = call fastcc %struct.page* @try_get_compound_head(%struct.page* noundef %page, i32 noundef %refs) #11
  %tobool12.not = icmp eq %struct.page* %call11, null
  br i1 %tobool12.not, label %return, label %if.end14

if.end14:                                         ; preds = %if.end
  %call15 = call fastcc i1 @hpage_pincount_available(%struct.page* noundef nonnull %call11) #11
  br i1 %call15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end14
  call fastcc void @hpage_pincount_add(%struct.page* noundef nonnull %call11, i32 noundef %refs) #11
  br label %if.end18

if.else17:                                        ; preds = %if.end14
  %mul = mul i32 %refs, 1023
  call fastcc void @page_ref_add(%struct.page* noundef nonnull %call11, i32 noundef %mul) #11
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  %conv20 = sext i32 %refs to i64
  call void @mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef 34, i64 noundef %conv20) #12
  br label %return

if.then31:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 171; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !8
  br label %return

return:                                           ; preds = %if.end, %if.then31, %if.end18, %if.then
  %retval.0 = phi %struct.page* [ %call, %if.then ], [ %call11, %if.end18 ], [ null, %if.then31 ], [ null, %if.end ]
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @try_get_compound_head(%struct.page* noundef %page, i32 noundef %refs) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %0 = inttoptr i64 %call to %struct.page*
  %call1 = call fastcc i32 @page_ref_count(%struct.page* noundef %0) #11
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end17, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 73; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !10
  br label %cleanup

if.end17:                                         ; preds = %entry
  %call18 = call fastcc i32 @page_cache_add_speculative(%struct.page* noundef %0, i32 noundef %refs) #11
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %if.end30, !prof !9

if.end30:                                         ; preds = %if.end17
  %call31 = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %1 = inttoptr i64 %call31 to %struct.page*
  %cmp32.not = icmp eq %struct.page* %1, %0
  br i1 %cmp32.not, label %cleanup, label %if.then41, !prof !11

if.then41:                                        ; preds = %if.end30
  call fastcc void @put_page_refs(%struct.page* noundef %0, i32 noundef %refs) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end30, %if.end17, %if.then41
  %retval.0 = phi %struct.page* [ null, %if.then41 ], [ null, %if.then ], [ null, %if.end17 ], [ %0, %if.end30 ]
  ret %struct.page* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %0 = inttoptr i64 %call to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags.i, align 8
  %2 = and i64 %1, 65536
  %tobool.not.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %land.rhs

PageCompound.exit:                                ; preds = %entry
  %3 = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %3 to i64*
  %4 = load volatile i64, i64* %compound_head.i.i, align 8
  %5 = and i64 %4, 1
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %PageCompound.exit
  %call2 = call fastcc i32 @compound_order(%struct.page* noundef %0) #11
  %cmp = icmp ugt i32 %call2, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %PageCompound.exit
  %6 = phi i1 [ false, %PageCompound.exit ], [ %cmp, %land.rhs ]
  ret i1 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hpage_pincount_add(%struct.page* noundef %page, i32 noundef %refs) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef %page) #11
  call fastcc void @__ll_sc_atomic_add(i32 noundef %refs, %struct.atomic_t* noundef %call) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_add(%struct.page* noundef %page, i32 noundef %nr) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(i32 noundef %nr, %struct.atomic_t* noundef %_refcount) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @try_grab_page(%struct.page* noundef %page, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %and = and i32 %flags, 262148
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.page* @try_grab_compound_head(%struct.page* noundef %page, i32 noundef 1, i32 noundef %flags) #11
  %tobool1 = icmp ne %struct.page* %call, null
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %tobool1, %if.end ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unpin_user_page(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %0 = inttoptr i64 %call to %struct.page*
  call fastcc void @put_compound_head(%struct.page* noundef %0, i32 noundef 1, i32 noundef 262144) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_compound_head(%struct.page* noundef %page, i32 noundef %refs, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i32 %flags, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %refs to i64
  call void @mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef 35, i64 noundef %conv) #12
  %call1 = call fastcc i1 @hpage_pincount_available(%struct.page* noundef %page) #11
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call fastcc void @hpage_pincount_sub(%struct.page* noundef %page, i32 noundef %refs) #11
  br label %if.end3

if.else:                                          ; preds = %if.then
  %mul = shl i32 %refs, 10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else, %entry
  %refs.addr.0 = phi i32 [ %refs, %if.then2 ], [ %mul, %if.else ], [ %refs, %entry ]
  call fastcc void @put_page_refs(%struct.page* noundef %page, i32 noundef %refs.addr.0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

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
define dso_local void @unpin_user_pages_dirty_lock(%struct.page** nocapture noundef readonly %pages, i64 noundef %npages, i1 noundef %make_dirty) local_unnamed_addr #0 {
entry:
  %head = alloca %struct.page*, align 8
  %ntails = alloca i32, align 4
  %0 = bitcast %struct.page** %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.page* null, %struct.page** %head, align 8, !annotation !12
  %1 = bitcast i32* %ntails to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  store i32 0, i32* %ntails, align 4, !annotation !12
  br i1 %make_dirty, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @unpin_user_pages(%struct.page** noundef %pages, i64 noundef %npages) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @compound_next(i64 noundef 0, i64 noundef %npages, %struct.page** noundef %pages, %struct.page** noundef nonnull %head, i32* noundef nonnull %ntails) #11
  %cmp16.not = icmp eq i64 %npages, 0
  br i1 %cmp16.not, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %if.end4
  %index.017 = phi i64 [ %add, %if.end4 ], [ 0, %if.end ]
  %2 = load %struct.page*, %struct.page** %head, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %2) #12
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i, align 8
  %5 = and i64 %4, 8
  %tobool1.not = icmp eq i64 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %for.body
  %call3 = call i32 @set_page_dirty_lock(%struct.page* noundef %2) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %for.body
  %6 = load i32, i32* %ntails, align 4
  call fastcc void @put_compound_head(%struct.page* noundef %2, i32 noundef %6, i32 noundef 262144) #11
  %conv = zext i32 %6 to i64
  %add = add i64 %index.017, %conv
  call fastcc void @compound_next(i64 noundef %add, i64 noundef %npages, %struct.page** noundef %pages, %struct.page** noundef nonnull %head, i32* noundef nonnull %ntails) #11
  %cmp = icmp ult i64 %add, %npages
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unpin_user_pages(%struct.page** nocapture noundef readonly %pages, i64 noundef %npages) local_unnamed_addr #0 {
entry:
  %head = alloca %struct.page*, align 8
  %ntails = alloca i32, align 4
  %0 = bitcast %struct.page** %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.page* null, %struct.page** %head, align 8, !annotation !12
  %1 = bitcast i32* %ntails to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  store i32 0, i32* %ntails, align 4, !annotation !12
  %cmp = icmp ugt i64 %npages, -4096
  br i1 %cmp, label %if.then, label %if.end23, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 402; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !13
  br label %cleanup

if.end23:                                         ; preds = %entry
  call fastcc void @compound_next(i64 noundef 0, i64 noundef %npages, %struct.page** noundef %pages, %struct.page** noundef nonnull %head, i32* noundef nonnull %ntails) #11
  %cmp2439.not = icmp eq i64 %npages, 0
  br i1 %cmp2439.not, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end23, %for.body
  %index.040 = phi i64 [ %add, %for.body ], [ 0, %if.end23 ]
  %2 = load %struct.page*, %struct.page** %head, align 8
  %3 = load i32, i32* %ntails, align 4
  call fastcc void @put_compound_head(%struct.page* noundef %2, i32 noundef %3, i32 noundef 262144) #11
  %conv26 = zext i32 %3 to i64
  %add = add i64 %index.040, %conv26
  call fastcc void @compound_next(i64 noundef %add, i64 noundef %npages, %struct.page** noundef %pages, %struct.page** noundef nonnull %head, i32* noundef nonnull %ntails) #11
  %cmp24 = icmp ult i64 %add, %npages
  br i1 %cmp24, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end23, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @compound_next(i64 noundef %i, i64 noundef %npages, %struct.page** nocapture noundef readonly %list, %struct.page** nocapture noundef writeonly %head, i32* nocapture noundef writeonly %ntails) unnamed_addr #4 {
entry:
  %cmp.not = icmp ult i64 %i, %npages
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.page*, %struct.page** %list, i64 %i
  %0 = load %struct.page*, %struct.page** %arrayidx, align 8
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %0) #11
  %1 = inttoptr i64 %call to %struct.page*
  %2 = trunc i64 %i to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %nr.0.in = phi i32 [ %2, %if.end ], [ %nr.0, %for.body ]
  %nr.0 = add i32 %nr.0.in, 1
  %conv1 = zext i32 %nr.0 to i64
  %cmp2 = icmp ult i64 %conv1, %npages
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr %struct.page*, %struct.page** %list, i64 %conv1
  %3 = load %struct.page*, %struct.page** %arrayidx4, align 8
  %call5 = call fastcc i64 @_compound_head(%struct.page* noundef %3) #11
  %4 = inttoptr i64 %call5 to %struct.page*
  %cmp6.not = icmp eq %struct.page* %4, %1
  br i1 %cmp6.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body, %for.cond
  store %struct.page* %1, %struct.page** %head, align 8
  %conv11 = sub i32 %nr.0, %2
  store i32 %conv11, i32* %ntails, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unpin_user_page_range_dirty_lock(%struct.page* noundef %page, i64 noundef %npages, i1 noundef %make_dirty) local_unnamed_addr #0 {
entry:
  %page.addr = alloca %struct.page*, align 8
  %head = alloca %struct.page*, align 8
  %ntails = alloca i32, align 4
  store %struct.page* %page, %struct.page** %page.addr, align 8
  %0 = bitcast %struct.page** %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.page* null, %struct.page** %head, align 8, !annotation !12
  %1 = bitcast i32* %ntails to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  store i32 0, i32* %ntails, align 4, !annotation !12
  call fastcc void @compound_range_next(i64 noundef 0, i64 noundef %npages, %struct.page** noundef nonnull %page.addr, %struct.page** noundef nonnull %head, i32* noundef nonnull %ntails) #11
  %cmp9.not = icmp eq i64 %npages, 0
  br i1 %cmp9.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %index.010 = phi i64 [ %add, %if.end ], [ 0, %entry ]
  %2 = load %struct.page*, %struct.page** %head, align 8
  br i1 %make_dirty, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %2) #12
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i, align 8
  %5 = and i64 %4, 8
  %tobool1.not = icmp eq i64 %5, 0
  br i1 %tobool1.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32 @set_page_dirty_lock(%struct.page* noundef %2) #12
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then, %land.lhs.true
  %6 = load i32, i32* %ntails, align 4
  call fastcc void @put_compound_head(%struct.page* noundef %2, i32 noundef %6, i32 noundef 262144) #11
  %conv = zext i32 %6 to i64
  %add = add i64 %index.010, %conv
  call fastcc void @compound_range_next(i64 noundef %add, i64 noundef %npages, %struct.page** noundef nonnull %page.addr, %struct.page** noundef nonnull %head, i32* noundef nonnull %ntails) #11
  %cmp = icmp ult i64 %add, %npages
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @compound_range_next(i64 noundef %i, i64 noundef %npages, %struct.page** nocapture noundef readonly %list, %struct.page** nocapture noundef writeonly %head, i32* nocapture noundef writeonly %ntails) unnamed_addr #1 {
entry:
  %cmp.not = icmp ugt i64 %npages, %i
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.page*, %struct.page** %list, align 8
  %add.ptr = getelementptr %struct.page, %struct.page* %0, i64 %i
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %add.ptr) #11
  %1 = inttoptr i64 %call to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %flags.i, align 8
  %3 = and i64 %2, 65536
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %land.lhs.true

PageCompound.exit:                                ; preds = %if.end
  %4 = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %4 to i64*
  %5 = load volatile i64, i64* %compound_head.i.i, align 8
  %6 = and i64 %5, 1
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end, %PageCompound.exit
  %call2 = call fastcc i32 @compound_order(%struct.page* noundef %1) #11
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %call5 = call fastcc i64 @compound_nr(%struct.page* noundef %1) #11
  %add.ptr6 = getelementptr %struct.page, %struct.page* %1, i64 %call5
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %add.ptr6 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = lshr exact i64 %sub.ptr.sub, 6
  %conv = trunc i64 %7 to i32
  %sub = sub i64 %npages, %i
  %conv7 = trunc i64 %sub to i32
  %cmp8 = icmp ult i32 %conv, %conv7
  %cond = select i1 %cmp8, i32 %conv, i32 %conv7
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %land.lhs.true, %PageCompound.exit
  %nr.0 = phi i32 [ %cond, %if.then4 ], [ 1, %land.lhs.true ], [ 1, %PageCompound.exit ]
  store %struct.page* %1, %struct.page** %head, align 8
  store i32 %nr.0, i32* %ntails, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @follow_page(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i32 noundef %foll_flags) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.follow_page_context, align 8
  %0 = bitcast %struct.follow_page_context* %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %call = call i1 @vma_is_secretmem(%struct.vm_area_struct* noundef %vma) #12
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.page* @follow_page_mask(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i32 noundef %foll_flags, %struct.follow_page_context* noundef nonnull %ctx) #11
  %pgmap = getelementptr inbounds %struct.follow_page_context, %struct.follow_page_context* %ctx, i64 0, i32 0
  %1 = load %struct.dev_pagemap*, %struct.dev_pagemap** %pgmap, align 8
  %tobool.not = icmp eq %struct.dev_pagemap* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @put_dev_pagemap(%struct.dev_pagemap* noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi %struct.page* [ null, %entry ], [ %call1, %if.then2 ], [ %call1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret %struct.page* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @vma_is_secretmem(%struct.vm_area_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @follow_page_mask(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i32 noundef %flags, %struct.follow_page_context* nocapture noundef writeonly %ctx) unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %page_mask = getelementptr inbounds %struct.follow_page_context, %struct.follow_page_context* %ctx, i64 0, i32 1
  store i32 0, i32* %page_mask, align 8
  %call = call fastcc %struct.page* @follow_huge_addr() #11
  %1 = bitcast %struct.page* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #11
  br i1 %call1, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %flags, 262148
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %cleanup, label %if.then10, !prof !11

if.then10:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 812; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !14
  br label %cleanup

if.end18:                                         ; preds = %entry
  %pgd19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 8
  %2 = load %struct.pgd_t*, %struct.pgd_t** %pgd19, align 8
  %call20 = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %2, i64 noundef %address) #11
  %call36 = call fastcc %struct.page* @follow_p4d_mask(%struct.vm_area_struct* noundef %vma, i64 noundef %address, %struct.pgd_t* noundef %call20, i32 noundef %flags, %struct.follow_page_context* noundef %ctx) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then10, %if.end18
  %retval.0 = phi %struct.page* [ %call36, %if.end18 ], [ %call, %if.then10 ], [ %call, %if.then ]
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_dev_pagemap(%struct.dev_pagemap* noundef readonly %pgmap) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dev_pagemap* %pgmap, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ref = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %pgmap, i64 0, i32 1
  %0 = load %struct.percpu_ref*, %struct.percpu_ref** %ref, align 8
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fixup_user_fault(%struct.mm_struct* noundef %mm, i64 noundef %address, i32 noundef %fault_flags, i8* noundef writeonly %unlocked) local_unnamed_addr #0 {
entry:
  %shl.i = shl i64 %address, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %address
  %tobool.not = icmp eq i8* %unlocked, null
  %or = or i32 %fault_flags, 20
  %spec.select = select i1 %tobool.not, i32 %fault_flags, i32 %or
  %call155 = call %struct.vm_area_struct* @find_extend_vma(%struct.mm_struct* noundef %mm, i64 noundef %and) #12
  %tobool2.not56 = icmp eq %struct.vm_area_struct* %call155, null
  br i1 %tobool2.not56, label %cleanup32, label %lor.lhs.false.lr.ph

lor.lhs.false.lr.ph:                              ; preds = %entry
  %0 = or i32 %spec.select, 32
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.lr.ph, %if.then29
  %call158 = phi %struct.vm_area_struct* [ %call155, %lor.lhs.false.lr.ph ], [ %call1, %if.then29 ]
  %fault_flags.addr.157 = phi i32 [ %spec.select, %lor.lhs.false.lr.ph ], [ %0, %if.then29 ]
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call158, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %cmp = icmp ult i64 %and, %1
  br i1 %cmp, label %cleanup32, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %call5 = call fastcc i1 @vma_permits_fault(%struct.vm_area_struct* noundef nonnull %call158, i32 noundef %fault_flags.addr.157) #11
  br i1 %call5, label %if.end7, label %cleanup32

if.end7:                                          ; preds = %if.end4
  %and8 = and i32 %fault_flags.addr.157, 16
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call11 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %3) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup32

if.end14:                                         ; preds = %land.lhs.true, %if.end7
  %call15 = call i32 @handle_mm_fault(%struct.vm_area_struct* noundef nonnull %call158, i64 noundef %and, i32 noundef %fault_flags.addr.157, %struct.pt_regs* noundef null) #12
  %and16 = and i32 %call15, 2163
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end26, label %if.then18

if.then18:                                        ; preds = %if.end14
  %call19 = call fastcc i32 @vm_fault_to_errno(i32 noundef %call15, i32 noundef 0) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body, label %cleanup32

do.body:                                          ; preds = %if.then18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1289; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !16
  unreachable

if.end26:                                         ; preds = %if.end14
  %and27 = and i32 %call15, 1024
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %cleanup32, label %if.then29

if.then29:                                        ; preds = %if.end26
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) #11
  store i8 1, i8* %unlocked, align 1
  %call1 = call %struct.vm_area_struct* @find_extend_vma(%struct.mm_struct* noundef %mm, i64 noundef %and) #12
  %tobool2.not = icmp eq %struct.vm_area_struct* %call1, null
  br i1 %tobool2.not, label %cleanup32, label %lor.lhs.false

cleanup32:                                        ; preds = %lor.lhs.false, %if.then29, %if.end4, %land.lhs.true, %if.end26, %entry, %if.then18
  %retval.0 = phi i32 [ %call19, %if.then18 ], [ -14, %entry ], [ -14, %lor.lhs.false ], [ -14, %if.then29 ], [ -14, %if.end4 ], [ -4, %land.lhs.true ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_extend_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vma_permits_fault(%struct.vm_area_struct* nocapture noundef readonly %vma, i32 noundef %fault_flags) unnamed_addr #6 {
entry:
  %and = and i32 %fault_flags, 1
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i64 1, i64 2
  %vm_flags8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags8, align 8
  %and9 = and i64 %0, %cond
  %tobool10.not = icmp ne i64 %and9, 0
  ret i1 %tobool10.not
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #11
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_mm_fault(%struct.vm_area_struct* noundef, i64 noundef, i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @vm_fault_to_errno(i32 noundef %vm_fault, i32 noundef %foll_flags) unnamed_addr #7 {
entry:
  %and = and i32 %vm_fault, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %vm_fault, 48
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %and4 = and i32 %foll_flags, 256
  %tobool5.not = icmp eq i32 %and4, 0
  %cond = select i1 %tobool5.not, i32 -14, i32 -133
  br label %return

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %vm_fault, 66
  %tobool8.not = icmp eq i32 %and7, 0
  %. = select i1 %tobool8.not, i32 0, i32 -14
  br label %return

return:                                           ; preds = %if.end6, %entry, %if.then3
  %retval.0 = phi i32 [ %cond, %if.then3 ], [ -12, %entry ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_read(%struct.rw_semaphore* noundef %mmap_lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @populate_vma_page_range(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %start, i64 noundef %end, i32* noundef %locked) local_unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %1 = load i64, i64* %vm_flags, align 8
  %and = and i64 %1, 524288
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 4162, i32 4098
  %and3 = and i64 %1, 10
  %cmp = icmp eq i64 %and3, 2
  %or = zext i1 %cmp to i32
  %gup_flags.1 = or i32 %spec.select, %or
  %call = call fastcc i1 @vma_is_accessible(%struct.vm_area_struct* noundef %vma) #11
  %or7 = or i32 %gup_flags.1, 16
  %gup_flags.2 = select i1 %call, i32 %or7, i32 %gup_flags.1
  %sub = sub i64 %end, %start
  %div = lshr i64 %sub, 12
  %call9 = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %0, i64 noundef %start, i64 noundef %div, i32 noundef %gup_flags.2, %struct.page** noundef null, %struct.vm_area_struct** noundef null, i32* noundef %locked) #11
  ret i64 %call9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vma_is_accessible(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
entry:
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags, align 8
  %and = and i64 %0, 7
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef writeonly %pages, %struct.vm_area_struct** noundef writeonly %vmas, i32* noundef %locked) unnamed_addr #0 {
entry:
  %ctx = alloca %struct.follow_page_context, align 8
  %foll_flags = alloca i32, align 4
  %0 = bitcast %struct.follow_page_context* %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %tobool.not = icmp eq i64 %nr_pages, 0
  br i1 %tobool.not, label %cleanup124, label %if.end

if.end:                                           ; preds = %entry
  %shl.i = shl i64 %start, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %start
  %and1 = shl i32 %gup_flags, 5
  %1 = and i32 %and1, 512
  %2 = xor i32 %1, 512
  %3 = or i32 %2, %gup_flags
  %4 = bitcast i32* %foll_flags to i8*
  %conv22 = zext i32 %3 to i64
  %tobool85.not = icmp eq %struct.page** %pages, null
  %page_mask88 = getelementptr inbounds %struct.follow_page_context, %struct.follow_page_context* %ctx, i64 0, i32 1
  %tobool90.not = icmp eq %struct.vm_area_struct** %vmas, null
  br label %do.body

do.body:                                          ; preds = %cleanup, %if.end
  %vma.0 = phi %struct.vm_area_struct* [ null, %if.end ], [ %vma.1, %cleanup ]
  %nr_pages.addr.0 = phi i64 [ %nr_pages, %if.end ], [ %sub, %cleanup ]
  %start.addr.0 = phi i64 [ %and, %if.end ], [ %add108, %cleanup ]
  %i.0 = phi i64 [ 0, %if.end ], [ %add106, %cleanup ]
  %ret.0 = phi i64 [ 0, %if.end ], [ %ret.4, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  store i32 %3, i32* %foll_flags, align 4
  %tobool5.not = icmp eq %struct.vm_area_struct* %vma.0, null
  br i1 %tobool5.not, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.0, i64 0, i32 1
  %5 = load i64, i64* %vm_end, align 8
  %cmp.not = icmp ult i64 %start.addr.0, %5
  br i1 %cmp.not, label %if.end52, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %do.body
  %call7 = call %struct.vm_area_struct* @find_extend_vma(%struct.mm_struct* noundef %mm, i64 noundef %start.addr.0) #12
  %cond = icmp eq %struct.vm_area_struct* %call7, null
  br i1 %cond, label %cleanup.thread, label %if.end21

if.end21:                                         ; preds = %if.then6
  %call23 = call fastcc i32 @check_vma_flags(%struct.vm_area_struct* noundef nonnull %call7, i64 noundef %conv22) #11
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end52, label %if.then26

if.then26:                                        ; preds = %if.end21
  %conv24 = sext i32 %call23 to i64
  br label %cleanup.thread

if.end52:                                         ; preds = %if.end21, %lor.lhs.false
  %vma.1 = phi %struct.vm_area_struct* [ %vma.0, %lor.lhs.false ], [ %call7, %if.end21 ]
  %ret.1 = phi i64 [ %ret.0, %lor.lhs.false ], [ 0, %if.end21 ]
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %7 = inttoptr i64 %6 to %struct.task_struct*
  br label %retry

retry:                                            ; preds = %if.then62, %if.end52
  %ret.2 = phi i64 [ %ret.1, %if.end52 ], [ %conv64, %if.then62 ]
  %call54 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %7) #11
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %cleanup.thread

if.end57:                                         ; preds = %retry
  call fastcc void @_cond_resched() #11
  %8 = load i32, i32* %foll_flags, align 4
  %call60 = call fastcc %struct.page* @follow_page_mask(%struct.vm_area_struct* noundef nonnull %vma.1, i64 noundef %start.addr.0, i32 noundef %8, %struct.follow_page_context* noundef nonnull %ctx) #11
  %tobool61.not = icmp eq %struct.page* %call60, null
  br i1 %tobool61.not, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end57
  %call63 = call fastcc i32 @faultin_page(%struct.vm_area_struct* noundef nonnull %vma.1, i64 noundef %start.addr.0, i32* noundef nonnull %foll_flags, i32* noundef %locked) #11
  %conv64 = sext i32 %call63 to i64
  switch i64 %conv64, label %do.body68 [
    i64 0, label %retry
    i64 -16, label %cleanup.thread.loopexit251
    i64 -14, label %cleanup.thread
    i64 -12, label %cleanup.thread
    i64 -133, label %cleanup.thread
    i64 -2, label %next_page
  ]

do.body68:                                        ; preds = %if.then62
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1172; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !17
  unreachable

if.else:                                          ; preds = %if.end57
  %9 = bitcast %struct.page* %call60 to i8*
  %call74 = call fastcc i64 @PTR_ERR(i8* noundef nonnull %9) #11
  %cmp75 = icmp eq i64 %call74, -17
  br i1 %cmp75, label %next_page, label %if.else78

if.else78:                                        ; preds = %if.else
  %call79 = call fastcc i1 @IS_ERR(i8* noundef nonnull %9) #11
  br i1 %call79, label %cleanup.thread, label %if.end84

if.end84:                                         ; preds = %if.else78
  br i1 %tobool85.not, label %next_page, label %if.then86

if.then86:                                        ; preds = %if.end84
  %arrayidx87 = getelementptr %struct.page*, %struct.page** %pages, i64 %i.0
  store %struct.page* %call60, %struct.page** %arrayidx87, align 8
  call void @flush_dcache_page(%struct.page* noundef nonnull %call60) #12
  store i32 0, i32* %page_mask88, align 8
  br label %next_page

next_page:                                        ; preds = %if.then62, %if.end84, %if.then86, %if.else
  %ret.4 = phi i64 [ %ret.2, %if.else ], [ %ret.2, %if.then86 ], [ %ret.2, %if.end84 ], [ %conv64, %if.then62 ]
  br i1 %tobool90.not, label %next_page.cleanup_crit_edge, label %if.then91

next_page.cleanup_crit_edge:                      ; preds = %next_page
  %.pre = load i32, i32* %page_mask88, align 8
  br label %cleanup

if.then91:                                        ; preds = %next_page
  %arrayidx92 = getelementptr %struct.vm_area_struct*, %struct.vm_area_struct** %vmas, i64 %i.0
  store %struct.vm_area_struct* %vma.1, %struct.vm_area_struct** %arrayidx92, align 8
  store i32 0, i32* %page_mask88, align 8
  br label %cleanup

cleanup.thread.loopexit251:                       ; preds = %if.then62
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then6, %if.else78, %retry, %if.then62, %if.then62, %if.then62, %cleanup.thread.loopexit251, %if.then26
  %ret.5.ph = phi i64 [ %conv24, %if.then26 ], [ 0, %cleanup.thread.loopexit251 ], [ -4, %retry ], [ %conv64, %if.then62 ], [ %conv64, %if.then62 ], [ %conv64, %if.then62 ], [ %call74, %if.else78 ], [ -14, %if.then6 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  br label %out

cleanup:                                          ; preds = %next_page.cleanup_crit_edge, %if.then91
  %10 = phi i32 [ %.pre, %next_page.cleanup_crit_edge ], [ 0, %if.then91 ]
  %shr = lshr i64 %start.addr.0, 12
  %11 = trunc i64 %shr to i32
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %conv98 = add i32 %13, 1
  %conv99 = zext i32 %conv98 to i64
  %cmp100 = icmp ult i64 %nr_pages.addr.0, %conv99
  %conv103 = trunc i64 %nr_pages.addr.0 to i32
  %spec.select174 = select i1 %cmp100, i32 %conv103, i32 %conv98
  %conv105 = zext i32 %spec.select174 to i64
  %add106 = add i64 %i.0, %conv105
  %mul = shl nuw nsw i64 %conv105, 12
  %add108 = add i64 %mul, %start.addr.0
  %sub = sub i64 %nr_pages.addr.0, %conv105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  %tobool113.not = icmp eq i64 %sub, 0
  br i1 %tobool113.not, label %out, label %do.body

out:                                              ; preds = %cleanup, %cleanup.thread
  %ret.5186 = phi i64 [ %ret.5.ph, %cleanup.thread ], [ %ret.4, %cleanup ]
  %i.1185 = phi i64 [ %i.0, %cleanup.thread ], [ %add106, %cleanup ]
  %pgmap = getelementptr inbounds %struct.follow_page_context, %struct.follow_page_context* %ctx, i64 0, i32 0
  %14 = load %struct.dev_pagemap*, %struct.dev_pagemap** %pgmap, align 8
  %tobool115.not = icmp eq %struct.dev_pagemap* %14, null
  br i1 %tobool115.not, label %if.end118, label %if.then116

if.then116:                                       ; preds = %out
  call fastcc void @put_dev_pagemap(%struct.dev_pagemap* noundef nonnull %14) #11
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %out
  %tobool119.not = icmp eq i64 %i.1185, 0
  %cond123 = select i1 %tobool119.not, i64 %ret.5186, i64 %i.1185
  br label %cleanup124

cleanup124:                                       ; preds = %entry, %if.end118
  %retval.0 = phi i64 [ %cond123, %if.end118 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #13
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @faultin_vma_page_range(%struct.vm_area_struct* noundef %vma, i64 noundef %start, i64 noundef %end, i1 noundef %write, i32* noundef %locked) local_unnamed_addr #0 {
entry:
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %spec.select = select i1 %write, i32 4419, i32 4418
  %1 = zext i32 %spec.select to i64
  %call = call fastcc i32 @check_vma_flags(%struct.vm_area_struct* noundef %vma, i64 noundef %1) #11
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %entry
  %sub = sub i64 %end, %start
  %div = lshr i64 %sub, 12
  %call4 = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %0, i64 noundef %start, i64 noundef %div, i32 noundef %spec.select, %struct.page** noundef null, %struct.vm_area_struct** noundef null, i32* noundef %locked) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  %retval.0 = phi i64 [ %call4, %if.end3 ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_vma_flags(%struct.vm_area_struct* noundef %vma, i64 noundef %gup_flags) unnamed_addr #0 {
entry:
  %vm_flags1 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %0 = load i64, i64* %vm_flags1, align 8
  %and4 = and i64 %0, 17408
  %tobool.not = icmp eq i64 %and4, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and5 = and i64 %gup_flags, 32768
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = call fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* noundef %vma) #11
  br i1 %call, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end, %land.lhs.true
  %call16 = call i1 @vma_is_secretmem(%struct.vm_area_struct* noundef %vma) #12
  br i1 %call16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end15
  %conv69 = and i64 %gup_flags, 1
  %tobool19.not = icmp eq i64 %conv69, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  %and21 = and i64 %0, 2
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end44

if.then23:                                        ; preds = %if.then20
  %and24 = and i64 %gup_flags, 16
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.then23
  %call28 = call fastcc i1 @is_cow_mapping(i64 noundef %0) #11
  br i1 %call28, label %if.end44, label %cleanup

if.else:                                          ; preds = %if.end18
  %and32 = and i64 %0, 1
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end44

if.then34:                                        ; preds = %if.else
  %and35 = and i64 %gup_flags, 16
  %tobool36.not = icmp eq i64 %and35, 0
  %and39 = and i64 %0, 16
  %tobool40.not = icmp eq i64 %and39, 0
  %or.cond = select i1 %tobool36.not, i1 true, i1 %tobool40.not
  br i1 %or.cond, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.then34, %if.else, %if.then20, %if.end27
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end27, %if.then23, %if.end15, %land.lhs.true, %entry, %if.end44
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -14, %entry ], [ -14, %land.lhs.true ], [ -14, %if.end15 ], [ -14, %if.then23 ], [ -14, %if.end27 ], [ -14, %if.then34 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__mm_populate(i64 noundef %start, i64 noundef %len, i32 noundef %ignore_errors) local_unnamed_addr #0 {
entry:
  %locked = alloca i32, align 4
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast i32* %locked to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  store i32 0, i32* %locked, align 4
  %add = add i64 %len, %start
  %cmp62 = icmp ugt i64 %add, %start
  br i1 %cmp62, label %for.body.lr.ph, label %if.end30

for.body.lr.ph:                                   ; preds = %entry
  %tobool23.not = icmp eq i32 %ignore_errors, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ 0, %for.body.lr.ph ], [ %.pre, %for.inc.for.body_crit_edge ]
  %nstart.064 = phi i64 [ %start, %for.body.lr.ph ], [ %nend.0, %for.inc.for.body_crit_edge ]
  %vma.063 = phi %struct.vm_area_struct* [ null, %for.body.lr.ph ], [ %vma.1, %for.inc.for.body_crit_edge ]
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, i32* %locked, align 4
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %2) #11
  %call2 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %2, i64 noundef %nstart.064) #12
  br label %if.end5

if.else:                                          ; preds = %for.body
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.063, i64 0, i32 1
  %5 = load i64, i64* %vm_end, align 8
  %cmp3.not = icmp ult i64 %nstart.064, %5
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.else
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.063, i64 0, i32 2
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4, %if.then
  %vma.1 = phi %struct.vm_area_struct* [ %6, %if.then4 ], [ %vma.063, %if.else ], [ %call2, %if.then ]
  %tobool6.not = icmp eq %struct.vm_area_struct* %vma.1, null
  br i1 %tobool6.not, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.1, i64 0, i32 0
  %7 = load i64, i64* %vm_start, align 8
  %cmp7.not = icmp ult i64 %7, %add
  br i1 %cmp7.not, label %if.end9, label %for.end

if.end9:                                          ; preds = %lor.lhs.false
  %vm_end10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.1, i64 0, i32 1
  %8 = load i64, i64* %vm_end10, align 8
  %cmp11 = icmp ult i64 %add, %8
  %cond = select i1 %cmp11, i64 %add, i64 %8
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.1, i64 0, i32 8
  %9 = load i64, i64* %vm_flags, align 8
  %and = and i64 %9, 17408
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %if.end14, label %for.inc

if.end14:                                         ; preds = %if.end9
  %cmp16 = icmp ult i64 %nstart.064, %7
  %spec.select = select i1 %cmp16, i64 %7, i64 %nstart.064
  %call20 = call i64 @populate_vma_page_range(%struct.vm_area_struct* noundef nonnull %vma.1, i64 noundef %spec.select, i64 noundef %cond, i32* noundef nonnull %locked) #11
  %cmp21 = icmp slt i64 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end14
  br i1 %tobool23.not, label %for.end, label %for.inc

if.end26:                                         ; preds = %if.end14
  %mul = shl i64 %call20, 12
  %add27 = add i64 %mul, %spec.select
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %if.end9, %if.end26
  %nend.0 = phi i64 [ %cond, %if.end9 ], [ %add27, %if.end26 ], [ %cond, %if.then22 ]
  %cmp = icmp ult i64 %nend.0, %add
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i32, i32* %locked, align 4
  br label %for.body

for.end:                                          ; preds = %for.inc, %lor.lhs.false, %if.end5, %if.then22
  %ret.2.ph = phi i64 [ 0, %for.inc ], [ 0, %lor.lhs.false ], [ 0, %if.end5 ], [ %call20, %if.then22 ]
  %.pre68 = load i32, i32* %locked, align 4
  %phi.cmp = icmp eq i32 %.pre68, 0
  br i1 %phi.cmp, label %if.end30, label %if.then29

if.then29:                                        ; preds = %for.end
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #11
  br label %if.end30

if.end30:                                         ; preds = %entry, %if.then29, %for.end
  %ret.270 = phi i64 [ %ret.2.ph, %if.then29 ], [ %ret.2.ph, %for.end ], [ 0, %entry ]
  %conv = trunc i64 %ret.270 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @get_dump_page(i64 noundef %addr) local_unnamed_addr #0 {
entry:
  %page = alloca %struct.page*, align 8
  %locked = alloca i32, align 4
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast %struct.page** %page to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #13
  store %struct.page* null, %struct.page** %page, align 8, !annotation !12
  %4 = bitcast i32* %locked to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13
  store i32 1, i32* %locked, align 4
  %call2 = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %2) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end30.i, label %cleanup

if.end30.i:                                       ; preds = %entry
  %call316.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %addr, i64 noundef 1, i32 noundef 28, %struct.page** noundef nonnull %page, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end200.i, %if.end30.i
  %call323.i = phi i64 [ %call316.i, %if.end30.i ], [ %call.i, %if.end200.i ]
  %lock_dropped.0.off0322.i = phi i1 [ false, %if.end30.i ], [ true, %if.end200.i ]
  %pages_done.0321.i = phi i64 [ 0, %if.end30.i ], [ %inc.i, %if.end200.i ]
  %start.addr.0320.i = phi i64 [ %addr, %if.end30.i ], [ %add211.i, %if.end200.i ]
  %pages.addr.0319.i = phi %struct.page** [ %page, %if.end30.i ], [ %spec.select282.i, %if.end200.i ]
  %nr_pages.addr.0317.i = phi i64 [ 1, %if.end30.i ], [ %dec.i, %if.end200.i ]
  %5 = load i32, i32* %locked, align 4
  %tobool43.not.i = icmp eq i32 %5, 0
  br i1 %tobool43.not.i, label %do.body45.i, label %if.end85.i

do.body45.i:                                      ; preds = %if.end42.i
  %cmp46.i = icmp slt i64 %call323.i, 0
  br i1 %cmp46.i, label %do.body56.i, label %do.body65.i, !prof !9

do.body56.i:                                      ; preds = %do.body45.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1351; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !18
  unreachable

do.body65.i:                                      ; preds = %do.body45.i
  %cmp66.not.i = icmp ugt i64 %nr_pages.addr.0317.i, %call323.i
  br i1 %cmp66.not.i, label %if.end85.i, label %do.body76.i, !prof !11

do.body76.i:                                      ; preds = %do.body65.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1352; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !19
  unreachable

if.end85.i:                                       ; preds = %do.body65.i, %if.end42.i
  %cmp86.i = icmp sgt i64 %call323.i, 0
  br i1 %cmp86.i, label %if.then88.i, label %if.end92.i

if.then88.i:                                      ; preds = %if.end85.i
  %sub.i = sub i64 %nr_pages.addr.0317.i, %call323.i
  %add.i = add i64 %pages_done.0321.i, %call323.i
  %tobool89.not.i = icmp eq i64 %sub.i, 0
  br i1 %tobool89.not.i, label %for.end.i, label %if.end92.i

if.end92.i:                                       ; preds = %if.then88.i, %if.end85.i
  %nr_pages.addr.1.i = phi i64 [ %sub.i, %if.then88.i ], [ %nr_pages.addr.0317.i, %if.end85.i ]
  %pages_done.1.i = phi i64 [ %add.i, %if.then88.i ], [ %pages_done.0321.i, %if.end85.i ]
  br i1 %tobool43.not.i, label %if.end98.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.end92.i
  %tobool95.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select278.i = select i1 %tobool95.not.i, i64 %call323.i, i64 %pages_done.1.i
  br i1 %lock_dropped.0.off0322.i, label %land.lhs.true214.i, label %if.then5

if.end98.i:                                       ; preds = %if.end92.i
  %tobool99.not.i = icmp eq %struct.page** %pages.addr.0319.i, null
  %add.ptr.i = getelementptr %struct.page*, %struct.page** %pages.addr.0319.i, i64 %call323.i
  %spec.select279.i = select i1 %tobool99.not.i, %struct.page** null, %struct.page** %add.ptr.i, !prof !9
  %shl.i = shl i64 %call323.i, 12
  %add109.i = add i64 %start.addr.0320.i, %shl.i
  br label %retry.i

retry.i:                                          ; preds = %do.body150.i, %if.end98.i
  %call111.i = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #12
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end117.i, label %if.then113.i

if.then113.i:                                     ; preds = %retry.i
  %tobool114.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.store.select.i = select i1 %tobool114.not.i, i64 -4, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end117.i:                                      ; preds = %retry.i
  %call118.i = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %2) #12
  %tobool120.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool120.not.i, label %if.end145.i, label %do.body122.i

do.body122.i:                                     ; preds = %if.end117.i
  %cmp123.i = icmp sgt i32 %call118.i, 0
  br i1 %cmp123.i, label %do.body133.i, label %do.end141.i, !prof !9

do.body133.i:                                     ; preds = %do.body122.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1396; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !20
  unreachable

do.end141.i:                                      ; preds = %do.body122.i
  %conv119.le.i69 = zext i32 %call118.i to i64
  %tobool142.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select280.i = select i1 %tobool142.not.i, i64 %conv119.le.i69, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end145.i:                                      ; preds = %if.end117.i
  store i32 1, i32* %locked, align 4
  %call147.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %add109.i, i64 noundef 1, i32 noundef 2076, %struct.page** noundef %spec.select279.i, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  %6 = load i32, i32* %locked, align 4
  %tobool148.not.i = icmp eq i32 %6, 0
  br i1 %tobool148.not.i, label %do.body150.i, label %if.end170.i

do.body150.i:                                     ; preds = %if.end145.i
  %cmp151.not.i = icmp eq i64 %call147.i, 0
  br i1 %cmp151.not.i, label %retry.i, label %do.body161.i, !prof !11

do.body161.i:                                     ; preds = %do.body150.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1407; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !21
  unreachable

if.end170.i:                                      ; preds = %if.end145.i
  %cmp171.not.i = icmp eq i64 %call147.i, 1
  br i1 %cmp171.not.i, label %if.end197.i, label %do.body174.i

do.body174.i:                                     ; preds = %if.end170.i
  %cmp175.i = icmp sgt i64 %call147.i, 1
  br i1 %cmp175.i, label %do.body185.i, label %do.end193.i, !prof !9

do.body185.i:                                     ; preds = %do.body174.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1411; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !22
  unreachable

do.end193.i:                                      ; preds = %do.body174.i
  %tobool194.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select281.i = select i1 %tobool194.not.i, i64 %call147.i, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end197.i:                                      ; preds = %if.end170.i
  %dec.i = add i64 %nr_pages.addr.1.i, -1
  %inc.i = add i64 %pages_done.1.i, 1
  %tobool198.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool198.not.i, label %land.lhs.true214.i, label %if.end200.i

if.end200.i:                                      ; preds = %if.end197.i
  %tobool201.not.i = icmp eq %struct.page** %spec.select279.i, null
  %add.ptr.i.sroa.gep = getelementptr %struct.page*, %struct.page** %add.ptr.i, i64 1
  %spec.select279.i.sroa.sel = select i1 %tobool99.not.i, %struct.page** inttoptr (i64 8 to %struct.page**), %struct.page** %add.ptr.i.sroa.gep
  %spec.select282.i = select i1 %tobool201.not.i, %struct.page** null, %struct.page** %spec.select279.i.sroa.sel, !prof !9
  %add211.i = add i64 %add109.i, 4096
  %call.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %add211.i, i64 noundef %dec.i, i32 noundef 28, %struct.page** noundef %spec.select282.i, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  br label %if.end42.i

for.end.i:                                        ; preds = %if.then88.i
  br i1 %lock_dropped.0.off0322.i, label %land.lhs.true214.i, label %__get_user_pages_locked.exit

land.lhs.true214.i:                               ; preds = %if.end197.i, %for.end.i, %do.end193.i, %do.end141.i, %if.then113.i, %if.then94.i
  %pages_done.2285.i = phi i64 [ %add.i, %for.end.i ], [ %spec.select278.i, %if.then94.i ], [ %spec.select281.i, %do.end193.i ], [ %spec.select280.i, %do.end141.i ], [ %spec.store.select.i, %if.then113.i ], [ %inc.i, %if.end197.i ]
  %7 = load i32, i32* %locked, align 4
  %tobool215.not.i = icmp eq i32 %7, 0
  br i1 %tobool215.not.i, label %if.end6, label %if.then216.i

if.then216.i:                                     ; preds = %land.lhs.true214.i
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #12
  br label %if.end6

__get_user_pages_locked.exit:                     ; preds = %for.end.i
  br i1 %tobool43.not.i, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then94.i, %__get_user_pages_locked.exit
  %retval.0.i.ph71 = phi i64 [ %add.i, %__get_user_pages_locked.exit ], [ %spec.select278.i, %if.then94.i ]
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then216.i, %land.lhs.true214.i, %if.then5, %__get_user_pages_locked.exit
  %conv18.in = phi i64 [ %retval.0.i.ph71, %if.then5 ], [ %add.i, %__get_user_pages_locked.exit ], [ %pages_done.2285.i, %land.lhs.true214.i ], [ %pages_done.2285.i, %if.then216.i ]
  %conv18 = trunc i64 %conv18.in to i32
  %cmp = icmp eq i32 %conv18, 1
  %8 = load %struct.page*, %struct.page** %page, align 8
  %cond = select i1 %cmp, %struct.page* %8, %struct.page* null
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi %struct.page* [ %cond, %if.end6 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #13
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_read_killable(%struct.rw_semaphore* noundef %mmap_lock) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @get_user_pages_remote(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32* noundef %locked) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @is_valid_gup_flags(i32 noundef %gup_flags) #11
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @__get_user_pages_remote(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32* noundef %locked) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @is_valid_gup_flags(i32 noundef %gup_flags) unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1814; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !23
  br label %return

if.end17:                                         ; preds = %entry
  %and19 = and i32 %gup_flags, 65536
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %return, label %if.then33, !prof !11

if.then33:                                        ; preds = %if.end17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1821; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !24
  br label %return

return:                                           ; preds = %if.end17, %if.then33, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then33 ], [ true, %if.end17 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__get_user_pages_remote(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32* noundef %locked) unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq i32* %locked, null
  br i1 %tobool1.not, label %if.end19, label %if.then9, !prof !11

if.then9:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1841; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !25
  br label %return

if.end19:                                         ; preds = %if.then
  %or20 = or i32 %gup_flags, 8194
  %call = call fastcc i64 @__gup_longterm_locked(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32 noundef %or20) #11
  br label %return

if.end21:                                         ; preds = %entry
  %or23 = or i32 %gup_flags, 8194
  %tobool.not.i = icmp eq i32* %locked, null
  br i1 %tobool.not.i, label %if.end30.i, label %do.body.i

do.body.i:                                        ; preds = %if.end21
  %tobool1.not.i = icmp eq %struct.vm_area_struct** %vmas, null
  br i1 %tobool1.not.i, label %do.body11.i, label %do.body5.i, !prof !11

do.body5.i:                                       ; preds = %do.body.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1320; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !26
  unreachable

do.body11.i:                                      ; preds = %do.body.i
  %0 = load i32, i32* %locked, align 4
  %cmp.not.i = icmp eq i32 %0, 1
  br i1 %cmp.not.i, label %if.end30.i, label %do.body21.i, !prof !11

do.body21.i:                                      ; preds = %do.body11.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1322; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !27
  unreachable

if.end30.i:                                       ; preds = %do.body11.i, %if.end21
  %and.i = and i32 %gup_flags, 262144
  %tobool31.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool31.not.i, label %if.end34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i
  %flags33.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  call fastcc void @mm_set_has_pinned_flag(i64* noundef %flags33.i) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end30.i
  %tobool35.not.i = icmp eq %struct.page** %pages, null
  %or.i = or i32 %gup_flags, 8198
  %spec.select.i = select i1 %tobool31.not.i, i32 %or.i, i32 %or23
  %flags.addr.0.i = select i1 %tobool35.not.i, i32 %or23, i32 %spec.select.i
  %call316.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %flags.addr.0.i, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32* noundef %locked) #12
  br i1 %tobool.not.i, label %return, label %if.end42.lr.ph.i

if.end42.lr.ph.i:                                 ; preds = %if.end34.i
  %or146.i = or i32 %flags.addr.0.i, 2048
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end200.i, %if.end42.lr.ph.i
  %call323.i = phi i64 [ %call316.i, %if.end42.lr.ph.i ], [ %call.i, %if.end200.i ]
  %lock_dropped.0.off0322.i = phi i1 [ false, %if.end42.lr.ph.i ], [ true, %if.end200.i ]
  %pages_done.0321.i = phi i64 [ 0, %if.end42.lr.ph.i ], [ %inc.i, %if.end200.i ]
  %start.addr.0320.i = phi i64 [ %start, %if.end42.lr.ph.i ], [ %add211.i, %if.end200.i ]
  %pages.addr.0319.i = phi %struct.page** [ %pages, %if.end42.lr.ph.i ], [ %spec.select282.i, %if.end200.i ]
  %nr_pages.addr.0317.i = phi i64 [ %nr_pages, %if.end42.lr.ph.i ], [ %dec.i, %if.end200.i ]
  %1 = load i32, i32* %locked, align 4
  %tobool43.not.i = icmp eq i32 %1, 0
  br i1 %tobool43.not.i, label %do.body45.i, label %if.end85.i

do.body45.i:                                      ; preds = %if.end42.i
  %cmp46.i = icmp slt i64 %call323.i, 0
  br i1 %cmp46.i, label %do.body56.i, label %do.body65.i, !prof !9

do.body56.i:                                      ; preds = %do.body45.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1351; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !18
  unreachable

do.body65.i:                                      ; preds = %do.body45.i
  %cmp66.not.i = icmp ugt i64 %nr_pages.addr.0317.i, %call323.i
  br i1 %cmp66.not.i, label %if.end85.i, label %do.body76.i, !prof !11

do.body76.i:                                      ; preds = %do.body65.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1352; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !19
  unreachable

if.end85.i:                                       ; preds = %do.body65.i, %if.end42.i
  %cmp86.i = icmp sgt i64 %call323.i, 0
  br i1 %cmp86.i, label %if.then88.i, label %if.end92.i

if.then88.i:                                      ; preds = %if.end85.i
  %sub.i = sub i64 %nr_pages.addr.0317.i, %call323.i
  %add.i = add i64 %pages_done.0321.i, %call323.i
  %tobool89.not.i = icmp eq i64 %sub.i, 0
  br i1 %tobool89.not.i, label %for.end.i, label %if.end92.i

if.end92.i:                                       ; preds = %if.then88.i, %if.end85.i
  %nr_pages.addr.1.i = phi i64 [ %sub.i, %if.then88.i ], [ %nr_pages.addr.0317.i, %if.end85.i ]
  %pages_done.1.i = phi i64 [ %add.i, %if.then88.i ], [ %pages_done.0321.i, %if.end85.i ]
  br i1 %tobool43.not.i, label %if.end98.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.end92.i
  %tobool95.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select278.i = select i1 %tobool95.not.i, i64 %call323.i, i64 %pages_done.1.i
  br i1 %lock_dropped.0.off0322.i, label %land.lhs.true214.i, label %return

if.end98.i:                                       ; preds = %if.end92.i
  %tobool99.not.i = icmp eq %struct.page** %pages.addr.0319.i, null
  %add.ptr.i = getelementptr %struct.page*, %struct.page** %pages.addr.0319.i, i64 %call323.i
  %spec.select279.i = select i1 %tobool99.not.i, %struct.page** null, %struct.page** %add.ptr.i, !prof !9
  %shl.i = shl i64 %call323.i, 12
  %add109.i = add i64 %start.addr.0320.i, %shl.i
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %3 = inttoptr i64 %2 to %struct.task_struct*
  br label %retry.i

retry.i:                                          ; preds = %do.body150.i, %if.end98.i
  %call111.i = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %3) #12
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end117.i, label %if.then113.i

if.then113.i:                                     ; preds = %retry.i
  %tobool114.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.store.select.i = select i1 %tobool114.not.i, i64 -4, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end117.i:                                      ; preds = %retry.i
  %call118.i = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %mm) #12
  %tobool120.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool120.not.i, label %if.end145.i, label %do.body122.i

do.body122.i:                                     ; preds = %if.end117.i
  %cmp123.i = icmp sgt i32 %call118.i, 0
  br i1 %cmp123.i, label %do.body133.i, label %do.end141.i, !prof !9

do.body133.i:                                     ; preds = %do.body122.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1396; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !20
  unreachable

do.end141.i:                                      ; preds = %do.body122.i
  %conv119.le.i = sext i32 %call118.i to i64
  %tobool142.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select280.i = select i1 %tobool142.not.i, i64 %conv119.le.i, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end145.i:                                      ; preds = %if.end117.i
  store i32 1, i32* %locked, align 4
  %call147.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %mm, i64 noundef %add109.i, i64 noundef 1, i32 noundef %or146.i, %struct.page** noundef %spec.select279.i, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  %4 = load i32, i32* %locked, align 4
  %tobool148.not.i = icmp eq i32 %4, 0
  br i1 %tobool148.not.i, label %do.body150.i, label %if.end170.i

do.body150.i:                                     ; preds = %if.end145.i
  %cmp151.not.i = icmp eq i64 %call147.i, 0
  br i1 %cmp151.not.i, label %retry.i, label %do.body161.i, !prof !11

do.body161.i:                                     ; preds = %do.body150.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1407; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !21
  unreachable

if.end170.i:                                      ; preds = %if.end145.i
  %cmp171.not.i = icmp eq i64 %call147.i, 1
  br i1 %cmp171.not.i, label %if.end197.i, label %do.body174.i

do.body174.i:                                     ; preds = %if.end170.i
  %cmp175.i = icmp sgt i64 %call147.i, 1
  br i1 %cmp175.i, label %do.body185.i, label %do.end193.i, !prof !9

do.body185.i:                                     ; preds = %do.body174.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1411; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !22
  unreachable

do.end193.i:                                      ; preds = %do.body174.i
  %tobool194.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select281.i = select i1 %tobool194.not.i, i64 %call147.i, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end197.i:                                      ; preds = %if.end170.i
  %dec.i = add i64 %nr_pages.addr.1.i, -1
  %inc.i = add i64 %pages_done.1.i, 1
  %tobool198.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool198.not.i, label %land.lhs.true214.i, label %if.end200.i

if.end200.i:                                      ; preds = %if.end197.i
  %tobool201.not.i = icmp eq %struct.page** %spec.select279.i, null
  %incdec.ptr.i = getelementptr %struct.page*, %struct.page** %spec.select279.i, i64 1
  %spec.select282.i = select i1 %tobool201.not.i, %struct.page** null, %struct.page** %incdec.ptr.i, !prof !9
  %add211.i = add i64 %add109.i, 4096
  %call.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %mm, i64 noundef %add211.i, i64 noundef %dec.i, i32 noundef %flags.addr.0.i, %struct.page** noundef %spec.select282.i, %struct.vm_area_struct** noundef %vmas, i32* noundef nonnull %locked) #12
  br label %if.end42.i

for.end.i:                                        ; preds = %if.then88.i
  br i1 %lock_dropped.0.off0322.i, label %land.lhs.true214.i, label %return

land.lhs.true214.i:                               ; preds = %if.end197.i, %for.end.i, %do.end193.i, %do.end141.i, %if.then113.i, %if.then94.i
  %pages_done.2285.i = phi i64 [ %add.i, %for.end.i ], [ %spec.select278.i, %if.then94.i ], [ %spec.select281.i, %do.end193.i ], [ %spec.select280.i, %do.end141.i ], [ %spec.store.select.i, %if.then113.i ], [ %inc.i, %if.end197.i ]
  %5 = load i32, i32* %locked, align 4
  %tobool215.not.i = icmp eq i32 %5, 0
  br i1 %tobool215.not.i, label %return, label %if.then216.i

if.then216.i:                                     ; preds = %land.lhs.true214.i
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) #12
  store i32 0, i32* %locked, align 4
  br label %return

return:                                           ; preds = %if.then216.i, %land.lhs.true214.i, %for.end.i, %if.then94.i, %if.end34.i, %if.then9, %if.end19
  %retval.0 = phi i64 [ %call, %if.end19 ], [ -22, %if.then9 ], [ %pages_done.2285.i, %if.then216.i ], [ %pages_done.2285.i, %land.lhs.true214.i ], [ %add.i, %for.end.i ], [ %spec.select278.i, %if.then94.i ], [ %call316.i, %if.end34.i ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @get_user_pages(i64 noundef %start, i64 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @is_valid_gup_flags(i32 noundef %gup_flags) #11
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %or = or i32 %gup_flags, 2
  %call2 = call fastcc i64 @__gup_longterm_locked(%struct.mm_struct* noundef %2, i64 noundef %start, i64 noundef %nr_pages, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32 noundef %or) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call2, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__gup_longterm_locked(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32 noundef %gup_flags) unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %and.i = and i32 %gup_flags, 262144
  %tobool31.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool31.not.i, label %__get_user_pages_locked.exit, label %if.then32.i

if.then32.i:                                      ; preds = %if.then
  %flags33.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  call fastcc void @mm_set_has_pinned_flag(i64* noundef %flags33.i) #12
  br label %__get_user_pages_locked.exit

__get_user_pages_locked.exit:                     ; preds = %if.then, %if.then32.i
  %tobool35.not.i = icmp eq %struct.page** %pages, null
  %or.i = or i32 %gup_flags, 4
  %spec.select.i = select i1 %tobool31.not.i, i32 %or.i, i32 %gup_flags
  %flags.addr.0.i = select i1 %tobool35.not.i, i32 %gup_flags, i32 %spec.select.i
  %call316.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %flags.addr.0.i, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @memalloc_pin_save() #11
  %and.i22 = and i32 %gup_flags, 262144
  %tobool31.not.i23 = icmp eq i32 %and.i22, 0
  br i1 %tobool31.not.i23, label %__get_user_pages_locked.exit31, label %if.then32.i25

if.then32.i25:                                    ; preds = %if.end
  %flags33.i24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  call fastcc void @mm_set_has_pinned_flag(i64* noundef %flags33.i24) #12
  br label %__get_user_pages_locked.exit31

__get_user_pages_locked.exit31:                   ; preds = %if.end, %if.then32.i25
  %tobool35.not.i26 = icmp eq %struct.page** %pages, null
  %or.i27 = or i32 %gup_flags, 4
  %spec.select.i28 = select i1 %tobool31.not.i23, i32 %or.i27, i32 %gup_flags
  %flags.addr.0.i29 = select i1 %tobool35.not.i26, i32 %gup_flags, i32 %spec.select.i28
  %call316.i30 = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %flags.addr.0.i29, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32* noundef null) #12
  call fastcc void @memalloc_pin_restore(i32 noundef %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %__get_user_pages_locked.exit31, %__get_user_pages_locked.exit
  %retval.0 = phi i64 [ %call316.i30, %__get_user_pages_locked.exit31 ], [ %call316.i, %__get_user_pages_locked.exit ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @get_user_pages_locked(i64 noundef %start, i64 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages, i32* noundef %locked) local_unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 2020; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !28
  br label %return

if.end17:                                         ; preds = %entry
  %and19 = and i32 %gup_flags, 262144
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end45, label %if.then33, !prof !11

if.then33:                                        ; preds = %if.end17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 2026; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !29
  br label %return

if.end45:                                         ; preds = %if.end17
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool.not.i = icmp eq i32* %locked, null
  br i1 %tobool.not.i, label %if.end34.i, label %do.body.i

do.body.i:                                        ; preds = %if.end45
  %3 = load i32, i32* %locked, align 4
  %cmp.not.i = icmp eq i32 %3, 1
  br i1 %cmp.not.i, label %if.end34.i, label %do.body21.i, !prof !11

do.body21.i:                                      ; preds = %do.body.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1322; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !27
  unreachable

if.end34.i:                                       ; preds = %if.end45, %do.body.i
  %tobool35.not.i = icmp eq %struct.page** %pages, null
  %flags.addr.0.i.v = select i1 %tobool35.not.i, i32 2, i32 6
  %flags.addr.0.i = or i32 %flags.addr.0.i.v, %gup_flags
  %call316.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %flags.addr.0.i, %struct.page** noundef %pages, %struct.vm_area_struct** noundef null, i32* noundef %locked) #12
  br i1 %tobool.not.i, label %return, label %if.end42.lr.ph.i

if.end42.lr.ph.i:                                 ; preds = %if.end34.i
  %or146.i = or i32 %flags.addr.0.i, 2048
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end200.i, %if.end42.lr.ph.i
  %call323.i = phi i64 [ %call316.i, %if.end42.lr.ph.i ], [ %call.i, %if.end200.i ]
  %lock_dropped.0.off0322.i = phi i1 [ false, %if.end42.lr.ph.i ], [ true, %if.end200.i ]
  %pages_done.0321.i = phi i64 [ 0, %if.end42.lr.ph.i ], [ %inc.i, %if.end200.i ]
  %start.addr.0320.i = phi i64 [ %start, %if.end42.lr.ph.i ], [ %add211.i, %if.end200.i ]
  %pages.addr.0319.i = phi %struct.page** [ %pages, %if.end42.lr.ph.i ], [ %spec.select282.i, %if.end200.i ]
  %nr_pages.addr.0317.i = phi i64 [ %nr_pages, %if.end42.lr.ph.i ], [ %dec.i, %if.end200.i ]
  %4 = load i32, i32* %locked, align 4
  %tobool43.not.i = icmp eq i32 %4, 0
  br i1 %tobool43.not.i, label %do.body45.i, label %if.end85.i

do.body45.i:                                      ; preds = %if.end42.i
  %cmp46.i = icmp slt i64 %call323.i, 0
  br i1 %cmp46.i, label %do.body56.i, label %do.body65.i, !prof !9

do.body56.i:                                      ; preds = %do.body45.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1351; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !18
  unreachable

do.body65.i:                                      ; preds = %do.body45.i
  %cmp66.not.i = icmp ugt i64 %nr_pages.addr.0317.i, %call323.i
  br i1 %cmp66.not.i, label %if.end85.i, label %do.body76.i, !prof !11

do.body76.i:                                      ; preds = %do.body65.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1352; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !19
  unreachable

if.end85.i:                                       ; preds = %do.body65.i, %if.end42.i
  %cmp86.i = icmp sgt i64 %call323.i, 0
  br i1 %cmp86.i, label %if.then88.i, label %if.end92.i

if.then88.i:                                      ; preds = %if.end85.i
  %sub.i = sub i64 %nr_pages.addr.0317.i, %call323.i
  %add.i = add i64 %pages_done.0321.i, %call323.i
  %tobool89.not.i = icmp eq i64 %sub.i, 0
  br i1 %tobool89.not.i, label %for.end.i, label %if.end92.i

if.end92.i:                                       ; preds = %if.then88.i, %if.end85.i
  %nr_pages.addr.1.i = phi i64 [ %sub.i, %if.then88.i ], [ %nr_pages.addr.0317.i, %if.end85.i ]
  %pages_done.1.i = phi i64 [ %add.i, %if.then88.i ], [ %pages_done.0321.i, %if.end85.i ]
  br i1 %tobool43.not.i, label %if.end98.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.end92.i
  %tobool95.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select278.i = select i1 %tobool95.not.i, i64 %call323.i, i64 %pages_done.1.i
  br i1 %lock_dropped.0.off0322.i, label %land.lhs.true214.i, label %return

if.end98.i:                                       ; preds = %if.end92.i
  %tobool99.not.i = icmp eq %struct.page** %pages.addr.0319.i, null
  %add.ptr.i = getelementptr %struct.page*, %struct.page** %pages.addr.0319.i, i64 %call323.i
  %spec.select279.i = select i1 %tobool99.not.i, %struct.page** null, %struct.page** %add.ptr.i, !prof !9
  %shl.i = shl i64 %call323.i, 12
  %add109.i = add i64 %start.addr.0320.i, %shl.i
  br label %retry.i

retry.i:                                          ; preds = %do.body150.i, %if.end98.i
  %call111.i = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #12
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end117.i, label %if.then113.i

if.then113.i:                                     ; preds = %retry.i
  %tobool114.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.store.select.i = select i1 %tobool114.not.i, i64 -4, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end117.i:                                      ; preds = %retry.i
  %call118.i = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %2) #12
  %tobool120.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool120.not.i, label %if.end145.i, label %do.body122.i

do.body122.i:                                     ; preds = %if.end117.i
  %cmp123.i = icmp sgt i32 %call118.i, 0
  br i1 %cmp123.i, label %do.body133.i, label %do.end141.i, !prof !9

do.body133.i:                                     ; preds = %do.body122.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1396; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !20
  unreachable

do.end141.i:                                      ; preds = %do.body122.i
  %conv119.le.i = sext i32 %call118.i to i64
  %tobool142.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select280.i = select i1 %tobool142.not.i, i64 %conv119.le.i, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end145.i:                                      ; preds = %if.end117.i
  store i32 1, i32* %locked, align 4
  %call147.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %add109.i, i64 noundef 1, i32 noundef %or146.i, %struct.page** noundef %spec.select279.i, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  %5 = load i32, i32* %locked, align 4
  %tobool148.not.i = icmp eq i32 %5, 0
  br i1 %tobool148.not.i, label %do.body150.i, label %if.end170.i

do.body150.i:                                     ; preds = %if.end145.i
  %cmp151.not.i = icmp eq i64 %call147.i, 0
  br i1 %cmp151.not.i, label %retry.i, label %do.body161.i, !prof !11

do.body161.i:                                     ; preds = %do.body150.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1407; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !21
  unreachable

if.end170.i:                                      ; preds = %if.end145.i
  %cmp171.not.i = icmp eq i64 %call147.i, 1
  br i1 %cmp171.not.i, label %if.end197.i, label %do.body174.i

do.body174.i:                                     ; preds = %if.end170.i
  %cmp175.i = icmp sgt i64 %call147.i, 1
  br i1 %cmp175.i, label %do.body185.i, label %do.end193.i, !prof !9

do.body185.i:                                     ; preds = %do.body174.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1411; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !22
  unreachable

do.end193.i:                                      ; preds = %do.body174.i
  %tobool194.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select281.i = select i1 %tobool194.not.i, i64 %call147.i, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end197.i:                                      ; preds = %if.end170.i
  %dec.i = add i64 %nr_pages.addr.1.i, -1
  %inc.i = add i64 %pages_done.1.i, 1
  %tobool198.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool198.not.i, label %land.lhs.true214.i, label %if.end200.i

if.end200.i:                                      ; preds = %if.end197.i
  %tobool201.not.i = icmp eq %struct.page** %spec.select279.i, null
  %incdec.ptr.i = getelementptr %struct.page*, %struct.page** %spec.select279.i, i64 1
  %spec.select282.i = select i1 %tobool201.not.i, %struct.page** null, %struct.page** %incdec.ptr.i, !prof !9
  %add211.i = add i64 %add109.i, 4096
  %call.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %add211.i, i64 noundef %dec.i, i32 noundef %flags.addr.0.i, %struct.page** noundef %spec.select282.i, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  br label %if.end42.i

for.end.i:                                        ; preds = %if.then88.i
  br i1 %lock_dropped.0.off0322.i, label %land.lhs.true214.i, label %return

land.lhs.true214.i:                               ; preds = %if.end197.i, %for.end.i, %do.end193.i, %do.end141.i, %if.then113.i, %if.then94.i
  %pages_done.2285.i = phi i64 [ %add.i, %for.end.i ], [ %spec.select278.i, %if.then94.i ], [ %spec.select281.i, %do.end193.i ], [ %spec.select280.i, %do.end141.i ], [ %spec.store.select.i, %if.then113.i ], [ %inc.i, %if.end197.i ]
  %6 = load i32, i32* %locked, align 4
  %tobool215.not.i = icmp eq i32 %6, 0
  br i1 %tobool215.not.i, label %return, label %if.then216.i

if.then216.i:                                     ; preds = %land.lhs.true214.i
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #12
  store i32 0, i32* %locked, align 4
  br label %return

return:                                           ; preds = %if.then216.i, %land.lhs.true214.i, %for.end.i, %if.then94.i, %if.end34.i, %if.then33, %if.then
  %retval.0 = phi i64 [ -22, %if.then ], [ -22, %if.then33 ], [ %pages_done.2285.i, %if.then216.i ], [ %pages_done.2285.i, %land.lhs.true214.i ], [ %add.i, %for.end.i ], [ %spec.select278.i, %if.then94.i ], [ %call316.i, %if.end34.i ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @get_user_pages_unlocked(i64 noundef %start, i64 noundef %nr_pages, %struct.page** noundef %pages, i32 noundef %gup_flags) local_unnamed_addr #0 {
entry:
  %locked = alloca i32, align 4
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %3 = bitcast i32* %locked to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13
  store i32 1, i32* %locked, align 4
  %and = and i32 %gup_flags, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 2063; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !30
  br label %cleanup

if.end18:                                         ; preds = %entry
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %2) #11
  %or = or i32 %gup_flags, 2
  %4 = load i32, i32* %locked, align 4
  %cmp.not.i = icmp eq i32 %4, 1
  br i1 %cmp.not.i, label %if.end30.i, label %do.body21.i, !prof !11

do.body21.i:                                      ; preds = %if.end18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1322; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !27
  unreachable

if.end30.i:                                       ; preds = %if.end18
  %and.i = and i32 %gup_flags, 262144
  %tobool31.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool31.not.i, label %if.end34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i
  %flags33.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 43
  call fastcc void @mm_set_has_pinned_flag(i64* noundef %flags33.i) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end30.i
  %tobool35.not.i = icmp eq %struct.page** %pages, null
  %or.i = or i32 %gup_flags, 6
  %spec.select.i = select i1 %tobool31.not.i, i32 %or.i, i32 %or
  %flags.addr.0.i = select i1 %tobool35.not.i, i32 %or, i32 %spec.select.i
  %call316.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %flags.addr.0.i, %struct.page** noundef %pages, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  %or146.i = or i32 %flags.addr.0.i, 2048
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end200.i, %if.end34.i
  %call323.i = phi i64 [ %call316.i, %if.end34.i ], [ %call.i, %if.end200.i ]
  %lock_dropped.0.off0322.i = phi i1 [ false, %if.end34.i ], [ true, %if.end200.i ]
  %pages_done.0321.i = phi i64 [ 0, %if.end34.i ], [ %inc.i, %if.end200.i ]
  %start.addr.0320.i = phi i64 [ %start, %if.end34.i ], [ %add211.i, %if.end200.i ]
  %pages.addr.0319.i = phi %struct.page** [ %pages, %if.end34.i ], [ %spec.select282.i, %if.end200.i ]
  %nr_pages.addr.0317.i = phi i64 [ %nr_pages, %if.end34.i ], [ %dec.i, %if.end200.i ]
  %5 = load i32, i32* %locked, align 4
  %tobool43.not.i = icmp eq i32 %5, 0
  br i1 %tobool43.not.i, label %do.body45.i, label %if.end85.i

do.body45.i:                                      ; preds = %if.end42.i
  %cmp46.i = icmp slt i64 %call323.i, 0
  br i1 %cmp46.i, label %do.body56.i, label %do.body65.i, !prof !9

do.body56.i:                                      ; preds = %do.body45.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1351; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !18
  unreachable

do.body65.i:                                      ; preds = %do.body45.i
  %cmp66.not.i = icmp ugt i64 %nr_pages.addr.0317.i, %call323.i
  br i1 %cmp66.not.i, label %if.end85.i, label %do.body76.i, !prof !11

do.body76.i:                                      ; preds = %do.body65.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1352; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !19
  unreachable

if.end85.i:                                       ; preds = %do.body65.i, %if.end42.i
  %cmp86.i = icmp sgt i64 %call323.i, 0
  br i1 %cmp86.i, label %if.then88.i, label %if.end92.i

if.then88.i:                                      ; preds = %if.end85.i
  %sub.i = sub i64 %nr_pages.addr.0317.i, %call323.i
  %add.i = add i64 %pages_done.0321.i, %call323.i
  %tobool89.not.i = icmp eq i64 %sub.i, 0
  br i1 %tobool89.not.i, label %for.end.i, label %if.end92.i

if.end92.i:                                       ; preds = %if.then88.i, %if.end85.i
  %nr_pages.addr.1.i = phi i64 [ %sub.i, %if.then88.i ], [ %nr_pages.addr.0317.i, %if.end85.i ]
  %pages_done.1.i = phi i64 [ %add.i, %if.then88.i ], [ %pages_done.0321.i, %if.end85.i ]
  br i1 %tobool43.not.i, label %if.end98.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.end92.i
  %tobool95.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select278.i = select i1 %tobool95.not.i, i64 %call323.i, i64 %pages_done.1.i
  br i1 %lock_dropped.0.off0322.i, label %land.lhs.true214.i, label %if.then21

if.end98.i:                                       ; preds = %if.end92.i
  %tobool99.not.i = icmp eq %struct.page** %pages.addr.0319.i, null
  %add.ptr.i = getelementptr %struct.page*, %struct.page** %pages.addr.0319.i, i64 %call323.i
  %spec.select279.i = select i1 %tobool99.not.i, %struct.page** null, %struct.page** %add.ptr.i, !prof !9
  %shl.i = shl i64 %call323.i, 12
  %add109.i = add i64 %start.addr.0320.i, %shl.i
  br label %retry.i

retry.i:                                          ; preds = %do.body150.i, %if.end98.i
  %call111.i = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #12
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end117.i, label %if.then113.i

if.then113.i:                                     ; preds = %retry.i
  %tobool114.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.store.select.i = select i1 %tobool114.not.i, i64 -4, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end117.i:                                      ; preds = %retry.i
  %call118.i = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %2) #12
  %tobool120.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool120.not.i, label %if.end145.i, label %do.body122.i

do.body122.i:                                     ; preds = %if.end117.i
  %cmp123.i = icmp sgt i32 %call118.i, 0
  br i1 %cmp123.i, label %do.body133.i, label %do.end141.i, !prof !9

do.body133.i:                                     ; preds = %do.body122.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1396; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !20
  unreachable

do.end141.i:                                      ; preds = %do.body122.i
  %conv119.le.i = sext i32 %call118.i to i64
  %tobool142.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select280.i = select i1 %tobool142.not.i, i64 %conv119.le.i, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end145.i:                                      ; preds = %if.end117.i
  store i32 1, i32* %locked, align 4
  %call147.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %add109.i, i64 noundef 1, i32 noundef %or146.i, %struct.page** noundef %spec.select279.i, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  %6 = load i32, i32* %locked, align 4
  %tobool148.not.i = icmp eq i32 %6, 0
  br i1 %tobool148.not.i, label %do.body150.i, label %if.end170.i

do.body150.i:                                     ; preds = %if.end145.i
  %cmp151.not.i = icmp eq i64 %call147.i, 0
  br i1 %cmp151.not.i, label %retry.i, label %do.body161.i, !prof !11

do.body161.i:                                     ; preds = %do.body150.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1407; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !21
  unreachable

if.end170.i:                                      ; preds = %if.end145.i
  %cmp171.not.i = icmp eq i64 %call147.i, 1
  br i1 %cmp171.not.i, label %if.end197.i, label %do.body174.i

do.body174.i:                                     ; preds = %if.end170.i
  %cmp175.i = icmp sgt i64 %call147.i, 1
  br i1 %cmp175.i, label %do.body185.i, label %do.end193.i, !prof !9

do.body185.i:                                     ; preds = %do.body174.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1411; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !22
  unreachable

do.end193.i:                                      ; preds = %do.body174.i
  %tobool194.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select281.i = select i1 %tobool194.not.i, i64 %call147.i, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end197.i:                                      ; preds = %if.end170.i
  %dec.i = add i64 %nr_pages.addr.1.i, -1
  %inc.i = add i64 %pages_done.1.i, 1
  %tobool198.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool198.not.i, label %land.lhs.true214.i, label %if.end200.i

if.end200.i:                                      ; preds = %if.end197.i
  %tobool201.not.i = icmp eq %struct.page** %spec.select279.i, null
  %incdec.ptr.i = getelementptr %struct.page*, %struct.page** %spec.select279.i, i64 1
  %spec.select282.i = select i1 %tobool201.not.i, %struct.page** null, %struct.page** %incdec.ptr.i, !prof !9
  %add211.i = add i64 %add109.i, 4096
  %call.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %add211.i, i64 noundef %dec.i, i32 noundef %flags.addr.0.i, %struct.page** noundef %spec.select282.i, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  br label %if.end42.i

for.end.i:                                        ; preds = %if.then88.i
  br i1 %lock_dropped.0.off0322.i, label %land.lhs.true214.i, label %__get_user_pages_locked.exit

land.lhs.true214.i:                               ; preds = %if.end197.i, %for.end.i, %do.end193.i, %do.end141.i, %if.then113.i, %if.then94.i
  %pages_done.2285.i = phi i64 [ %add.i, %for.end.i ], [ %spec.select278.i, %if.then94.i ], [ %spec.select281.i, %do.end193.i ], [ %spec.select280.i, %do.end141.i ], [ %spec.store.select.i, %if.then113.i ], [ %inc.i, %if.end197.i ]
  %7 = load i32, i32* %locked, align 4
  %tobool215.not.i = icmp eq i32 %7, 0
  br i1 %tobool215.not.i, label %cleanup, label %if.then216.i

if.then216.i:                                     ; preds = %land.lhs.true214.i
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #12
  br label %cleanup

__get_user_pages_locked.exit:                     ; preds = %for.end.i
  br i1 %tobool43.not.i, label %cleanup, label %if.then21

if.then21:                                        ; preds = %if.then94.i, %__get_user_pages_locked.exit
  %retval.0.i.ph85 = phi i64 [ %add.i, %__get_user_pages_locked.exit ], [ %spec.select278.i, %if.then94.i ]
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then216.i, %land.lhs.true214.i, %if.then, %__get_user_pages_locked.exit, %if.then21
  %retval.0 = phi i64 [ -22, %if.then ], [ %retval.0.i.ph85, %if.then21 ], [ %add.i, %__get_user_pages_locked.exit ], [ %pages_done.2285.i, %land.lhs.true214.i ], [ %pages_done.2285.i, %if.then216.i ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_user_pages_fast_only(i64 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages) local_unnamed_addr #0 {
entry:
  %or = or i32 %gup_flags, 524292
  %conv = sext i32 %nr_pages to i64
  %call = call fastcc i32 @internal_get_user_pages_fast(i64 noundef %start, i64 noundef %conv, i32 noundef %or, %struct.page** noundef %pages) #11
  %0 = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %0, i32 %call, i32 0
  ret i32 %spec.store.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @internal_get_user_pages_fast(i64 noundef %start, i64 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages) unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, -851990
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 2711; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !31
  br label %cleanup

if.end17:                                         ; preds = %entry
  %and18 = and i32 %gup_flags, 262144
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 43
  call fastcc void @mm_set_has_pinned_flag(i64* noundef %flags) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  %and22 = and i32 %gup_flags, 524288
  %shl.i = shl i64 %start, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and27 = and i64 %start, -4096
  %and29 = and i64 %and27, %shr.i
  %shl = shl i64 %nr_pages, 12
  %3 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %and29, i64 %shl)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  br i1 %4, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.end21
  %6 = inttoptr i64 %and29 to i8*
  %call38 = call fastcc i64 @__range_ok(i8* noundef %6, i64 noundef %shl) #11
  %tobool39.not = icmp eq i64 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end50, !prof !9

if.end50:                                         ; preds = %if.end37
  %call51 = call fastcc i64 @lockless_pages_from_mm(i64 noundef %and29, i64 noundef %5, i32 noundef %gup_flags, %struct.page** noundef %pages) #11
  %cmp52 = icmp ne i64 %call51, %nr_pages
  %tobool55.not = icmp eq i32 %and22, 0
  %or.cond = and i1 %tobool55.not, %cmp52
  br i1 %or.cond, label %if.end58, label %if.then56

if.then56:                                        ; preds = %if.end50
  %conv57 = trunc i64 %call51 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end50
  %shl59 = shl i64 %call51, 12
  %add = add i64 %shl59, %and29
  %add.ptr = getelementptr %struct.page*, %struct.page** %pages, i64 %call51
  %sub = sub i64 %nr_pages, %call51
  %conv60 = trunc i64 %sub to i32
  %call61 = call fastcc i32 @__gup_longterm_unlocked(i64 noundef %add, i32 noundef %conv60, i32 noundef %gup_flags, %struct.page** noundef %add.ptr) #11
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.end58
  %tobool65.not = icmp eq i64 %call51, 0
  %conv67 = trunc i64 %call51 to i32
  %spec.select = select i1 %tobool65.not, i32 %call61, i32 %conv67
  br label %cleanup

if.end69:                                         ; preds = %if.end58
  %7 = trunc i64 %call51 to i32
  %conv72 = add i32 %call61, %7
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.then, %if.end37, %if.end21, %if.end69, %if.then56
  %retval.0 = phi i32 [ %conv57, %if.then56 ], [ %conv72, %if.end69 ], [ -22, %if.then ], [ 0, %if.end21 ], [ -14, %if.end37 ], [ %spec.select, %if.then64 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_user_pages_fast(i64 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @is_valid_gup_flags(i32 noundef %gup_flags) #11
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %or = or i32 %gup_flags, 4
  %conv = sext i32 %nr_pages to i64
  %call1 = call fastcc i32 @internal_get_user_pages_fast(i64 noundef %start, i64 noundef %conv, i32 noundef %or, %struct.page** noundef %pages) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pin_user_pages_fast(i64 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages) local_unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 2850; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !32
  br label %return

if.end17:                                         ; preds = %entry
  %or = or i32 %gup_flags, 262144
  %conv18 = sext i32 %nr_pages to i64
  %call = call fastcc i32 @internal_get_user_pages_fast(i64 noundef %start, i64 noundef %conv18, i32 noundef %or, %struct.page** noundef %pages) #11
  br label %return

return:                                           ; preds = %if.then, %if.end17
  %retval.0 = phi i32 [ %call, %if.end17 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pin_user_pages_fast_only(i64 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages) local_unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 2873; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !33
  br label %cleanup

if.end17:                                         ; preds = %entry
  %or = or i32 %gup_flags, 786432
  %conv18 = sext i32 %nr_pages to i64
  %call = call fastcc i32 @internal_get_user_pages_fast(i64 noundef %start, i64 noundef %conv18, i32 noundef %or, %struct.page** noundef %pages) #11
  %0 = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %0, i32 %call, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end17
  %retval.0 = phi i32 [ %spec.store.select, %if.end17 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @pin_user_pages_remote(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32* noundef %locked) local_unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 2923; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !34
  br label %return

if.end17:                                         ; preds = %entry
  %or = or i32 %gup_flags, 262144
  %call = call fastcc i64 @__get_user_pages_remote(%struct.mm_struct* noundef %mm, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %or, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32* noundef %locked) #11
  br label %return

return:                                           ; preds = %if.then, %if.end17
  %retval.0 = phi i64 [ %call, %if.end17 ], [ -22, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @pin_user_pages(i64 noundef %start, i64 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas) local_unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 2955; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !35
  br label %return

if.end17:                                         ; preds = %entry
  %or = or i32 %gup_flags, 262144
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %call18 = call fastcc i64 @__gup_longterm_locked(%struct.mm_struct* noundef %2, i64 noundef %start, i64 noundef %nr_pages, %struct.page** noundef %pages, %struct.vm_area_struct** noundef %vmas, i32 noundef %or) #11
  br label %return

return:                                           ; preds = %if.then, %if.end17
  %retval.0 = phi i64 [ %call18, %if.end17 ], [ -22, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @pin_user_pages_unlocked(i64 noundef %start, i64 noundef %nr_pages, %struct.page** noundef %pages, i32 noundef %gup_flags) local_unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 2973; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !36
  br label %return

if.end17:                                         ; preds = %entry
  %or = or i32 %gup_flags, 262144
  %call = call i64 @get_user_pages_unlocked(i64 noundef %start, i64 noundef %nr_pages, %struct.page** noundef %pages, i32 noundef %or) #11
  br label %return

return:                                           ; preds = %if.then, %if.end17
  %retval.0 = phi i64 [ %call, %if.end17 ], [ -22, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @pin_user_pages_locked(i64 noundef %start, i64 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages, i32* noundef %locked) local_unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 2996; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !37
  br label %return

if.end17:                                         ; preds = %entry
  %and19 = and i32 %gup_flags, 4
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end45, label %if.then33, !prof !11

if.then33:                                        ; preds = %if.end17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 3000; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !38
  br label %return

if.end45:                                         ; preds = %if.end17
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %or46 = or i32 %gup_flags, 262146
  %tobool.not.i = icmp eq i32* %locked, null
  br i1 %tobool.not.i, label %if.end30.i, label %do.body.i

do.body.i:                                        ; preds = %if.end45
  %3 = load i32, i32* %locked, align 4
  %cmp.not.i = icmp eq i32 %3, 1
  br i1 %cmp.not.i, label %if.end30.i, label %do.body21.i, !prof !11

do.body21.i:                                      ; preds = %do.body.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1322; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !27
  unreachable

if.end30.i:                                       ; preds = %do.body.i, %if.end45
  %flags33.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 43
  call fastcc void @mm_set_has_pinned_flag(i64* noundef %flags33.i) #12
  %call316.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %start, i64 noundef %nr_pages, i32 noundef %or46, %struct.page** noundef %pages, %struct.vm_area_struct** noundef null, i32* noundef %locked) #12
  br i1 %tobool.not.i, label %return, label %if.end42.lr.ph.i

if.end42.lr.ph.i:                                 ; preds = %if.end30.i
  %or146.i = or i32 %gup_flags, 264194
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end200.i, %if.end42.lr.ph.i
  %call323.i = phi i64 [ %call316.i, %if.end42.lr.ph.i ], [ %call.i, %if.end200.i ]
  %lock_dropped.0.off0322.i = phi i1 [ false, %if.end42.lr.ph.i ], [ true, %if.end200.i ]
  %pages_done.0321.i = phi i64 [ 0, %if.end42.lr.ph.i ], [ %inc.i, %if.end200.i ]
  %start.addr.0320.i = phi i64 [ %start, %if.end42.lr.ph.i ], [ %add211.i, %if.end200.i ]
  %pages.addr.0319.i = phi %struct.page** [ %pages, %if.end42.lr.ph.i ], [ %spec.select282.i, %if.end200.i ]
  %nr_pages.addr.0317.i = phi i64 [ %nr_pages, %if.end42.lr.ph.i ], [ %dec.i, %if.end200.i ]
  %4 = load i32, i32* %locked, align 4
  %tobool43.not.i = icmp eq i32 %4, 0
  br i1 %tobool43.not.i, label %do.body45.i, label %if.end85.i

do.body45.i:                                      ; preds = %if.end42.i
  %cmp46.i = icmp slt i64 %call323.i, 0
  br i1 %cmp46.i, label %do.body56.i, label %do.body65.i, !prof !9

do.body56.i:                                      ; preds = %do.body45.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1351; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !18
  unreachable

do.body65.i:                                      ; preds = %do.body45.i
  %cmp66.not.i = icmp ugt i64 %nr_pages.addr.0317.i, %call323.i
  br i1 %cmp66.not.i, label %if.end85.i, label %do.body76.i, !prof !11

do.body76.i:                                      ; preds = %do.body65.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1352; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !19
  unreachable

if.end85.i:                                       ; preds = %do.body65.i, %if.end42.i
  %cmp86.i = icmp sgt i64 %call323.i, 0
  br i1 %cmp86.i, label %if.then88.i, label %if.end92.i

if.then88.i:                                      ; preds = %if.end85.i
  %sub.i = sub i64 %nr_pages.addr.0317.i, %call323.i
  %add.i = add i64 %pages_done.0321.i, %call323.i
  %tobool89.not.i = icmp eq i64 %sub.i, 0
  br i1 %tobool89.not.i, label %for.end.i, label %if.end92.i

if.end92.i:                                       ; preds = %if.then88.i, %if.end85.i
  %nr_pages.addr.1.i = phi i64 [ %sub.i, %if.then88.i ], [ %nr_pages.addr.0317.i, %if.end85.i ]
  %pages_done.1.i = phi i64 [ %add.i, %if.then88.i ], [ %pages_done.0321.i, %if.end85.i ]
  br i1 %tobool43.not.i, label %if.end98.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.end92.i
  %tobool95.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select278.i = select i1 %tobool95.not.i, i64 %call323.i, i64 %pages_done.1.i
  br i1 %lock_dropped.0.off0322.i, label %land.lhs.true214.i, label %return

if.end98.i:                                       ; preds = %if.end92.i
  %tobool99.not.i = icmp eq %struct.page** %pages.addr.0319.i, null
  %add.ptr.i = getelementptr %struct.page*, %struct.page** %pages.addr.0319.i, i64 %call323.i
  %spec.select279.i = select i1 %tobool99.not.i, %struct.page** null, %struct.page** %add.ptr.i, !prof !9
  %shl.i = shl i64 %call323.i, 12
  %add109.i = add i64 %start.addr.0320.i, %shl.i
  br label %retry.i

retry.i:                                          ; preds = %do.body150.i, %if.end98.i
  %call111.i = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #12
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end117.i, label %if.then113.i

if.then113.i:                                     ; preds = %retry.i
  %tobool114.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.store.select.i = select i1 %tobool114.not.i, i64 -4, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end117.i:                                      ; preds = %retry.i
  %call118.i = call fastcc i32 @mmap_read_lock_killable(%struct.mm_struct* noundef %2) #12
  %tobool120.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool120.not.i, label %if.end145.i, label %do.body122.i

do.body122.i:                                     ; preds = %if.end117.i
  %cmp123.i = icmp sgt i32 %call118.i, 0
  br i1 %cmp123.i, label %do.body133.i, label %do.end141.i, !prof !9

do.body133.i:                                     ; preds = %do.body122.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1396; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !20
  unreachable

do.end141.i:                                      ; preds = %do.body122.i
  %conv119.le.i = sext i32 %call118.i to i64
  %tobool142.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select280.i = select i1 %tobool142.not.i, i64 %conv119.le.i, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end145.i:                                      ; preds = %if.end117.i
  store i32 1, i32* %locked, align 4
  %call147.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %add109.i, i64 noundef 1, i32 noundef %or146.i, %struct.page** noundef %spec.select279.i, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  %5 = load i32, i32* %locked, align 4
  %tobool148.not.i = icmp eq i32 %5, 0
  br i1 %tobool148.not.i, label %do.body150.i, label %if.end170.i

do.body150.i:                                     ; preds = %if.end145.i
  %cmp151.not.i = icmp eq i64 %call147.i, 0
  br i1 %cmp151.not.i, label %retry.i, label %do.body161.i, !prof !11

do.body161.i:                                     ; preds = %do.body150.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1407; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !21
  unreachable

if.end170.i:                                      ; preds = %if.end145.i
  %cmp171.not.i = icmp eq i64 %call147.i, 1
  br i1 %cmp171.not.i, label %if.end197.i, label %do.body174.i

do.body174.i:                                     ; preds = %if.end170.i
  %cmp175.i = icmp sgt i64 %call147.i, 1
  br i1 %cmp175.i, label %do.body185.i, label %do.end193.i, !prof !9

do.body185.i:                                     ; preds = %do.body174.i
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 1411; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !22
  unreachable

do.end193.i:                                      ; preds = %do.body174.i
  %tobool194.not.i = icmp eq i64 %pages_done.1.i, 0
  %spec.select281.i = select i1 %tobool194.not.i, i64 %call147.i, i64 %pages_done.1.i
  br label %land.lhs.true214.i

if.end197.i:                                      ; preds = %if.end170.i
  %dec.i = add i64 %nr_pages.addr.1.i, -1
  %inc.i = add i64 %pages_done.1.i, 1
  %tobool198.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool198.not.i, label %land.lhs.true214.i, label %if.end200.i

if.end200.i:                                      ; preds = %if.end197.i
  %tobool201.not.i = icmp eq %struct.page** %spec.select279.i, null
  %incdec.ptr.i = getelementptr %struct.page*, %struct.page** %spec.select279.i, i64 1
  %spec.select282.i = select i1 %tobool201.not.i, %struct.page** null, %struct.page** %incdec.ptr.i, !prof !9
  %add211.i = add i64 %add109.i, 4096
  %call.i = call fastcc i64 @__get_user_pages(%struct.mm_struct* noundef %2, i64 noundef %add211.i, i64 noundef %dec.i, i32 noundef %or46, %struct.page** noundef %spec.select282.i, %struct.vm_area_struct** noundef null, i32* noundef nonnull %locked) #12
  br label %if.end42.i

for.end.i:                                        ; preds = %if.then88.i
  br i1 %lock_dropped.0.off0322.i, label %land.lhs.true214.i, label %return

land.lhs.true214.i:                               ; preds = %if.end197.i, %for.end.i, %do.end193.i, %do.end141.i, %if.then113.i, %if.then94.i
  %pages_done.2285.i = phi i64 [ %add.i, %for.end.i ], [ %spec.select278.i, %if.then94.i ], [ %spec.select281.i, %do.end193.i ], [ %spec.select280.i, %do.end141.i ], [ %spec.store.select.i, %if.then113.i ], [ %inc.i, %if.end197.i ]
  %6 = load i32, i32* %locked, align 4
  %tobool215.not.i = icmp eq i32 %6, 0
  br i1 %tobool215.not.i, label %return, label %if.then216.i

if.then216.i:                                     ; preds = %land.lhs.true214.i
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %2) #12
  store i32 0, i32* %locked, align 4
  br label %return

return:                                           ; preds = %if.then216.i, %land.lhs.true214.i, %for.end.i, %if.then94.i, %if.end30.i, %if.then33, %if.then
  %retval.0 = phi i64 [ -22, %if.then ], [ -22, %if.then33 ], [ %pages_done.2285.i, %if.then216.i ], [ %pages_done.2285.i, %land.lhs.true214.i ], [ %add.i, %for.end.i ], [ %spec.select278.i, %if.then94.i ], [ %call316.i, %if.end30.i ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_ref_count(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_cache_add_speculative(%struct.page* noundef %page, i32 noundef %count) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__page_cache_add_speculative(%struct.page* noundef %page, i32 noundef %count) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page_refs(%struct.page* noundef %page, i32 noundef %refs) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %refs, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %refs, -1
  call fastcc void @page_ref_sub(%struct.page* noundef %page, i32 noundef %sub) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @put_page(%struct.page* noundef %page) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__page_cache_add_speculative(%struct.page* noundef %page, i32 noundef %count) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_add_unless(%struct.page* noundef %page, i32 noundef %count) #11
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_add_unless(%struct.page* noundef %page, i32 noundef %nr) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %_refcount, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i.i, align 4
  %1 = bitcast %struct.atomic_t* %_refcount to i8*
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i, %entry
  %c.0.i.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i.i, %do.cond.i.i.i ]
  %cmp.i.i.i = icmp eq i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %atomic_add_unless.exit, label %do.cond.i.i.i, !prof !9

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %c.0.i.i.i, %nr
  %call11.i.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i.i, i32 noundef %add.i.i.i) #12
  %cmp.not.i.i.i.i = icmp eq i32 %c.0.i.i.i, %call11.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %atomic_add_unless.exit, label %do.body.i.i.i, !prof !11

atomic_add_unless.exit:                           ; preds = %do.body.i.i.i, %do.cond.i.i.i
  %2 = xor i1 %cmp.i.i.i, true
  %conv = zext i1 %2 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #13, !srcloc !39
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_sub(%struct.page* noundef %page, i32 noundef %nr) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_sub(i32 noundef %nr, %struct.atomic_t* noundef %_refcount) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #13, !srcloc !40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !41
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @compound_order(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1
  %3 = bitcast %union.anon* %2 to %struct.anon.63*
  %compound_order = getelementptr inbounds %struct.anon.63, %struct.anon.63* %3, i64 0, i32 2
  %4 = load i8, i8* %compound_order, align 1
  %conv = zext i8 %4 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef readnone %page) unnamed_addr #7 {
entry:
  %hpage_pinned_refcount = getelementptr %struct.page, %struct.page* %page, i64 2, i32 1, i32 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %hpage_pinned_refcount to %struct.atomic_t*
  ret %struct.atomic_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #13, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hpage_pincount_sub(%struct.page* noundef %page, i32 noundef %refs) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.atomic_t* @compound_pincount_ptr(%struct.page* noundef %page) #11
  call fastcc void @__ll_sc_atomic_sub(i32 noundef %refs, %struct.atomic_t* noundef %call) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @compound_nr(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %compound_nr = getelementptr %struct.page, %struct.page* %page, i64 1, i32 1, i32 0, i32 1
  %2 = bitcast %struct.address_space** %compound_nr to i32*
  %3 = load i32, i32* %2, align 8
  %conv = zext i32 %3 to i64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ 1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.page* @follow_huge_addr() unnamed_addr #7 {
entry:
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  %0 = bitcast i8* %call to %struct.page*
  ret %struct.page* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef readnone %pgd, i64 noundef %address) unnamed_addr #7 {
entry:
  %shr = lshr i64 %address, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd, i64 %and
  ret %struct.pgd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.page* @no_page_table(%struct.vm_area_struct* nocapture noundef readonly %vma, i32 noundef %flags) unnamed_addr #6 {
entry:
  %and = and i32 %flags, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* noundef %vma) #11
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %0 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %fault = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %0, i64 0, i32 5
  %1 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %fault, align 8
  %tobool1.not = icmp eq i32 (%struct.vm_fault*)* %1, null
  br i1 %tobool1.not, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -14) #11
  %2 = bitcast i8* %call2 to %struct.page*
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.then
  %retval.0 = phi %struct.page* [ %2, %if.then ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @follow_p4d_mask(%struct.vm_area_struct* noundef %vma, i64 noundef %address, %struct.pgd_t* noundef %pgdp, i32 noundef %flags, %struct.follow_page_context* nocapture noundef writeonly %ctx) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %pgdp) #11
  %call13 = call fastcc %struct.page* @follow_pud_mask(%struct.vm_area_struct* noundef %vma, i64 noundef %address, %struct.p4d_t* noundef %call, i32 noundef %flags, %struct.follow_page_context* noundef %ctx) #11
  ret %struct.page* %call13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #7 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @vma_is_anonymous(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #6 {
entry:
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  %0 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool.not = icmp eq %struct.vm_operations_struct* %0, null
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.pgd_t* %pgd to %struct.p4d_t*
  ret %struct.p4d_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @follow_pud_mask(%struct.vm_area_struct* noundef %vma, i64 noundef %address, %struct.p4d_t* noundef readonly %p4dp, i32 noundef %flags, %struct.follow_page_context* nocapture noundef writeonly %ctx) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %p4dp) #11
  %pgd1 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %pgd1, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc %struct.page* @no_page_table(%struct.vm_area_struct* noundef %vma, i32 noundef %flags) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i64 %0, 3
  %cmp.not = icmp eq i64 %and, 3
  br i1 %cmp.not, label %if.end35, label %if.then33, !prof !11

if.then33:                                        ; preds = %if.end
  %call34 = call fastcc %struct.page* @no_page_table(%struct.vm_area_struct* noundef %vma, i32 noundef %flags) #11
  br label %cleanup

if.end35:                                         ; preds = %if.end
  %call36 = call fastcc %struct.page* @follow_pmd_mask(%struct.vm_area_struct* noundef %vma, i64 noundef %address, %struct.pud_t* noundef %call, i32 noundef %flags, %struct.follow_page_context* noundef %ctx) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then33, %if.then
  %retval.0 = phi %struct.page* [ %call34, %if.then33 ], [ %call36, %if.end35 ], [ %call2, %if.then ]
  ret %struct.page* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.p4d_t* %p4d to %struct.pud_t*
  ret %struct.pud_t* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @follow_pmd_mask(%struct.vm_area_struct* noundef %vma, i64 noundef %address, %struct.pud_t* nocapture noundef readonly %pudp, i32 noundef %flags, %struct.follow_page_context* nocapture noundef writeonly %ctx) unnamed_addr #0 {
entry:
  %pmdval.sroa.0 = alloca i64, align 8
  %pmdval.sroa.0.0.sroa_cast275 = bitcast i64* %pmdval.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pmdval.sroa.0.0.sroa_cast275)
  %call = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %pudp, i64 noundef %address) #11
  %pmdval.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call, i64 0, i32 0
  %pmdval.sroa.0.0.copyload = load volatile i64, i64* %pmdval.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pmdval.sroa.0.0.copyload, i64* %pmdval.sroa.0, align 8
  %tobool.not = icmp eq i64 %pmdval.sroa.0.0.copyload, 0
  br i1 %tobool.not, label %if.then, label %retry.preheader

retry.preheader:                                  ; preds = %entry
  %and = and i32 %flags, 1024
  %tobool17.not = icmp eq i32 %and, 0
  br label %retry

if.then:                                          ; preds = %entry
  %call2 = call fastcc %struct.page* @no_page_table(%struct.vm_area_struct* noundef %vma, i32 noundef %flags) #11
  br label %cleanup

retry:                                            ; preds = %retry.preheader, %if.end23
  %pmdval.sroa.0.0.pmdval.sroa.0.0.pmdval.sroa.0.0.pmdval.sroa.0.0.205 = phi i64 [ %pmdval.sroa.0.0.copyload, %retry.preheader ], [ %pmdval.sroa.0.0.copyload208, %if.end23 ]
  %call14 = call fastcc i32 @pmd_present(i64 %pmdval.sroa.0.0.pmdval.sroa.0.0.pmdval.sroa.0.0.pmdval.sroa.0.0.205) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end37

if.then16:                                        ; preds = %retry
  br i1 %tobool17.not, label %if.then21, label %if.end23, !prof !11

if.then21:                                        ; preds = %if.then16
  %call22 = call fastcc %struct.page* @no_page_table(%struct.vm_area_struct* noundef %vma, i32 noundef %flags) #11
  br label %cleanup

if.end23:                                         ; preds = %if.then16
  %pmdval.sroa.0.0.copyload208 = load volatile i64, i64* %pmdval.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pmdval.sroa.0.0.copyload208, i64* %pmdval.sroa.0, align 8
  %tobool33.not = icmp eq i64 %pmdval.sroa.0.0.copyload208, 0
  br i1 %tobool33.not, label %if.then34, label %retry

if.then34:                                        ; preds = %if.end23
  %call35 = call fastcc %struct.page* @no_page_table(%struct.vm_area_struct* noundef %vma, i32 noundef %flags) #11
  br label %cleanup

if.end37:                                         ; preds = %retry
  %pgmap61 = getelementptr inbounds %struct.follow_page_context, %struct.follow_page_context* %ctx, i64 0, i32 0
  %call62 = call fastcc %struct.page* @follow_page_pte(%struct.vm_area_struct* noundef %vma, i64 noundef %address, %struct.pmd_t* noundef nonnull %call, i32 noundef %flags, %struct.dev_pagemap** noundef %pgmap61) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then34, %if.then21, %if.then
  %retval.0 = phi %struct.page* [ %call62, %if.end37 ], [ %call22, %if.then21 ], [ %call35, %if.then34 ], [ %call2, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pmdval.sroa.0.0.sroa_cast275)
  ret %struct.page* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !43
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #13, !srcloc !44
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !45
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #13, !srcloc !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #6 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #11
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #11
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pmd_present(i64 %pmd.coerce) unnamed_addr #7 {
entry:
  %and = and i64 %pmd.coerce, 288230376151711745
  %tobool.not = icmp eq i64 %and, 0
  %and4 = lshr i64 %pmd.coerce, 59
  %0 = trunc i64 %and4 to i32
  %1 = and i32 %0, 1
  %2 = select i1 %tobool.not, i32 %1, i32 1
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @follow_page_pte(%struct.vm_area_struct* noundef %vma, i64 noundef %address, %struct.pmd_t* nocapture noundef readonly %pmd, i32 noundef %flags, %struct.dev_pagemap** nocapture noundef writeonly %pgmap) unnamed_addr #0 {
entry:
  %and = and i32 %flags, 262148
  %cmp = icmp eq i32 %and, 262148
  br i1 %cmp, label %if.then, label %retry, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 485; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !47
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  %0 = bitcast i8* %call to %struct.page*
  br label %cleanup217

retry:                                            ; preds = %entry
  %pmd17 = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %1 = load i64, i64* %pmd17, align 8
  %and18 = and i64 %1, 3
  %cmp19.not = icmp eq i64 %and18, 3
  br i1 %cmp19.not, label %if.end32, label %if.then30, !prof !11

if.then30:                                        ; preds = %retry
  %call31 = call fastcc %struct.page* @no_page_table(%struct.vm_area_struct* noundef %vma, i32 noundef %flags) #11
  br label %cleanup217

if.end32:                                         ; preds = %retry
  %call33 = call fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* noundef %pmd) #11
  %call34 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef %pmd, i64 noundef %address) #11
  %rlock.i = getelementptr inbounds %struct.spinlock, %struct.spinlock* %call33, i64 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call34, i64 0, i32 0
  %pte.sroa.0.0.copyload = load i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  %and37 = and i64 %pte.sroa.0.0.copyload, 288230376151711745
  %tobool38.not = icmp eq i64 %and37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end73

if.then39:                                        ; preds = %if.end32
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  %tobool213.not = icmp eq i64 %pte.sroa.0.0.copyload, 0
  br i1 %tobool213.not, label %if.end215, label %cleanup217

if.end73:                                         ; preds = %if.end32
  %and74 = and i32 %flags, 1
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end83, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %if.end73
  %call78 = call fastcc i1 @can_follow_write_pte(i64 %pte.sroa.0.0.copyload, i32 noundef %flags) #11
  br i1 %call78, label %if.end83, label %do.body80

do.body80:                                        ; preds = %land.lhs.true76
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  br label %cleanup217

if.end83:                                         ; preds = %land.lhs.true76, %if.end73
  %call85 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i64 %pte.sroa.0.0.copyload) #12
  %tobool86.not = icmp eq %struct.page* %call85, null
  %tobool86.not.not = xor i1 %tobool86.not, true
  %and89 = and i64 %pte.sroa.0.0.copyload, 144115188075855872
  %tobool90.not = icmp eq i64 %and89, 0
  %or.cond = select i1 %tobool86.not.not, i1 true, i1 %tobool90.not
  %tobool93.not = icmp eq i32 %and, 0
  %or.cond301 = or i1 %tobool93.not, %or.cond
  br i1 %or.cond301, label %if.else106, label %do.body209.thread

do.body209.thread:                                ; preds = %if.end83
  store %struct.dev_pagemap* null, %struct.dev_pagemap** %pgmap, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  br label %cleanup217

if.else106:                                       ; preds = %if.end83
  br i1 %tobool86.not, label %if.then117, label %if.end142, !prof !9

if.then117:                                       ; preds = %if.else106
  %and118 = and i32 %flags, 8
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end122, label %if.then120

if.then120:                                       ; preds = %if.then117
  %call121 = call fastcc i8* @ERR_PTR(i64 noundef -14) #11
  %2 = bitcast i8* %call121 to %struct.page*
  br label %do.body206

if.end122:                                        ; preds = %if.then117
  %and124 = lshr i64 %pte.sroa.0.0.copyload, 12
  %shr125 = and i64 %and124, 68719476735
  %call126 = call fastcc i32 @is_zero_pfn(i64 noundef %shr125) #11
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.else136, label %if.then128

if.then128:                                       ; preds = %if.end122
  %3 = load i64, i64* @memstart_addr, align 8
  %shr129 = ashr i64 %3, 12
  %idx.neg130 = sub nsw i64 0, %shr129
  %add.ptr131 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg130
  %add.ptr135 = getelementptr %struct.page, %struct.page* %add.ptr131, i64 %shr125
  br label %if.end142

if.else136:                                       ; preds = %if.end122
  %call137 = call fastcc i32 @follow_pfn_pte(%struct.vm_area_struct* noundef %vma, %struct.pte_t* noundef %call34, i32 noundef %flags) #11
  %conv138 = sext i32 %call137 to i64
  %call139 = call fastcc i8* @ERR_PTR(i64 noundef %conv138) #11
  %4 = bitcast i8* %call139 to %struct.page*
  br label %do.body206

if.end142:                                        ; preds = %if.else106, %if.then128
  %page.0 = phi %struct.page* [ %add.ptr135, %if.then128 ], [ %call85, %if.else106 ]
  %call143 = call i1 @try_grab_page(%struct.page* noundef %page.0, i32 noundef %flags) #11
  br i1 %call143, label %if.end165, label %if.then153, !prof !11

if.then153:                                       ; preds = %if.end142
  %call154 = call fastcc i8* @ERR_PTR(i64 noundef -12) #11
  %5 = bitcast i8* %call154 to %struct.page*
  br label %do.body206

if.end165:                                        ; preds = %if.end142
  %and166 = and i32 %flags, 2
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end188, label %if.then168

if.then168:                                       ; preds = %if.end165
  %and173 = and i64 %pte.sroa.0.0.copyload, 36028797018963968
  %tobool174.not = icmp ne i64 %and173, 0
  %or.cond302.not = select i1 %tobool75.not, i1 true, i1 %tobool174.not
  %6 = and i64 %pte.sroa.0.0.copyload, 2251799813685376
  %7 = icmp eq i64 %6, 2251799813685248
  %or.cond309 = select i1 %or.cond302.not, i1 true, i1 %7
  br i1 %or.cond309, label %if.end187, label %land.lhs.true182

land.lhs.true182:                                 ; preds = %if.then168
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page.0) #12
  %8 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %8, i64 0, i32 0
  %9 = load volatile i64, i64* %flags.i, align 8
  %10 = and i64 %9, 8
  %tobool184.not = icmp eq i64 %10, 0
  br i1 %tobool184.not, label %if.then185, label %if.end187

if.then185:                                       ; preds = %land.lhs.true182
  %call186 = call i32 @set_page_dirty(%struct.page* noundef %page.0) #12
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %land.lhs.true182, %if.then168
  call void @mark_page_accessed(%struct.page* noundef %page.0) #12
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.end165
  %and189 = and i32 %flags, 4096
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %do.body206, label %land.lhs.true191

land.lhs.true191:                                 ; preds = %if.end188
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %11 = load i64, i64* %vm_flags, align 8
  %and192 = and i64 %11, 8192
  %tobool193.not = icmp eq i64 %and192, 0
  br i1 %tobool193.not, label %do.body206, label %if.then194

if.then194:                                       ; preds = %land.lhs.true191
  %mapping = getelementptr inbounds %struct.page, %struct.page* %page.0, i64 0, i32 1, i32 0, i32 1
  %12 = load %struct.address_space*, %struct.address_space** %mapping, align 8
  %tobool199.not = icmp eq %struct.address_space* %12, null
  br i1 %tobool199.not, label %do.body206, label %land.lhs.true200

land.lhs.true200:                                 ; preds = %if.then194
  %call201 = call fastcc i32 @trylock_page(%struct.page* noundef %page.0) #11
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %do.body206, label %if.then203

if.then203:                                       ; preds = %land.lhs.true200
  call void @lru_add_drain() #12
  call void @mlock_vma_page(%struct.page* noundef %page.0) #12
  call void @unlock_page(%struct.page* noundef %page.0) #12
  br label %do.body206

do.body206:                                       ; preds = %if.then120, %if.else136, %if.then153, %if.then194, %land.lhs.true200, %if.then203, %land.lhs.true191, %if.end188
  %page.1 = phi %struct.page* [ %2, %if.then120 ], [ %5, %if.then153 ], [ %page.0, %if.then203 ], [ %page.0, %land.lhs.true200 ], [ %page.0, %if.then194 ], [ %page.0, %land.lhs.true191 ], [ %page.0, %if.end188 ], [ %4, %if.else136 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  br label %cleanup217

if.end215:                                        ; preds = %if.then39
  %call216 = call fastcc %struct.page* @no_page_table(%struct.vm_area_struct* noundef %vma, i32 noundef %flags) #11
  br label %cleanup217

cleanup217:                                       ; preds = %do.body209.thread, %if.then39, %if.end215, %do.body206, %do.body80, %if.then30, %if.then
  %retval.0 = phi %struct.page* [ %0, %if.then ], [ %call31, %if.then30 ], [ %call216, %if.end215 ], [ %page.1, %do.body206 ], [ null, %do.body80 ], [ null, %if.then39 ], [ null, %do.body209.thread ]
  ret %struct.page* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #11
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to %struct.pmd_t*
  ret %struct.pmd_t* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_index(i64 noundef %address) unnamed_addr #7 {
entry:
  %shr = lshr i64 %address, 21
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pud_page_paddr(i64 %pud.coerce) unnamed_addr #7 {
entry:
  %and = and i64 %pud.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef readnone %page) unnamed_addr #7 {
entry:
  %ptl = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 3
  %0 = bitcast i64* %ptl to %struct.spinlock*
  ret %struct.spinlock* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.spinlock* @pte_lockptr(%struct.pmd_t* nocapture noundef readonly %pmd) unnamed_addr #6 {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %0, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %1 = load i64, i64* %coerce.dive, align 8
  %and = lshr i64 %1, 12
  %shr2 = and i64 %and, 68719476735
  %add.ptr3 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr2
  %call4 = call fastcc %struct.spinlock* @ptlock_ptr(%struct.page* noundef %add.ptr3) #11
  ret %struct.spinlock* %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #6 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #11
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #11
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @can_follow_write_pte(i64 %pte.coerce, i32 noundef %flags) unnamed_addr #7 {
entry:
  %and = and i64 %pte.coerce, 2251799813685248
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end18

lor.rhs:                                          ; preds = %entry
  %0 = and i32 %flags, 16400
  %.not = icmp eq i32 %0, 16400
  br i1 %.not, label %land.rhs, label %lor.end18

land.rhs:                                         ; preds = %lor.rhs
  %and7 = and i64 %pte.coerce, 36028797018963968
  %tobool8.not = icmp ne i64 %and7, 0
  br label %lor.end18

lor.end18:                                        ; preds = %land.rhs, %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ false, %lor.rhs ], [ %tobool8.not, %land.rhs ]
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct* noundef, i64 noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_zero_pfn(i64 noundef %pfn) unnamed_addr #6 {
entry:
  %0 = load i64, i64* @zero_pfn, align 8
  %cmp = icmp eq i64 %0, %pfn
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @follow_pfn_pte(%struct.vm_area_struct* nocapture noundef readnone %vma, %struct.pte_t* noundef %pte, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i32 %flags, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %flags, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %entry4.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %pte, i64 0, i32 0
  %entry4.sroa.0.0.copyload = load i64, i64* %entry4.sroa.0.0..sroa_idx, align 8
  %and5 = and i32 %flags, 1
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then3
  %call = call fastcc i64 @pte_mkdirty(i64 %entry4.sroa.0.0.copyload) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then3
  %entry4.sroa.0.0 = phi i64 [ %call, %if.then7 ], [ %entry4.sroa.0.0.copyload, %if.then3 ]
  %call12 = call fastcc i64 @pte_mkyoung(i64 %entry4.sroa.0.0) #11
  %call16 = call fastcc i32 @pte_same(i64 %entry4.sroa.0.0.copyload, i64 %call12) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %return

if.then18:                                        ; preds = %if.end9
  call fastcc void @set_pte_at(%struct.pte_t* noundef %pte, i64 %call12) #11
  br label %return

return:                                           ; preds = %if.end, %if.then18, %if.end9, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ -17, %if.end9 ], [ -17, %if.then18 ], [ -17, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #11
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #11
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlock_vma_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #11
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #7 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #7 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkdirty(i64 %pte.coerce) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 36028797018963968) #11
  %and = and i64 %call, 2251799813685248
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call10 = call fastcc i64 @clear_pte_bit(i64 %call) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %pte.sroa.0.0 = phi i64 [ %call10, %if.then ], [ %call, %entry ]
  ret i64 %pte.sroa.0.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_mkyoung(i64 %pte.coerce) unnamed_addr #7 {
entry:
  %call = call fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 1024) #11
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pte_same(i64 %pte_a.coerce, i64 %pte_b.coerce) unnamed_addr #7 {
entry:
  %cmp = icmp eq i64 %pte_a.coerce, %pte_b.coerce
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte_at(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #0 {
entry:
  %and = and i64 %pte.coerce, 288230376151711745
  %tobool.not = icmp ne i64 %and, 0
  %and3 = and i64 %pte.coerce, 18014398509481984
  %tobool4.not = icmp eq i64 %and3, 0
  %or.cond = and i1 %tobool.not, %tobool4.not
  %and7 = and i64 %pte.coerce, 72057594037927936
  %tobool8.not = icmp eq i64 %and7, 0
  %or.cond1 = select i1 %or.cond, i1 %tobool8.not, i1 false
  br i1 %or.cond1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sync_icache_dcache(i64 %pte.coerce) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @set_pte_bit(i64 %pte.coerce, i64 %prot.coerce) unnamed_addr #7 {
entry:
  %or = or i64 %prot.coerce, %pte.coerce
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @clear_pte_bit(i64 %pte.coerce) unnamed_addr #7 {
entry:
  %and = and i64 %pte.coerce, -129
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sync_icache_dcache(i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_pte(%struct.pte_t* noundef %ptep, i64 %pte.coerce) unnamed_addr #0 {
entry:
  %pte.sroa.0 = alloca i64, align 8
  store i64 %pte.coerce, i64* %pte.sroa.0, align 8
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep, i64 0, i32 0
  %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0, align 8
  store volatile i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload, i64* %pte.sroa.0.0..sroa_idx, align 8
  %and = and i64 %pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.pte.sroa.0.0.copyload, 18014398509482049
  %cmp = icmp eq i64 %and, 18014398509481985
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !48
  call void asm sideeffect "isb", "~{memory}"() #13, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #12
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #13, !srcloc !50
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  call fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64* null, i64** %percpu_count, align 8, !annotation !12
  call fastcc void @__rcu_read_lock() #12
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #11
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !51
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #11
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3) #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !52
  br label %if.end14

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %count = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0
  %call.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %count) #12
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then12, label %if.end14, !prof !9

if.then12:                                        ; preds = %if.else
  %5 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %release = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %5, i64 0, i32 1
  %6 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %release, align 8
  call void %6(%struct.percpu_ref* noundef %ref) #12
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12, %do.body1
  call fastcc void @rcu_read_unlock() #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** nocapture noundef writeonly %percpu_countp) unnamed_addr #1 {
entry:
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load volatile i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, 3
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !11

if.end:                                           ; preds = %entry
  %1 = inttoptr i64 %0 to i64*
  store i64* %1, i64** %percpu_countp, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 -1, i64* elementtype(i64) %0) #13, !srcloc !53
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #8 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #15, !srcloc !54
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !55
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #13, !srcloc !56
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  call void @rcu_read_unlock_strict() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p) #11
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #6 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #11
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #11
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #11
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #7 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #6 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @faultin_page(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i32* nocapture noundef %flags, i32* noundef writeonly %locked) unnamed_addr #0 {
entry:
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 4160
  %cmp = icmp eq i32 %and, 4096
  br i1 %cmp, label %cleanup51, label %if.end

if.end:                                           ; preds = %entry
  %and1 = and i32 %0, 1
  %and4 = lshr i32 %0, 6
  %1 = and i32 %and4, 128
  %2 = or i32 %1, %and1
  %tobool9.not = icmp eq i32* %locked, null
  %or11 = or i32 %2, 20
  %fault_flags.2 = select i1 %tobool9.not, i32 %2, i32 %or11
  %and13 = and i32 %0, 32
  %tobool14.not = icmp eq i32 %and13, 0
  %or16 = or i32 %fault_flags.2, 12
  %fault_flags.3 = select i1 %tobool14.not, i32 %fault_flags.2, i32 %or16
  %3 = and i32 %and4, 32
  %4 = or i32 %fault_flags.3, %3
  %call = call i32 @handle_mm_fault(%struct.vm_area_struct* noundef %vma, i64 noundef %address, i32 noundef %4, %struct.pt_regs* noundef null) #12
  %and23 = and i32 %call, 2163
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end33, label %if.then25

if.then25:                                        ; preds = %if.end
  %5 = load i32, i32* %flags, align 4
  %call26 = call fastcc i32 @vm_fault_to_errno(i32 noundef %call, i32 noundef %5) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body, label %cleanup51

do.body:                                          ; preds = %if.then25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/gup.c\22; .popsection; .long 14472b - 14470b; .short 943; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !58
  unreachable

if.end33:                                         ; preds = %if.end
  %and34 = and i32 %call, 1024
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end42, label %if.then36

if.then36:                                        ; preds = %if.end33
  %tobool9.not.not = xor i1 %tobool9.not, true
  %and38 = and i32 %fault_flags.3, 8
  %tobool39.not = icmp eq i32 %and38, 0
  %or.cond = select i1 %tobool9.not.not, i1 %tobool39.not, i1 false
  br i1 %or.cond, label %if.then40, label %cleanup51

if.then40:                                        ; preds = %if.then36
  store i32 0, i32* %locked, align 4
  br label %cleanup51

if.end42:                                         ; preds = %if.end33
  %and43 = and i32 %call, 8
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %cleanup51, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end42
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 8
  %6 = load i64, i64* %vm_flags, align 8
  %and46 = and i64 %6, 2
  %tobool47.not = icmp eq i64 %and46, 0
  br i1 %tobool47.not, label %if.then48, label %cleanup51

if.then48:                                        ; preds = %land.lhs.true45
  %7 = load i32, i32* %flags, align 4
  %or49 = or i32 %7, 16384
  store i32 %or49, i32* %flags, align 4
  br label %cleanup51

cleanup51:                                        ; preds = %if.end42, %land.lhs.true45, %if.then48, %if.then36, %if.then40, %if.then25, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ %call26, %if.then25 ], [ -16, %if.then40 ], [ -16, %if.then36 ], [ 0, %if.then48 ], [ 0, %land.lhs.true45 ], [ 0, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_cow_mapping(i64 noundef %flags) unnamed_addr #7 {
entry:
  %and = and i64 %flags, 40
  %cmp = icmp eq i64 %and, 32
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_set_has_pinned_flag(i64* noundef %mm_flags) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %mm_flags, align 8
  %1 = and i64 %0, 268435456
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @set_bit(i64 noundef 28, i64* noundef %mm_flags) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
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
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !59
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @memalloc_pin_save() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %and = and i32 %2, 268435456
  %or = or i32 %2, 268435456
  store i32 %or, i32* %flags1, align 4
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memalloc_pin_restore(i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %and = and i32 %2, -268435457
  %or = or i32 %and, %flags
  store i32 %or, i32* %flags1, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #13, !srcloc !60
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @lockless_pages_from_mm(i64 noundef %start, i64 noundef %end, i32 noundef %gup_flags, %struct.page** nocapture noundef %pages) unnamed_addr #0 {
entry:
  %nr_pinned = alloca i32, align 4
  %0 = bitcast i32* %nr_pinned to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %nr_pinned, align 4
  %and = and i32 %gup_flags, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9, label %if.then1

if.then1:                                         ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %write_protect_seq = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 26
  %call3 = call fastcc i32 @__seqprop_sequence(%struct.seqcount* noundef %write_protect_seq) #11
  call void asm sideeffect "dmb ishld", "~{memory}"() #13, !srcloc !61
  %and4 = and i32 %call3, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body9, label %cleanup

do.body9:                                         ; preds = %if.then1, %entry
  %seq.0 = phi i32 [ %call3, %if.then1 ], [ 0, %entry ]
  %call11 = call fastcc i64 @arch_local_irq_save() #11
  call fastcc void @gup_pgd_range(i64 noundef %start, i64 noundef %end, i32 noundef %gup_flags, %struct.page** noundef %pages, i32* noundef nonnull %nr_pinned) #11
  call fastcc void @arch_local_irq_restore(i64 noundef %call11) #11
  br i1 %tobool.not, label %if.end40, label %if.then30

if.then30:                                        ; preds = %do.body9
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %mm32 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 35
  %6 = load %struct.mm_struct*, %struct.mm_struct** %mm32, align 8
  %write_protect_seq33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %6, i64 0, i32 0, i32 26
  %call35 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %write_protect_seq33, i32 noundef %seq.0) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.then30
  %7 = load i32, i32* %nr_pinned, align 4
  %conv38 = sext i32 %7 to i64
  call void @unpin_user_pages(%struct.page** noundef %pages, i64 noundef %conv38) #11
  br label %cleanup

if.end40:                                         ; preds = %if.then30, %do.body9
  %8 = load i32, i32* %nr_pinned, align 4
  %conv41 = sext i32 %8 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end40, %if.then37
  %retval.0 = phi i64 [ 0, %if.then37 ], [ %conv41, %if.end40 ], [ 0, %if.then1 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__gup_longterm_unlocked(i64 noundef %start, i32 noundef %nr_pages, i32 noundef %gup_flags, %struct.page** noundef %pages) unnamed_addr #0 {
entry:
  %and = and i32 %gup_flags, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %2) #11
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %conv = sext i32 %nr_pages to i64
  %call3 = call fastcc i64 @__gup_longterm_locked(%struct.mm_struct* noundef %3, i64 noundef %start, i64 noundef %conv, %struct.page** noundef %pages, %struct.vm_area_struct** noundef null, i32 noundef %gup_flags) #11
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %4) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %conv7 = sext i32 %nr_pages to i64
  %call8 = call i64 @get_user_pages_unlocked(i64 noundef %start, i64 noundef %conv7, %struct.page** noundef %pages, i32 noundef %gup_flags) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0.in = phi i64 [ %call3, %if.then ], [ %call8, %if.else ]
  %ret.0 = trunc i64 %ret.0.in to i32
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @__seqprop_sequence(%struct.seqcount* noundef %s) unnamed_addr #1 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #11
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #11
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gup_pgd_range(i64 noundef %addr, i64 noundef %end, i32 noundef %flags, %struct.page** nocapture noundef %pages, i32* nocapture noundef %nr) unnamed_addr #0 {
entry:
  %pgd2.sroa.0 = alloca i64, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %pgd = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 8
  %3 = load %struct.pgd_t*, %struct.pgd_t** %pgd, align 8
  %call1 = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %3, i64 noundef %addr) #11
  %sub4 = add i64 %end, -1
  %pgd2.sroa.0.0.sroa_cast36 = bitcast i64* %pgd2.sroa.0 to i8*
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %pgdp.0 = phi %struct.pgd_t* [ %call1, %entry ], [ %incdec.ptr, %do.body ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %cond, %do.body ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pgd2.sroa.0.0.sroa_cast36)
  %pgd2.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pgd_t, %struct.pgd_t* %pgdp.0, i64 0, i32 0
  %pgd2.sroa.0.0.copyload = load volatile i64, i64* %pgd2.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pgd2.sroa.0.0.copyload, i64* %pgd2.sroa.0, align 8
  %add = add i64 %addr.addr.0, 1073741824
  %and = and i64 %add, -1073741824
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub4
  %cond = select i1 %cmp, i64 %and, i64 %end
  %call7 = call fastcc i32 @gup_p4d_range(i64 %pgd2.sroa.0.0.copyload, i64 noundef %addr.addr.0, i64 noundef %cond, i32 noundef %flags, %struct.page** noundef %pages, i32* noundef %nr) #11
  %tobool8.not = icmp eq i32 %call7, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pgd2.sroa.0.0.sroa_cast36)
  %incdec.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgdp.0, i64 1
  %cmp12.not = icmp eq i64 %cond, %end
  %or.cond = or i1 %tobool8.not, %cmp12.not
  br i1 %or.cond, label %cleanup14, label %do.body

cleanup14:                                        ; preds = %do.body
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #13, !srcloc !62
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #13, !srcloc !63
  %call = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #13, !srcloc !64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #13, !srcloc !65
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #11
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #13, !srcloc !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #1 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gup_p4d_range(i64 %pgd.coerce, i64 noundef %addr, i64 noundef %end, i32 noundef %flags, %struct.page** nocapture noundef %pages, i32* nocapture noundef %nr) unnamed_addr #0 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %p4d.sroa.0 = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, %struct.pgd_t* %pgd, i64 0, i32 0
  store i64 %pgd.coerce, i64* %coerce.dive, align 8
  %call = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef nonnull %pgd) #11
  %p4d.sroa.0.0.sroa_cast2 = bitcast i64* %p4d.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %p4d.sroa.0.0.sroa_cast2)
  %p4d.sroa.0.0..sroa_idx = getelementptr inbounds %struct.p4d_t, %struct.p4d_t* %call, i64 0, i32 0, i32 0
  %p4d.sroa.0.0.copyload = load volatile i64, i64* %p4d.sroa.0.0..sroa_idx, align 8
  store volatile i64 %p4d.sroa.0.0.copyload, i64* %p4d.sroa.0, align 8
  %call10 = call fastcc i32 @gup_pud_range(i64 %p4d.sroa.0.0.copyload, i64 noundef %addr, i64 noundef %end, i32 noundef %flags, %struct.page** noundef %pages, i32* noundef %nr) #11
  %tobool11.not = icmp ne i32 %call10, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %p4d.sroa.0.0.sroa_cast2)
  %retval.2 = zext i1 %tobool11.not to i32
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gup_pud_range(i64 %p4d.coerce, i64 noundef %addr, i64 noundef %end, i32 noundef %flags, %struct.page** nocapture noundef %pages, i32* nocapture noundef %nr) unnamed_addr #0 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %pud.sroa.0 = alloca i64, align 8
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, %struct.p4d_t* %p4d, i64 0, i32 0, i32 0
  store i64 %p4d.coerce, i64* %coerce.dive1, align 8
  %call = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef nonnull %p4d) #11
  %pud.sroa.0.0.sroa_cast3 = bitcast i64* %pud.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast3)
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pud.sroa.0.0.copyload, i64* %pud.sroa.0, align 8
  %and = and i64 %pud.sroa.0.0.copyload, 288230376151711745
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %call36 = call fastcc i32 @gup_pmd_range(i64 %pud.sroa.0.0.copyload, i64 noundef %addr, i64 noundef %end, i32 noundef %flags, %struct.page** noundef %pages, i32* noundef %nr) #11
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %do.cond41.critedge

cleanup:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast3)
  br label %cleanup44

do.cond41.critedge:                               ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast3)
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup, %do.cond41.critedge
  %retval.2 = phi i32 [ 1, %do.cond41.critedge ], [ 0, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gup_pmd_range(i64 %pud.coerce, i64 noundef %addr, i64 noundef %end, i32 noundef %flags, %struct.page** nocapture noundef %pages, i32* nocapture noundef %nr) unnamed_addr #0 {
entry:
  %pud = alloca %struct.pud_t, align 8
  %pmd.sroa.0 = alloca i64, align 8
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  store i64 %pud.coerce, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef nonnull %pud, i64 noundef %addr) #11
  %sub4 = add i64 %end, -1
  %pmd.sroa.0.0.sroa_cast4 = bitcast i64* %pmd.sroa.0 to i8*
  br label %do.body

do.body:                                          ; preds = %do.cond35.critedge, %entry
  %pmdp.0 = phi %struct.pmd_t* [ %call, %entry ], [ %incdec.ptr, %do.cond35.critedge ]
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %cond, %do.cond35.critedge ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast4)
  %pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmdp.0, i64 0, i32 0
  %pmd.sroa.0.0.copyload = load volatile i64, i64* %pmd.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pmd.sroa.0.0.copyload, i64* %pmd.sroa.0, align 8
  %add = add i64 %addr.addr.0, 2097152
  %and = and i64 %add, -2097152
  %sub = add i64 %and, -1
  %cmp = icmp ult i64 %sub, %sub4
  %cond = select i1 %cmp, i64 %and, i64 %end
  %call6 = call fastcc i32 @pmd_present(i64 %pmd.sroa.0.0.copyload) #11
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %do.body
  %call30 = call fastcc i32 @gup_pte_range(i64 %pmd.sroa.0.0.copyload, i64 noundef %addr.addr.0, i64 noundef %cond, i32 noundef %flags, %struct.page** noundef %pages, i32* noundef %nr) #11
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %do.cond35.critedge

cleanup:                                          ; preds = %if.end, %do.body
  %pmd.sroa.0.0.sroa_cast4.le = bitcast i64* %pmd.sroa.0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast4.le)
  br label %cleanup39

do.cond35.critedge:                               ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast4)
  %incdec.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %pmdp.0, i64 1
  %cmp36.not = icmp eq i64 %cond, %end
  br i1 %cmp36.not, label %cleanup39, label %do.body

cleanup39:                                        ; preds = %do.cond35.critedge, %cleanup
  %retval.2 = phi i32 [ 0, %cleanup ], [ 1, %do.cond35.critedge ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gup_pte_range(i64 %pmd.coerce, i64 noundef %addr, i64 noundef %end, i32 noundef %flags, %struct.page** nocapture noundef %pages, i32* nocapture noundef %nr) unnamed_addr #0 {
entry:
  %pmd = alloca %struct.pmd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  store i64 %pmd.coerce, i64* %coerce.dive, align 8
  %0 = load i32, i32* %nr, align 4
  %call = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef nonnull %pmd, i64 noundef %addr) #11
  %and6 = and i32 %flags, 1
  %tobool7.not = icmp ne i32 %and6, 0
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %addr.addr.0 = phi i64 [ %addr, %entry ], [ %add, %do.cond ]
  %ptep.0 = phi %struct.pte_t* [ %call, %entry ], [ %incdec.ptr, %do.cond ]
  %call1 = call fastcc i64 @ptep_get_lockless(%struct.pte_t* noundef %ptep.0) #11
  %and = and i64 %call1, 65
  %cmp = icmp eq i64 %and, 65
  br i1 %cmp, label %land.lhs.true, label %cleanup91

land.lhs.true:                                    ; preds = %do.body
  %and9 = and i64 %call1, 2251799813685248
  %tobool10.not = icmp eq i64 %and9, 0
  %or.cond = select i1 %tobool7.not, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %cleanup91, label %if.end12

if.end12:                                         ; preds = %land.lhs.true
  %and14 = and i64 %call1, 144115188075855872
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end12
  %and17 = and i32 %flags, 65536
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end22, label %cleanup91, !prof !11

if.end22:                                         ; preds = %if.then16
  call fastcc void @undo_dev_pagemap(i32* noundef %nr, i32 noundef %0, i32 noundef %flags, %struct.page** noundef %pages) #11
  br label %cleanup91

if.else:                                          ; preds = %if.end12
  %and39 = and i64 %call1, 72057594037927936
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %if.end43, label %cleanup91

if.end43:                                         ; preds = %if.else
  %1 = load i64, i64* @memstart_addr, align 8
  %shr44 = ashr i64 %1, 12
  %idx.neg = sub nsw i64 0, %shr44
  %add.ptr = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %and46 = lshr i64 %call1, 12
  %shr47 = and i64 %and46, 68719476735
  %add.ptr48 = getelementptr %struct.page, %struct.page* %add.ptr, i64 %shr47
  %call49 = call %struct.page* @try_grab_compound_head(%struct.page* noundef %add.ptr48, i32 noundef 1, i32 noundef %flags) #11
  %tobool50.not = icmp eq %struct.page* %call49, null
  br i1 %tobool50.not, label %cleanup91, label %if.end52

if.end52:                                         ; preds = %if.end43
  %call53 = call fastcc i1 @page_is_secretmem(%struct.page* noundef %add.ptr48) #11
  br i1 %call53, label %if.then61, label %if.end62, !prof !9

if.then61:                                        ; preds = %if.end52
  call fastcc void @put_compound_head(%struct.page* noundef nonnull %call49, i32 noundef 1, i32 noundef %flags) #11
  br label %cleanup91

if.end62:                                         ; preds = %if.end52
  %pte64 = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep.0, i64 0, i32 0
  %2 = load i64, i64* %pte64, align 8
  %cmp65.not = icmp eq i64 %call1, %2
  br i1 %cmp65.not, label %do.cond, label %if.then74, !prof !11

if.then74:                                        ; preds = %if.end62
  call fastcc void @put_compound_head(%struct.page* noundef nonnull %call49, i32 noundef 1, i32 noundef %flags) #11
  br label %cleanup91

do.cond:                                          ; preds = %if.end62
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %add.ptr48) #12
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 1, i64* noundef %flags.i) #12
  %4 = load i32, i32* %nr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom
  store %struct.page* %add.ptr48, %struct.page** %arrayidx, align 8
  %5 = load i32, i32* %nr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %nr, align 4
  %incdec.ptr = getelementptr %struct.pte_t, %struct.pte_t* %ptep.0, i64 1
  %add = add i64 %addr.addr.0, 4096
  %cmp86.not = icmp eq i64 %add, %end
  br i1 %cmp86.not, label %cleanup91, label %do.body

cleanup91:                                        ; preds = %if.end43, %if.else, %do.body, %land.lhs.true, %do.cond, %if.then16, %if.then74, %if.then61, %if.end22
  %ret.3 = phi i32 [ 0, %if.end22 ], [ 0, %if.then61 ], [ 0, %if.then74 ], [ 0, %if.then16 ], [ 0, %if.end43 ], [ 0, %if.else ], [ 0, %do.body ], [ 0, %land.lhs.true ], [ 1, %do.cond ]
  ret i32 %ret.3
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i64 @ptep_get_lockless(%struct.pte_t* noundef %ptep) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @ptep_get(%struct.pte_t* noundef %ptep) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @undo_dev_pagemap(i32* nocapture noundef %nr, i32 noundef %nr_start, i32 noundef %flags, %struct.page** nocapture noundef readonly %pages) unnamed_addr #0 {
entry:
  %0 = load i32, i32* %nr, align 4
  %tobool.not6 = icmp eq i32 %0, %nr_start
  br i1 %tobool.not6, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %and = and i32 %flags, 262144
  %tobool1.not = icmp eq i32 %and, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %1 = phi i32 [ %0, %while.body.lr.ph ], [ %4, %if.end ]
  %dec = add i32 %1, -1
  store i32 %dec, i32* %nr, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom
  %2 = load %struct.page*, %struct.page** %arrayidx, align 8
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %2) #12
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  call fastcc void @clear_bit(i64* noundef %flags.i) #12
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @unpin_user_page(%struct.page* noundef %2) #11
  br label %if.end

if.else:                                          ; preds = %while.body
  call fastcc void @put_page(%struct.page* noundef %2) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %nr, align 4
  %tobool.not = icmp eq i32 %4, %nr_start
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @page_is_secretmem(%struct.page* noundef %page) unnamed_addr #1 {
entry:
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  %0 = load volatile i64, i64* %flags.i, align 8
  %1 = and i64 %0, 65536
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %cleanup

PageCompound.exit:                                ; preds = %entry
  %2 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head.i.i = bitcast %union.anon* %2 to i64*
  %3 = load volatile i64, i64* %compound_head.i.i, align 8
  %4 = and i64 %3, 1
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %PageCompound.exit
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %page) #12
  %5 = inttoptr i64 %call.i to %struct.page*
  %flags.i16 = getelementptr inbounds %struct.page, %struct.page* %5, i64 0, i32 0
  %6 = load volatile i64, i64* %flags.i16, align 8
  %7 = and i64 %6, 16
  %tobool2.not = icmp eq i64 %7, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %mapping3 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 1
  %8 = load %struct.address_space*, %struct.address_space** %mapping3, align 8
  %9 = ptrtoint %struct.address_space* %8 to i64
  %and = and i64 %9, -4
  %10 = inttoptr i64 %and to %struct.address_space*
  %tobool4.not = icmp ne i64 %and, 0
  %cmp.not = icmp eq %struct.address_space* %8, %10
  %or.cond = select i1 %tobool4.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  %a_ops = getelementptr inbounds %struct.address_space, %struct.address_space* %8, i64 0, i32 9
  %11 = load %struct.address_space_operations*, %struct.address_space_operations** %a_ops, align 8
  %cmp9 = icmp eq %struct.address_space_operations* %11, @secretmem_aops
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %PageCompound.exit, %lor.lhs.false, %if.end8
  %retval.0 = phi i1 [ %cmp9, %if.end8 ], [ false, %lor.lhs.false ], [ false, %PageCompound.exit ], [ false, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i64 @ptep_get(%struct.pte_t* noundef %ptep) unnamed_addr #4 {
entry:
  %retval.sroa.0 = alloca i64, align 8
  %retval.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep, i64 0, i32 0
  %retval.sroa.0.0.copyload = load volatile i64, i64* %retval.sroa.0.0..sroa_idx, align 8
  store volatile i64 %retval.sroa.0.0.copyload, i64* %retval.sroa.0, align 8
  ret i64 %retval.sroa.0.0.copyload
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 2, i64* elementtype(i64) %counter) #13, !srcloc !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #1 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree nounwind readonly }
attributes #10 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }
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
!8 = !{i64 2155286791}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155284819}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"auto-init"}
!13 = !{i64 2155292371}
!14 = !{i64 2155311885}
!15 = !{i64 1257995}
!16 = !{i64 2155320956}
!17 = !{i64 2155319213}
!18 = !{i64 2155329267}
!19 = !{i64 2155330588}
!20 = !{i64 2155331969}
!21 = !{i64 2155333294}
!22 = !{i64 2155334599}
!23 = !{i64 2155340869}
!24 = !{i64 2155342510}
!25 = !{i64 2155344138}
!26 = !{i64 2155322565}
!27 = !{i64 2155327941}
!28 = !{i64 2155346019}
!29 = !{i64 2155347663}
!30 = !{i64 2155349453}
!31 = !{i64 2155391799}
!32 = !{i64 2155394473}
!33 = !{i64 2155396224}
!34 = !{i64 2155397990}
!35 = !{i64 2155399737}
!36 = !{i64 2155401484}
!37 = !{i64 2155403241}
!38 = !{i64 2155404879}
!39 = !{i64 2147920462, i64 2147920495, i64 2147920547, i64 2147920606, i64 2147920640, i64 2147920696, i64 2147920725, i64 2147920752}
!40 = !{i64 2147817113, i64 2147817629, i64 2147817659, i64 2147817686, i64 2147817720, i64 2147817750}
!41 = !{i64 2147817965, i64 2147818613, i64 2147818643, i64 2147818675, i64 2147818709, i64 2147818745, i64 2147818770}
!42 = !{i64 2147807392, i64 2147807908, i64 2147807938, i64 2147807965, i64 2147807999, i64 2147808029}
!43 = !{i64 2149446730}
!44 = !{i64 2147903254, i64 2147903287, i64 2147903340, i64 2147903399, i64 2147903433, i64 2147903488, i64 2147903517, i64 2147903537}
!45 = !{i64 2149454011}
!46 = !{i64 2149246241}
!47 = !{i64 2155295314}
!48 = !{i64 2151570453}
!49 = !{i64 2151570502}
!50 = !{i64 2147879360, i64 2147880030, i64 2147880060, i64 2147880092, i64 2147880124, i64 2147880158, i64 2147880183}
!51 = !{i64 2150683901}
!52 = !{i64 2150684713}
!53 = !{i64 2149045821, i64 2149045862, i64 2149045918, i64 2149045970}
!54 = !{i64 2149019875, i64 2149019922, i64 2149019928, i64 2149019965, i64 2149019983, i64 2149020910, i64 2149020958, i64 2149021006, i64 2149021069, i64 2149021118, i64 2149020061, i64 2149020086, i64 2149020112, i64 2149020118, i64 2149020155, i64 2149020161, i64 2149020211, i64 2149020257, i64 2149020290}
!55 = !{i64 2150092131}
!56 = !{i64 2147862659, i64 2147863307, i64 2147863337, i64 2147863368, i64 2147863400, i64 2147863435, i64 2147863460}
!57 = !{i64 2150092348}
!58 = !{i64 2155315832}
!59 = !{i64 2147876472, i64 2147876983, i64 2147877013, i64 2147877039, i64 2147877071, i64 2147877100}
!60 = !{i64 4668519, i64 4668602, i64 4668826, i64 4669046, i64 4669069}
!61 = !{i64 2155388117}
!62 = !{i64 2149003569, i64 2149003616, i64 2149003622, i64 2149003659, i64 2149003677, i64 2149009049, i64 2149009097, i64 2149009145, i64 2149009208, i64 2149009257, i64 2149003755, i64 2149003780, i64 2149003806, i64 2149003812, i64 2149008715, i64 2149008755, i64 2149008773, i64 2149008805, i64 2149008833, i64 2149008887, i64 2149008907, i64 2149009004, i64 2149003835, i64 2149003849, i64 2149003855, i64 2149003905, i64 2149003951, i64 2149003984}
!63 = !{i64 2149945975}
!64 = !{i64 2148997556, i64 2148997603, i64 2148997609, i64 2148997646, i64 2148997664, i64 2148998975, i64 2148999023, i64 2148999071, i64 2148999134, i64 2148999183, i64 2148997742, i64 2148997767, i64 2148997793, i64 2148997799, i64 2148998641, i64 2148998681, i64 2148998699, i64 2148998731, i64 2148998759, i64 2148998813, i64 2148998833, i64 2148998930, i64 2148997822, i64 2148997836, i64 2148997842, i64 2148997892, i64 2148997938, i64 2148997971}
!65 = !{i64 2148999735, i64 2148999782, i64 2148999788, i64 2148999825, i64 2148999843, i64 2149000786, i64 2149000834, i64 2149000882, i64 2149000945, i64 2149000994, i64 2148999921, i64 2148999946, i64 2148999972, i64 2148999978, i64 2149000015, i64 2149000021, i64 2149000071, i64 2149000117, i64 2149000150}
!66 = !{i64 2148991853, i64 2148991900, i64 2148991906, i64 2148991943, i64 2148991961, i64 2148993302, i64 2148993350, i64 2148993398, i64 2148993461, i64 2148993510, i64 2148992039, i64 2148992064, i64 2148992090, i64 2148992096, i64 2148992968, i64 2148993008, i64 2148993026, i64 2148993058, i64 2148993086, i64 2148993140, i64 2148993160, i64 2148993257, i64 2148992119, i64 2148992133, i64 2148992139, i64 2148992189, i64 2148992235, i64 2148992268}
!67 = !{i64 2147887042, i64 2147887563, i64 2147887593, i64 2147887619, i64 2147887651, i64 2147887680}
