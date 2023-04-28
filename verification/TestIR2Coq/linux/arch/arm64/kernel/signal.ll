; ModuleID = 'arch/arm64/kernel/signal.c'
source_filename = "arch/arm64/kernel/signal.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.76, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.7, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.81, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.33, %struct.list_head, %struct.list_head, %union.anon.34 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.14, i8* }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.35 }
%union.anon.35 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.36, %union.anon.37 }
%union.anon.36 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.37 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.41 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.39, %struct.qspinlock }
%union.anon.39 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.41 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.81 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.57 = type { %struct.atomic_t }
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
%struct.uid_gid_map = type { i32, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30, [48 x i8] }
%struct.anon.30 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.31, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.13, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.58 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.43 = type { %struct.callback_head }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.63 }
%struct.anon.63 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.67 }
%struct.anon.67 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.75, i32, [12 x i8] }
%union.anon.75 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.76 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.77, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.77 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.rt_sigframe = type { %struct.siginfo, %struct.ucontext }
%struct.siginfo = type { %union.anon.82 }
%union.anon.82 = type { %struct.anon.83, [80 x i8] }
%struct.anon.83 = type { i32, i32, i32, %union.__sifields }
%struct.ucontext = type { i64, %struct.ucontext*, %struct.sigaltstack, %struct.sigset_t, [120 x i8], [8 x i8], %struct.sigcontext }
%struct.sigaltstack = type { i8*, i32, i64 }
%struct.sigcontext = type { i64, [31 x i64], i64, i64, i64, [8 x i8], [4096 x i8] }
%struct.user_ctxs = type { %struct.fpsimd_context*, %struct.sve_context* }
%struct.fpsimd_context = type { %struct._aarch64_ctx, i32, i32, [32 x i128] }
%struct._aarch64_ctx = type { i32, i32 }
%struct.sve_context = type { %struct._aarch64_ctx, i16, [3 x i16] }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.rt_sigframe_user_layout = type { %struct.rt_sigframe*, %struct.frame_record*, i64, i64, i64, i64, i64, i64, i64 }
%struct.frame_record = type { i64, i64 }

@signal_minsigstksz = dso_local local_unnamed_addr global i64 0, section ".data..ro_after_init", align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rt_sigreturn(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %1) #11
  %add.ptr2 = getelementptr i8, i8* %call1, i64 16048
  %2 = bitcast i8* %add.ptr2 to %struct.pt_regs*
  %fn = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 49, i32 1
  store i64 (%struct.restart_block*)* @do_no_restart_syscall, i64 (%struct.restart_block*)** %fn, align 8
  %sp = getelementptr i8, i8* %call1, i64 16296
  %3 = bitcast i8* %sp to i64*
  %4 = load i64, i64* %3, align 8
  %and = and i64 %4, 15
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %badframe

if.end:                                           ; preds = %entry
  %5 = inttoptr i64 %4 to %struct.rt_sigframe*
  %6 = inttoptr i64 %4 to i8*
  %call5 = call fastcc i64 @__range_ok(i8* noundef %6, i64 noundef 4688) #11
  %tobool6.not = icmp eq i64 %call5, 0
  br i1 %tobool6.not, label %badframe, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i32 @restore_sigframe(%struct.pt_regs* noundef %2, %struct.rt_sigframe* noundef %5) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %badframe

if.end12:                                         ; preds = %if.end8
  %uc_stack = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %5, i64 0, i32 1, i32 2
  %call13 = call i32 @restore_altstack(%struct.sigaltstack* noundef %uc_stack) #12
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %badframe

if.end16:                                         ; preds = %if.end12
  %arrayidx = bitcast i8* %add.ptr2 to i64*
  %7 = load i64, i64* %arrayidx, align 8
  br label %cleanup

badframe:                                         ; preds = %if.end12, %if.end8, %if.end, %entry
  %8 = load i64, i64* %3, align 8
  call void @arm64_notify_segfault(i64 noundef %8) #12
  br label %cleanup

cleanup:                                          ; preds = %badframe, %if.end16
  %retval.0 = phi i64 [ 0, %badframe ], [ %7, %if.end16 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #2 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @do_no_restart_syscall(%struct.restart_block* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #13, !srcloc !8
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @restore_sigframe(%struct.pt_regs* noundef %regs, %struct.rt_sigframe* noundef %sf) unnamed_addr #0 {
entry:
  %set = alloca %struct.sigset_t, align 8
  %user = alloca %struct.user_ctxs, align 8
  %0 = bitcast %struct.sigset_t* %set to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0, !annotation !9
  store i64 0, i64* %1, align 8, !annotation !9
  %2 = bitcast %struct.user_ctxs* %user to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !9
  %uc_sigmask = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %sf, i64 0, i32 1, i32 3
  %3 = bitcast %struct.sigset_t* %uc_sigmask to i8*
  %call2.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %3) #12
  %call3.i = call i64 @__arch_copy_from_user(i8* noundef nonnull %0, i8* noundef %call2.i, i64 noundef 8) #12
  %conv = trunc i64 %call3.i to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %do.body.preheader

if.then:                                          ; preds = %entry
  call void @set_current_blocked(%struct.sigset_t* noundef nonnull %set) #12
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %if.end22
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end22 ], [ 0, %do.body.preheader ]
  %err.0176 = phi i32 [ %err.1, %if.end22 ], [ %conv, %do.body.preheader ]
  %arrayidx = getelementptr %struct.rt_sigframe, %struct.rt_sigframe* %sf, i64 0, i32 1, i32 6, i32 1, i64 %indvars.iv
  %4 = bitcast i64* %arrayidx to i8*
  %call6 = call fastcc i64 @__range_ok(i8* noundef %4, i64 noundef 8) #11
  %tobool.not = icmp eq i64 %call6, 0
  br i1 %tobool.not, label %if.end22, label %if.then7

if.then7:                                         ; preds = %do.body
  %call8 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #11
  %5 = bitcast i8* %call8 to i64*
  %6 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %5, i32 -14, i32 %err.0176) #13, !srcloc !10
  %asmresult = extractvalue { i32, i64 } %6, 0
  %asmresult12 = extractvalue { i32, i64 } %6, 1
  br label %if.end22

if.end22:                                         ; preds = %do.body, %if.then7
  %asmresult12.sink = phi i64 [ %asmresult12, %if.then7 ], [ 0, %do.body ]
  %err.1 = phi i32 [ %asmresult, %if.then7 ], [ -14, %do.body ]
  %7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 %indvars.iv
  store i64 %asmresult12.sink, i64* %7, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond.not, label %do.body25, label %do.body

do.body25:                                        ; preds = %if.end22
  %sp = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %sf, i64 0, i32 1, i32 6, i32 2
  %8 = bitcast i64* %sp to i8*
  %call29 = call fastcc i64 @__range_ok(i8* noundef %8, i64 noundef 8) #11
  %tobool30.not = icmp eq i64 %call29, 0
  br i1 %tobool30.not, label %if.end47, label %if.then31

if.then31:                                        ; preds = %do.body25
  %call32 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %8) #11
  %9 = bitcast i8* %call32 to i64*
  %10 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %9, i32 -14, i32 %err.1) #13, !srcloc !11
  %asmresult37 = extractvalue { i32, i64 } %10, 0
  %asmresult38 = extractvalue { i32, i64 } %10, 1
  br label %if.end47

if.end47:                                         ; preds = %do.body25, %if.then31
  %asmresult38.sink = phi i64 [ %asmresult38, %if.then31 ], [ 0, %do.body25 ]
  %err.2 = phi i32 [ %asmresult37, %if.then31 ], [ -14, %do.body25 ]
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  store i64 %asmresult38.sink, i64* %11, align 8
  %pc = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %sf, i64 0, i32 1, i32 6, i32 3
  %12 = bitcast i64* %pc to i8*
  %call54 = call fastcc i64 @__range_ok(i8* noundef %12, i64 noundef 8) #11
  %tobool55.not = icmp eq i64 %call54, 0
  br i1 %tobool55.not, label %if.end72, label %if.then56

if.then56:                                        ; preds = %if.end47
  %call57 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %12) #11
  %13 = bitcast i8* %call57 to i64*
  %14 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %13, i32 -14, i32 %err.2) #13, !srcloc !12
  %asmresult62 = extractvalue { i32, i64 } %14, 0
  %asmresult63 = extractvalue { i32, i64 } %14, 1
  br label %if.end72

if.end72:                                         ; preds = %if.end47, %if.then56
  %asmresult63.sink = phi i64 [ %asmresult63, %if.then56 ], [ 0, %if.end47 ]
  %err.3 = phi i32 [ %asmresult62, %if.then56 ], [ -14, %if.end47 ]
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  store i64 %asmresult63.sink, i64* %15, align 8
  %pstate = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %sf, i64 0, i32 1, i32 6, i32 4
  %16 = bitcast i64* %pstate to i8*
  %call79 = call fastcc i64 @__range_ok(i8* noundef %16, i64 noundef 8) #11
  %tobool80.not = icmp eq i64 %call79, 0
  br i1 %tobool80.not, label %if.end97, label %if.then81

if.then81:                                        ; preds = %if.end72
  %call82 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %16) #11
  %17 = bitcast i8* %call82 to i64*
  %18 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %17, i32 -14, i32 %err.3) #13, !srcloc !13
  %asmresult87 = extractvalue { i32, i64 } %18, 0
  %asmresult88 = extractvalue { i32, i64 } %18, 1
  br label %if.end97

if.end97:                                         ; preds = %if.end72, %if.then81
  %asmresult88.sink = phi i64 [ %asmresult88, %if.then81 ], [ 0, %if.end72 ]
  %err.4 = phi i32 [ %asmresult87, %if.then81 ], [ -14, %if.end72 ]
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  store i64 %asmresult88.sink, i64* %19, align 8
  call fastcc void @forget_syscall(%struct.pt_regs* noundef %regs) #11
  %user_regs = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0
  %20 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %21 = inttoptr i64 %20 to %struct.task_struct*
  %call101 = call i32 @valid_user_regs(%struct.user_pt_regs* noundef %user_regs, %struct.task_struct* noundef %21) #12
  %tobool102.not = icmp eq i32 %call101, 0
  %lnot.ext = zext i1 %tobool102.not to i32
  %or = or i32 %err.4, %lnot.ext
  %cmp103 = icmp eq i32 %or, 0
  br i1 %cmp103, label %if.end107, label %cleanup

if.end107:                                        ; preds = %if.end97
  %call106 = call fastcc i32 @parse_user_sigframe(%struct.user_ctxs* noundef nonnull %user, %struct.rt_sigframe* noundef %sf) #11
  %cmp108 = icmp eq i32 %call106, 0
  br i1 %cmp108, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end107
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %land.lhs.true
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #12
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %cleanup, label %if.then112

system_supports_fpsimd.exit:                      ; preds = %land.lhs.true
  %call6.i.i = call fastcc i1 @cpus_have_cap() #12
  br i1 %call6.i.i, label %cleanup, label %if.then112

