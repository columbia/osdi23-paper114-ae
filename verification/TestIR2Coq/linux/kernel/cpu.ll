; ModuleID = 'kernel/cpu.c'
source_filename = "kernel/cpu.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.smp_hotplug_thread = type { %struct.task_struct**, %struct.list_head, i32 (i32)*, void (i32)*, void (i32)*, void (i32)*, void (i32, i1)*, void (i32)*, void (i32)*, i8, i8* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.75, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.8, %union.anon.56, %struct.atomic_t, [8 x i8] }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.80, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.32, %struct.list_head, %struct.list_head, %union.anon.33 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.18, %struct.device* }
%union.anon.18 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.19, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.19 = type {}
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.20, %union.anon.21, %union.anon.22, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.27, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.20 = type { %struct.hlist_node }
%union.anon.21 = type { %struct.rb_node }
%union.anon.22 = type { %struct.anon.26 }
%struct.anon.26 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.27 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.24, %union.anon.25, i32 }
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
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
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.78 = type { %struct.callback_head }
%union.anon.79 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.34 }
%union.anon.34 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.35, %union.anon.36 }
%union.anon.35 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.36 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.40 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.38, %struct.qspinlock }
%union.anon.38 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.40 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.80 = type { %struct.pipe_inode_info* }
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
%union.anon.56 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29, [48 x i8] }
%struct.anon.29 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.ctl_table*, i32, i32, i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.57 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.42 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.42 = type { %struct.callback_head }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.62 }
%struct.anon.62 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.66 }
%struct.anon.66 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.74, i32, [12 x i8] }
%union.anon.74 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.75 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.76, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.76 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.cpuhp_cpu_state = type { i32, i32, i32, %struct.task_struct*, i8, i8, i8, i8, i32, %struct.hlist_node*, %struct.hlist_node*, i32, i32, %struct.completion, %struct.completion }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.cpuhp_step = type { i8*, %union.anon.81, %union.anon.82, %struct.hlist_head, i8, i8 }
%union.anon.81 = type { i32 (i32)* }
%union.anon.82 = type { i32 (i32)* }

