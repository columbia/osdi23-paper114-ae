; ModuleID = 'kernel/umh.c'
source_filename = "kernel/umh.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.workqueue_struct = type opaque
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.kmem_cache = type opaque
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.76, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.81, i32, i8* }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.33 }
%union.anon.33 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.34, %union.anon.35 }
%union.anon.34 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.35 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.39 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.37, %struct.qspinlock }
%union.anon.37 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.39 = type { %struct.nfs_lock_info }
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
%union.anon.55 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
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
%struct.kernel_siginfo = type { %struct.anon.56 }
%struct.anon.56 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.60 }
%struct.anon.60 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
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
%struct.subprocess_info = type { %struct.work_struct, %struct.completion*, i8*, i8**, i8**, i32, i32, i32 (%struct.subprocess_info*, %struct.cred*)*, void (%struct.subprocess_info*)*, i8* }

@umhelper_sem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @umhelper_sem to i8*), i64 24) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @umhelper_sem to i8*), i64 24) to %struct.list_head*) } }, align 8
@usermodehelper_disabled_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @usermodehelper_disabled_waitq to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @usermodehelper_disabled_waitq to i8*), i64 8) to %struct.list_head*) } }, align 8
@usermodehelper_disabled = internal unnamed_addr global i32 2, align 4
@running_helpers = internal global %struct.atomic_t zeroinitializer, align 4
@running_helpers_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @running_helpers_waitq to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @running_helpers_waitq to i8*), i64 8) to %struct.list_head*) } }, align 8
@system_unbound_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str = private unnamed_addr constant [5 x i8] c"bset\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"inheritable\00", align 1
@usermodehelper_table = dso_local local_unnamed_addr global [3 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* inttoptr (i64 1 to i8*), i32 16, i16 384, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_cap_handler, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* inttoptr (i64 2 to i8*), i32 16, i16 384, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_cap_handler, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@umh_sysctl_lock = internal global %struct.spinlock zeroinitializer, align 4
@usermodehelper_bset = internal unnamed_addr global %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, align 8
@usermodehelper_inheritable = internal unnamed_addr global %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @usermodehelper_read_trylock() local_unnamed_addr #0 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast i8** %private to %struct.task_struct**
  %4 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %4, align 8
  store %struct.task_struct* %2, %struct.task_struct** %3, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* %entry1, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry1, %struct.list_head** %prev, align 8
  call void @down_read(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  call void @prepare_to_wait(%struct.wait_queue_head* noundef nonnull @usermodehelper_disabled_waitq, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 1) #11
  %5 = load i32, i32* @usermodehelper_disabled, align 4
  %tobool.not12 = icmp eq i32 %5, 0
  br i1 %tobool.not12, label %for.end, label %if.end

if.end:                                           ; preds = %entry, %if.end8
  %6 = phi i32 [ %7, %if.end8 ], [ %5, %entry ]
  %cmp = icmp eq i32 %6, 2
  call void @up_read(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  br i1 %cmp, label %for.end, label %if.end8

if.end8:                                          ; preds = %if.end
  call void @schedule() #11
  call void @down_read(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  call void @prepare_to_wait(%struct.wait_queue_head* noundef nonnull @usermodehelper_disabled_waitq, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 1) #11
  %7 = load i32, i32* @usermodehelper_disabled, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.end, label %if.end

for.end:                                          ; preds = %if.end8, %if.end, %entry
  %ret.2 = phi i32 [ 0, %entry ], [ -11, %if.end ], [ 0, %if.end8 ]
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @usermodehelper_disabled_waitq, %struct.wait_queue_entry* noundef nonnull %wait) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret i32 %ret.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @usermodehelper_read_lock_wait(i64 noundef %timeout) local_unnamed_addr #0 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast i8** %private to %struct.task_struct**
  %4 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %4, align 8
  store %struct.task_struct* %2, %struct.task_struct** %3, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* %entry1, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry1, %struct.list_head** %prev, align 8
  %cmp = icmp slt i64 %timeout, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @down_read(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  call void @prepare_to_wait(%struct.wait_queue_head* noundef nonnull @usermodehelper_disabled_waitq, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 2) #11
  %5 = load i32, i32* @usermodehelper_disabled, align 4
  %tobool.not13 = icmp eq i32 %5, 0
  br i1 %tobool.not13, label %for.end, label %if.end5

if.end5:                                          ; preds = %if.end, %if.end9
  %timeout.addr.014 = phi i64 [ %call6, %if.end9 ], [ %timeout, %if.end ]
  call void @up_read(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  %call6 = call i64 @schedule_timeout(i64 noundef %timeout.addr.014) #11
  %tobool7.not = icmp eq i64 %call6, 0
  br i1 %tobool7.not, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end5
  call void @down_read(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  call void @prepare_to_wait(%struct.wait_queue_head* noundef nonnull @usermodehelper_disabled_waitq, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 2) #11
  %6 = load i32, i32* @usermodehelper_disabled, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.end, label %if.end5

for.end:                                          ; preds = %if.end9, %if.end5, %if.end
  %timeout.addr.1 = phi i64 [ %timeout, %if.end ], [ 0, %if.end5 ], [ %call6, %if.end9 ]
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @usermodehelper_disabled_waitq, %struct.wait_queue_entry* noundef nonnull %wait) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i64 [ %timeout.addr.1, %for.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @usermodehelper_read_unlock() local_unnamed_addr #0 {
entry:
  call void @up_read(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__usermodehelper_set_disable_depth(i32 noundef %depth) local_unnamed_addr #0 {
entry:
  call void @down_write(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  store i32 %depth, i32* @usermodehelper_disabled, align 4
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @usermodehelper_disabled_waitq, i32 noundef 3, i32 noundef 1, i8* noundef null) #11
  call void @up_write(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__usermodehelper_disable(i32 noundef %depth) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %tobool.not = icmp eq i32 %depth, 0
  br i1 %tobool.not, label %cleanup41, label %if.end

if.end:                                           ; preds = %entry
  call void @down_write(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  store i32 %depth, i32* @usermodehelper_disabled, align 4
  call void @up_write(%struct.rw_semaphore* noundef nonnull @umhelper_sem) #11
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @running_helpers, i64 0, i32 0), align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup41, label %if.then12

if.then12:                                        ; preds = %if.end
  %1 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !8
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call1462 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @running_helpers_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #11
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @running_helpers, i64 0, i32 0), align 4
  %cmp1763 = icmp eq i32 %2, 0
  br i1 %cmp1763, label %if.end36.thread, label %cleanup

if.end36.thread:                                  ; preds = %if.then12
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @running_helpers_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #9
  br label %cleanup41

cleanup:                                          ; preds = %if.then12, %cleanup
  %spec.store.select4365 = phi i64 [ %spec.store.select43, %cleanup ], [ 1250, %if.then12 ]
  %call34 = call i64 @schedule_timeout(i64 noundef %spec.store.select4365) #11
  %call14 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @running_helpers_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #11
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @running_helpers, i64 0, i32 0), align 4
  %cmp17 = icmp eq i32 %3, 0
  %tobool19.not = xor i1 %cmp17, true
  %tobool21 = icmp ne i64 %call34, 0
  %or.cond42 = select i1 %tobool19.not, i1 true, i1 %tobool21
  %spec.store.select43 = select i1 %or.cond42, i64 %call34, i64 1
  %tobool27.not = icmp eq i64 %spec.store.select43, 0
  %4 = select i1 %cmp17, i1 true, i1 %tobool27.not
  br i1 %4, label %if.end36, label %cleanup

if.end36:                                         ; preds = %cleanup
  %phi.cmp = icmp eq i64 %spec.store.select43, 0
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @running_helpers_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #9
  br i1 %phi.cmp, label %if.end40, label %cleanup41

if.end40:                                         ; preds = %if.end36
  call void @__usermodehelper_set_disable_depth(i32 noundef 0) #12
  br label %cleanup41

cleanup41:                                        ; preds = %if.end36.thread, %if.end, %if.end36, %entry, %if.end40
  %retval.0 = phi i32 [ -11, %if.end40 ], [ -22, %entry ], [ 0, %if.end36 ], [ 0, %if.end ], [ 0, %if.end36.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.subprocess_info* @call_usermodehelper_setup(i8* noundef %path, i8** noundef %argv, i8** noundef %envp, i32 noundef %gfp_mask, i32 (%struct.subprocess_info*, %struct.cred*)* noundef %init, void (%struct.subprocess_info*)* noundef %cleanup, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i32 noundef %gfp_mask) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %out, label %do.body

do.body:                                          ; preds = %entry
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %call to i64*
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry4 = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %entry4 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %0) #12
  %func = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @call_usermodehelper_exec_work, void (%struct.work_struct*)** %1, align 8
  %path6 = getelementptr inbounds i8, i8* %call, i64 40
  %2 = bitcast i8* %path6 to i8**
  store i8* %path, i8** %2, align 8
  %argv7 = getelementptr inbounds i8, i8* %call, i64 48
  %3 = bitcast i8* %argv7 to i8***
  store i8** %argv, i8*** %3, align 8
  %envp8 = getelementptr inbounds i8, i8* %call, i64 56
  %4 = bitcast i8* %envp8 to i8***
  store i8** %envp, i8*** %4, align 8
  %cleanup9 = getelementptr inbounds i8, i8* %call, i64 80
  %5 = bitcast i8* %cleanup9 to void (%struct.subprocess_info*)**
  store void (%struct.subprocess_info*)* %cleanup, void (%struct.subprocess_info*)** %5, align 8
  %init10 = getelementptr inbounds i8, i8* %call, i64 72
  %6 = bitcast i8* %init10 to i32 (%struct.subprocess_info*, %struct.cred*)**
  store i32 (%struct.subprocess_info*, %struct.cred*)* %init, i32 (%struct.subprocess_info*, %struct.cred*)** %6, align 8
  %data11 = getelementptr inbounds i8, i8* %call, i64 88
  %7 = bitcast i8* %data11 to i8**
  store i8* %data, i8** %7, align 8
  br label %out

out:                                              ; preds = %entry, %do.body
  %8 = bitcast i8* %call to %struct.subprocess_info*
  ret %struct.subprocess_info* %8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i32 noundef %flags) unnamed_addr #0 {
entry:
  %and.i.i = and i32 %flags, 17
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %kmalloc.exit, label %if.end.i.i, !prof !9

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %flags, 1
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i64 1, i64 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %entry, %if.end.i.i
  %retval.0.i.i = phi i64 [ 0, %entry ], [ %..i.i, %if.end.i.i ]
  %or = or i32 %flags, 256
  %arrayidx7.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %retval.0.i.i, i64 7
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef %or) #11
  ret i8* %call.i.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @call_usermodehelper_exec_work(%struct.work_struct* noundef %work) #0 {
entry:
  %0 = bitcast %struct.work_struct* %work to %struct.subprocess_info*
  %wait = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work, i64 2
  %1 = bitcast %struct.work_struct* %wait to i32*
  %2 = load i32, i32* %1, align 8
  %and = and i32 %2, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @call_usermodehelper_exec_sync(%struct.subprocess_info* noundef %0) #12
  br label %if.end2

if.else:                                          ; preds = %entry
  %3 = bitcast %struct.work_struct* %work to i8*
  %call = call i32 @kernel_thread(i32 (i8*)* noundef nonnull @call_usermodehelper_exec_async, i8* noundef %3, i64 noundef 32785) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.else
  %retval = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %0, i64 0, i32 6
  store i32 %call, i32* %retval, align 4
  call fastcc void @umh_complete(%struct.subprocess_info* noundef %0) #12
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @call_usermodehelper_exec(%struct.subprocess_info* noundef %sub_info, i32 noundef %wait) local_unnamed_addr #0 {
entry:
  %done = alloca %struct.completion, align 8
  %0 = bitcast %struct.completion* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #9
  %task_list = getelementptr inbounds %struct.completion, %struct.completion* %done, i64 0, i32 1, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %task_list, i64 0, i32 0
  %1 = bitcast %struct.completion* %done to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store %struct.list_head* %task_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.completion, %struct.completion* %done, i64 0, i32 1, i32 1, i32 1
  store %struct.list_head* %task_list, %struct.list_head** %prev, align 8
  %path = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %sub_info, i64 0, i32 2
  %2 = load i8*, i8** %path, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @call_usermodehelper_freeinfo(%struct.subprocess_info* noundef %sub_info) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @helper_lock() #12
  %3 = load i32, i32* @usermodehelper_disabled, align 4
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.end10, label %out

if.end10:                                         ; preds = %if.end
  %4 = load i8*, i8** %path, align 8
  %call = call i64 @strlen(i8* noundef %4) #11
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %out, label %if.end13

if.end13:                                         ; preds = %if.end10
  %cmp14 = icmp eq i32 %wait, 0
  %.done = select i1 %cmp14, %struct.completion* null, %struct.completion* %done
  %complete = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %sub_info, i64 0, i32 1
  store %struct.completion* %.done, %struct.completion** %complete, align 8
  %wait15 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %sub_info, i64 0, i32 5
  store i32 %wait, i32* %wait15, align 8
  %5 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_unbound_wq, align 8
  %work = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %sub_info, i64 0, i32 0
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %5, %struct.work_struct* noundef %work) #12
  br i1 %cmp14, label %unlock, label %if.end19

if.end19:                                         ; preds = %if.end13
  %and = and i32 %wait, 4
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end32, label %if.then21

if.then21:                                        ; preds = %if.end19
  %call22 = call i32 @wait_for_completion_killable(%struct.completion* noundef nonnull %done) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %wait_done, label %if.end25

if.end25:                                         ; preds = %if.then21
  %6 = bitcast %struct.completion** %complete to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %6) #11
  %tobool29.not = icmp eq i64 %call11.i, 0
  br i1 %tobool29.not, label %if.end32, label %unlock

if.end32:                                         ; preds = %if.end25, %if.end19
  call void @wait_for_completion(%struct.completion* noundef nonnull %done) #11
  br label %wait_done

wait_done:                                        ; preds = %if.then21, %if.end32
  %retval33 = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %sub_info, i64 0, i32 6
  %7 = load i32, i32* %retval33, align 4
  br label %out

out:                                              ; preds = %if.end, %if.end10, %wait_done
  %retval7.0 = phi i32 [ 0, %if.end10 ], [ %7, %wait_done ], [ -16, %if.end ]
  call fastcc void @call_usermodehelper_freeinfo(%struct.subprocess_info* noundef %sub_info) #12
  br label %unlock

unlock:                                           ; preds = %if.end25, %if.end13, %out
  %retval7.1 = phi i32 [ %retval7.0, %out ], [ 0, %if.end13 ], [ %call22, %if.end25 ]
  call fastcc void @helper_unlock() #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then
  %retval.0 = phi i32 [ %retval7.1, %unlock ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @call_usermodehelper_freeinfo(%struct.subprocess_info* noundef %info) unnamed_addr #0 {
entry:
  %cleanup = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %info, i64 0, i32 8
  %0 = load void (%struct.subprocess_info*)*, void (%struct.subprocess_info*)** %cleanup, align 8
  %tobool.not = icmp eq void (%struct.subprocess_info*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %0(%struct.subprocess_info* noundef %info) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast %struct.subprocess_info* %info to i8*
  call void @kfree(i8* noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @helper_lock() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_add() #11
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(%struct.completion* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @helper_unlock() unnamed_addr #0 {
entry:
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return() #11
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @running_helpers_waitq, i32 noundef 3, i32 noundef 1, i8* noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @call_usermodehelper(i8* noundef %path, i8** noundef %argv, i8** noundef %envp, i32 noundef %wait) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %wait, 0
  %cond = select i1 %cmp, i32 2592, i32 3264
  %call = call %struct.subprocess_info* @call_usermodehelper_setup(i8* noundef %path, i8** noundef %argv, i8** noundef %envp, i32 noundef %cond, i32 (%struct.subprocess_info*, %struct.cred*)* noundef null, void (%struct.subprocess_info*)* noundef null, i8* noundef null) #12
  %cmp1 = icmp eq %struct.subprocess_info* %call, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @call_usermodehelper_exec(%struct.subprocess_info* noundef nonnull %call, i32 noundef %wait) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_cap_handler(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #0 {
entry:
  %t = alloca %struct.ctl_table, align 8
  %cap_array = alloca [2 x i64], align 8
  %0 = bitcast %struct.ctl_table* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %1 = bitcast [2 x i64]* %cap_array to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #9
  %2 = getelementptr inbounds [2 x i64], [2 x i64]* %cap_array, i64 0, i64 0, !annotation !8
  store i64 0, i64* %2, align 8, !annotation !8
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i1 @capable(i32 noundef 8) #11
  br i1 %call, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call1 = call i1 @capable(i32 noundef 16) #11
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %entry
  call fastcc void @__raw_spin_lock() #11
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %magicptr = ptrtoint i8* %3 to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, 2
  br i1 %switch, label %for.body.preheader, label %do.body

for.body.preheader:                               ; preds = %if.end
  %cond = icmp eq i8* %3, inttoptr (i64 1 to i8*)
  br i1 %cond, label %if.then3.1, label %if.then9.1

do.body:                                          ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/umh.c\22; .popsection; .long 14472b - 14470b; .short 511; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !11
  unreachable

if.then9.1:                                       ; preds = %for.body.preheader
  %conv12.sink.in = load i32, i32* getelementptr inbounds (%struct.kernel_cap_struct, %struct.kernel_cap_struct* @usermodehelper_inheritable, i64 0, i32 0, i64 0), align 8
  %conv12.sink = zext i32 %conv12.sink.in to i64
  %4 = getelementptr inbounds [2 x i64], [2 x i64]* %cap_array, i64 0, i64 0
  store i64 %conv12.sink, i64* %4, align 8
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.body.preheader
  %conv12.sink.in101 = load i32, i32* getelementptr inbounds (%struct.kernel_cap_struct, %struct.kernel_cap_struct* @usermodehelper_bset, i64 0, i32 0, i64 0), align 8
  %conv12.sink102 = zext i32 %conv12.sink.in101 to i64
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* %cap_array, i64 0, i64 0
  store i64 %conv12.sink102, i64* %5, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %if.then9.1
  %conv12.1.sink.in.in = phi i32* [ getelementptr inbounds (%struct.kernel_cap_struct, %struct.kernel_cap_struct* @usermodehelper_bset, i64 0, i32 0, i64 1), %if.then3.1 ], [ getelementptr inbounds (%struct.kernel_cap_struct, %struct.kernel_cap_struct* @usermodehelper_inheritable, i64 0, i32 0, i64 1), %if.then9.1 ]
  %conv12.1.sink.in = load i32, i32* %conv12.1.sink.in.in, align 4
  %conv12.1.sink = zext i32 %conv12.1.sink.in to i64
  %6 = getelementptr inbounds [2 x i64], [2 x i64]* %cap_array, i64 0, i64 1
  store i64 %conv12.1.sink, i64* %6, align 8
  call fastcc void @__raw_spin_unlock() #11
  %7 = bitcast %struct.ctl_table* %table to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8* noundef align 8 dereferenceable(64) %7, i64 64, i1 false)
  %data21 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %t, i64 0, i32 1
  %8 = bitcast i8** %data21 to [2 x i64]**
  store [2 x i64]* %cap_array, [2 x i64]** %8, align 8
  %call22 = call i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef nonnull %t, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #11
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %cleanup, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.inc.1
  %9 = getelementptr inbounds [2 x i64], [2 x i64]* %cap_array, i64 0, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  br i1 %tobool.not, label %cleanup, label %if.then40

if.then40:                                        ; preds = %for.cond27.preheader
  call fastcc void @__raw_spin_lock() #11
  %12 = load i8*, i8** %data, align 8
  %magicptr83 = ptrtoint i8* %12 to i64
  switch i64 %magicptr83, label %if.end56 [
    i64 1, label %if.end56.sink.split
    i64 2, label %if.then51
  ]

if.then51:                                        ; preds = %if.then40
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %if.then40, %if.then51
  %.sink104 = phi i64* [ bitcast (%struct.kernel_cap_struct* @usermodehelper_inheritable to i64*), %if.then51 ], [ bitcast (%struct.kernel_cap_struct* @usermodehelper_bset to i64*), %if.then40 ]
  %13 = load i64, i64* %.sink104, align 8
  %new_cap.sroa.6.0.insert.shift97 = shl i64 %11, 32
  %new_cap.sroa.0.0.insert.ext91 = and i64 %10, 4294967295
  %new_cap.sroa.0.0.insert.insert93 = or i64 %new_cap.sroa.6.0.insert.shift97, %new_cap.sroa.0.0.insert.ext91
  %call45 = call fastcc i64 @cap_intersect(i64 %13, i64 %new_cap.sroa.0.0.insert.insert93) #12
  store i64 %call45, i64* %.sink104, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %if.then40
  call fastcc void @__raw_spin_unlock() #11
  br label %cleanup

cleanup:                                          ; preds = %for.cond27.preheader, %if.end56, %for.inc.1, %land.lhs.true, %lor.lhs.false
  %retval.0 = phi i32 [ -1, %lor.lhs.false ], [ -1, %land.lhs.true ], [ %call22, %for.inc.1 ], [ 0, %if.end56 ], [ 0, %for.cond27.preheader ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @call_usermodehelper_exec_sync(%struct.subprocess_info* noundef %sub_info) unnamed_addr #0 {
entry:
  call void @kernel_sigaction(i32 noundef 17, void (i32)* noundef null) #11
  %0 = bitcast %struct.subprocess_info* %sub_info to i8*
  %call = call i32 @kernel_thread(i32 (i8*)* noundef nonnull @call_usermodehelper_exec_async, i8* noundef %0, i64 noundef 17) #11
  %cmp = icmp slt i32 %call, 0
  %retval = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %sub_info, i64 0, i32 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 %call, i32* %retval, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 @kernel_wait(i32 noundef %call, i32* noundef %retval) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @kernel_sigaction(i32 noundef 17, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #11
  call fastcc void @umh_complete(%struct.subprocess_info* noundef %sub_info) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_thread(i32 (i8*)* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @call_usermodehelper_exec_async(i8* noundef %data) #0 {
entry:
  %0 = bitcast i8* %data to %struct.subprocess_info*
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #10, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 88
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #11
  call void @flush_signal_handlers(%struct.task_struct* noundef %2, i32 noundef 1) #11
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i57 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i57) #11
  %fs = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 83
  %5 = load %struct.fs_struct*, %struct.fs_struct** %fs, align 8
  %umask = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %5, i64 0, i32 3
  store i32 18, i32* %umask, align 4
  call void @set_user_nice(%struct.task_struct* noundef %2, i64 noundef 0) #11
  %call9 = call %struct.cred* @prepare_kernel_cred(%struct.task_struct* noundef %2) #11
  %tobool.not = icmp eq %struct.cred* %call9, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock() #11
  %6 = load i64, i64* bitcast (%struct.kernel_cap_struct* @usermodehelper_bset to i64*), align 8
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %call9, i64 0, i32 13, i32 0
  %7 = bitcast [2 x i32]* %coerce.dive to i64*
  %8 = load i64, i64* %7, align 8
  %call11 = call fastcc i64 @cap_intersect(i64 %6, i64 %8) #12
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call9, i64 0, i32 13
  %tmp.sroa.0.0..sroa_cast = bitcast %struct.kernel_cap_struct* %tmp.sroa.0.0..sroa_idx to i64*
  store i64 %call11, i64* %tmp.sroa.0.0..sroa_cast, align 8
  %9 = load i64, i64* bitcast (%struct.kernel_cap_struct* @usermodehelper_inheritable to i64*), align 8
  %coerce.dive15 = getelementptr inbounds %struct.cred, %struct.cred* %call9, i64 0, i32 10, i32 0
  %10 = bitcast [2 x i32]* %coerce.dive15 to i64*
  %11 = load i64, i64* %10, align 8
  %call16 = call fastcc i64 @cap_intersect(i64 %9, i64 %11) #12
  %tmp13.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %call9, i64 0, i32 10
  %tmp13.sroa.0.0..sroa_cast = bitcast %struct.kernel_cap_struct* %tmp13.sroa.0.0..sroa_idx to i64*
  store i64 %call16, i64* %tmp13.sroa.0.0..sroa_cast, align 8
  call fastcc void @__raw_spin_unlock() #11
  %init = getelementptr inbounds i8, i8* %data, i64 72
  %12 = bitcast i8* %init to i32 (%struct.subprocess_info*, %struct.cred*)**
  %13 = load i32 (%struct.subprocess_info*, %struct.cred*)*, i32 (%struct.subprocess_info*, %struct.cred*)** %12, align 8
  %tobool18.not = icmp eq i32 (%struct.subprocess_info*, %struct.cred*)* %13, null
  br i1 %tobool18.not, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.end
  %call21 = call i32 %13(%struct.subprocess_info* noundef %0, %struct.cred* noundef nonnull %call9) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.then19
  call void @abort_creds(%struct.cred* noundef nonnull %call9) #11
  br label %out

if.end25:                                         ; preds = %if.then19, %if.end
  %call26 = call i32 @commit_creds(%struct.cred* noundef nonnull %call9) #11
  %path = getelementptr inbounds i8, i8* %data, i64 40
  %14 = bitcast i8* %path to i8**
  %15 = load i8*, i8** %14, align 8
  %argv = getelementptr inbounds i8, i8* %data, i64 48
  %16 = bitcast i8* %argv to i8***
  %17 = load i8**, i8*** %16, align 8
  %envp = getelementptr inbounds i8, i8* %data, i64 56
  %18 = bitcast i8* %envp to i8***
  %19 = load i8**, i8*** %18, align 8
  %call27 = call i32 @kernel_execve(i8* noundef %15, i8** noundef %17, i8** noundef %19) #11
  br label %out

out:                                              ; preds = %entry, %if.end25, %if.then23
  %retval1.0 = phi i32 [ %call21, %if.then23 ], [ %call27, %if.end25 ], [ -12, %entry ]
  %retval28 = getelementptr inbounds i8, i8* %data, i64 68
  %20 = bitcast i8* %retval28 to i32*
  store i32 %retval1.0, i32* %20, align 4
  %wait = getelementptr inbounds i8, i8* %data, i64 64
  %21 = bitcast i8* %wait to i32*
  %22 = load i32, i32* %21, align 8
  %and = and i32 %22, 2
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %out
  call fastcc void @umh_complete(%struct.subprocess_info* noundef %0) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %out
  %tobool32.not = icmp eq i32 %retval1.0, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  ret i32 0

if.end34:                                         ; preds = %if.end31
  call void @do_exit(i64 noundef 0) #13
  unreachable
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @umh_complete(%struct.subprocess_info* noundef %sub_info) unnamed_addr #0 {
entry:
  %complete = getelementptr inbounds %struct.subprocess_info, %struct.subprocess_info* %sub_info, i64 0, i32 1
  %0 = bitcast %struct.completion** %complete to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %0) #11
  %tobool.not = icmp eq i64 %call11.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = inttoptr i64 %call11.i to %struct.completion*
  call void @complete(%struct.completion* noundef nonnull %1) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @call_usermodehelper_freeinfo(%struct.subprocess_info* noundef %sub_info) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, void (i32)* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_wait(i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signal_handlers(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cred* @prepare_kernel_cred(%struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone
define internal fastcc i64 @cap_intersect(i64 %a.coerce, i64 %b.coerce) unnamed_addr #6 {
entry:
  %and16 = and i64 %b.coerce, %a.coerce
  %b.sroa.2.0.extract.shift18 = and i64 %b.coerce, %a.coerce
  %and.117 = and i64 %b.sroa.2.0.extract.shift18, -4294967296
  %retval.sroa.0.0.insert.ext = and i64 %and16, 4294967295
  %retval.sroa.0.0.insert.insert = or i64 %and.117, %retval.sroa.0.0.insert.ext
  ret i64 %retval.sroa.0.0.insert.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(%struct.cred* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(%struct.cred* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_execve(i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #3

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #12
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #12
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #9, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #8 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #9, !srcloc !15
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #12
  call fastcc void @arch_local_irq_enable() #12
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #9, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #9, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @umh_sysctl_lock, i64 0, i32 0, i32 0)) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @umh_sysctl_lock, i64 0, i32 0, i32 0)) #12
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @running_helpers, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @running_helpers, i64 0, i32 0)) #9, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #9, !srcloc !22
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @running_helpers, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @running_helpers, i64 0, i32 0)) #9, !srcloc !23
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1453014}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2155539453}
!11 = !{i64 2155543010}
!12 = !{i64 2149474076}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2149243251, i64 2149243298, i64 2149243304, i64 2149243341, i64 2149243359, i64 2149244700, i64 2149244748, i64 2149244796, i64 2149244859, i64 2149244908, i64 2149243437, i64 2149243462, i64 2149243488, i64 2149243494, i64 2149244366, i64 2149244406, i64 2149244424, i64 2149244456, i64 2149244484, i64 2149244538, i64 2149244558, i64 2149244655, i64 2149243517, i64 2149243531, i64 2149243537, i64 2149243587, i64 2149243633, i64 2149243666}
!15 = !{i64 2147887848, i64 2147887881, i64 2147887934, i64 2147887993, i64 2147888027, i64 2147888082, i64 2147888111, i64 2147888131}
!16 = !{i64 2149498929}
!17 = !{i64 2149295147}
!18 = !{i64 2149233795, i64 2149233842, i64 2149233848, i64 2149233885, i64 2149233903, i64 2149235243, i64 2149235291, i64 2149235339, i64 2149235402, i64 2149235451, i64 2149233981, i64 2149234006, i64 2149234032, i64 2149234038, i64 2149234909, i64 2149234949, i64 2149234967, i64 2149234999, i64 2149235027, i64 2149235081, i64 2149235101, i64 2149235198, i64 2149234061, i64 2149234075, i64 2149234081, i64 2149234131, i64 2149234177, i64 2149234210}
!19 = !{i64 2149484784}
!20 = !{i64 2149492065}
!21 = !{i64 2147791986, i64 2147792502, i64 2147792532, i64 2147792559, i64 2147792593, i64 2147792623}
!22 = !{i64 2147926864, i64 2147926896, i64 2147926940, i64 2147926987, i64 2147927013}
!23 = !{i64 2147802559, i64 2147803207, i64 2147803237, i64 2147803269, i64 2147803303, i64 2147803339, i64 2147803364}