if.then112:                                       ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  %fpsimd = getelementptr inbounds %struct.user_ctxs, %struct.user_ctxs* %user, i64 0, i32 0
  %22 = load %struct.fpsimd_context*, %struct.fpsimd_context** %fpsimd, align 8
  %tobool113.not = icmp ne %struct.fpsimd_context* %22, null
  %sve = getelementptr inbounds %struct.user_ctxs, %struct.user_ctxs* %user, i64 0, i32 1
  %23 = load %struct.sve_context*, %struct.sve_context** %sve, align 8
  %tobool116.not = icmp eq %struct.sve_context* %23, null
  %or.cond = select i1 %tobool113.not, i1 %tobool116.not, i1 false
  br i1 %or.cond, label %if.else122, label %cleanup

if.else122:                                       ; preds = %if.then112
  %call124 = call fastcc i32 @restore_fpsimd_context(%struct.fpsimd_context* noundef nonnull %22) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i, %if.end97, %if.end107, %system_supports_fpsimd.exit, %if.else122, %if.then112
  %retval.0 = phi i32 [ -22, %if.then112 ], [ %call124, %if.else122 ], [ 0, %system_supports_fpsimd.exit ], [ %call106, %if.end107 ], [ %or, %if.end97 ], [ 0, %if.then3.i.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restore_altstack(%struct.sigaltstack* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm64_notify_segfault(i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_notify_resume(%struct.pt_regs* noundef %regs, i64 noundef %thread_flags) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end22, %entry
  %thread_flags.addr.0 = phi i64 [ %thread_flags, %entry ], [ %5, %if.end22 ]
  %and = and i64 %thread_flags.addr.0, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  call fastcc void @local_daif_restore(i64 noundef 192) #11
  call void @schedule() #12
  br label %if.end22

if.else:                                          ; preds = %do.body
  call fastcc void @local_daif_restore(i64 noundef 0) #11
  %and4 = and i64 %thread_flags.addr.0, 32
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.else
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 5) #11
  %call8 = call i32 @send_sig_fault(i32 noundef 11, i32 noundef 8, i8* noundef null, %struct.task_struct* noundef %1) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else
  %and10 = and i64 %thread_flags.addr.0, 65
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call fastcc void @do_signal(%struct.pt_regs* noundef %regs) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  %and14 = and i64 %thread_flags.addr.0, 4
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  call fastcc void @tracehook_notify_resume(%struct.pt_regs* noundef %regs) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %and18 = and i64 %thread_flags.addr.0, 8
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @fpsimd_restore_current_state() #12
  br label %if.end22

if.end22:                                         ; preds = %if.end17, %if.then20, %if.then
  call fastcc void @local_daif_mask() #11
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 0, i32 0
  %5 = load volatile i64, i64* %flags, align 8
  %and25 = and i64 %5, 127
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %do.end27, label %do.body

do.end27:                                         ; preds = %if.end22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_daif_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect "msr daif, ${0:x}", "rZ"(i64 %flags) #13, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #0 {
entry:
  %0 = zext i32 %flag to i64
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef %0, i64* noundef %flags) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig_fault(i32 noundef, i32 noundef, i8* noundef, %struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_signal(%struct.pt_regs* noundef %regs) unnamed_addr #0 {
entry:
  %ksig = alloca %struct.ksignal, align 8
  %0 = bitcast %struct.ksignal* %ksig to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !9
  %call = call fastcc i1 @in_syscall(%struct.pt_regs* noundef %regs) #11
  br i1 %call, label %if.then, label %if.end.thread

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %2 = load i64, i64* %1, align 8
  %sub = add i64 %2, -4
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %3 = load i64, i64* %arrayidx, align 8
  %conv = trunc i64 %3 to i32
  call fastcc void @forget_syscall(%struct.pt_regs* noundef %regs) #11
  switch i32 %conv, label %if.end [
    i32 -514, label %sw.bb
    i32 -512, label %sw.bb
    i32 -513, label %sw.bb
    i32 -516, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then, %if.then
  %orig_x0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 1
  %4 = load i64, i64* %orig_x0, align 8
  store i64 %4, i64* %arrayidx, align 8
  store i64 %sub, i64* %1, align 8
  br label %if.end

if.end:                                           ; preds = %sw.bb, %if.then
  %call5 = call i1 @get_signal(%struct.ksignal* noundef nonnull %ksig) #12
  br i1 %call5, label %if.then6, label %land.lhs.true25

if.end.thread:                                    ; preds = %entry
  %call566 = call i1 @get_signal(%struct.ksignal* noundef nonnull %ksig) #12
  br i1 %call566, label %if.then6, label %if.end35

if.then6:                                         ; preds = %if.end.thread, %if.end
  %retval.071 = phi i32 [ 0, %if.end.thread ], [ %conv, %if.end ]
  %restart_addr.068 = phi i64 [ 0, %if.end.thread ], [ %sub, %if.end ]
  %continue_addr.067 = phi i64 [ 0, %if.end.thread ], [ %2, %if.end ]
  %5 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %cmp = icmp eq i64 %6, %restart_addr.068
  br i1 %cmp, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.then6
  %7 = and i32 %retval.071, -3
  %8 = icmp eq i32 %7, -516
  br i1 %8, label %if.then18, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true
  %cmp14 = icmp eq i32 %retval.071, -512
  br i1 %cmp14, label %land.lhs.true16, label %if.end21

land.lhs.true16:                                  ; preds = %lor.lhs.false13
  %sa_flags = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 0, i32 0, i32 1
  %9 = load i64, i64* %sa_flags, align 8
  %and = and i64 %9, 268435456
  %tobool17.not = icmp eq i64 %and, 0
  br i1 %tobool17.not, label %if.then18, label %if.end21

if.then18:                                        ; preds = %land.lhs.true16, %land.lhs.true
  %10 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %11 = inttoptr i64 %10 to %struct.task_struct*
  call fastcc void @syscall_set_return_value(%struct.task_struct* noundef %11, %struct.pt_regs* noundef %regs) #11
  store i64 %continue_addr.067, i64* %5, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true16, %lor.lhs.false13, %if.then6
  call fastcc void @handle_signal(%struct.ksignal* noundef nonnull %ksig, %struct.pt_regs* noundef %regs) #11
  br label %cleanup

land.lhs.true25:                                  ; preds = %if.end
  %12 = load i64, i64* %1, align 8
  %cmp27 = icmp eq i64 %12, %sub
  br i1 %cmp27, label %if.then29, label %if.end35

if.then29:                                        ; preds = %land.lhs.true25
  %cmp30 = icmp eq i32 %conv, -516
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then29
  call fastcc void @setup_restart_syscall(%struct.pt_regs* noundef %regs) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then29
  %13 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %14 = inttoptr i64 %13 to %struct.task_struct*
  call void @user_rewind_single_step(%struct.task_struct* noundef %14) #12
  br label %if.end35

if.end35:                                         ; preds = %if.end.thread, %if.end33, %land.lhs.true25
  call fastcc void @restore_saved_sigmask() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end21
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tracehook_notify_resume(%struct.pt_regs* noundef %regs) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 2) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  %task_works = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 96
  %3 = load %struct.callback_head*, %struct.callback_head** %task_works, align 32
  %tobool.not = icmp eq %struct.callback_head* %3, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void @task_work_run() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @rseq_handle_notify_resume(%struct.ksignal* noundef null, %struct.pt_regs* noundef %regs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_restore_current_state() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_daif_mask() unnamed_addr #0 {
entry:
  call void asm sideeffect "msr\09daifset, #0xf\09\09// local_daif_mask\0A", "~{memory}"() #13, !srcloc !17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @minsigstksz_setup() local_unnamed_addr #4 section ".init.text" {
entry:
  %user = alloca %struct.rt_sigframe_user_layout, align 8
  %0 = bitcast %struct.rt_sigframe_user_layout* %user to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !9
  call fastcc void @init_user_layout(%struct.rt_sigframe_user_layout* noundef nonnull %user) #11
  %call = call fastcc i32 @setup_sigframe_layout(%struct.rt_sigframe_user_layout* noundef nonnull %user, i1 noundef true) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end17, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 972; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !18
  br label %cleanup

if.end17:                                         ; preds = %entry
  %call18 = call fastcc i64 @sigframe_size(%struct.rt_sigframe_user_layout* noundef nonnull %user) #11
  %add19 = add i64 %call18, 32
  store i64 %add19, i64* @signal_minsigstksz, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end17
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_user_layout(%struct.rt_sigframe_user_layout* noundef %user) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rt_sigframe_user_layout* %user to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 72) #12
  %size = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 2
  store i64 592, i64* %size, align 8
  %limit = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 3
  store i64 4640, i64* %limit, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @setup_sigframe_layout(%struct.rt_sigframe_user_layout* noundef %user, i1 noundef %add_all) unnamed_addr #0 {
entry:
  %fpsimd_offset = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 4
  %call = call fastcc i32 @sigframe_alloc(%struct.rt_sigframe_user_layout* noundef %user, i64* noundef %fpsimd_offset, i64 noundef 528) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup50

if.end:                                           ; preds = %entry
  br i1 %add_all, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fault_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 7
  %2 = load i64, i64* %fault_code, align 16
  %tobool3.not = icmp eq i64 %2, 0
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %esr_offset = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 5
  %call5 = call fastcc i32 @sigframe_alloc(%struct.rt_sigframe_user_layout* noundef %user, i64* noundef %esr_offset, i64 noundef 16) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %cleanup50

if.end9:                                          ; preds = %if.then4, %lor.lhs.false
  %call49 = call fastcc i32 @sigframe_alloc_end(%struct.rt_sigframe_user_layout* noundef %user) #11
  br label %cleanup50

cleanup50:                                        ; preds = %if.then4, %entry, %if.end9
  %retval.1 = phi i32 [ %call49, %if.end9 ], [ %call, %entry ], [ %call5, %if.then4 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @sigframe_size(%struct.rt_sigframe_user_layout* nocapture noundef readonly %user) unnamed_addr #2 {
entry:
  %size = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 2
  %0 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %0, 4688
  %cond = select i1 %cmp, i64 %0, i64 4688
  %sub = add i64 %cond, -1
  %or = or i64 %sub, 15
  %add = add i64 %or, 1
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_current_blocked(%struct.sigset_t* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #13, !srcloc !19
  call void asm sideeffect "hint #20", "~{memory}"() #13, !srcloc !20
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @forget_syscall(%struct.pt_regs* nocapture noundef writeonly %regs) unnamed_addr #6 {
entry:
  %syscallno = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 2
  store i32 -1, i32* %syscallno, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @valid_user_regs(%struct.user_pt_regs* noundef, %struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @parse_user_sigframe(%struct.user_ctxs* nocapture noundef %user, %struct.rt_sigframe* noundef %sf) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %sf, i64 0, i32 1, i32 6, i32 6, i64 0
  %fpsimd = getelementptr inbounds %struct.user_ctxs, %struct.user_ctxs* %user, i64 0, i32 0
  store %struct.fpsimd_context* null, %struct.fpsimd_context** %fpsimd, align 8
  %sve = getelementptr inbounds %struct.user_ctxs, %struct.user_ctxs* %user, i64 0, i32 1
  store %struct.sve_context* null, %struct.sve_context** %sve, align 8
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 15
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %while.cond.preheader, label %cleanup248

while.cond.preheader:                             ; preds = %entry
  %2 = getelementptr %struct.rt_sigframe, %struct.rt_sigframe* %sf, i64 13, i32 1, i32 6, i32 6, i64 4000
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %3 = bitcast %struct.user_ctxs* %user to i8**
  br label %if.end7

if.end7:                                          ; preds = %while.cond.preheader, %cleanup
  %sub427 = phi i64 [ 4096, %while.cond.preheader ], [ %sub, %cleanup ]
  %base.0426 = phi i8* [ %0, %while.cond.preheader ], [ %base.1, %cleanup ]
  %offset.0425 = phi i64 [ 0, %while.cond.preheader ], [ %offset.1, %cleanup ]
  %limit.0424 = phi i64 [ 4096, %while.cond.preheader ], [ %limit.1, %cleanup ]
  %have_extra_context.0.off0423 = phi i1 [ false, %while.cond.preheader ], [ %have_extra_context.1.off0, %cleanup ]
  %add.ptr = getelementptr i8, i8* %base.0426, i64 %offset.0425
  %call = call fastcc i64 @__range_ok(i8* noundef %add.ptr, i64 noundef 4) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end18, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr) #11
  %4 = bitcast i8* %call10 to i32*
  %5 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %4, i32 -14, i32 0) #13, !srcloc !21
  %asmresult = extractvalue { i32, i64 } %5, 0
  %asmresult14 = extractvalue { i32, i64 } %5, 1
  %conv = trunc i64 %asmresult14 to i32
  br label %if.end18

if.end18:                                         ; preds = %if.end7, %if.then9
  %err.0 = phi i32 [ %asmresult, %if.then9 ], [ -14, %if.end7 ]
  %magic.0 = phi i32 [ %conv, %if.then9 ], [ 0, %if.end7 ]
  %size23 = getelementptr inbounds i8, i8* %add.ptr, i64 4
  %call24 = call fastcc i64 @__range_ok(i8* noundef %size23, i64 noundef 4) #11
  %tobool25.not = icmp eq i64 %call24, 0
  br i1 %tobool25.not, label %cleanup248, label %if.end41

if.end41:                                         ; preds = %if.end18
  %call27 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %size23) #11
  %6 = bitcast i8* %call27 to i32*
  %7 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %6, i32 -14, i32 %err.0) #13, !srcloc !22
  %asmresult32 = extractvalue { i32, i64 } %7, 0
  %asmresult33 = extractvalue { i32, i64 } %7, 1
  %conv34 = trunc i64 %asmresult33 to i32
  %tobool44.not = icmp eq i32 %asmresult32, 0
  br i1 %tobool44.not, label %if.end46, label %cleanup248.loopexit.split.loop.exit

if.end46:                                         ; preds = %if.end41
  %conv48 = and i64 %asmresult33, 4294967295
  %cmp49 = icmp ult i64 %sub427, %conv48
  br i1 %cmp49, label %cleanup.thread, label %if.end52

if.end52:                                         ; preds = %if.end46
  switch i32 %magic.0, label %cleanup.thread [
    i32 0, label %sw.bb
    i32 1179680769, label %sw.bb56
    i32 1163088385, label %sw.epilog
    i32 1163416577, label %sw.bb84
  ]

sw.bb:                                            ; preds = %if.end52
  %asmresult33.le = extractvalue { i32, i64 } %7, 1
  %conv34.le = trunc i64 %asmresult33.le to i32
  %tobool53.not = icmp eq i32 %conv34.le, 0
  br i1 %tobool53.not, label %cleanup248, label %cleanup.thread

sw.bb56:                                          ; preds = %if.end52
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %sw.bb56
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #12
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %cleanup.thread, label %if.end59

system_supports_fpsimd.exit:                      ; preds = %sw.bb56
  %call6.i.i = call fastcc i1 @cpus_have_cap() #12
  br i1 %call6.i.i, label %cleanup.thread, label %if.end59

if.end59:                                         ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  %8 = load %struct.fpsimd_context*, %struct.fpsimd_context** %fpsimd, align 8
  %tobool61.not = icmp ne %struct.fpsimd_context* %8, null
  %cmp65 = icmp ult i32 %conv34, 528
  %or.cond369 = select i1 %tobool61.not, i1 true, i1 %cmp65
  br i1 %or.cond369, label %cleanup.thread, label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.end59
  store i8* %add.ptr, i8** %3, align 8
  %add407 = add i64 %conv48, %offset.0425
  br label %cleanup

sw.bb84:                                          ; preds = %if.end52
  %cmp89 = icmp ult i32 %conv34, 32
  %or.cond370 = select i1 %have_extra_context.0.off0423, i1 true, i1 %cmp89
  br i1 %or.cond370, label %cleanup.thread, label %if.end92

if.end92:                                         ; preds = %sw.bb84
  %add.ptr93 = getelementptr i8, i8* %add.ptr, i64 %conv48
  %datap = getelementptr inbounds i8, i8* %add.ptr, i64 8
  %call96 = call fastcc i64 @__range_ok(i8* noundef %datap, i64 noundef 8) #11
  %tobool97.not = icmp eq i64 %call96, 0
  br i1 %tobool97.not, label %if.end112, label %if.then98

if.then98:                                        ; preds = %if.end92
  %call99 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %datap) #11
  %9 = bitcast i8* %call99 to i64*
  %10 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %9, i32 -14, i32 0) #13, !srcloc !23
  %asmresult104 = extractvalue { i32, i64 } %10, 0
  %asmresult105 = extractvalue { i32, i64 } %10, 1
  br label %if.end112