@cpu_add_remove_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @cpu_add_remove_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @cpu_add_remove_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@cpuhp_threads = internal global %struct.smp_hotplug_thread { %struct.task_struct** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.cpuhp_cpu_state* @cpuhp_state to i8*), i64 16) to %struct.task_struct**), %struct.list_head zeroinitializer, i32 (i32)* @cpuhp_should_run, void (i32)* @cpuhp_thread_fun, void (i32)* @cpuhp_create, void (i32)* null, void (i32, i1)* null, void (i32)* null, void (i32)* null, i8 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, align 8
@cpuhp_state = internal global %struct.cpuhp_cpu_state { i32 0, i32 0, i32 -1, %struct.task_struct* null, i8 0, i8 0, i8 0, i8 0, i32 0, %struct.hlist_node* null, %struct.hlist_node* null, i32 0, i32 0, %struct.completion zeroinitializer, %struct.completion zeroinitializer }, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@cpus_booted_once_mask = dso_local global %struct.cpumask zeroinitializer, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str = private unnamed_addr constant [57 x i8] c"\016Hibernated on a CPU that is offline! Bringing CPU up.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\013Failed to bring hibernate-CPU up!\0A\00", align 1
@__cpu_present_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuhp_state_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @cpuhp_state_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @cpuhp_state_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Error: Removing state %d which has instances left.\0A\00", align 1
@cpu_bit_bitmap = dso_local local_unnamed_addr constant [65 x [4 x i64]] [[4 x i64] zeroinitializer, [4 x i64] [i64 1, i64 0, i64 0, i64 0], [4 x i64] [i64 2, i64 0, i64 0, i64 0], [4 x i64] [i64 4, i64 0, i64 0, i64 0], [4 x i64] [i64 8, i64 0, i64 0, i64 0], [4 x i64] [i64 16, i64 0, i64 0, i64 0], [4 x i64] [i64 32, i64 0, i64 0, i64 0], [4 x i64] [i64 64, i64 0, i64 0, i64 0], [4 x i64] [i64 128, i64 0, i64 0, i64 0], [4 x i64] [i64 256, i64 0, i64 0, i64 0], [4 x i64] [i64 512, i64 0, i64 0, i64 0], [4 x i64] [i64 1024, i64 0, i64 0, i64 0], [4 x i64] [i64 2048, i64 0, i64 0, i64 0], [4 x i64] [i64 4096, i64 0, i64 0, i64 0], [4 x i64] [i64 8192, i64 0, i64 0, i64 0], [4 x i64] [i64 16384, i64 0, i64 0, i64 0], [4 x i64] [i64 32768, i64 0, i64 0, i64 0], [4 x i64] [i64 65536, i64 0, i64 0, i64 0], [4 x i64] [i64 131072, i64 0, i64 0, i64 0], [4 x i64] [i64 262144, i64 0, i64 0, i64 0], [4 x i64] [i64 524288, i64 0, i64 0, i64 0], [4 x i64] [i64 1048576, i64 0, i64 0, i64 0], [4 x i64] [i64 2097152, i64 0, i64 0, i64 0], [4 x i64] [i64 4194304, i64 0, i64 0, i64 0], [4 x i64] [i64 8388608, i64 0, i64 0, i64 0], [4 x i64] [i64 16777216, i64 0, i64 0, i64 0], [4 x i64] [i64 33554432, i64 0, i64 0, i64 0], [4 x i64] [i64 67108864, i64 0, i64 0, i64 0], [4 x i64] [i64 134217728, i64 0, i64 0, i64 0], [4 x i64] [i64 268435456, i64 0, i64 0, i64 0], [4 x i64] [i64 536870912, i64 0, i64 0, i64 0], [4 x i64] [i64 1073741824, i64 0, i64 0, i64 0], [4 x i64] [i64 2147483648, i64 0, i64 0, i64 0], [4 x i64] [i64 4294967296, i64 0, i64 0, i64 0], [4 x i64] [i64 8589934592, i64 0, i64 0, i64 0], [4 x i64] [i64 17179869184, i64 0, i64 0, i64 0], [4 x i64] [i64 34359738368, i64 0, i64 0, i64 0], [4 x i64] [i64 68719476736, i64 0, i64 0, i64 0], [4 x i64] [i64 137438953472, i64 0, i64 0, i64 0], [4 x i64] [i64 274877906944, i64 0, i64 0, i64 0], [4 x i64] [i64 549755813888, i64 0, i64 0, i64 0], [4 x i64] [i64 1099511627776, i64 0, i64 0, i64 0], [4 x i64] [i64 2199023255552, i64 0, i64 0, i64 0], [4 x i64] [i64 4398046511104, i64 0, i64 0, i64 0], [4 x i64] [i64 8796093022208, i64 0, i64 0, i64 0], [4 x i64] [i64 17592186044416, i64 0, i64 0, i64 0], [4 x i64] [i64 35184372088832, i64 0, i64 0, i64 0], [4 x i64] [i64 70368744177664, i64 0, i64 0, i64 0], [4 x i64] [i64 140737488355328, i64 0, i64 0, i64 0], [4 x i64] [i64 281474976710656, i64 0, i64 0, i64 0], [4 x i64] [i64 562949953421312, i64 0, i64 0, i64 0], [4 x i64] [i64 1125899906842624, i64 0, i64 0, i64 0], [4 x i64] [i64 2251799813685248, i64 0, i64 0, i64 0], [4 x i64] [i64 4503599627370496, i64 0, i64 0, i64 0], [4 x i64] [i64 9007199254740992, i64 0, i64 0, i64 0], [4 x i64] [i64 18014398509481984, i64 0, i64 0, i64 0], [4 x i64] [i64 36028797018963968, i64 0, i64 0, i64 0], [4 x i64] [i64 72057594037927936, i64 0, i64 0, i64 0], [4 x i64] [i64 144115188075855872, i64 0, i64 0, i64 0], [4 x i64] [i64 288230376151711744, i64 0, i64 0, i64 0], [4 x i64] [i64 576460752303423488, i64 0, i64 0, i64 0], [4 x i64] [i64 1152921504606846976, i64 0, i64 0, i64 0], [4 x i64] [i64 2305843009213693952, i64 0, i64 0, i64 0], [4 x i64] [i64 4611686018427387904, i64 0, i64 0, i64 0], [4 x i64] [i64 -9223372036854775808, i64 0, i64 0, i64 0]], align 8
@cpu_all_bits = dso_local local_unnamed_addr constant [4 x i64] [i64 -1, i64 -1, i64 -1, i64 -1], align 8
@__cpu_possible_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 8
@__cpu_online_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 8
@__num_online_cpus = dso_local global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@__boot_cpu_id = dso_local local_unnamed_addr global i32 0, align 4
@__setup_str_mitigations_parse_cmdline = internal constant [12 x i8] c"mitigations\00", section ".init.rodata", align 1
@__setup_mitigations_parse_cmdline = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__setup_str_mitigations_parse_cmdline, i32 0, i32 0), i32 (i8*)* @mitigations_parse_cmdline, i32 1 }, section ".init.setup", align 8
@cpu_mitigations = internal unnamed_addr global i32 1, section ".data..ro_after_init", align 4
@cpuhp_tasks_frozen = dso_local local_unnamed_addr global i8 0, align 4
@__cpu_active_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 8
@__cpu_dying_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"cpuhp/%u\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"\013can't online cpu %d because it is not configured as may-hotadd at boot time\0A\00", align 1
@cpuhp_hp_states = internal global [229 x %struct.cpuhp_step] [%struct.cpuhp_step { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %union.anon.81 { i32 (i32)* @smpboot_create_threads }, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), %union.anon.81 { i32 (i32)* @workqueue_prepare_cpu }, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), %union.anon.81 { i32 (i32)* @hrtimers_prepare_cpu }, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), %union.anon.81 { i32 (i32)* @smpcfd_prepare_cpu }, %union.anon.82 { i32 (i32)* @smpcfd_dead_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), %union.anon.81 { i32 (i32)* @rcutree_prepare_cpu }, %union.anon.82 { i32 (i32)* @rcutree_dead_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), %union.anon.81 { i32 (i32)* @bringup_cpu }, %union.anon.82 { i32 (i32)* @finish_cpu }, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), %union.anon.81 { i32 (i32)* @sched_cpu_starting }, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 { i32 (i32)* @rcutree_dying_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 { i32 (i32)* @smpcfd_dying_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), %union.anon.81 { i32 (i32)* @smpboot_unpark_threads }, %union.anon.82 { i32 (i32)* @smpboot_park_threads }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), %union.anon.81 { i32 (i32)* @workqueue_online_cpu }, %union.anon.82 { i32 (i32)* @workqueue_offline_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), %union.anon.81 { i32 (i32)* @rcutree_online_cpu }, %union.anon.82 { i32 (i32)* @rcutree_offline_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), %union.anon.81 { i32 (i32)* @sched_cpu_activate }, %union.anon.82 { i32 (i32)* @sched_cpu_deactivate }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), %union.anon.81 zeroinitializer, %union.anon.82 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }], align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"threads:prepare\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"perf:prepare\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"workqueue:prepare\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"hrtimers:prepare\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"smpcfd:prepare\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"relay:prepare\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"slab:prepare\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"RCU/tree:prepare\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"timers:prepare\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"cpu:bringup\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"idle:dead\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"ap:offline\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"sched:starting\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"RCU/tree:dying\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"smpcfd:dying\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"ap:online\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"cpu:teardown\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"sched:waitempty\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"smpboot/threads:online\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"irq/affinity:online\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"perf:online\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"lockup_detector:online\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"workqueue:online\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"RCU/tree:online\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"sched:active\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@init_mm = external dso_local global %struct.mm_struct, align 8
@.str.34 = private unnamed_addr constant [50 x i8] c"No more dynamic states available for CPU hotplug\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"auto,nosmt\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"\012Unsupported mitigations=%s, system may still be vulnerable\0A\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_mitigations_parse_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cpu_maps_update_begin() local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @cpu_add_remove_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cpu_maps_update_done() local_unnamed_addr #0 {
entry:
  call void @mutex_unlock(%struct.mutex* noundef nonnull @cpu_add_remove_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @arch_smt_update() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @cpuhp_threads_init() local_unnamed_addr #2 section ".init.text" {
entry:
  %call = call i32 @smpboot_register_percpu_thread(%struct.smp_hotplug_thread* noundef nonnull @cpuhp_threads) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !8

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 887; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !9
  unreachable

do.end6:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %call14 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call14, ptrtoint (%struct.task_struct** getelementptr inbounds (%struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* @cpuhp_state, i64 0, i32 3) to i64)
  %0 = inttoptr i64 %add to i8*
  %call15 = call fastcc i64 @__percpu_read_64(i8* noundef %0) #15
  %1 = inttoptr i64 %call15 to %struct.task_struct*
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  call void @kthread_unpark(%struct.task_struct* noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(%struct.smp_hotplug_thread* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @__percpu_read_64(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = load volatile i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #5 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #16, !srcloc !12
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @notify_cpu_starting(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %1 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %target2 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 1
  %2 = load i32, i32* %target2, align 4
  %cmp = icmp slt i32 %2, 148
  %cond = select i1 %cmp, i32 %2, i32 148
  call void @rcu_cpu_starting(i32 noundef %cpu) #13
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @cpus_booted_once_mask) #15
  %call = call fastcc i32 @cpuhp_invoke_callback_range(i1 noundef true, i32 noundef %cpu, %struct.cpuhp_cpu_state* noundef %1, i32 noundef %cond) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 1289; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_cpu_starting(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_invoke_callback_range(i1 noundef %bringup, i32 noundef %cpu, %struct.cpuhp_cpu_state* nocapture noundef %st, i32 noundef %target) unnamed_addr #0 {
entry:
  %state = alloca i32, align 4
  %0 = bitcast i32* %state to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 0, i32* %state, align 4, !annotation !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call fastcc i1 @cpuhp_next_state(i1 noundef %bringup, i32* noundef nonnull %state, %struct.cpuhp_cpu_state* noundef %st, i32 noundef %target) #15
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %state, align 4
  %call2 = call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %1, i1 noundef %bringup, %struct.hlist_node* noundef null, %struct.hlist_node** noundef null) #15
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.cond, label %while.end

while.end:                                        ; preds = %while.body, %while.cond
  %err.1 = phi i32 [ %call2, %while.body ], [ 0, %while.cond ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %err.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cpuhp_online_idle(i32 noundef %state) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %0 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %cmp.not = icmp eq i32 %state, 150
  br i1 %cmp.not, label %do.body2, label %cleanup

do.body2:                                         ; preds = %entry
  %add10 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add10 to i32*
  %2 = load i32, i32* %1, align 4
  call void @stop_machine_unpark(i32 noundef %2) #13
  %state11 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 0
  store i32 150, i32* %state11, align 8
  call fastcc void @complete_ap_thread(%struct.cpuhp_cpu_state* noundef %0, i1 noundef true) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_machine_unpark(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @complete_ap_thread(%struct.cpuhp_cpu_state* noundef %st, i1 noundef %bringup) unnamed_addr #0 {
entry:
  %done_up = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 13
  %done_down = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 14
  %cond = select i1 %bringup, %struct.completion* %done_up, %struct.completion* %done_down
  call void @complete(%struct.completion* noundef %cond) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @cpu_device_up(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #0 {
entry:
  %id = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 28
  %0 = load i32, i32* %id, align 4
  %call = call fastcc i32 @cpu_up(i32 noundef %0) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpu_up(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @cpu_possible(i32 noundef %cpu) #15
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 noundef %cpu) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @cpu_maps_update_begin() #15
  %call11 = call fastcc i32 @_cpu_up(i32 noundef %cpu) #15
  call void @cpu_maps_update_done() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call11, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @add_cpu(i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  call void @lock_device_hotplug() #13
  %call = call %struct.device* @get_cpu_device(i32 noundef %cpu) #13
  %call1 = call i32 @device_online(%struct.device* noundef %call) #13
  call void @unlock_device_hotplug() #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_device_hotplug() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_online(%struct.device* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_device_hotplug() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bringup_hibernate_cpu(i32 noundef %sleep_cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @cpu_online(i32 noundef %sleep_cpu) #15
  br i1 %call, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0)) #17
  %call2 = call fastcc i32 @cpu_up(i32 noundef %sleep_cpu) #15
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %do.end6

do.end6:                                          ; preds = %do.end
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0)) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end, %do.end6
  %retval.0 = phi i32 [ %call2, %do.end6 ], [ 0, %do.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_online_mask) #15
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bringup_nonboot_cpus(i32 noundef %setup_max_cpus) local_unnamed_addr #0 {
entry:
  %call11 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp12 = icmp ult i32 %call11, %0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end6
  %call13 = phi i32 [ %call, %if.end6 ], [ %call11, %entry ]
  %call1 = call fastcc i32 @num_online_cpus() #15
  %cmp2.not = icmp ult i32 %call1, %setup_max_cpus
  br i1 %cmp2.not, label %if.end, label %for.end

if.end:                                           ; preds = %for.body
  %call3 = call fastcc i1 @cpu_online(i32 noundef %call13) #15
  br i1 %call3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = call fastcc i32 @cpu_up(i32 noundef %call13) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %call = call i32 @cpumask_next(i32 noundef %call13, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end6, %for.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__cpuhp_state_add_instance_cpuslocked(i32 noundef %state, %struct.hlist_node* noundef %node, i1 noundef %invoke) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpuhp_step* @cpuhp_get_step(i32 noundef %state) #15
  %multi_instance = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 5
  %0 = load i8, i8* %multi_instance, align 1, !range !15
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %cleanup24, label %if.end

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @cpuhp_state_mutex) #13
  br i1 %invoke, label %lor.lhs.false, label %add_node

lor.lhs.false:                                    ; preds = %if.end
  %startup = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 1
  %multi = bitcast %union.anon.81* %startup to i32 (i32, %struct.hlist_node*)**
  %1 = load i32 (i32, %struct.hlist_node*)*, i32 (i32, %struct.hlist_node*)** %multi, align 8
  %tobool3.not = icmp eq i32 (i32, %struct.hlist_node*)* %1, null
  br i1 %tobool3.not, label %add_node, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call650 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp751 = icmp ult i32 %call650, %2
  br i1 %cmp751, label %for.body, label %add_node

for.body:                                         ; preds = %for.cond.preheader, %cleanup
  %3 = phi i32 [ %8, %cleanup ], [ %2, %for.cond.preheader ]
  %call652 = phi i32 [ %call6, %cleanup ], [ %call650, %for.cond.preheader ]
  %idxprom = sext i32 %call652 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %5 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %state10 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %5, i64 0, i32 0
  %6 = load i32, i32* %state10, align 8
  %cmp11 = icmp slt i32 %6, %state
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %for.body
  %call15 = call fastcc i32 @cpuhp_issue_call(i32 noundef %call652, i32 noundef %state, i1 noundef true, %struct.hlist_node* noundef %node) #15
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %teardown = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 2
  %multi18 = bitcast %union.anon.82* %teardown to i32 (i32, %struct.hlist_node*)**
  %7 = load i32 (i32, %struct.hlist_node*)*, i32 (i32, %struct.hlist_node*)** %multi18, align 8
  %tobool19.not = icmp eq i32 (i32, %struct.hlist_node*)* %7, null
  br i1 %tobool19.not, label %unlock, label %if.then20

if.then20:                                        ; preds = %if.then17
  call fastcc void @cpuhp_rollback_install(i32 noundef %call652, i32 noundef %state, %struct.hlist_node* noundef %node) #15
  br label %unlock

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %for.body
  %8 = phi i32 [ %.pre, %if.end14.cleanup_crit_edge ], [ %3, %for.body ]
  %call6 = call i32 @cpumask_next(i32 noundef %call652, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %cmp7 = icmp ult i32 %call6, %8
  br i1 %cmp7, label %for.body, label %add_node

add_node:                                         ; preds = %cleanup, %for.cond.preheader, %if.end, %lor.lhs.false
  %list = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 3
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %node, %struct.hlist_head* noundef %list) #15
  br label %unlock

unlock:                                           ; preds = %if.then17, %if.then20, %add_node
  %ret.2 = phi i32 [ 0, %add_node ], [ %call15, %if.then20 ], [ %call15, %if.then17 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @cpuhp_state_mutex) #13
  br label %cleanup24

cleanup24:                                        ; preds = %entry, %unlock
  %retval.0 = phi i32 [ %ret.2, %unlock ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpuhp_step* @cpuhp_get_step(i32 noundef %state) unnamed_addr #8 {
entry:
  %idx.ext = sext i32 %state to i64
  %add.ptr = getelementptr [229 x %struct.cpuhp_step], [229 x %struct.cpuhp_step]* @cpuhp_hp_states, i64 0, i64 %idx.ext
  ret %struct.cpuhp_step* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_issue_call(i32 noundef %cpu, i32 noundef %state, i1 noundef %bringup, %struct.hlist_node* noundef %node) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpuhp_step* @cpuhp_get_step(i32 noundef %state) #15
  %call1 = call fastcc i1 @cpuhp_step_empty(i1 noundef %bringup, %struct.cpuhp_step* noundef nonnull %call) #15
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @cpuhp_is_ap_state(i32 noundef %state) #15
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call5 = call fastcc i32 @cpuhp_invoke_ap_callback(i32 noundef %cpu, i32 noundef %state, i1 noundef %bringup, %struct.hlist_node* noundef %node) #15
  br label %do.body

if.else:                                          ; preds = %if.end
  %call7 = call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %state, i1 noundef %bringup, %struct.hlist_node* noundef %node, %struct.hlist_node** noundef null) #15
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.else
  %ret.0 = phi i32 [ %call5, %if.then3 ], [ %call7, %if.else ]
  %tobool9 = icmp eq i32 %ret.0, 0
  %0 = or i1 %tobool9, %bringup
  br i1 %0, label %cleanup, label %do.body15, !prof !8

do.body15:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 1914; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  unreachable

cleanup:                                          ; preds = %do.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ret.0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_rollback_install(i32 noundef %failedcpu, i32 noundef %state, %struct.hlist_node* noundef %node) unnamed_addr #0 {
entry:
  %call21 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp22 = icmp ult i32 %call21, %0
  %cmp3.not23 = icmp slt i32 %call21, %failedcpu
  %or.cond24 = and i1 %cmp3.not23, %cmp22
  br i1 %or.cond24, label %if.end, label %for.end

if.end:                                           ; preds = %entry, %cleanup
  %1 = phi i32 [ %5, %cleanup ], [ %0, %entry ]
  %call25 = phi i32 [ %call, %cleanup ], [ %call21, %entry ]
  %idxprom = sext i32 %call25 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %3 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %state2 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %3, i64 0, i32 0
  %4 = load i32, i32* %state2, align 8
  %cmp4.not = icmp slt i32 %4, %state
  br i1 %cmp4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i32 @cpuhp_issue_call(i32 noundef %call25, i32 noundef %state, i1 noundef false, %struct.hlist_node* noundef %node) #15
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5
  %5 = phi i32 [ %1, %if.end ], [ %.pre, %if.then5 ]
  %call = call i32 @cpumask_next(i32 noundef %call25, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %cmp = icmp ult i32 %call, %5
  %cmp3.not = icmp slt i32 %call, %failedcpu
  %or.cond = and i1 %cmp3.not, %cmp
  br i1 %or.cond, label %if.end, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #9 {
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
define dso_local i32 @__cpuhp_state_add_instance(i32 noundef %state, %struct.hlist_node* noundef %node, i1 noundef %invoke) local_unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_state_add_instance_cpuslocked(i32 noundef %state, %struct.hlist_node* noundef %node, i1 noundef %invoke) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__cpuhp_setup_state_cpuslocked(i32 noundef %state, i8* noundef %name, i1 noundef %invoke, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown, i1 noundef %multi_instance) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @cpuhp_cb_check(i32 noundef %state) #15
  %tobool = icmp eq i32 %call, 0
  %tobool2 = icmp ne i8* %name, null
  %or.cond = and i1 %tobool2, %tobool
  br i1 %or.cond, label %if.end, label %cleanup38

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @cpuhp_state_mutex) #13
  %call4 = call fastcc i32 @cpuhp_store_callbacks(i32 noundef %state, i8* noundef nonnull %name, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown, i1 noundef %multi_instance) #15
  %cmp = icmp eq i32 %state, 192
  %cmp6 = icmp sgt i32 %call4, 0
  %0 = and i1 %cmp, %cmp6
  %ret.0 = select i1 %0, i32 0, i32 %call4
  %state.addr.0 = select i1 %0, i32 %call4, i32 %state
  %tobool10.not = icmp eq i32 %ret.0, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %out

lor.lhs.false11:                                  ; preds = %if.end
  %tobool14 = icmp ne i32 (i32)* %startup, null
  %or.cond41 = and i1 %tobool14, %invoke
  br i1 %or.cond41, label %for.cond.preheader, label %out

for.cond.preheader:                               ; preds = %lor.lhs.false11
  %call1773 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1874 = icmp ult i32 %call1773, %1
  br i1 %cmp1874, label %for.body, label %out

for.body:                                         ; preds = %for.cond.preheader, %cleanup
  %2 = phi i32 [ %6, %cleanup ], [ %1, %for.cond.preheader ]
  %call1775 = phi i32 [ %call17, %cleanup ], [ %call1773, %for.cond.preheader ]
  %idxprom = sext i32 %call1775 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %4 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %state20 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %4, i64 0, i32 0
  %5 = load i32, i32* %state20, align 8
  %cmp21 = icmp slt i32 %5, %state.addr.0
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %for.body
  %call24 = call fastcc i32 @cpuhp_issue_call(i32 noundef %call1775, i32 noundef %state.addr.0, i1 noundef true, %struct.hlist_node* noundef null) #15
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  %tobool27.not = icmp eq i32 (i32)* %teardown, null
  br i1 %tobool27.not, label %cleanup.thread, label %if.then28

if.then28:                                        ; preds = %if.then26
  call fastcc void @cpuhp_rollback_install(i32 noundef %call1775, i32 noundef %state.addr.0, %struct.hlist_node* noundef null) #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then26, %if.then28
  %call30 = call fastcc i32 @cpuhp_store_callbacks(i32 noundef %state.addr.0, i8* noundef null, i32 (i32)* noundef null, i32 (i32)* noundef null, i1 noundef false) #15
  br label %out

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %for.body
  %6 = phi i32 [ %.pre, %if.end23.cleanup_crit_edge ], [ %2, %for.body ]
  %call17 = call i32 @cpumask_next(i32 noundef %call1775, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %cmp18 = icmp ult i32 %call17, %6
  br i1 %cmp18, label %for.body, label %out

out:                                              ; preds = %cleanup, %for.cond.preheader, %cleanup.thread, %if.end, %lor.lhs.false11
  %ret.3 = phi i32 [ %ret.0, %if.end ], [ 0, %lor.lhs.false11 ], [ %call24, %cleanup.thread ], [ 0, %for.cond.preheader ], [ 0, %cleanup ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @cpuhp_state_mutex) #13
  %tobool33.not = icmp eq i32 %ret.3, 0
  %7 = and i1 %cmp, %tobool33.not
  %spec.select69 = select i1 %7, i32 %state.addr.0, i32 %ret.3
  br label %cleanup38

cleanup38:                                        ; preds = %out, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %spec.select69, %out ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @cpuhp_cb_check(i32 noundef %state) unnamed_addr #8 {
entry:
  %0 = add i32 %state, -228
  %1 = icmp ult i32 %0, -227
  %. = select i1 %1, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_store_callbacks(i32 noundef %state, i8* noundef %name, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown, i1 noundef %multi_instance) unnamed_addr #0 {
entry:
  %frombool = zext i1 %multi_instance to i8
  %tobool.not = icmp eq i8* %name, null
  br i1 %tobool.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  switch i32 %state, label %land.lhs.true7 [
    i32 192, label %if.then
    i32 69, label %if.then
  ]

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true
  %call = call fastcc i32 @cpuhp_reserve_state(i32 noundef %state) #15
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %cleanup, label %land.lhs.true7

if.end4:                                          ; preds = %entry
  %call5 = call fastcc %struct.cpuhp_step* @cpuhp_get_step(i32 noundef %state) #15
  br label %if.end11

land.lhs.true7:                                   ; preds = %if.then, %land.lhs.true
  %state.addr.0.ph = phi i32 [ %call, %if.then ], [ %state, %land.lhs.true ]
  %ret.0.ph = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true ]
  %call537 = call fastcc %struct.cpuhp_step* @cpuhp_get_step(i32 noundef %state.addr.0.ph) #15
  %name8 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call537, i64 0, i32 0
  %0 = load i8*, i8** %name8, align 8
  %tobool9.not = icmp eq i8* %0, null
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end4, %land.lhs.true7
  %call541 = phi %struct.cpuhp_step* [ %call537, %land.lhs.true7 ], [ %call5, %if.end4 ]
  %ret.039 = phi i32 [ %ret.0.ph, %land.lhs.true7 ], [ 0, %if.end4 ]
  %single = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call541, i64 0, i32 1, i32 0
  store i32 (i32)* %startup, i32 (i32)** %single, align 8
  %single14 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call541, i64 0, i32 2, i32 0
  store i32 (i32)* %teardown, i32 (i32)** %single14, align 8
  %name15 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call541, i64 0, i32 0
  store i8* %name, i8** %name15, align 8
  %multi_instance17 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call541, i64 0, i32 5
  store i8 %frombool, i8* %multi_instance17, align 1
  %first = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call541, i64 0, i32 3, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true7, %if.then, %if.end11
  %retval.0 = phi i32 [ %ret.039, %if.end11 ], [ %call, %if.then ], [ -16, %land.lhs.true7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__cpuhp_setup_state(i32 noundef %state, i8* noundef %name, i1 noundef %invoke, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown, i1 noundef %multi_instance) local_unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state_cpuslocked(i32 noundef %state, i8* noundef %name, i1 noundef %invoke, i32 (i32)* noundef %startup, i32 (i32)* noundef %teardown, i1 noundef %multi_instance) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__cpuhp_state_remove_instance(i32 noundef %state, %struct.hlist_node* noundef %node, i1 noundef %invoke) local_unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @cpuhp_cb_check(i32 noundef %state) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 2098; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !17
  unreachable

do.end9:                                          ; preds = %entry
  %call = call fastcc %struct.cpuhp_step* @cpuhp_get_step(i32 noundef %state) #15
  %multi_instance = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 5
  %0 = load i8, i8* %multi_instance, align 1, !range !15
  %tobool10.not = icmp eq i8 %0, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %do.end9
  call void @mutex_lock(%struct.mutex* noundef nonnull @cpuhp_state_mutex) #13
  br i1 %invoke, label %lor.lhs.false, label %remove

lor.lhs.false:                                    ; preds = %if.end12
  %call14 = call fastcc i8* @cpuhp_get_teardown_cb(i32 noundef %state) #15
  %tobool15.not = icmp eq i8* %call14, null
  br i1 %tobool15.not, label %remove, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call1845 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp46 = icmp ult i32 %call1845, %1
  br i1 %cmp46, label %for.body, label %remove

for.body:                                         ; preds = %for.cond.preheader, %if.end29
  %2 = phi i32 [ %6, %if.end29 ], [ %1, %for.cond.preheader ]
  %call1847 = phi i32 [ %call18, %if.end29 ], [ %call1845, %for.cond.preheader ]
  %idxprom = sext i32 %call1847 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %4 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %state24 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %4, i64 0, i32 0
  %5 = load i32, i32* %state24, align 8
  %cmp25.not = icmp slt i32 %5, %state
  br i1 %cmp25.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %for.body
  %call28 = call fastcc i32 @cpuhp_issue_call(i32 noundef %call1847, i32 noundef %state, i1 noundef false, %struct.hlist_node* noundef %node) #15
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.body
  %6 = phi i32 [ %.pre, %if.then27 ], [ %2, %for.body ]
  %call18 = call i32 @cpumask_next(i32 noundef %call1847, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %cmp = icmp ult i32 %call18, %6
  br i1 %cmp, label %for.body, label %remove

remove:                                           ; preds = %if.end29, %for.cond.preheader, %if.end12, %lor.lhs.false
  call fastcc void @hlist_del(%struct.hlist_node* noundef %node) #15
  call void @mutex_unlock(%struct.mutex* noundef nonnull @cpuhp_state_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %remove
  %retval.0 = phi i32 [ 0, %remove ], [ -22, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @cpuhp_get_teardown_cb(i32 noundef %state) unnamed_addr #10 {
entry:
  %call = call fastcc %struct.cpuhp_step* @cpuhp_get_step(i32 noundef %state) #15
  %single = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 2, i32 0
  %0 = bitcast i32 (i32)** %single to i8**
  %1 = load i8*, i8** %0, align 8
  ret i8* %1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del(%struct.hlist_node* nocapture noundef %n) unnamed_addr #9 {
entry:
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #15
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store %struct.hlist_node* inttoptr (i64 -2401263026318606080 to %struct.hlist_node*), %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store %struct.hlist_node** inttoptr (i64 -2401263026318606046 to %struct.hlist_node**), %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__cpuhp_remove_state_cpuslocked(i32 noundef %state, i1 noundef %invoke) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.cpuhp_step* @cpuhp_get_step(i32 noundef %state) #15
  %call1 = call fastcc i32 @cpuhp_cb_check(i32 noundef %state) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 2145; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !18
  unreachable

do.end9:                                          ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @cpuhp_state_mutex) #13
  %multi_instance = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 5
  %0 = load i8, i8* %multi_instance, align 1, !range !15
  %tobool10.not = icmp eq i8 %0, 0
  br i1 %tobool10.not, label %if.end46, label %if.then11

if.then11:                                        ; preds = %do.end9
  %list = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 3
  %call12 = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %list) #15
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end32, label %remove, !prof !19

do.end32:                                         ; preds = %if.then11
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 noundef %state) #13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 2153; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !20
  br label %remove

if.end46:                                         ; preds = %do.end9
  br i1 %invoke, label %lor.lhs.false, label %remove

lor.lhs.false:                                    ; preds = %if.end46
  %call48 = call fastcc i8* @cpuhp_get_teardown_cb(i32 noundef %state) #15
  %tobool49.not = icmp eq i8* %call48, null
  br i1 %tobool49.not, label %remove, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %call5284 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp85 = icmp ult i32 %call5284, %1
  br i1 %cmp85, label %for.body, label %remove

for.body:                                         ; preds = %for.cond.preheader, %if.end64
  %2 = phi i32 [ %6, %if.end64 ], [ %1, %for.cond.preheader ]
  %call5286 = phi i32 [ %call52, %if.end64 ], [ %call5284, %for.cond.preheader ]
  %idxprom = sext i32 %call5286 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %4 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %state59 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %4, i64 0, i32 0
  %5 = load i32, i32* %state59, align 8
  %cmp60.not = icmp slt i32 %5, %state
  br i1 %cmp60.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %for.body
  %call63 = call fastcc i32 @cpuhp_issue_call(i32 noundef %call5286, i32 noundef %state, i1 noundef false, %struct.hlist_node* noundef null) #15
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.body
  %6 = phi i32 [ %.pre, %if.then62 ], [ %2, %for.body ]
  %call52 = call i32 @cpumask_next(i32 noundef %call5286, %struct.cpumask* noundef nonnull @__cpu_present_mask) #18
  %cmp = icmp ult i32 %call52, %6
  br i1 %cmp, label %for.body, label %remove

remove:                                           ; preds = %if.end64, %for.cond.preheader, %if.then11, %do.end32, %if.end46, %lor.lhs.false
  %call65 = call fastcc i32 @cpuhp_store_callbacks(i32 noundef %state, i8* noundef null, i32 (i32)* noundef null, i32 (i32)* noundef null, i1 noundef false) #15
  call void @mutex_unlock(%struct.mutex* noundef nonnull @cpuhp_state_mutex) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #4 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__cpuhp_remove_state(i32 noundef %state, i1 noundef %invoke) local_unnamed_addr #0 {
entry:
  call void @__cpuhp_remove_state_cpuslocked(i32 noundef %state, i1 noundef %invoke) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_cpu_present(%struct.cpumask* noundef %src) local_unnamed_addr #0 {
entry:
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull @__cpu_present_mask, %struct.cpumask* noundef %src) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_cpu_possible(%struct.cpumask* noundef %src) local_unnamed_addr #0 {
entry:
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull @__cpu_possible_mask, %struct.cpumask* noundef %src) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_cpu_online(%struct.cpumask* noundef %src) local_unnamed_addr #0 {
entry:
  call fastcc void @cpumask_copy(%struct.cpumask* noundef nonnull @__cpu_online_mask, %struct.cpumask* noundef %src) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_cpu_online(i32 noundef %cpu, i1 noundef %online) local_unnamed_addr #0 {
entry:
  br i1 %online, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @cpumask_test_and_set_cpu(i32 noundef %cpu) #15
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.then
  call fastcc void @__ll_sc_atomic_add() #13
  br label %if.end7

if.else:                                          ; preds = %entry
  %call3 = call fastcc i32 @cpumask_test_and_clear_cpu(i32 noundef %cpu) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.else
  call fastcc void @__ll_sc_atomic_sub() #13
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5, %if.then, %if.then2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_test_and_set_cpu(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %call1 = call fastcc i1 @test_and_set_bit(i64 noundef %conv) #15
  %conv2 = zext i1 %call1 to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_test_and_clear_cpu(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %call1 = call fastcc i1 @test_and_clear_bit(i64 noundef %conv) #15
  %conv2 = zext i1 %call1 to i32
  ret i32 %conv2
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @boot_cpu_init() local_unnamed_addr #2 section ".init.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  call void @set_cpu_online(i32 noundef %1, i1 noundef true) #15
  call fastcc void @set_cpu_active(i32 noundef %1) #15
  call fastcc void @set_cpu_present(i32 noundef %1) #15
  call fastcc void @set_cpu_possible(i32 noundef %1) #15
  store i32 %1, i32* @__boot_cpu_id, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_cpu_active(i32 noundef %cpu) unnamed_addr #0 {
entry:
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_active_mask) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_cpu_present(i32 noundef %cpu) unnamed_addr #0 {
entry:
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_present_mask) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_cpu_possible(i32 noundef %cpu) unnamed_addr #0 {
entry:
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #15
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @boot_cpu_hotplug_init() local_unnamed_addr #2 section ".init.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  call fastcc void @cpumask_set_cpu(i32 noundef %1, %struct.cpumask* noundef nonnull @cpus_booted_once_mask) #15
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %call12 = call fastcc i64 @__kern_my_cpu_offset() #15
  %add13 = add i64 %call12, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %2 = inttoptr i64 %add13 to i8*
  call fastcc void @__percpu_write_32(i8* noundef %2) #15
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__percpu_write_32(i8* noundef %ptr) unnamed_addr #9 {
entry:
  %0 = bitcast i8* %ptr to i32*
  store volatile i32 228, i32* %0, align 4
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @mitigations_parse_cmdline(i8* noundef %arg) #2 section ".init.text" {
entry:
  %call = call i32 @strcmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @cpu_mitigations, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  %call1 = call i32 @strcmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i32 1, i32* @cpu_mitigations, align 4
  br label %if.end11

if.else4:                                         ; preds = %if.else
  %call5 = call i32 @strcmp(i8* noundef %arg, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0)) #13
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %do.end

if.then7:                                         ; preds = %if.else4
  store i32 2, i32* @cpu_mitigations, align 4
  br label %if.end11

do.end:                                           ; preds = %if.else4
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.38, i64 0, i64 0), i8* noundef %arg) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %do.end, %if.then7, %if.then
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @cpu_mitigations_off() local_unnamed_addr #10 {
entry:
  %0 = load i32, i32* @cpu_mitigations, align 4
  %cmp = icmp eq i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @cpu_mitigations_auto_nosmt() local_unnamed_addr #10 {