if.end112:                                        ; preds = %if.end92, %if.then98
  %err.2 = phi i32 [ %asmresult104, %if.then98 ], [ -14, %if.end92 ]
  %extra_datap.0 = phi i64 [ %asmresult105, %if.then98 ], [ 0, %if.end92 ]
  %size117 = getelementptr inbounds i8, i8* %add.ptr, i64 16
  %call118 = call fastcc i64 @__range_ok(i8* noundef %size117, i64 noundef 4) #11
  %tobool119.not = icmp eq i64 %call118, 0
  br i1 %tobool119.not, label %cleanup248, label %if.end135

if.end135:                                        ; preds = %if.end112
  %call121 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %size117) #11
  %11 = bitcast i8* %call121 to i32*
  %12 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %11, i32 -14, i32 %err.2) #13, !srcloc !24
  %asmresult126 = extractvalue { i32, i64 } %12, 0
  %asmresult127 = extractvalue { i32, i64 } %12, 1
  %tobool138.not = icmp eq i32 %asmresult126, 0
  br i1 %tobool138.not, label %if.end140, label %cleanup248.loopexit.split.loop.exit436

if.end140:                                        ; preds = %if.end135
  %sub143 = sub i64 %sub427, %conv48
  %cmp144 = icmp ult i64 %sub143, 16
  br i1 %cmp144, label %cleanup.thread, label %if.end147

if.end147:                                        ; preds = %if.end140
  %add.ptr148 = getelementptr i8, i8* %add.ptr93, i64 16
  %call152 = call fastcc i64 @__range_ok(i8* noundef %add.ptr93, i64 noundef 4) #11
  %tobool153.not = icmp eq i64 %call152, 0
  br i1 %tobool153.not, label %if.end169, label %if.then154

if.then154:                                       ; preds = %if.end147
  %call155 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr93) #11
  %13 = bitcast i8* %call155 to i32*
  %14 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %13, i32 -14, i32 0) #13, !srcloc !25
  %asmresult160 = extractvalue { i32, i64 } %14, 0
  %asmresult161 = extractvalue { i32, i64 } %14, 1
  %conv162 = trunc i64 %asmresult161 to i32
  br label %if.end169

if.end169:                                        ; preds = %if.end147, %if.then154
  %err.4 = phi i32 [ %asmresult160, %if.then154 ], [ -14, %if.end147 ]
  %end_magic.0 = phi i32 [ %conv162, %if.then154 ], [ 0, %if.end147 ]
  %size174 = getelementptr inbounds i8, i8* %add.ptr93, i64 4
  %call175 = call fastcc i64 @__range_ok(i8* noundef %size174, i64 noundef 4) #11
  %tobool176.not = icmp eq i64 %call175, 0
  br i1 %tobool176.not, label %cleanup248, label %if.end192

if.end192:                                        ; preds = %if.end169
  %call178 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %size174) #11
  %15 = bitcast i8* %call178 to i32*
  %16 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %15, i32 -14, i32 %err.4) #13, !srcloc !26
  %asmresult183 = extractvalue { i32, i64 } %16, 0
  %tobool195.not = icmp eq i32 %asmresult183, 0
  br i1 %tobool195.not, label %if.end197, label %cleanup248.loopexit.split.loop.exit438

if.end197:                                        ; preds = %if.end192
  %asmresult184 = extractvalue { i32, i64 } %16, 1
  %conv185 = trunc i64 %asmresult184 to i32
  %tobool198 = icmp ne i32 %end_magic.0, 0
  %tobool199 = icmp ne i32 %conv185, 0
  %or.cond = select i1 %tobool198, i1 true, i1 %tobool199
  br i1 %or.cond, label %cleanup.thread, label %if.end201

if.end201:                                        ; preds = %if.end197
  %17 = inttoptr i64 %extra_datap.0 to i8*
  %and202 = and i64 %extra_datap.0, 15
  %cmp203 = icmp eq i64 %and202, 0
  %and207409 = and i64 %asmresult127, 15
  %cmp208 = icmp eq i64 %and207409, 0
  %or.cond371 = select i1 %cmp203, i1 %cmp208, i1 false
  %cmp212.not = icmp eq i8* %add.ptr148, %17
  %or.cond372 = select i1 %or.cond371, i1 %cmp212.not, i1 false
  br i1 %or.cond372, label %if.end215, label %cleanup.thread

if.end215:                                        ; preds = %if.end201
  %conv216 = and i64 %asmresult127, 4294967295
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr148 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp218 = icmp slt i64 %sub.ptr.sub, %conv216
  br i1 %cmp218, label %cleanup.thread, label %if.end221

if.end221:                                        ; preds = %if.end215
  %call223 = call fastcc i64 @__range_ok(i8* noundef %add.ptr148, i64 noundef %conv216) #11
  %tobool224.not = icmp eq i64 %call223, 0
  br i1 %tobool224.not, label %cleanup.thread, label %cleanup

sw.epilog:                                        ; preds = %if.end52
  %cmp228 = icmp ult i32 %conv34, 8
  %add = add i64 %conv48, %offset.0425
  br i1 %cmp228, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %cleanup, %if.end46, %system_supports_fpsimd.exit, %if.end59, %sw.bb84, %if.end140, %if.end197, %if.end201, %if.end215, %if.end52, %if.end221, %sw.epilog, %if.then3.i.i, %sw.bb
  br label %cleanup248

cleanup:                                          ; preds = %sw.epilog.thread, %sw.epilog, %if.end221
  %have_extra_context.1.off0 = phi i1 [ true, %if.end221 ], [ %have_extra_context.0.off0423, %sw.epilog ], [ %have_extra_context.0.off0423, %sw.epilog.thread ]
  %limit.1 = phi i64 [ %conv216, %if.end221 ], [ %limit.0424, %sw.epilog ], [ %limit.0424, %sw.epilog.thread ]
  %offset.1 = phi i64 [ 0, %if.end221 ], [ %add, %sw.epilog ], [ %add407, %sw.epilog.thread ]
  %base.1 = phi i8* [ %add.ptr148, %if.end221 ], [ %base.0426, %sw.epilog ], [ %base.0426, %sw.epilog.thread ]
  %sub = sub i64 %limit.1, %offset.1
  %cmp1 = icmp ugt i64 %sub, 7
  %and4 = and i64 %offset.1, 15
  %cmp5 = icmp eq i64 %and4, 0
  %or.cond368 = and i1 %cmp1, %cmp5
  br i1 %or.cond368, label %if.end7, label %cleanup.thread

cleanup248.loopexit.split.loop.exit:              ; preds = %if.end41
  %asmresult32.le = extractvalue { i32, i64 } %7, 0
  br label %cleanup248

cleanup248.loopexit.split.loop.exit436:           ; preds = %if.end135
  %asmresult126.le = extractvalue { i32, i64 } %12, 0
  br label %cleanup248

cleanup248.loopexit.split.loop.exit438:           ; preds = %if.end192
  %asmresult183.le = extractvalue { i32, i64 } %16, 0
  br label %cleanup248

cleanup248:                                       ; preds = %if.end169, %if.end112, %if.end18, %cleanup248.loopexit.split.loop.exit, %cleanup248.loopexit.split.loop.exit436, %cleanup248.loopexit.split.loop.exit438, %entry, %cleanup.thread, %sw.bb
  %retval.2 = phi i32 [ 0, %sw.bb ], [ -22, %cleanup.thread ], [ -22, %entry ], [ %asmresult32.le, %cleanup248.loopexit.split.loop.exit ], [ %asmresult126.le, %cleanup248.loopexit.split.loop.exit436 ], [ %asmresult183.le, %cleanup248.loopexit.split.loop.exit438 ], [ -14, %if.end18 ], [ -14, %if.end112 ], [ -14, %if.end169 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @restore_fpsimd_context(%struct.fpsimd_context* noundef %ctx) unnamed_addr #0 {
entry:
  %fpsimd = alloca %struct.user_fpsimd_state, align 16
  %0 = bitcast %struct.user_fpsimd_state* %fpsimd to i8*
  call void @llvm.lifetime.start.p0i8(i64 528, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(528) %0, i8 0, i64 528, i1 false), !annotation !9
  %1 = bitcast %struct.fpsimd_context* %ctx to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %1, i64 noundef 4) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %1) #11
  %2 = bitcast i8* %call2 to i32*
  %3 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %2, i32 -14, i32 0) #13, !srcloc !27
  %asmresult = extractvalue { i32, i64 } %3, 0
  %asmresult6 = extractvalue { i32, i64 } %3, 1
  %conv = trunc i64 %asmresult6 to i32
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %err.0 = phi i32 [ %asmresult, %if.then ], [ -14, %entry ]
  %magic.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  %size15 = getelementptr inbounds %struct.fpsimd_context, %struct.fpsimd_context* %ctx, i64 0, i32 0, i32 1
  %4 = bitcast i32* %size15 to i8*
  %call16 = call fastcc i64 @__range_ok(i8* noundef %4, i64 noundef 4) #11
  %tobool17.not = icmp eq i64 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.end
  %call19 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #11
  %5 = bitcast i8* %call19 to i32*
  %6 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %5, i32 -14, i32 %err.0) #13, !srcloc !28
  %asmresult24 = extractvalue { i32, i64 } %6, 0
  %phi.cmp = icmp eq i32 %asmresult24, 0
  br i1 %phi.cmp, label %if.end38, label %cleanup

if.end38:                                         ; preds = %if.end33
  %asmresult25 = extractvalue { i32, i64 } %6, 1
  %phi.cast = and i64 %asmresult25, 4294967295
  %cmp = icmp ne i32 %magic.0, 1179680769
  %cmp41 = icmp ne i64 %phi.cast, 528
  %or.cond = select i1 %cmp, i1 true, i1 %cmp41
  br i1 %or.cond, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.end38
  %arraydecay46 = getelementptr inbounds %struct.fpsimd_context, %struct.fpsimd_context* %ctx, i64 0, i32 3, i64 0
  %7 = bitcast i128* %arraydecay46 to i8*
  %call2.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %7) #12
  %call3.i = call i64 @__arch_copy_from_user(i8* noundef nonnull %0, i8* noundef %call2.i, i64 noundef 512) #12
  %fpsr = getelementptr inbounds %struct.fpsimd_context, %struct.fpsimd_context* %ctx, i64 0, i32 1
  %8 = bitcast i32* %fpsr to i8*
  %call51 = call fastcc i64 @__range_ok(i8* noundef %8, i64 noundef 4) #11
  %tobool52.not = icmp eq i64 %call51, 0
  br i1 %tobool52.not, label %if.end70, label %if.then53

if.then53:                                        ; preds = %if.end44
  %conv48 = trunc i64 %call3.i to i32
  %call54 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %8) #11
  %9 = bitcast i8* %call54 to i32*
  %10 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %9, i32 -14, i32 %conv48) #13, !srcloc !29
  %asmresult59 = extractvalue { i32, i64 } %10, 0
  %asmresult60 = extractvalue { i32, i64 } %10, 1
  %conv61 = trunc i64 %asmresult60 to i32
  br label %if.end70

if.end70:                                         ; preds = %if.end44, %if.then53
  %conv61.sink = phi i32 [ %conv61, %if.then53 ], [ 0, %if.end44 ]
  %err.2 = phi i32 [ %asmresult59, %if.then53 ], [ -14, %if.end44 ]
  %11 = getelementptr inbounds %struct.user_fpsimd_state, %struct.user_fpsimd_state* %fpsimd, i64 0, i32 1
  store i32 %conv61.sink, i32* %11, align 16
  %fpcr = getelementptr inbounds %struct.fpsimd_context, %struct.fpsimd_context* %ctx, i64 0, i32 2
  %12 = bitcast i32* %fpcr to i8*
  %call75 = call fastcc i64 @__range_ok(i8* noundef %12, i64 noundef 4) #11
  %tobool76.not = icmp eq i64 %call75, 0
  br i1 %tobool76.not, label %if.else92, label %if.then77

if.then77:                                        ; preds = %if.end70
  %call78 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %12) #11
  %13 = bitcast i8* %call78 to i32*
  %14 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %13, i32 -14, i32 %err.2) #13, !srcloc !30
  %asmresult83 = extractvalue { i32, i64 } %14, 0
  %asmresult84 = extractvalue { i32, i64 } %14, 1
  %conv85 = trunc i64 %asmresult84 to i32
  %fpcr86 = getelementptr inbounds %struct.user_fpsimd_state, %struct.user_fpsimd_state* %fpsimd, i64 0, i32 2
  store i32 %conv85, i32* %fpcr86, align 4
  %phi.cmp134 = icmp eq i32 %asmresult83, 0
  %15 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %16 = inttoptr i64 %15 to %struct.task_struct*
  %17 = getelementptr %struct.task_struct, %struct.task_struct* %16, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %17, i32 noundef 23) #11
  br i1 %phi.cmp134, label %if.then99, label %cleanup

if.else92:                                        ; preds = %if.end70
  %fpcr93 = getelementptr inbounds %struct.user_fpsimd_state, %struct.user_fpsimd_state* %fpsimd, i64 0, i32 2
  store i32 0, i32* %fpcr93, align 4
  %18 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %19 = inttoptr i64 %18 to %struct.task_struct*
  %20 = getelementptr %struct.task_struct, %struct.task_struct* %19, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %20, i32 noundef 23) #11
  br label %cleanup