entry:
  %0 = load i32, i32* @cpu_mitigations, align 4
  %cmp = icmp eq i32 %0, 2
  ret i1 %cmp
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal i32 @cpuhp_should_run(i32 noundef %cpu) #5 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %0 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %should_run = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 4
  %1 = load i8, i8* %should_run, align 8, !range !15
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cpuhp_thread_fun(i32 noundef %cpu) #0 {
entry:
  %state = alloca i32, align 4
  %call = call fastcc i64 @__kern_my_cpu_offset() #15
  %add = add i64 %call, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %0 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %bringup2 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 7
  %1 = load i8, i8* %bringup2, align 1, !range !15
  %tobool = icmp ne i8 %1, 0
  %2 = bitcast i32* %state to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  store i32 0, i32* %state, align 4, !annotation !14
  %should_run = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 4
  %3 = load i8, i8* %should_run, align 8, !range !15
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.then, label %if.end22, !prof !19

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 746; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !23
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  %single = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 6
  %4 = load i8, i8* %single, align 2, !range !15
  %tobool24.not = icmp eq i8 %4, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end22
  %cb_state = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 11
  %5 = load i32, i32* %cb_state, align 8
  store i32 %5, i32* %state, align 4
  store i8 0, i8* %should_run, align 8
  br label %if.end35