if.then99:                                        ; preds = %if.then77
  call void @fpsimd_update_current_state(%struct.user_fpsimd_state* noundef nonnull %fpsimd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then77, %if.then99, %if.else92, %if.end38, %if.end33
  %retval.0 = phi i32 [ -14, %if.end33 ], [ -22, %if.end38 ], [ 0, %if.then99 ], [ -14, %if.then77 ], [ -14, %if.else92 ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 528, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap() unnamed_addr #7 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %1 = and i64 %0, 4194304
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_update_current_state(%struct.user_fpsimd_state* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @in_syscall(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #2 {
entry:
  %syscallno = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 2
  %0 = load i32, i32* %syscallno, align 8
  %cmp = icmp ne i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @get_signal(%struct.ksignal* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @syscall_set_return_value(%struct.task_struct* nocapture noundef readnone %task, %struct.pt_regs* nocapture noundef writeonly %regs) unnamed_addr #6 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 -4, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @handle_signal(%struct.ksignal* noundef %ksig, %struct.pt_regs* noundef %regs) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.sigset_t* @sigmask_to_save() #11
  %sig = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 2
  %0 = load i32, i32* %sig, align 8
  call fastcc void @rseq_signal_deliver(%struct.ksignal* noundef %ksig, %struct.pt_regs* noundef %regs) #11
  %call1 = call fastcc i32 @setup_rt_frame(i32 noundef %0, %struct.ksignal* noundef %ksig, %struct.sigset_t* noundef %call, %struct.pt_regs* noundef %regs) #11
  %user_regs = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call3 = call i32 @valid_user_regs(%struct.user_pt_regs* noundef %user_regs, %struct.task_struct* noundef %2) #12
  %tobool.not = icmp eq i32 %call3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %or = or i32 %call1, %lnot.ext
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0
  %call5 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 21) #11, !range !32
  call void @signal_setup_done(i32 noundef %or, %struct.ksignal* noundef %ksig, i32 noundef %call5) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @setup_restart_syscall(%struct.pt_regs* nocapture noundef writeonly %regs) unnamed_addr #6 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 8
  store i64 128, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_rewind_single_step(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_saved_sigmask() unnamed_addr #0 {
entry:
  %call = call fastcc i1 @test_and_clear_restore_sigmask() #11
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %saved_sigmask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 91
  call void @__set_current_blocked(%struct.sigset_t* noundef %saved_sigmask) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sigset_t* @sigmask_to_save() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89
  %call1 = call fastcc i1 @test_restore_sigmask() #11
  br i1 %call1, label %if.then, label %if.end, !prof !33

if.then:                                          ; preds = %entry
  %saved_sigmask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 91
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi %struct.sigset_t* [ %saved_sigmask, %if.then ], [ %blocked, %entry ]
  ret %struct.sigset_t* %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rseq_signal_deliver(%struct.ksignal* noundef %ksig, %struct.pt_regs* noundef %regs) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %rseq_event_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 123
  %2 = load i64, i64* %rseq_event_mask, align 8
  %or.i = or i64 %2, 2
  store i64 %or.i, i64* %rseq_event_mask, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  call fastcc void @rseq_handle_notify_resume(%struct.ksignal* noundef %ksig, %struct.pt_regs* noundef %regs) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @setup_rt_frame(i32 noundef %usig, %struct.ksignal* noundef %ksig, %struct.sigset_t* noundef %set, %struct.pt_regs* nocapture noundef %regs) unnamed_addr #0 {
entry:
  %user = alloca %struct.rt_sigframe_user_layout, align 8
  %0 = bitcast %struct.rt_sigframe_user_layout* %user to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !9
  call void @fpsimd_signal_preserve_current_state() #12
  %call = call fastcc i32 @get_sigframe(%struct.rt_sigframe_user_layout* noundef nonnull %user, %struct.ksignal* noundef %ksig, %struct.pt_regs* noundef %regs) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sigframe = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 0
  %1 = load %struct.rt_sigframe*, %struct.rt_sigframe** %sigframe, align 8
  %uc = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %1, i64 0, i32 1
  %2 = bitcast %struct.ucontext* %uc to i8*
  %call1 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 8) #11
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #11
  %3 = bitcast i8* %call4 to i64*
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 0, i64* %3, i32 -14, i32 0) #13, !srcloc !36
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  %err.0 = phi i32 [ %4, %if.then3 ], [ -14, %if.end ]
  %uc_link = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %1, i64 0, i32 1, i32 1
  %5 = bitcast %struct.ucontext** %uc_link to i8*
  %call17 = call fastcc i64 @__range_ok(i8* noundef %5, i64 noundef 8) #11
  %tobool18.not = icmp eq i64 %call17, 0
  br i1 %tobool18.not, label %if.end31, label %if.then19

if.then19:                                        ; preds = %if.end11
  %call20 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %5) #11
  %6 = bitcast i8* %call20 to %struct.ucontext**
  %7 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(%struct.ucontext* null, %struct.ucontext** %6, i32 -14, i32 %err.0) #13, !srcloc !37
  br label %if.end31

if.end31:                                         ; preds = %if.end11, %if.then19
  %err.1 = phi i32 [ %7, %if.then19 ], [ -14, %if.end11 ]
  %uc_stack = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %1, i64 0, i32 1, i32 2
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %call35 = call i32 @__save_altstack(%struct.sigaltstack* noundef %uc_stack, i64 noundef %9) #12
  %or = or i32 %call35, %err.1
  %call36 = call fastcc i32 @setup_sigframe(%struct.rt_sigframe_user_layout* noundef nonnull %user, %struct.pt_regs* noundef %regs, %struct.sigset_t* noundef %set) #11
  %or37 = or i32 %or, %call36
  %cmp = icmp eq i32 %or37, 0
  br i1 %cmp, label %if.then38, label %cleanup

if.then38:                                        ; preds = %if.end31
  %ka = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 0
  call fastcc void @setup_return(%struct.pt_regs* noundef %regs, %struct.k_sigaction* noundef %ka, %struct.rt_sigframe_user_layout* noundef nonnull %user, i32 noundef %usig) #11
  %sa_flags = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 0, i32 0, i32 1
  %10 = load i64, i64* %sa_flags, align 8
  %and = and i64 %10, 4
  %tobool40.not = icmp eq i64 %and, 0
  br i1 %tobool40.not, label %cleanup, label %if.then41

if.then41:                                        ; preds = %if.then38
  %info = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %1, i64 0, i32 0
  %info42 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 1
  %call43 = call i32 @copy_siginfo_to_user(%struct.siginfo* noundef %info, %struct.kernel_siginfo* noundef %info42) #12
  %11 = ptrtoint %struct.rt_sigframe* %1 to i64
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %arrayidx, align 8
  %12 = ptrtoint %struct.ucontext* %uc to i64
  %arrayidx49 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  store i64 %12, i64* %arrayidx49, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then41, %if.then38, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %call43, %if.then41 ], [ 0, %if.then38 ], [ %or37, %if.end31 ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_setup_done(i32 noundef, %struct.ksignal* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #7 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_restore_sigmask() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 20) #11
  %tobool = icmp ne i32 %call1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rseq_handle_notify_resume(%struct.ksignal* noundef %ksig, %struct.pt_regs* noundef %regs) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %rseq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 121
  %2 = load %struct.rseq*, %struct.rseq** %rseq, align 16
  %tobool.not = icmp eq %struct.rseq* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__rseq_handle_notify_resume(%struct.ksignal* noundef %ksig, %struct.pt_regs* noundef %regs) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rseq_handle_notify_resume(%struct.ksignal* noundef, %struct.pt_regs* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_signal_preserve_current_state() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_sigframe(%struct.rt_sigframe_user_layout* noundef %user, %struct.ksignal* nocapture noundef readonly %ksig, %struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #0 {
entry:
  call fastcc void @init_user_layout(%struct.rt_sigframe_user_layout* noundef %user) #11
  %call = call fastcc i32 @setup_sigframe_layout(%struct.rt_sigframe_user_layout* noundef %user, i1 noundef false) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  %call2 = call fastcc i64 @sigsp(i64 noundef %1, %struct.ksignal* noundef %ksig) #11
  %sub = add i64 %call2, -16
  %and = and i64 %sub, -16
  %2 = inttoptr i64 %and to %struct.frame_record*
  %next_frame = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 1
  store %struct.frame_record* %2, %struct.frame_record** %next_frame, align 8
  %call4 = call fastcc i64 @sigframe_size(%struct.rt_sigframe_user_layout* noundef %user) #11
  %sub5 = sub i64 %and, %call4
  %3 = inttoptr i64 %sub5 to %struct.rt_sigframe*
  %sigframe = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 0
  store %struct.rt_sigframe* %3, %struct.rt_sigframe** %sigframe, align 8
  %4 = inttoptr i64 %sub5 to i8*
  %sub7 = sub i64 %call2, %sub5
  %call8 = call fastcc i64 @__range_ok(i8* noundef %4, i64 noundef %sub7) #11
  %tobool9.not = icmp eq i64 %call8, 0
  %. = select i1 %tobool9.not, i32 -14, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__save_altstack(%struct.sigaltstack* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @setup_sigframe(%struct.rt_sigframe_user_layout* nocapture noundef readonly %user, %struct.pt_regs* nocapture noundef readonly %regs, %struct.sigset_t* noundef %set) unnamed_addr #0 {
entry:
  %sigframe = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 0
  %0 = load %struct.rt_sigframe*, %struct.rt_sigframe** %sigframe, align 8
  %next_frame = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 1
  %1 = bitcast %struct.frame_record** %next_frame to i8**
  %2 = load i8*, i8** %1, align 8
  %call = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 8) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #11
  %3 = bitcast i8* %call1 to i64*
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 29
  %4 = load i64, i64* %arrayidx, align 8
  %5 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %4, i64* %3, i32 -14, i32 0) #13, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %err.0 = phi i32 [ %5, %if.then ], [ -14, %entry ]
  %6 = load %struct.frame_record*, %struct.frame_record** %next_frame, align 8
  %lr = getelementptr inbounds %struct.frame_record, %struct.frame_record* %6, i64 0, i32 1
  %7 = bitcast i64* %lr to i8*
  %call14 = call fastcc i64 @__range_ok(i8* noundef %7, i64 noundef 8) #11
  %tobool15.not = icmp eq i64 %call14, 0
  br i1 %tobool15.not, label %do.body33.preheader, label %if.then16

if.then16:                                        ; preds = %if.end
  %call17 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %7) #11
  %8 = bitcast i8* %call17 to i64*
  %arrayidx23 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 30
  %9 = load i64, i64* %arrayidx23, align 8
  %10 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %9, i64* %8, i32 -14, i32 %err.0) #13, !srcloc !39
  br label %do.body33.preheader

do.body33.preheader:                              ; preds = %if.end, %if.then16
  %err.2591.ph = phi i32 [ %10, %if.then16 ], [ -14, %if.end ]
  br label %do.body33

do.body33:                                        ; preds = %do.body33.preheader, %if.end54
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end54 ], [ 0, %do.body33.preheader ]
  %err.2591 = phi i32 [ %err.3, %if.end54 ], [ %err.2591.ph, %do.body33.preheader ]
  %arrayidx36 = getelementptr %struct.rt_sigframe, %struct.rt_sigframe* %0, i64 0, i32 1, i32 6, i32 1, i64 %indvars.iv
  %11 = bitcast i64* %arrayidx36 to i8*
  %call37 = call fastcc i64 @__range_ok(i8* noundef %11, i64 noundef 8) #11
  %tobool38.not = icmp eq i64 %call37, 0
  br i1 %tobool38.not, label %if.end54, label %if.then39

if.then39:                                        ; preds = %do.body33
  %call40 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %11) #11
  %12 = bitcast i8* %call40 to i64*
  %arrayidx47 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 %indvars.iv
  %13 = load i64, i64* %arrayidx47, align 8
  %14 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %13, i64* %12, i32 -14, i32 %err.2591) #13, !srcloc !40
  br label %if.end54

if.end54:                                         ; preds = %do.body33, %if.then39
  %err.3 = phi i32 [ %14, %if.then39 ], [ -14, %do.body33 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond.not, label %do.body57, label %do.body33

do.body57:                                        ; preds = %if.end54
  %sp = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %0, i64 0, i32 1, i32 6, i32 2
  %15 = bitcast i64* %sp to i8*
  %call61 = call fastcc i64 @__range_ok(i8* noundef %15, i64 noundef 8) #11
  %tobool62.not = icmp eq i64 %call61, 0
  br i1 %tobool62.not, label %if.end76, label %if.then63

if.then63:                                        ; preds = %do.body57
  %call64 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %15) #11
  %16 = bitcast i8* %call64 to i64*
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %18, i64* %16, i32 -14, i32 %err.3) #13, !srcloc !41
  br label %if.end76

if.end76:                                         ; preds = %do.body57, %if.then63
  %err.4 = phi i32 [ %19, %if.then63 ], [ -14, %do.body57 ]
  %pc = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %0, i64 0, i32 1, i32 6, i32 3
  %20 = bitcast i64* %pc to i8*
  %call83 = call fastcc i64 @__range_ok(i8* noundef %20, i64 noundef 8) #11
  %tobool84.not = icmp eq i64 %call83, 0
  br i1 %tobool84.not, label %if.end98, label %if.then85

if.then85:                                        ; preds = %if.end76
  %call86 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %20) #11
  %21 = bitcast i8* %call86 to i64*
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %23, i64* %21, i32 -14, i32 %err.4) #13, !srcloc !42
  br label %if.end98

if.end98:                                         ; preds = %if.end76, %if.then85
  %err.5 = phi i32 [ %24, %if.then85 ], [ -14, %if.end76 ]
  %pstate = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %0, i64 0, i32 1, i32 6, i32 4
  %25 = bitcast i64* %pstate to i8*
  %call105 = call fastcc i64 @__range_ok(i8* noundef %25, i64 noundef 8) #11
  %tobool106.not = icmp eq i64 %call105, 0
  br i1 %tobool106.not, label %if.end120, label %if.then107

if.then107:                                       ; preds = %if.end98
  %call108 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %25) #11
  %26 = bitcast i8* %call108 to i64*
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %28, i64* %26, i32 -14, i32 %err.5) #13, !srcloc !43
  br label %if.end120

if.end120:                                        ; preds = %if.end98, %if.then107
  %err.6 = phi i32 [ %29, %if.then107 ], [ -14, %if.end98 ]
  %fault_address = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %0, i64 0, i32 1, i32 6, i32 0
  %30 = bitcast i64* %fault_address to i8*
  %call127 = call fastcc i64 @__range_ok(i8* noundef %30, i64 noundef 8) #11
  %tobool128.not = icmp eq i64 %call127, 0
  br i1 %tobool128.not, label %if.end143, label %if.then129

if.then129:                                       ; preds = %if.end120
  %call130 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %30) #11
  %31 = bitcast i8* %call130 to i64*
  %32 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %33 = inttoptr i64 %32 to %struct.task_struct*
  %fault_address136 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i64 0, i32 137, i32 6
  %34 = load i64, i64* %fault_address136, align 8
  %35 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %34, i64* %31, i32 -14, i32 %err.6) #13, !srcloc !44
  br label %if.end143

if.end143:                                        ; preds = %if.end120, %if.then129
  %err.7 = phi i32 [ %35, %if.then129 ], [ -14, %if.end120 ]
  %uc_sigmask = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %0, i64 0, i32 1, i32 3
  %36 = bitcast %struct.sigset_t* %uc_sigmask to i8*
  %37 = bitcast %struct.sigset_t* %set to i8*
  %call2.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %36) #12
  %call3.i = call i64 @__arch_copy_to_user(i8* noundef %call2.i, i8* noundef %37, i64 noundef 8) #12
  %38 = trunc i64 %call3.i to i32
  %conv148 = or i32 %err.7, %38
  %cmp149 = icmp eq i32 %conv148, 0
  br i1 %cmp149, label %land.lhs.true, label %if.end419

land.lhs.true:                                    ; preds = %if.end143
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %land.lhs.true
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #12
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %land.lhs.true160, label %if.end157

system_supports_fpsimd.exit:                      ; preds = %land.lhs.true
  %call6.i.i = call fastcc i1 @cpus_have_cap() #12
  br i1 %call6.i.i, label %land.lhs.true160, label %if.end157

if.end157:                                        ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  %fpsimd_offset = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 4
  %39 = load i64, i64* %fpsimd_offset, align 8
  %call154 = call fastcc i8* @apply_user_offset(%struct.rt_sigframe_user_layout* noundef %user, i64 noundef %39) #11
  %40 = bitcast i8* %call154 to %struct.fpsimd_context*
  %call155 = call fastcc i32 @preserve_fpsimd_context(%struct.fpsimd_context* noundef %40) #11
  %cmp158 = icmp eq i32 %call155, 0
  br i1 %cmp158, label %land.lhs.true160, label %if.end419

land.lhs.true160:                                 ; preds = %if.then3.i.i, %system_supports_fpsimd.exit, %if.end157
  %esr_offset = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 5
  %41 = load i64, i64* %esr_offset, align 8
  %tobool161.not = icmp eq i64 %41, 0
  br i1 %tobool161.not, label %land.lhs.true241, label %if.then162

if.then162:                                       ; preds = %land.lhs.true160
  %call164 = call fastcc i8* @apply_user_offset(%struct.rt_sigframe_user_layout* noundef %user, i64 noundef %41) #11
  %call167 = call fastcc i64 @__range_ok(i8* noundef %call164, i64 noundef 4) #11
  %tobool168.not = icmp eq i64 %call167, 0
  br i1 %tobool168.not, label %if.end181, label %if.then169

if.then169:                                       ; preds = %if.then162
  %call170 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %call164) #11
  %42 = bitcast i8* %call170 to i32*
  %43 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 1163088385, i32* %42, i32 -14, i32 0) #13, !srcloc !45
  br label %if.end181

if.end181:                                        ; preds = %if.then162, %if.then169
  %err.9 = phi i32 [ %43, %if.then169 ], [ -14, %if.then162 ]
  %size = getelementptr inbounds i8, i8* %call164, i64 4
  %call187 = call fastcc i64 @__range_ok(i8* noundef %size, i64 noundef 4) #11
  %tobool188.not = icmp eq i64 %call187, 0
  br i1 %tobool188.not, label %if.end201, label %if.then189

if.then189:                                       ; preds = %if.end181
  %call190 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %size) #11
  %44 = bitcast i8* %call190 to i32*
  %45 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 16, i32* %44, i32 -14, i32 %err.9) #13, !srcloc !46
  br label %if.end201

if.end201:                                        ; preds = %if.end181, %if.then189
  %err.10 = phi i32 [ %45, %if.then189 ], [ -14, %if.end181 ]
  %esr = getelementptr inbounds i8, i8* %call164, i64 8
  %call206 = call fastcc i64 @__range_ok(i8* noundef %esr, i64 noundef 8) #11
  %tobool207.not = icmp eq i64 %call206, 0
  br i1 %tobool207.not, label %if.end419, label %if.end225

if.end225:                                        ; preds = %if.end201
  %call209 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %esr) #11
  %46 = bitcast i8* %call209 to i64*
  %47 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %48 = inttoptr i64 %47 to %struct.task_struct*
  %fault_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i64 0, i32 137, i32 7
  %49 = load i64, i64* %fault_code, align 16
  %50 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %49, i64* %46, i32 -14, i32 %err.10) #13, !srcloc !47
  %cmp239 = icmp eq i32 %50, 0
  br i1 %cmp239, label %land.lhs.true241, label %if.end419

land.lhs.true241:                                 ; preds = %land.lhs.true160, %if.end225
  %extra_offset = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 7
  %51 = load i64, i64* %extra_offset, align 8
  %tobool242.not = icmp eq i64 %51, 0
  br i1 %tobool242.not, label %if.then376, label %if.then243

if.then243:                                       ; preds = %land.lhs.true241
  %52 = bitcast %struct.rt_sigframe_user_layout* %user to i8**
  %53 = load i8*, i8** %52, align 8
  %call246 = call fastcc i8* @apply_user_offset(%struct.rt_sigframe_user_layout* noundef %user, i64 noundef %51) #11
  %add.ptr = getelementptr i8, i8* %call246, i64 32
  %add.ptr247 = getelementptr i8, i8* %call246, i64 48
  %54 = ptrtoint i8* %add.ptr247 to i64
  %size248 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 2
  %55 = load i64, i64* %size248, align 8
  %sub = add i64 %55, -1
  %or249 = or i64 %sub, 15
  %add = add i64 %or249, 1
  %add.ptr250 = getelementptr i8, i8* %53, i64 %add
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr250 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %54
  %conv251 = trunc i64 %sub.ptr.sub to i32
  %call256 = call fastcc i64 @__range_ok(i8* noundef %call246, i64 noundef 4) #11
  %tobool257.not = icmp eq i64 %call256, 0
  br i1 %tobool257.not, label %if.end270, label %if.then258

if.then258:                                       ; preds = %if.then243
  %call259 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %call246) #11
  %56 = bitcast i8* %call259 to i32*
  %57 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 1163416577, i32* %56, i32 -14, i32 0) #13, !srcloc !48
  br label %if.end270

if.end270:                                        ; preds = %if.then243, %if.then258
  %err.14 = phi i32 [ %57, %if.then258 ], [ -14, %if.then243 ]
  %size276 = getelementptr inbounds i8, i8* %call246, i64 4
  %call277 = call fastcc i64 @__range_ok(i8* noundef %size276, i64 noundef 4) #11
  %tobool278.not = icmp eq i64 %call277, 0
  br i1 %tobool278.not, label %if.end291, label %if.then279

if.then279:                                       ; preds = %if.end270
  %call280 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %size276) #11
  %58 = bitcast i8* %call280 to i32*
  %59 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 32, i32* %58, i32 -14, i32 %err.14) #13, !srcloc !49
  br label %if.end291

if.end291:                                        ; preds = %if.end270, %if.then279
  %err.15 = phi i32 [ %59, %if.then279 ], [ -14, %if.end270 ]
  %datap = getelementptr inbounds i8, i8* %call246, i64 8
  %call296 = call fastcc i64 @__range_ok(i8* noundef %datap, i64 noundef 8) #11
  %tobool297.not = icmp eq i64 %call296, 0
  br i1 %tobool297.not, label %if.end310, label %if.then298

if.then298:                                       ; preds = %if.end291
  %call299 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %datap) #11
  %60 = bitcast i8* %call299 to i64*
  %61 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %54, i64* %60, i32 -14, i32 %err.15) #13, !srcloc !50
  br label %if.end310

if.end310:                                        ; preds = %if.end291, %if.then298
  %err.16 = phi i32 [ %61, %if.then298 ], [ -14, %if.end291 ]
  %size315 = getelementptr inbounds i8, i8* %call246, i64 16
  %call316 = call fastcc i64 @__range_ok(i8* noundef %size315, i64 noundef 4) #11
  %tobool317.not = icmp eq i64 %call316, 0
  br i1 %tobool317.not, label %if.end330, label %if.then318

if.then318:                                       ; preds = %if.end310
  %call319 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %size315) #11
  %62 = bitcast i8* %call319 to i32*
  %63 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %conv251, i32* %62, i32 -14, i32 %err.16) #13, !srcloc !51
  br label %if.end330

if.end330:                                        ; preds = %if.end310, %if.then318
  %err.17 = phi i32 [ %63, %if.then318 ], [ -14, %if.end310 ]
  %call336 = call fastcc i64 @__range_ok(i8* noundef %add.ptr, i64 noundef 4) #11
  %tobool337.not = icmp eq i64 %call336, 0
  br i1 %tobool337.not, label %if.end350, label %if.then338

if.then338:                                       ; preds = %if.end330
  %call339 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %add.ptr) #11
  %64 = bitcast i8* %call339 to i32*
  %65 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 0, i32* %64, i32 -14, i32 %err.17) #13, !srcloc !52
  br label %if.end350

if.end350:                                        ; preds = %if.end330, %if.then338
  %err.18 = phi i32 [ %65, %if.then338 ], [ -14, %if.end330 ]
  %size355 = getelementptr i8, i8* %call246, i64 36
  %call356 = call fastcc i64 @__range_ok(i8* noundef %size355, i64 noundef 4) #11
  %tobool357.not = icmp eq i64 %call356, 0
  br i1 %tobool357.not, label %if.end419, label %if.end373

if.end373:                                        ; preds = %if.end350
  %call359 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %size355) #11
  %66 = bitcast i8* %call359 to i32*
  %67 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 0, i32* %66, i32 -14, i32 %err.18) #13, !srcloc !53
  %cmp374 = icmp eq i32 %67, 0
  br i1 %cmp374, label %if.then376, label %if.end419

if.then376:                                       ; preds = %land.lhs.true241, %if.end373
  %end_offset = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 8
  %68 = load i64, i64* %end_offset, align 8
  %call378 = call fastcc i8* @apply_user_offset(%struct.rt_sigframe_user_layout* noundef %user, i64 noundef %68) #11
  %call382 = call fastcc i64 @__range_ok(i8* noundef %call378, i64 noundef 4) #11
  %tobool383.not = icmp eq i64 %call382, 0
  br i1 %tobool383.not, label %if.end396, label %if.then384

if.then384:                                       ; preds = %if.then376
  %call385 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %call378) #11
  %69 = bitcast i8* %call385 to i32*
  %70 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 0, i32* %69, i32 -14, i32 0) #13, !srcloc !54
  br label %if.end396

if.end396:                                        ; preds = %if.then376, %if.then384
  %err.21 = phi i32 [ %70, %if.then384 ], [ -14, %if.then376 ]
  %size401 = getelementptr inbounds i8, i8* %call378, i64 4
  %call402 = call fastcc i64 @__range_ok(i8* noundef %size401, i64 noundef 4) #11
  %tobool403.not = icmp eq i64 %call402, 0
  br i1 %tobool403.not, label %if.end419, label %if.then404

if.then404:                                       ; preds = %if.end396
  %call405 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %size401) #11
  %71 = bitcast i8* %call405 to i32*
  %72 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 0, i32* %71, i32 -14, i32 %err.21) #13, !srcloc !55
  br label %if.end419