if.else:                                          ; preds = %if.end22
  %target = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 1
  %6 = load i32, i32* %target, align 4
  %call28 = call fastcc i1 @cpuhp_next_state(i1 noundef %tobool, i32* noundef nonnull %state, %struct.cpuhp_cpu_state* noundef %0, i32 noundef %6) #15
  %frombool30 = zext i1 %call28 to i8
  store i8 %frombool30, i8* %should_run, align 8
  br i1 %call28, label %if.else.if.end35_crit_edge, label %if.then136

if.else.if.end35_crit_edge:                       ; preds = %if.else
  %.pre = load i32, i32* %state, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.then25
  %7 = phi i32 [ %.pre, %if.else.if.end35_crit_edge ], [ %5, %if.then25 ]
  %call37 = call fastcc i1 @cpuhp_is_ap_state(i32 noundef %7) #15
  br i1 %call37, label %if.end53, label %if.then52, !prof !8

if.then52:                                        ; preds = %if.end35
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 772; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !25
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end35
  %call62 = call fastcc i1 @cpuhp_is_atomic_state(i32 noundef %7) #15
  br i1 %call62, label %do.body64, label %if.else97

do.body64:                                        ; preds = %if.end53
  call fastcc void @arch_local_irq_disable() #15
  %node = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 9
  %8 = load %struct.hlist_node*, %struct.hlist_node** %node, align 8
  %last = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 10
  %call68 = call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %7, i1 noundef %tobool, %struct.hlist_node* noundef %8, %struct.hlist_node** noundef %last) #15
  %result = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 12
  store i32 %call68, i32* %result, align 4
  call fastcc void @arch_local_irq_enable() #15
  %9 = load i32, i32* %result, align 4
  %tobool74.not = icmp eq i32 %9, 0
  br i1 %tobool74.not, label %end, label %if.then87, !prof !8

if.then87:                                        ; preds = %do.body64
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 782; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !26
  %.pre179 = load i32, i32* %result, align 4
  br label %if.end103

if.else97:                                        ; preds = %if.end53
  %node99 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 9
  %10 = load %struct.hlist_node*, %struct.hlist_node** %node99, align 8
  %last100 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 10
  %call101 = call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %7, i1 noundef %tobool, %struct.hlist_node* noundef %10, %struct.hlist_node** noundef %last100) #15
  %result102 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 12
  store i32 %call101, i32* %result102, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then87, %if.else97
  %11 = phi i32 [ %.pre179, %if.then87 ], [ %call101, %if.else97 ]
  %tobool105.not = icmp eq i32 %11, 0
  br i1 %tobool105.not, label %end, label %if.then106

if.then106:                                       ; preds = %if.end103
  %rollback = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %0, i64 0, i32 5
  %12 = load i8, i8* %rollback, align 1, !range !15
  %tobool108.not = icmp eq i8 %12, 0
  br i1 %tobool108.not, label %if.end122, label %if.then121, !prof !8

if.then121:                                       ; preds = %if.then106
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 793; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !27
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.then106
  store i8 0, i8* %should_run, align 8
  br label %if.then136

end:                                              ; preds = %do.body64, %if.end103
  %.pr = load i8, i8* %should_run, align 8
  %tobool135.not = icmp eq i8 %.pr, 0
  br i1 %tobool135.not, label %if.then136, label %cleanup

if.then136:                                       ; preds = %if.else, %if.end122, %end
  call fastcc void @complete_ap_thread(%struct.cpuhp_cpu_state* noundef %0, i1 noundef %tobool) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %end, %if.then136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cpuhp_create(i32 noundef %cpu) #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %1 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %done_up = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 13
  call fastcc void @init_completion(%struct.completion* noundef %done_up) #15
  %done_down = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 14
  call fastcc void @init_completion(%struct.completion* noundef %done_down) #15
  %cpu2 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 8
  store i32 %cpu, i32* %cpu2, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i1 @cpuhp_next_state(i1 noundef %bringup, i32* nocapture noundef writeonly %state_to_run, %struct.cpuhp_cpu_state* nocapture noundef %st, i32 noundef %target) unnamed_addr #11 {
entry:
  %state3 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %if.end8, %entry
  %0 = load i32, i32* %state3, align 8
  br i1 %bringup, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %cmp.not = icmp slt i32 %0, %target
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %inc = add nsw i32 %0, 1
  br label %if.end8

if.else:                                          ; preds = %do.body
  %cmp4.not = icmp sgt i32 %0, %target
  br i1 %cmp4.not, label %if.end6, label %return

if.end6:                                          ; preds = %if.else
  %dec = add nsw i32 %0, -1
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end
  %storemerge21 = phi i32 [ %dec, %if.end6 ], [ %inc, %if.end ]
  %storemerge = phi i32 [ %0, %if.end6 ], [ %inc, %if.end ]
  store i32 %storemerge21, i32* %state3, align 8
  store i32 %storemerge, i32* %state_to_run, align 4
  %call = call fastcc %struct.cpuhp_step* @cpuhp_get_step(i32 noundef %storemerge) #15
  %call10 = call fastcc i1 @cpuhp_step_empty(i1 noundef %bringup, %struct.cpuhp_step* noundef nonnull %call) #15
  br i1 %call10, label %do.body, label %return