if.end419:                                        ; preds = %if.end143, %if.end201, %if.end157, %if.end350, %if.end225, %if.then404, %if.end396, %if.end373
  %err.23 = phi i32 [ %67, %if.end373 ], [ %72, %if.then404 ], [ -14, %if.end396 ], [ -14, %if.end350 ], [ %50, %if.end225 ], [ -14, %if.end201 ], [ %call155, %if.end157 ], [ %conv148, %if.end143 ]
  ret i32 %err.23
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @setup_return(%struct.pt_regs* nocapture noundef %regs, %struct.k_sigaction* nocapture noundef readonly %ka, %struct.rt_sigframe_user_layout* nocapture noundef readonly %user, i32 noundef %usig) unnamed_addr #0 {
entry:
  %conv = sext i32 %usig to i64
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %conv, i64* %arrayidx, align 8
  %sigframe = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 0
  %0 = load %struct.rt_sigframe*, %struct.rt_sigframe** %sigframe, align 8
  %1 = ptrtoint %struct.rt_sigframe* %0 to i64
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  store i64 %1, i64* %2, align 8
  %next_frame = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 1
  %3 = load %struct.frame_record*, %struct.frame_record** %next_frame, align 8
  %4 = ptrtoint %struct.frame_record* %3 to i64
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 29
  store i64 %4, i64* %arrayidx3, align 8
  %sa_handler = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %ka, i64 0, i32 0, i32 0
  %5 = load void (i32)*, void (i32)** %sa_handler, align 8
  %6 = ptrtoint void (i32)* %5 to i64
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  store i64 %6, i64* %7, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %and6 = and i64 %9, -33554433
  store i64 %and6, i64* %8, align 8
  %sa_flags = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %ka, i64 0, i32 0, i32 1
  %10 = load i64, i64* %sa_flags, align 8
  %and8 = and i64 %10, 67108864
  %tobool.not = icmp eq i64 %and8, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %entry
  %sa_restorer = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %ka, i64 0, i32 0, i32 2
  %11 = load void ()*, void ()** %sa_restorer, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %12 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %13 = inttoptr i64 %12 to %struct.task_struct*
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i64 0, i32 35
  %14 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %vdso = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i64 0, i32 0, i32 42, i32 2
  %15 = load i8*, i8** %vdso, align 8
  %16 = ptrtoint i8* %15 to i64
  %add = add i64 %16, 1684
  %17 = inttoptr i64 %add to void ()*
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %sigtramp.0 = phi void ()* [ %11, %if.then9 ], [ %17, %if.else ]
  %18 = ptrtoint void ()* %sigtramp.0 to i64
  %arrayidx14 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 30
  store i64 %18, i64* %arrayidx14, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_siginfo_to_user(%struct.siginfo* noundef, %struct.kernel_siginfo* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @sigsp(i64 noundef %sp, %struct.ksignal* nocapture noundef readonly %ksig) unnamed_addr #8 {
entry:
  %sa_flags = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 0, i32 0, i32 1
  %0 = load i64, i64* %sa_flags, align 8
  %and = and i64 %0, 134217728
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %return, label %land.lhs.true, !prof !16

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i32 @sas_ss_flags(i64 noundef %sp) #11
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 93
  %3 = load i64, i64* %sas_ss_sp, align 8
  %sas_ss_size = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 94
  %4 = load i64, i64* %sas_ss_size, align 16
  %add = add i64 %4, %3
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i64 [ %add, %if.then ], [ %sp, %land.lhs.true ], [ %sp, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @sas_ss_flags(i64 noundef %sp) unnamed_addr #8 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sas_ss_size = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 94
  %2 = load i64, i64* %sas_ss_size, align 16
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @on_sig_stack(i64 noundef %sp) #11
  %tobool2.not = icmp ne i32 %call1, 0
  %cond = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ 2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @on_sig_stack(i64 noundef %sp) unnamed_addr #8 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sas_ss_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 95
  %2 = load i32, i32* %sas_ss_flags, align 8
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @__on_sig_stack(i64 noundef %sp) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @__on_sig_stack(i64 noundef %sp) unnamed_addr #8 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 93
  %2 = load i64, i64* %sas_ss_sp, align 8
  %cmp = icmp ult i64 %2, %sp
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %sub = sub i64 %sp, %2
  %sas_ss_size = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 94
  %3 = load i64, i64* %sas_ss_size, align 16
  %cmp4 = icmp ule i64 %sub, %3
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @apply_user_offset(%struct.rt_sigframe_user_layout* nocapture noundef readonly %user, i64 noundef %offset) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.rt_sigframe_user_layout* %user to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %offset
  ret i8* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preserve_fpsimd_context(%struct.fpsimd_context* noundef %ctx) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fpsimd_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 1, i32 2
  %arraydecay = getelementptr inbounds %struct.fpsimd_context, %struct.fpsimd_context* %ctx, i64 0, i32 3, i64 0
  %2 = bitcast i128* %arraydecay to i8*
  %3 = bitcast %struct.user_fpsimd_state* %fpsimd_state to i8*
  %call2.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #12
  %call3.i = call i64 @__arch_copy_to_user(i8* noundef %call2.i, i8* noundef %3, i64 noundef 512) #12
  %fpsr = getelementptr inbounds %struct.fpsimd_context, %struct.fpsimd_context* %ctx, i64 0, i32 1
  %4 = bitcast i32* %fpsr to i8*
  %call4 = call fastcc i64 @__range_ok(i8* noundef %4, i64 noundef 4) #11
  %tobool.not = icmp eq i64 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i64 %call3.i to i32
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #11
  %5 = bitcast i8* %call5 to i32*
  %fpsr9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 1, i32 2, i32 1
  %6 = load i32, i32* %fpsr9, align 16
  %7 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %6, i32* %5, i32 -14, i32 %conv) #13, !srcloc !56
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %err.0 = phi i32 [ %7, %if.then ], [ -14, %entry ]
  %fpcr = getelementptr inbounds %struct.fpsimd_context, %struct.fpsimd_context* %ctx, i64 0, i32 2
  %8 = bitcast i32* %fpcr to i8*
  %call17 = call fastcc i64 @__range_ok(i8* noundef %8, i64 noundef 4) #11
  %tobool18.not = icmp eq i64 %call17, 0
  br i1 %tobool18.not, label %if.end32, label %if.then19

if.then19:                                        ; preds = %if.end
  %call20 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %8) #11
  %9 = bitcast i8* %call20 to i32*
  %fpcr25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 1, i32 2, i32 2
  %10 = load i32, i32* %fpcr25, align 4
  %11 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %10, i32* %9, i32 -14, i32 %err.0) #13, !srcloc !57
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then19
  %err.1 = phi i32 [ %11, %if.then19 ], [ -14, %if.end ]
  %12 = bitcast %struct.fpsimd_context* %ctx to i8*
  %call37 = call fastcc i64 @__range_ok(i8* noundef %12, i64 noundef 4) #11
  %tobool38.not = icmp eq i64 %call37, 0
  br i1 %tobool38.not, label %if.end51, label %if.then39

if.then39:                                        ; preds = %if.end32
  %call40 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %12) #11
  %13 = bitcast i8* %call40 to i32*
  %14 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 1179680769, i32* %13, i32 -14, i32 %err.1) #13, !srcloc !58
  br label %if.end51

if.end51:                                         ; preds = %if.end32, %if.then39
  %err.2 = phi i32 [ %14, %if.then39 ], [ -14, %if.end32 ]
  %size = getelementptr inbounds %struct.fpsimd_context, %struct.fpsimd_context* %ctx, i64 0, i32 0, i32 1
  %15 = bitcast i32* %size to i8*
  %call57 = call fastcc i64 @__range_ok(i8* noundef %15, i64 noundef 4) #11
  %tobool58.not = icmp eq i64 %call57, 0
  br i1 %tobool58.not, label %if.end71, label %if.then59

if.then59:                                        ; preds = %if.end51
  %call60 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %15) #11
  %16 = bitcast i8* %call60 to i32*
  %17 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 528, i32* %16, i32 -14, i32 %err.2) #13, !srcloc !59
  %phi.cmp = icmp eq i32 %17, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %if.end71

if.end71:                                         ; preds = %if.end51, %if.then59
  %err.3 = phi i32 [ %phi.sel, %if.then59 ], [ -14, %if.end51 ]
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_restore_sigmask() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1 = call fastcc i32 @test_and_clear_ti_thread_flag(%struct.thread_info* noundef %2) #11
  %tobool = icmp ne i32 %call1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(%struct.sigset_t* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_and_clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %call = call fastcc i1 @test_and_clear_bit(i64* noundef %flags) #11
  %conv1 = zext i1 %call to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1048576
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #12
  %2 = and i64 %call.i.i.i, 1048576
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1048576, i64* elementtype(i64) %counter) #13, !srcloc !60
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc i32 @sigframe_alloc(%struct.rt_sigframe_user_layout* noundef %user, i64* nocapture noundef writeonly %offset, i64 noundef %size) unnamed_addr #9 {
entry:
  %call = call fastcc i32 @__sigframe_alloc(%struct.rt_sigframe_user_layout* noundef %user, i64* noundef %offset, i64 noundef %size, i1 noundef true) #11
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc i32 @sigframe_alloc_end(%struct.rt_sigframe_user_layout* noundef %user) unnamed_addr #9 {
entry:
  %limit = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 3
  %0 = load i64, i64* %limit, align 8
  %add = add i64 %0, 16
  store i64 %add, i64* %limit, align 8
  %end_offset = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 8
  %call = call fastcc i32 @sigframe_alloc(%struct.rt_sigframe_user_layout* noundef %user, i64* noundef %end_offset, i64 noundef 8) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 2
  %1 = load i64, i64* %size, align 8
  store i64 %1, i64* %limit, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc i32 @__sigframe_alloc(%struct.rt_sigframe_user_layout* noundef %user, i64* nocapture noundef writeonly %offset, i64 noundef %size, i1 noundef %extend) unnamed_addr #9 {
entry:
  %sub = add i64 %size, -1
  %or = or i64 %sub, 15
  %add = add i64 %or, 1
  %limit = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 3
  %0 = load i64, i64* %limit, align 8
  %size1 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 2
  %1 = load i64, i64* %size1, align 8
  %sub2 = sub i64 %0, %1
  %cmp = icmp ugt i64 %add, %sub2
  br i1 %cmp, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %extra_offset = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %user, i64 0, i32 7
  %2 = load i64, i64* %extra_offset, align 8
  %tobool.not = icmp eq i64 %2, 0
  %3 = and i1 %tobool.not, %extend
  br i1 %3, label %if.then, label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %add6 = add i64 %0, 32
  store i64 %add6, i64* %limit, align 8
  %call = call fastcc i32 @__sigframe_alloc(%struct.rt_sigframe_user_layout* noundef %user, i64* noundef %extra_offset, i64 noundef 32, i1 noundef false) #11
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %cleanup.thread, label %cleanup25.sink.split

cleanup.thread:                                   ; preds = %if.then
  %4 = load i64, i64* %size1, align 8
  %add13 = add i64 %4, 16
  store i64 %add13, i64* %size1, align 8
  store i64 65520, i64* %limit, align 8
  br label %if.end15