return:                                           ; preds = %if.end8, %if.else, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.else ], [ true, %if.end8 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @cpuhp_is_ap_state(i32 noundef %state) unnamed_addr #8 {
entry:
  %cmp = icmp sgt i32 %state, 90
  %cmp1 = icmp ne i32 %state, 149
  %0 = and i1 %cmp, %cmp1
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @cpuhp_is_atomic_state(i32 noundef %state) unnamed_addr #8 {
entry:
  %0 = add i32 %state, -91
  %1 = icmp ult i32 %0, 57
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #15
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !19

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #14, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %state, i1 noundef %bringup, %struct.hlist_node* noundef %node, %struct.hlist_node** noundef %lastp) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %1 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %call = call fastcc %struct.cpuhp_step* @cpuhp_get_step(i32 noundef %state) #15
  %fail = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 2
  %2 = load i32, i32* %fail, align 8
  %cmp = icmp eq i32 %2, %state
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %fail, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @cpuhp_step_empty(i1 noundef %bringup, %struct.cpuhp_step* noundef nonnull %call) #15
  br i1 %call3, label %if.then8, label %if.end18

if.then8:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 181; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !29
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %multi_instance = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 5
  %3 = load i8, i8* %multi_instance, align 1, !range !15
  %tobool19.not = icmp eq i8 %3, 0
  br i1 %tobool19.not, label %if.then20, label %if.end51

if.then20:                                        ; preds = %if.end18
  %tobool22.not = icmp eq %struct.hlist_node** %lastp, null
  br i1 %tobool22.not, label %if.end37, label %land.rhs

land.rhs:                                         ; preds = %if.then20
  %4 = load %struct.hlist_node*, %struct.hlist_node** %lastp, align 8
  %tobool23.not = icmp eq %struct.hlist_node* %4, null
  br i1 %tobool23.not, label %if.end37, label %if.then36, !prof !8

if.then36:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 186; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !30
  br label %if.end37

if.end37:                                         ; preds = %if.then20, %if.then36, %land.rhs
  %single = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 1, i32 0
  %single48 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 2, i32 0
  %cond.in = select i1 %bringup, i32 (i32)** %single, i32 (i32)** %single48
  %cond = load i32 (i32)*, i32 (i32)** %cond.in, align 8
  %call49 = call i32 %cond(i32 noundef %cpu) #13
  br label %cleanup

if.end51:                                         ; preds = %if.end18
  %startup55 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 1
  %multi = bitcast %union.anon.81* %startup55 to i32 (i32, %struct.hlist_node*)**
  %teardown57 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 2
  %multi58 = bitcast %union.anon.82* %teardown57 to i32 (i32, %struct.hlist_node*)**
  %cond60.in = select i1 %bringup, i32 (i32, %struct.hlist_node*)** %multi, i32 (i32, %struct.hlist_node*)** %multi58
  %cond60 = load i32 (i32, %struct.hlist_node*)*, i32 (i32, %struct.hlist_node*)** %cond60.in, align 8
  %tobool61.not = icmp eq %struct.hlist_node* %node, null
  br i1 %tobool61.not, label %if.end93, label %if.then62

if.then62:                                        ; preds = %if.end51
  %tobool64.not = icmp eq %struct.hlist_node** %lastp, null
  br i1 %tobool64.not, label %if.end81, label %land.rhs65

land.rhs65:                                       ; preds = %if.then62
  %5 = load %struct.hlist_node*, %struct.hlist_node** %lastp, align 8
  %tobool66.not = icmp eq %struct.hlist_node* %5, null
  br i1 %tobool66.not, label %if.end81, label %if.then80, !prof !8

if.then80:                                        ; preds = %land.rhs65
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 198; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !31
  br label %if.end81

if.end81:                                         ; preds = %if.then62, %if.then80, %land.rhs65
  %call91 = call i32 %cond60(i32 noundef %cpu, %struct.hlist_node* noundef nonnull %node) #13
  br label %cleanup

if.end93:                                         ; preds = %if.end51
  %first = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %call, i64 0, i32 3, i32 0
  %node.addr.0276 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool94.not277 = icmp eq %struct.hlist_node* %node.addr.0276, null
  br i1 %tobool94.not277, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end93
  %tobool95.not = icmp eq %struct.hlist_node** %lastp, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end108
  %node.addr.0280 = phi %struct.hlist_node* [ %node.addr.0276, %for.body.lr.ph ], [ %node.addr.0, %if.end108 ]
  %cnt.0278 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end108 ]
  br i1 %tobool95.not, label %if.end99, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.hlist_node*, %struct.hlist_node** %lastp, align 8
  %cmp96 = icmp eq %struct.hlist_node* %node.addr.0280, %6
  br i1 %cmp96, label %if.then110, label %if.end99.thread

if.end99:                                         ; preds = %for.body
  %call101 = call i32 %cond60(i32 noundef %cpu, %struct.hlist_node* noundef nonnull %node.addr.0280) #13
  %tobool103.not = icmp eq i32 %call101, 0
  br i1 %tobool103.not, label %if.end108, label %err

if.end99.thread:                                  ; preds = %land.lhs.true
  %call101264 = call i32 %cond60(i32 noundef %cpu, %struct.hlist_node* noundef nonnull %node.addr.0280) #13
  %tobool103.not265 = icmp eq i32 %call101264, 0
  br i1 %tobool103.not265, label %if.end108, label %if.end107

if.end107:                                        ; preds = %if.end99.thread
  store %struct.hlist_node* %node.addr.0280, %struct.hlist_node** %lastp, align 8
  br label %cleanup

if.end108:                                        ; preds = %if.end99.thread, %if.end99
  %inc = add i32 %cnt.0278, 1
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %node.addr.0280, i64 0, i32 0
  %node.addr.0 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool94.not = icmp eq %struct.hlist_node* %node.addr.0, null
  br i1 %tobool94.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end108, %if.end93
  %tobool109.not = icmp eq %struct.hlist_node** %lastp, null
  br i1 %tobool109.not, label %cleanup, label %if.then110

if.then110:                                       ; preds = %land.lhs.true, %for.end
  store %struct.hlist_node* null, %struct.hlist_node** %lastp, align 8
  br label %cleanup

err:                                              ; preds = %if.end99
  %cond120.in = select i1 %bringup, i32 (i32, %struct.hlist_node*)** %multi58, i32 (i32, %struct.hlist_node*)** %multi
  %cond120 = load i32 (i32, %struct.hlist_node*)*, i32 (i32, %struct.hlist_node*)** %cond120.in, align 8
  %tobool121.not = icmp eq i32 (i32, %struct.hlist_node*)* %cond120, null
  br i1 %tobool121.not, label %cleanup, label %for.cond126.preheader

for.cond126.preheader:                            ; preds = %err
  %node.addr.1282 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool127.not283 = icmp eq %struct.hlist_node* %node.addr.1282, null
  %tobool129.not307 = icmp eq i32 %cnt.0278, 0
  %or.cond = select i1 %tobool127.not283, i1 true, i1 %tobool129.not307
  br i1 %or.cond, label %cleanup, label %if.end131

if.end131:                                        ; preds = %for.cond126.preheader, %if.end150
  %dec309.in = phi i32 [ %dec309, %if.end150 ], [ %cnt.0278, %for.cond126.preheader ]
  %node.addr.1286308 = phi %struct.hlist_node* [ %node.addr.1, %if.end150 ], [ %node.addr.1282, %for.cond126.preheader ]
  %dec309 = add i32 %dec309.in, -1
  %call133 = call i32 %cond120(i32 noundef %cpu, %struct.hlist_node* noundef nonnull %node.addr.1286308) #13
  %tobool136.not = icmp eq i32 %call133, 0
  br i1 %tobool136.not, label %if.end150, label %if.then149, !prof !8

if.then149:                                       ; preds = %if.end131
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 242; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !32
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end131
  %next160 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %node.addr.1286308, i64 0, i32 0
  %node.addr.1 = load %struct.hlist_node*, %struct.hlist_node** %next160, align 8
  %tobool127.not = icmp eq %struct.hlist_node* %node.addr.1, null
  %tobool129.not = icmp eq i32 %dec309, 0
  %or.cond311 = select i1 %tobool127.not, i1 true, i1 %tobool129.not
  br i1 %or.cond311, label %cleanup, label %if.end131

cleanup:                                          ; preds = %if.end150, %for.cond126.preheader, %err, %for.end, %if.then110, %if.end107, %if.end81, %if.end37, %if.then8, %if.then
  %retval.0 = phi i32 [ -11, %if.then ], [ 0, %if.then8 ], [ %call91, %if.end81 ], [ %call101264, %if.end107 ], [ %call49, %if.end37 ], [ 0, %if.then110 ], [ 0, %for.end ], [ %call101, %err ], [ %call101, %for.cond126.preheader ], [ %call133, %if.end150 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #14, !srcloc !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @cpuhp_step_empty(i1 noundef %bringup, %struct.cpuhp_step* nocapture noundef readonly %step) unnamed_addr #10 {
entry:
  %single = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %step, i64 0, i32 1, i32 0
  %single2 = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %step, i64 0, i32 2, i32 0
  %cond.in.in.in = select i1 %bringup, i32 (i32)** %single, i32 (i32)** %single2
  %cond.in.in = load i32 (i32)*, i32 (i32)** %cond.in.in.in, align 8
  %cond.in = icmp eq i32 (i32)* %cond.in.in, null
  ret i1 %cond.in
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_possible(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #15
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @_cpu_up(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %1 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %call = call fastcc i1 @cpu_present(i32 noundef %cpu) #15
  br i1 %call, label %if.end, label %out

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 0
  %2 = load i32, i32* %state, align 8
  %cmp = icmp sgt i32 %2, 227
  br i1 %cmp, label %out, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end3
  %call7 = call %struct.task_struct* @idle_thread_get(i32 noundef %cpu) #13
  %3 = bitcast %struct.task_struct* %call7 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %3) #15
  br i1 %call8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.then6
  %call10 = call fastcc i64 @PTR_ERR(i8* noundef %3) #15
  %conv = trunc i64 %call10 to i32
  br label %out

if.end12:                                         ; preds = %if.then6, %if.end3
  store i8 0, i8* @cpuhp_tasks_frozen, align 4
  %call13 = call fastcc i32 @cpuhp_set_state(%struct.cpuhp_cpu_state* noundef %1, i32 noundef 228) #15
  %4 = load i32, i32* %state, align 8
  %cmp15 = icmp sgt i32 %4, 90
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end12
  %call18 = call fastcc i32 @cpuhp_kick_ap_work(i32 noundef %cpu) #15
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %out

if.end22:                                         ; preds = %if.then17, %if.end12
  %call26 = call fastcc i32 @cpuhp_up_callbacks(i32 noundef %cpu, %struct.cpuhp_cpu_state* noundef %1) #15
  br label %out

out:                                              ; preds = %entry, %if.then17, %if.end, %if.end22, %if.then9
  %ret.0 = phi i32 [ 0, %if.end ], [ %conv, %if.then9 ], [ %call18, %if.then17 ], [ %call26, %if.end22 ], [ -22, %entry ]
  call void @arch_smt_update() #15
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef %cpumask) unnamed_addr #4 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* %cpumask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_present(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_present_mask) #15
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @idle_thread_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #8 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #8 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_set_state(%struct.cpuhp_cpu_state* nocapture noundef %st, i32 noundef %target) unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 0
  %0 = load i32, i32* %state, align 8
  %cmp = icmp slt i32 %0, %target
  %frombool = zext i1 %cmp to i8
  %rollback = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 5
  store i8 0, i8* %rollback, align 1
  %last = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 10
  store %struct.hlist_node* null, %struct.hlist_node** %last, align 8
  %target2 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 1
  store i32 %target, i32* %target2, align 4
  %single = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 6
  store i8 0, i8* %single, align 2
  %bringup3 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 7
  store i8 %frombool, i8* %bringup3, align 1
  %cpu = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 8
  %1 = load i32, i32* %cpu, align 4
  %call = call fastcc i1 @cpu_dying(i32 noundef %1) #15
  %cmp6.not = xor i1 %cmp, %call
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %lnot = xor i1 %cmp, true
  %2 = load i32, i32* %cpu, align 4
  call fastcc void @set_cpu_dying(i32 noundef %2, i1 noundef %lnot) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_kick_ap_work(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %1 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %target = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 1
  %2 = load i32, i32* %target, align 4
  %call = call fastcc i32 @cpuhp_kick_ap(%struct.cpuhp_cpu_state* noundef %1, i32 noundef %2) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_up_callbacks(i32 noundef %cpu, %struct.cpuhp_cpu_state* nocapture noundef %st) unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 0
  %0 = load i32, i32* %state, align 8
  %call = call fastcc i32 @cpuhp_invoke_callback_range(i1 noundef true, i32 noundef %cpu, %struct.cpuhp_cpu_state* noundef %st, i32 noundef 90) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end22, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @cpuhp_reset_state(%struct.cpuhp_cpu_state* noundef %st, i32 noundef %0) #15
  %call1 = call fastcc i1 @can_rollback_cpu(%struct.cpuhp_cpu_state* noundef %st) #15
  br i1 %call1, label %if.then2, label %if.end22

if.then2:                                         ; preds = %if.then
  %call3 = call fastcc i32 @cpuhp_invoke_callback_range(i1 noundef false, i32 noundef %cpu, %struct.cpuhp_cpu_state* noundef %st, i32 noundef %0) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end22, label %if.then12, !prof !8

if.then12:                                        ; preds = %if.then2
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 702; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !35
  br label %if.end22

if.end22:                                         ; preds = %if.then2, %if.then12, %if.then, %entry
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_dying(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_dying_mask) #15
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_cpu_dying(i32 noundef %cpu, i1 noundef %dying) unnamed_addr #0 {
entry:
  br i1 %dying, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef nonnull @__cpu_dying_mask) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @cpumask_clear_cpu(i32 noundef %cpu) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  call fastcc void @clear_bit(i64 noundef %conv) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* @__cpu_dying_mask, i64 0, i32 0, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_kick_ap(%struct.cpuhp_cpu_state* noundef %st, i32 noundef %target) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @cpuhp_set_state(%struct.cpuhp_cpu_state* noundef %st, i32 noundef %target) #15
  call fastcc void @__cpuhp_kick_ap(%struct.cpuhp_cpu_state* noundef %st) #15
  %result = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 12
  %0 = load i32, i32* %result, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @cpuhp_reset_state(%struct.cpuhp_cpu_state* noundef %st, i32 noundef %call) #15
  call fastcc void @__cpuhp_kick_ap(%struct.cpuhp_cpu_state* noundef %st) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cpuhp_kick_ap(%struct.cpuhp_cpu_state* noundef %st) unnamed_addr #0 {
entry:
  %single = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 6
  %0 = load i8, i8* %single, align 2, !range !15
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 0
  %1 = load i32, i32* %state, align 8
  %target = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 1
  %2 = load i32, i32* %target, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %result = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 12
  store i32 0, i32* %result, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  %should_run = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 4
  store i8 1, i8* %should_run, align 8
  %thread = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 3
  %3 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  %call = call i32 @wake_up_process(%struct.task_struct* noundef %3) #13
  %bringup = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 7
  %4 = load i8, i8* %bringup, align 1, !range !15
  %tobool1 = icmp ne i8 %4, 0
  call fastcc void @wait_for_ap_thread(%struct.cpuhp_cpu_state* noundef %st, i1 noundef %tobool1) #15
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_reset_state(%struct.cpuhp_cpu_state* nocapture noundef %st, i32 noundef %prev_state) unnamed_addr #0 {
entry:
  %bringup1 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 7
  %0 = load i8, i8* %bringup1, align 1, !range !15
  %tobool = icmp ne i8 %0, 0
  %lnot = xor i1 %tobool, true
  %frombool = zext i1 %lnot to i8
  %target = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 1
  store i32 %prev_state, i32* %target, align 4
  %rollback = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 5
  %1 = load i8, i8* %rollback, align 1, !range !15
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  store i8 1, i8* %rollback, align 1
  %last = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 10
  %2 = load %struct.hlist_node*, %struct.hlist_node** %last, align 8
  %tobool4.not = icmp eq %struct.hlist_node* %2, null
  br i1 %tobool4.not, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %tobool7.not = icmp eq i8 %0, 0
  %state9 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 0
  %3 = load i32, i32* %state9, align 8
  %. = select i1 %tobool7.not, i32 1, i32 -1
  %dec = add i32 %3, %.
  store i32 %dec, i32* %state9, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end
  store i8 %frombool, i8* %bringup1, align 1
  %cpu = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 8
  %4 = load i32, i32* %cpu, align 4
  %call = call fastcc i1 @cpu_dying(i32 noundef %4) #15
  %5 = zext i1 %call to i8
  %cmp.not = icmp eq i8 %0, %5
  br i1 %cmp.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end11
  %6 = load i32, i32* %cpu, align 4
  call fastcc void @set_cpu_dying(i32 noundef %6, i1 noundef %tobool) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then18, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wait_for_ap_thread(%struct.cpuhp_cpu_state* noundef %st, i1 noundef %bringup) unnamed_addr #0 {
entry:
  %done_up = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 13
  %done_down = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 14
  %cond = select i1 %bringup, %struct.completion* %done_up, %struct.completion* %done_down
  call void @wait_for_completion(%struct.completion* noundef %cond) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @can_rollback_cpu(%struct.cpuhp_cpu_state* nocapture noundef readonly %st) unnamed_addr #10 {
entry:
  %state = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %st, i64 0, i32 0
  %0 = load i32, i32* %state, align 8
  %cmp = icmp slt i32 %0, 91
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_create_threads(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @workqueue_prepare_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimers_prepare_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpcfd_prepare_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpcfd_dead_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_prepare_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_dead_cpu(i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @bringup_cpu(i32 noundef %cpu) #0 {
entry:
  %call = call %struct.task_struct* @idle_thread_get(i32 noundef %cpu) #13
  call void @irq_lock_sparse() #13
  %call1 = call i32 @__cpu_up(i32 noundef %cpu, %struct.task_struct* noundef %call) #13
  call void @irq_unlock_sparse() #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @bringup_wait_for_ap(i32 noundef %cpu) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @finish_cpu(i32 noundef %cpu) #0 {
entry:
  %call = call %struct.task_struct* @idle_thread_get(i32 noundef %cpu) #13
  %active_mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 36
  %0 = load %struct.mm_struct*, %struct.mm_struct** %active_mm, align 16
  %cmp.not = icmp eq %struct.mm_struct* %0, @init_mm
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %active_mm, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @mmdrop(%struct.mm_struct* noundef %0) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_starting(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_dying_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpcfd_dying_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_unpark_threads(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_park_threads(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @workqueue_online_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @workqueue_offline_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_online_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_offline_cpu(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_activate(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_deactivate(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_lock_sparse() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpu_up(i32 noundef, %struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_unlock_sparse() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bringup_wait_for_ap(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %1 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  call fastcc void @wait_for_ap_thread(%struct.cpuhp_cpu_state* noundef %1, i1 noundef true) #15
  %call = call fastcc i1 @cpu_online(i32 noundef %cpu) #15
  br i1 %call, label %if.end19, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 563; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !38
  br label %cleanup

if.end19:                                         ; preds = %entry
  %thread = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 3
  %2 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  call void @kthread_unpark(%struct.task_struct* noundef %2) #13
  %target = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 1
  %3 = load i32, i32* %target, align 4
  %cmp = icmp slt i32 %3, 151
  br i1 %cmp, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end19
  %call27 = call fastcc i32 @cpuhp_kick_ap(%struct.cpuhp_cpu_state* noundef %1, i32 noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end19, %if.end25
  %retval.0 = phi i32 [ %call27, %if.end25 ], [ -125, %if.then ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmdrop(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_count) #13
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !19

if.then:                                          ; preds = %entry
  call void @__mmdrop(%struct.mm_struct* noundef %mm) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(%struct.mm_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !39
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_invoke_ap_callback(i32 noundef %cpu, i32 noundef %state, i1 noundef %bringup, %struct.hlist_node* noundef %node) unnamed_addr #0 {
entry:
  %frombool = zext i1 %bringup to i8
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpuhp_cpu_state* @cpuhp_state to i64)
  %1 = inttoptr i64 %add to %struct.cpuhp_cpu_state*
  %call = call fastcc i1 @cpu_online(i32 noundef %cpu) #15
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %thread = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 3
  %2 = load %struct.task_struct*, %struct.task_struct** %thread, align 8
  %tobool.not = icmp eq %struct.task_struct* %2, null
  br i1 %tobool.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %call4 = call fastcc i32 @cpuhp_invoke_callback(i32 noundef %cpu, i32 noundef %state, i1 noundef %bringup, %struct.hlist_node* noundef %node, %struct.hlist_node** noundef null) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rollback = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 5
  store i8 0, i8* %rollback, align 1
  %last = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 10
  store %struct.hlist_node* null, %struct.hlist_node** %last, align 8
  %node6 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 9
  store %struct.hlist_node* %node, %struct.hlist_node** %node6, align 8
  %bringup8 = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 7
  store i8 %frombool, i8* %bringup8, align 1
  %cb_state = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 11
  store i32 %state, i32* %cb_state, align 8
  %single = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 6
  store i8 1, i8* %single, align 2
  call fastcc void @__cpuhp_kick_ap(%struct.cpuhp_cpu_state* noundef %1) #15
  %result = getelementptr inbounds %struct.cpuhp_cpu_state, %struct.cpuhp_cpu_state* %1, i64 0, i32 12
  %3 = load i32, i32* %result, align 4
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %4 = load %struct.hlist_node*, %struct.hlist_node** %last, align 8
  %tobool12.not = icmp eq %struct.hlist_node* %4, null
  br i1 %tobool12.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  store i8 1, i8* %rollback, align 1
  %lnot = xor i1 %bringup, true
  %frombool17 = zext i1 %lnot to i8
  store i8 %frombool17, i8* %bringup8, align 1
  call fastcc void @__cpuhp_kick_ap(%struct.cpuhp_cpu_state* noundef %1) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %land.lhs.true, %if.end5
  store %struct.hlist_node* null, %struct.hlist_node** %last, align 8
  store %struct.hlist_node* null, %struct.hlist_node** %node6, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end18, %if.then2
  %retval.0 = phi i32 [ %3, %if.end18 ], [ %call4, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_reserve_state(i32 noundef %state) unnamed_addr #0 {
entry:
  switch i32 %state, label %cleanup [
    i32 192, label %sw.epilog
    i32 69, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb1
  %end.0 = phi i32 [ 89, %sw.bb1 ], [ 222, %entry ]
  %step.0 = phi %struct.cpuhp_step* [ getelementptr inbounds ([229 x %struct.cpuhp_step], [229 x %struct.cpuhp_step]* @cpuhp_hp_states, i64 0, i64 69), %sw.bb1 ], [ getelementptr inbounds ([229 x %struct.cpuhp_step], [229 x %struct.cpuhp_step]* @cpuhp_hp_states, i64 0, i64 192), %entry ]
  %cmp.not32 = icmp ult i32 %end.0, %state
  br i1 %cmp.not32, label %do.end, label %for.body

for.body:                                         ; preds = %sw.epilog, %for.inc
  %step.134 = phi %struct.cpuhp_step* [ %incdec.ptr, %for.inc ], [ %step.0, %sw.epilog ]
  %i.033 = phi i32 [ %inc, %for.inc ], [ %state, %sw.epilog ]
  %name = getelementptr inbounds %struct.cpuhp_step, %struct.cpuhp_step* %step.134, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.033, 1
  %incdec.ptr = getelementptr %struct.cpuhp_step, %struct.cpuhp_step* %step.134, i64 1
  %exitcond = icmp eq i32 %i.033, %end.0
  br i1 %exitcond, label %do.end, label %for.body

do.end:                                           ; preds = %for.inc, %sw.epilog
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0)) #13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/cpu.c\22; .popsection; .long 14472b - 14470b; .short 1840; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !40
  br label %cleanup

cleanup:                                          ; preds = %for.body, %entry, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ -22, %entry ], [ %i.033, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #9 {
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
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #13
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !41
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0)) #14, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #13
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #14, !srcloc !43
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0)) #14, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nounwind readonly }
attributes #17 = { cold nobuiltin nounwind "no-builtins" }
attributes #18 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2156031716}
!10 = !{i64 2156037019}
!11 = !{i64 2156037881}
!12 = !{i64 2149137745, i64 2149137792, i64 2149137798, i64 2149137835, i64 2149137853, i64 2149138780, i64 2149138828, i64 2149138876, i64 2149138939, i64 2149138988, i64 2149137931, i64 2149137956, i64 2149137982, i64 2149137988, i64 2149138025, i64 2149138031, i64 2149138081, i64 2149138127, i64 2149138160}
!13 = !{i64 2156041509}
!14 = !{!"auto-init"}
!15 = !{i8 0, i8 2}
!16 = !{i64 2156055145}
!17 = !{i64 2156059824}
!18 = !{i64 2156062280}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2156064247}
!21 = !{i64 2156078755}
!22 = !{i64 2156079607}
!23 = !{i64 2156023515}
!24 = !{i64 2156023862}
!25 = !{i64 2156025236}
!26 = !{i64 2156027007}
!27 = !{i64 2156028648}
!28 = !{i64 2148989465, i64 2148989512, i64 2148989518, i64 2148989555, i64 2148989573, i64 2148990914, i64 2148990962, i64 2148991010, i64 2148991073, i64 2148991122, i64 2148989651, i64 2148989676, i64 2148989702, i64 2148989708, i64 2148990580, i64 2148990620, i64 2148990638, i64 2148990670, i64 2148990698, i64 2148990752, i64 2148990772, i64 2148990869, i64 2148989731, i64 2148989745, i64 2148989751, i64 2148989801, i64 2148989847, i64 2148989880}
!29 = !{i64 2156006871}
!30 = !{i64 2156008515}
!31 = !{i64 2156010159}
!32 = !{i64 2156011965}
!33 = !{i64 2148980009, i64 2148980056, i64 2148980062, i64 2148980099, i64 2148980117, i64 2148981457, i64 2148981505, i64 2148981553, i64 2148981616, i64 2148981665, i64 2148980195, i64 2148980220, i64 2148980246, i64 2148980252, i64 2148981123, i64 2148981163, i64 2148981181, i64 2148981213, i64 2148981241, i64 2148981295, i64 2148981315, i64 2148981412, i64 2148980275, i64 2148980289, i64 2148980295, i64 2148980345, i64 2148980391, i64 2148980424}
!34 = !{i64 2147866358, i64 2147866869, i64 2147866899, i64 2147866925, i64 2147866957, i64 2147866986}
!35 = !{i64 2156019691}
!36 = !{i64 2147876928, i64 2147877449, i64 2147877479, i64 2147877505, i64 2147877537, i64 2147877566}
!37 = !{i64 2156014137}
!38 = !{i64 2156016227}
!39 = !{i64 2147807851, i64 2147808499, i64 2147808529, i64 2147808561, i64 2147808595, i64 2147808631, i64 2147808656}
!40 = !{i64 2156053730}
!41 = !{i64 2147867204, i64 2147867856, i64 2147867886, i64 2147867917, i64 2147867949, i64 2147867984, i64 2147868009}
!42 = !{i64 2147797278, i64 2147797794, i64 2147797824, i64 2147797851, i64 2147797885, i64 2147797915}
!43 = !{i64 2147877781, i64 2147878443, i64 2147878473, i64 2147878504, i64 2147878536, i64 2147878571, i64 2147878596}
!44 = !{i64 2147806999, i64 2147807515, i64 2147807545, i64 2147807572, i64 2147807606, i64 2147807636}