if.end15:                                         ; preds = %cleanup.thread, %land.lhs.true, %entry
  %5 = phi i64 [ %add13, %cleanup.thread ], [ %1, %land.lhs.true ], [ %1, %entry ]
  %6 = phi i64 [ 65520, %cleanup.thread ], [ %0, %land.lhs.true ], [ %0, %entry ]
  %sub18 = sub i64 %6, %5
  %cmp19 = icmp ugt i64 %add, %sub18
  br i1 %cmp19, label %cleanup25, label %if.end21

if.end21:                                         ; preds = %if.end15
  store i64 %5, i64* %offset, align 8
  br label %cleanup25.sink.split

cleanup25.sink.split:                             ; preds = %if.then, %if.end21
  %limit.sink45 = phi i64* [ %size1, %if.end21 ], [ %limit, %if.then ]
  %.sink44 = phi i64 [ %add, %if.end21 ], [ -32, %if.then ]
  %retval.1.ph = phi i32 [ 0, %if.end21 ], [ %call, %if.then ]
  %7 = load i64, i64* %limit.sink45, align 8
  %sub11 = add i64 %7, %.sink44
  store i64 %sub11, i64* %limit.sink45, align 8
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup25.sink.split, %if.end15
  %retval.1 = phi i32 [ -12, %if.end15 ], [ %retval.1.ph, %cleanup25.sink.split ]
  ret i32 %retval.1
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1460089}
!8 = !{i64 4013298, i64 4013381, i64 4013605, i64 4013825, i64 4013848}
!9 = !{!"auto-init"}
!10 = !{i64 2155549724, i64 2155549761, i64 2155549778, i64 2155549813, i64 2155549835, i64 2155549861, i64 2155549884, i64 2155549902, i64 2155550056, i64 2155550097, i64 2155550119, i64 2155550165}
!11 = !{i64 2155553660, i64 2155553697, i64 2155553714, i64 2155553749, i64 2155553771, i64 2155553797, i64 2155553820, i64 2155553838, i64 2155553992, i64 2155554033, i64 2155554055, i64 2155554101}
!12 = !{i64 2155557596, i64 2155557633, i64 2155557650, i64 2155557685, i64 2155557707, i64 2155557733, i64 2155557756, i64 2155557774, i64 2155557928, i64 2155557969, i64 2155557991, i64 2155558037}
!13 = !{i64 2155561560, i64 2155561597, i64 2155561614, i64 2155561649, i64 2155561671, i64 2155561697, i64 2155561720, i64 2155561738, i64 2155561892, i64 2155561933, i64 2155561955, i64 2155562001}
!14 = !{i64 2155408575}
!15 = !{i64 2155001606}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 7872636}
!18 = !{i64 2155647451}
!19 = !{i64 4018000, i64 4018024}
!20 = !{i64 2151570784}
!21 = !{i64 2155520992, i64 2155521029, i64 2155521046, i64 2155521081, i64 2155521103, i64 2155521129, i64 2155521152, i64 2155521170, i64 2155521324, i64 2155521365, i64 2155521387, i64 2155521433}
!22 = !{i64 2155524886, i64 2155524923, i64 2155524940, i64 2155524975, i64 2155524997, i64 2155525023, i64 2155525046, i64 2155525064, i64 2155525218, i64 2155525259, i64 2155525281, i64 2155525327}
!23 = !{i64 2155529356, i64 2155529393, i64 2155529410, i64 2155529445, i64 2155529467, i64 2155529493, i64 2155529516, i64 2155529534, i64 2155529688, i64 2155529729, i64 2155529751, i64 2155529797}
!24 = !{i64 2155532789, i64 2155532826, i64 2155532843, i64 2155532878, i64 2155532900, i64 2155532926, i64 2155532949, i64 2155532967, i64 2155533121, i64 2155533162, i64 2155533184, i64 2155533230}
!25 = !{i64 2155541153, i64 2155541190, i64 2155541207, i64 2155541242, i64 2155541264, i64 2155541290, i64 2155541313, i64 2155541331, i64 2155541485, i64 2155541526, i64 2155541548, i64 2155541594}
!26 = !{i64 2155545065, i64 2155545102, i64 2155545119, i64 2155545154, i64 2155545176, i64 2155545202, i64 2155545225, i64 2155545243, i64 2155545397, i64 2155545438, i64 2155545460, i64 2155545506}
!27 = !{i64 2155505057, i64 2155505094, i64 2155505111, i64 2155505146, i64 2155505168, i64 2155505194, i64 2155505217, i64 2155505235, i64 2155505389, i64 2155505430, i64 2155505452, i64 2155505498}
!28 = !{i64 2155508959, i64 2155508996, i64 2155509013, i64 2155509048, i64 2155509070, i64 2155509096, i64 2155509119, i64 2155509137, i64 2155509291, i64 2155509332, i64 2155509354, i64 2155509400}
!29 = !{i64 2155512903, i64 2155512940, i64 2155512957, i64 2155512992, i64 2155513014, i64 2155513040, i64 2155513063, i64 2155513081, i64 2155513235, i64 2155513276, i64 2155513298, i64 2155513344}
!30 = !{i64 2155516830, i64 2155516867, i64 2155516884, i64 2155516919, i64 2155516941, i64 2155516967, i64 2155516990, i64 2155517008, i64 2155517162, i64 2155517203, i64 2155517225, i64 2155517271}
!31 = !{i64 2147876233, i64 2147876754, i64 2147876784, i64 2147876810, i64 2147876842, i64 2147876871}
!32 = !{i32 0, i32 2}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2151474061}
!35 = !{i64 2151474138}
!36 = !{i64 2155636490, i64 2155636528, i64 2155636545, i64 2155636579, i64 2155636601, i64 2155636627, i64 2155636645, i64 2155636798, i64 2155636839, i64 2155636861, i64 2155636907}
!37 = !{i64 2155640256, i64 2155640294, i64 2155640311, i64 2155640345, i64 2155640367, i64 2155640393, i64 2155640411, i64 2155640564, i64 2155640605, i64 2155640627, i64 2155640673}
!38 = !{i64 2155567395, i64 2155567433, i64 2155567450, i64 2155567484, i64 2155567506, i64 2155567532, i64 2155567550, i64 2155567703, i64 2155567744, i64 2155567766, i64 2155567812}
!39 = !{i64 2155571164, i64 2155571202, i64 2155571219, i64 2155571253, i64 2155571275, i64 2155571301, i64 2155571319, i64 2155571472, i64 2155571513, i64 2155571535, i64 2155571581}
!40 = !{i64 2155574942, i64 2155574980, i64 2155574997, i64 2155575031, i64 2155575053, i64 2155575079, i64 2155575097, i64 2155575250, i64 2155575291, i64 2155575313, i64 2155575359}
!41 = !{i64 2155578695, i64 2155578733, i64 2155578750, i64 2155578784, i64 2155578806, i64 2155578832, i64 2155578850, i64 2155579003, i64 2155579044, i64 2155579066, i64 2155579112}
!42 = !{i64 2155582448, i64 2155582486, i64 2155582503, i64 2155582537, i64 2155582559, i64 2155582585, i64 2155582603, i64 2155582756, i64 2155582797, i64 2155582819, i64 2155582865}
!43 = !{i64 2155586221, i64 2155586259, i64 2155586276, i64 2155586310, i64 2155586332, i64 2155586358, i64 2155586376, i64 2155586529, i64 2155586570, i64 2155586592, i64 2155586638}
!44 = !{i64 2155590094, i64 2155590132, i64 2155590149, i64 2155590183, i64 2155590205, i64 2155590231, i64 2155590249, i64 2155590402, i64 2155590443, i64 2155590465, i64 2155590511}
!45 = !{i64 2155593391, i64 2155593429, i64 2155593446, i64 2155593480, i64 2155593502, i64 2155593528, i64 2155593546, i64 2155593699, i64 2155593740, i64 2155593762, i64 2155593808}
!46 = !{i64 2155597162, i64 2155597200, i64 2155597217, i64 2155597251, i64 2155597273, i64 2155597299, i64 2155597317, i64 2155597470, i64 2155597511, i64 2155597533, i64 2155597579}
!47 = !{i64 2155601455, i64 2155601493, i64 2155601510, i64 2155601544, i64 2155601566, i64 2155601592, i64 2155601610, i64 2155601763, i64 2155601804, i64 2155601826, i64 2155601872}
!48 = !{i64 2155605235, i64 2155605273, i64 2155605290, i64 2155605324, i64 2155605346, i64 2155605372, i64 2155605390, i64 2155605543, i64 2155605584, i64 2155605606, i64 2155605652}
!49 = !{i64 2155609456, i64 2155609494, i64 2155609511, i64 2155609545, i64 2155609567, i64 2155609593, i64 2155609611, i64 2155609764, i64 2155609805, i64 2155609827, i64 2155609873}
!50 = !{i64 2155613669, i64 2155613707, i64 2155613724, i64 2155613758, i64 2155613780, i64 2155613806, i64 2155613824, i64 2155613977, i64 2155614018, i64 2155614040, i64 2155614086}
!51 = !{i64 2155616939, i64 2155616977, i64 2155616994, i64 2155617028, i64 2155617050, i64 2155617076, i64 2155617094, i64 2155617247, i64 2155617288, i64 2155617310, i64 2155617356}
!52 = !{i64 2155620649, i64 2155620687, i64 2155620704, i64 2155620738, i64 2155620760, i64 2155620786, i64 2155620804, i64 2155620957, i64 2155620998, i64 2155621020, i64 2155621066}
!53 = !{i64 2155624357, i64 2155624395, i64 2155624412, i64 2155624446, i64 2155624468, i64 2155624494, i64 2155624512, i64 2155624665, i64 2155624706, i64 2155624728, i64 2155624774}
!54 = !{i64 2155628067, i64 2155628105, i64 2155628122, i64 2155628156, i64 2155628178, i64 2155628204, i64 2155628222, i64 2155628375, i64 2155628416, i64 2155628438, i64 2155628484}
!55 = !{i64 2155631775, i64 2155631813, i64 2155631830, i64 2155631864, i64 2155631886, i64 2155631912, i64 2155631930, i64 2155632083, i64 2155632124, i64 2155632146, i64 2155632192}
!56 = !{i64 2155489892, i64 2155489930, i64 2155489947, i64 2155489981, i64 2155490003, i64 2155490029, i64 2155490047, i64 2155490200, i64 2155490241, i64 2155490263, i64 2155490309}
!57 = !{i64 2155493633, i64 2155493671, i64 2155493688, i64 2155493722, i64 2155493744, i64 2155493770, i64 2155493788, i64 2155493941, i64 2155493982, i64 2155494004, i64 2155494050}
!58 = !{i64 2155497391, i64 2155497429, i64 2155497446, i64 2155497480, i64 2155497502, i64 2155497528, i64 2155497546, i64 2155497699, i64 2155497740, i64 2155497762, i64 2155497808}
!59 = !{i64 2155501193, i64 2155501231, i64 2155501248, i64 2155501282, i64 2155501304, i64 2155501330, i64 2155501348, i64 2155501501, i64 2155501542, i64 2155501564, i64 2155501610}
!60 = !{i64 2147877086, i64 2147877748, i64 2147877778, i64 2147877809, i64 2147877841, i64 2147877876, i64 2147877901}
