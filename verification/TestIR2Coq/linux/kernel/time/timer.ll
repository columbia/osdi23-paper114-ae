; ModuleID = 'kernel/time/timer.c'
source_filename = "kernel/time/timer.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timer_base = type { %struct.raw_spinlock, %struct.timer_list*, i64, i64, i32, i8, i8, i8, [9 x i64], [576 x %struct.hlist_head], [16 x i8] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [4 x i64] }
%struct.lock_class_key = type {}
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.74, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.8, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.dev_pm_qos = type opaque
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.33 }
%union.anon.33 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
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
%struct.process_timer = type { %struct.timer_list, %struct.task_struct* }
%struct.softirq_action = type { {}* }

@jiffies_64 = dso_local local_unnamed_addr global i64 4294892296, section ".data..cacheline_aligned", align 64
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@.str = private unnamed_addr constant [45 x i8] c"\013schedule_timeout: wrong timeout value %lx\0A\00", align 1
@timer_bases = internal global [1 x %struct.timer_base] zeroinitializer, section ".data..percpu", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@net_rand_noise = external dso_local global i64, section ".data..percpu", align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@call_timer_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"timer: %pS preempt leak: %08x -> %08x\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @__round_jiffies(i64 noundef %j, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @round_jiffies_common(i64 noundef %j, i32 noundef %cpu, i1 noundef false) #21
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @round_jiffies_common(i64 noundef %j, i32 noundef %cpu, i1 noundef %force_up) unnamed_addr #0 {
entry:
  %mul = mul i32 %cpu, 3
  %conv = sext i32 %mul to i64
  %add = add i64 %conv, %j
  %rem1 = urem i64 %add, 250
  %conv2 = trunc i64 %rem1 to i32
  %cmp = icmp ugt i32 %conv2, 61
  %brmerge = or i1 %cmp, %force_up
  %sub6 = sub i64 %add, %rem1
  %add7 = add i64 %sub6, 250
  %j.addr.0 = select i1 %brmerge, i64 %add7, i64 %sub6
  %sub10 = sub i64 %j.addr.0, %conv
  %0 = load volatile i64, i64* @jiffies, align 64
  %sub11 = sub i64 %0, %sub10
  %cmp12 = icmp slt i64 %sub11, 0
  %cond = select i1 %cmp12, i64 %sub10, i64 %j
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @__round_jiffies_relative(i64 noundef %j, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %0, %j
  %call = call fastcc i64 @round_jiffies_common(i64 noundef %add, i32 noundef %cpu, i1 noundef false) #21
  %sub = sub i64 %call, %0
  ret i64 %sub
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i64 @round_jiffies(i64 noundef %j) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i64 @round_jiffies_common(i64 noundef %j, i32 noundef %1, i1 noundef false) #21
  ret i64 %call2
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #3 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #22, !srcloc !8
  ret i64 %2
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i64 @round_jiffies_relative(i64 noundef %j) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call i64 @__round_jiffies_relative(i64 noundef %j, i32 noundef %1) #21
  ret i64 %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @__round_jiffies_up(i64 noundef %j, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @round_jiffies_common(i64 noundef %j, i32 noundef %cpu, i1 noundef true) #21
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @__round_jiffies_up_relative(i64 noundef %j, i32 noundef %cpu) local_unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %0, %j
  %call = call fastcc i64 @round_jiffies_common(i64 noundef %add, i32 noundef %cpu, i1 noundef true) #21
  %sub = sub i64 %call, %0
  ret i64 %sub
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i64 @round_jiffies_up(i64 noundef %j) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i64 @round_jiffies_common(i64 noundef %j, i32 noundef %1, i1 noundef true) #21
  ret i64 %call2
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i64 @round_jiffies_up_relative(i64 noundef %j) local_unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call i64 @__round_jiffies_up_relative(i64 noundef %j, i32 noundef %1) #21
  ret i64 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @init_timer_key(%struct.timer_list* nocapture noundef writeonly %timer, void (%struct.timer_list*)* noundef %func, i32 noundef %flags, i8* nocapture readnone %name, %struct.lock_class_key* nocapture readnone %key) local_unnamed_addr #4 {
entry:
  call fastcc void @do_init_timer(%struct.timer_list* noundef %timer, void (%struct.timer_list*)* noundef %func, i32 noundef %flags) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_init_timer(%struct.timer_list* nocapture noundef writeonly %timer, void (%struct.timer_list*)* noundef %func, i32 noundef %flags) unnamed_addr #4 {
entry:
  %pprev = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  %function = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 2
  store void (%struct.timer_list*)* %func, void (%struct.timer_list*)** %function, align 8
  %and = and i32 %flags, -3670017
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timer.c\22; .popsection; .long 14472b - 14470b; .short 794; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and18 = and i32 %flags, 3670016
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %or = or i32 %1, %and18
  %flags22 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 3
  store i32 %or, i32* %flags22, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mod_timer_pending(%struct.timer_list* noundef %timer, i64 noundef %expires) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__mod_timer(%struct.timer_list* noundef %timer, i64 noundef %expires, i32 noundef 1) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__mod_timer(%struct.timer_list* noundef %timer, i64 noundef %expires, i32 noundef %options) unnamed_addr #4 {
entry:
  %flags = alloca i64, align 8
  %bucket_expiry = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store i64 0, i64* %flags, align 8, !annotation !11
  %1 = bitcast i64* %bucket_expiry to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #23
  store i64 0, i64* %bucket_expiry, align 8, !annotation !11
  %function = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 2
  %2 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %function, align 8
  %tobool.not = icmp eq void (%struct.timer_list*)* %2, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !12

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timer.c\22; .popsection; .long 14472b - 14470b; .short 967; .short 0; .popsection; 14471: brk 0x800", ""() #23, !srcloc !13
  unreachable

do.end9:                                          ; preds = %entry
  %and = and i32 %options, 4
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.else55

land.lhs.true:                                    ; preds = %do.end9
  %call = call fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) #21
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.else55, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %expires13 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 1
  %3 = load i64, i64* %expires13, align 8
  %sub = sub i64 %3, %expires
  %tobool14.not = icmp eq i64 %sub, 0
  br i1 %tobool14.not, label %cleanup113, label %if.end16

if.end16:                                         ; preds = %if.then12
  %and17 = and i32 %options, 2
  %tobool18 = icmp ne i32 %and17, 0
  %cmp = icmp slt i64 %sub, 1
  %or.cond = select i1 %tobool18, i1 %cmp, i1 false
  br i1 %or.cond, label %cleanup113, label %if.end22

if.end22:                                         ; preds = %if.end16
  %call23 = call fastcc %struct.timer_base* @lock_timer_base(%struct.timer_list* noundef %timer, i64* noundef nonnull %flags) #21
  call fastcc void @forward_timer_base(%struct.timer_base* noundef %call23) #21
  %call24 = call fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) #21
  %tobool25.not = icmp ne i32 %call24, 0
  %4 = and i1 %tobool18, %tobool25.not
  br i1 %4, label %land.lhs.true29, label %if.end35

land.lhs.true29:                                  ; preds = %if.end22
  %5 = load i64, i64* %expires13, align 8
  %sub31 = sub i64 %expires, %5
  %cmp32 = icmp sgt i64 %sub31, -1
  br i1 %cmp32, label %do.body107, label %if.end35

if.end35:                                         ; preds = %if.end22, %land.lhs.true29
  %clk36 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %call23, i64 0, i32 2
  %6 = load i64, i64* %clk36, align 16
  %call37 = call fastcc i32 @calc_wheel_index(i64 noundef %expires, i64 noundef %6, i64* noundef nonnull %bucket_expiry) #21
  %call38 = call fastcc i32 @timer_get_idx(%struct.timer_list* noundef %timer) #21
  %cmp39 = icmp eq i32 %call37, %call38
  br i1 %cmp39, label %if.then41, label %if.end57

if.then41:                                        ; preds = %if.end35
  br i1 %tobool18, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.then41
  store i64 %expires, i64* %expires13, align 8
  br label %do.body107

if.else:                                          ; preds = %if.then41
  %7 = load i64, i64* %expires13, align 8
  %sub47 = sub i64 %expires, %7
  %cmp48 = icmp slt i64 %sub47, 0
  br i1 %cmp48, label %if.then50, label %do.body107

if.then50:                                        ; preds = %if.else
  store i64 %expires, i64* %expires13, align 8
  br label %do.body107

if.else55:                                        ; preds = %land.lhs.true, %do.end9
  %call56 = call fastcc %struct.timer_base* @lock_timer_base(%struct.timer_list* noundef %timer, i64* noundef nonnull %flags) #21
  call fastcc void @forward_timer_base(%struct.timer_base* noundef %call56) #21
  br label %if.end57

if.end57:                                         ; preds = %if.end35, %if.else55
  %clk.1 = phi i64 [ 0, %if.else55 ], [ %6, %if.end35 ]
  %base.1 = phi %struct.timer_base* [ %call56, %if.else55 ], [ %call23, %if.end35 ]
  %idx.1 = phi i32 [ -1, %if.else55 ], [ %call37, %if.end35 ]
  %call58 = call fastcc i32 @detach_if_pending(%struct.timer_list* noundef %timer, %struct.timer_base* noundef %base.1, i1 noundef false) #21
  %tobool59.not = icmp ne i32 %call58, 0
  %and61 = and i32 %options, 1
  %tobool62.not = icmp eq i32 %and61, 0
  %or.cond176 = or i1 %tobool62.not, %tobool59.not
  br i1 %or.cond176, label %if.end64, label %do.body107

if.end64:                                         ; preds = %if.end57
  %flags65 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 3
  %call66 = call fastcc %struct.timer_base* @get_target_base() #21
  %cmp67.not = icmp eq %struct.timer_base* %base.1, %call66
  br i1 %cmp67.not, label %if.end96, label %if.then69

if.then69:                                        ; preds = %if.end64
  %running_timer = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base.1, i64 0, i32 1
  %8 = load %struct.timer_list*, %struct.timer_list** %running_timer, align 8
  %cmp70.not = icmp eq %struct.timer_list* %8, %timer
  br i1 %cmp70.not, label %if.end96, label %if.then79, !prof !12

if.then79:                                        ; preds = %if.then69
  %9 = load i32, i32* %flags65, align 8
  %or = or i32 %9, 262144
  store i32 %or, i32* %flags65, align 8
  %lock = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base.1, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  %lock81 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %call66, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock81) #21
  %10 = load i32, i32* %flags65, align 8
  %and88 = and i32 %10, -524288
  %cpu = getelementptr inbounds %struct.timer_base, %struct.timer_base* %call66, i64 0, i32 4
  %11 = load i32, i32* %cpu, align 32
  %or89 = or i32 %and88, %11
  store volatile i32 %or89, i32* %flags65, align 8
  call fastcc void @forward_timer_base(%struct.timer_base* noundef %call66) #21
  br label %if.end96

if.end96:                                         ; preds = %if.then69, %if.then79, %if.end64
  %base.2 = phi %struct.timer_base* [ %call66, %if.then79 ], [ %base.1, %if.then69 ], [ %base.1, %if.end64 ]
  %expires97 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 1
  store i64 %expires, i64* %expires97, align 8
  %cmp98.not = icmp eq i32 %idx.1, -1
  br i1 %cmp98.not, label %if.else105, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %if.end96
  %clk101 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base.2, i64 0, i32 2
  %12 = load i64, i64* %clk101, align 16
  %cmp102 = icmp eq i64 %clk.1, %12
  br i1 %cmp102, label %if.then104, label %if.else105

if.then104:                                       ; preds = %land.lhs.true100
  %13 = load i64, i64* %bucket_expiry, align 8
  call fastcc void @enqueue_timer(%struct.timer_base* noundef %base.2, %struct.timer_list* noundef %timer, i32 noundef %idx.1, i64 noundef %13) #21
  br label %do.body107

if.else105:                                       ; preds = %land.lhs.true100, %if.end96
  call fastcc void @internal_add_timer(%struct.timer_base* noundef %base.2, %struct.timer_list* noundef %timer) #21
  br label %do.body107

do.body107:                                       ; preds = %if.then44, %if.then50, %if.else, %land.lhs.true29, %if.end57, %if.else105, %if.then104
  %base.3 = phi %struct.timer_base* [ %base.2, %if.then104 ], [ %base.2, %if.else105 ], [ %base.1, %if.end57 ], [ %call23, %land.lhs.true29 ], [ %call23, %if.else ], [ %call23, %if.then50 ], [ %call23, %if.then44 ]
  %ret.1 = phi i32 [ %call58, %if.then104 ], [ %call58, %if.else105 ], [ 0, %if.end57 ], [ 1, %land.lhs.true29 ], [ 1, %if.else ], [ 1, %if.then50 ], [ 1, %if.then44 ]
  %lock110 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base.3, i64 0, i32 0
  %14 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock110, i64 noundef %14) #21
  br label %cleanup113

cleanup113:                                       ; preds = %if.end16, %if.then12, %do.body107
  %retval.1 = phi i32 [ %ret.1, %do.body107 ], [ 1, %if.then12 ], [ 1, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @mod_timer(%struct.timer_list* noundef %timer, i64 noundef %expires) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__mod_timer(%struct.timer_list* noundef %timer, i64 noundef %expires, i32 noundef 0) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @timer_reduce(%struct.timer_list* noundef %timer, i64 noundef %expires) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__mod_timer(%struct.timer_list* noundef %timer, i64 noundef %expires, i32 noundef 2) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @add_timer(%struct.timer_list* noundef %timer) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !9

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timer.c\22; .popsection; .long 14472b - 14470b; .short 1143; .short 0; .popsection; 14471: brk 0x800", ""() #23, !srcloc !14
  unreachable

do.end6:                                          ; preds = %entry
  %expires = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 1
  %0 = load i64, i64* %expires, align 8
  %call7 = call fastcc i32 @__mod_timer(%struct.timer_list* noundef %timer, i64 noundef %0, i32 noundef 4) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) unnamed_addr #0 {
entry:
  %entry1 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0
  %call = call fastcc i32 @hlist_unhashed_lockless(%struct.hlist_node* noundef %entry1) #21
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @add_timer_on(%struct.timer_list* noundef %timer, i32 noundef %cpu) local_unnamed_addr #4 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store i64 0, i64* %flags, align 8, !annotation !11
  %call = call fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %do.body5, !prof !9

lor.rhs:                                          ; preds = %entry
  %function = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 2
  %1 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %function, align 8
  %tobool1.not = icmp eq void (%struct.timer_list*)* %1, null
  br i1 %tobool1.not, label %do.body5, label %do.end10, !prof !12

do.body5:                                         ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timer.c\22; .popsection; .long 14472b - 14470b; .short 1160; .short 0; .popsection; 14471: brk 0x800", ""() #23, !srcloc !15
  unreachable

do.end10:                                         ; preds = %lor.rhs
  %flags11 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 3
  %call12 = call fastcc %struct.timer_base* @get_timer_cpu_base(i32 noundef %cpu) #21
  %call13 = call fastcc %struct.timer_base* @lock_timer_base(%struct.timer_list* noundef %timer, i64* noundef nonnull %flags) #21
  %cmp.not = icmp eq %struct.timer_base* %call13, %call12
  br i1 %cmp.not, label %if.end30, label %if.then15

if.then15:                                        ; preds = %do.end10
  %2 = load i32, i32* %flags11, align 8
  %or = or i32 %2, 262144
  store i32 %or, i32* %flags11, align 8
  %lock = getelementptr inbounds %struct.timer_base, %struct.timer_base* %call13, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  %lock17 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %call12, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock17) #21
  %3 = load i32, i32* %flags11, align 8
  %and = and i32 %3, -524288
  %or24 = or i32 %and, %cpu
  store volatile i32 %or24, i32* %flags11, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then15, %do.end10
  call fastcc void @forward_timer_base(%struct.timer_base* noundef %call12) #21
  call fastcc void @internal_add_timer(%struct.timer_base* noundef %call12, %struct.timer_list* noundef %timer) #21
  %lock34 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %call12, i64 0, i32 0
  %4 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock34, i64 noundef %4) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.timer_base* @get_timer_cpu_base(i32 noundef %cpu) unnamed_addr #5 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint ([1 x %struct.timer_base]* @timer_bases to i64)
  %1 = inttoptr i64 %add to %struct.timer_base*
  ret %struct.timer_base* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.timer_base* @lock_timer_base(%struct.timer_list* noundef %timer, i64* nocapture noundef %flags) unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  %0 = load volatile i32, i32* %flags1, align 8
  %and = and i32 %0, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %cleanup

if.then:                                          ; preds = %for.cond
  %call = call fastcc %struct.timer_base* @get_timer_base(i32 noundef %0) #21
  %lock = getelementptr inbounds %struct.timer_base, %struct.timer_base* %call, i64 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #21
  store i64 %call4, i64* %flags, align 8
  %1 = load i32, i32* %flags1, align 8
  %cmp8 = icmp eq i32 %1, %0
  br i1 %cmp8, label %return, label %do.body11

do.body11:                                        ; preds = %if.then
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call4) #21
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %do.body11
  call fastcc void @cpu_relax() #21
  br label %for.cond

return:                                           ; preds = %if.then
  ret %struct.timer_base* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !17
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @forward_timer_base(%struct.timer_base* nocapture noundef %base) unnamed_addr #4 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %clk = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 2
  %1 = load i64, i64* %clk, align 16
  %sub = sub i64 %0, %1
  %cmp = icmp slt i64 %sub, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %next_expiry = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 3
  %2 = load i64, i64* %next_expiry, align 8
  %sub1 = sub i64 %0, %2
  %cmp2 = icmp slt i64 %sub1, 0
  br i1 %cmp2, label %if.end30, label %if.else

if.else:                                          ; preds = %if.end
  %sub7 = sub i64 %2, %1
  %cmp8 = icmp slt i64 %sub7, 0
  br i1 %cmp8, label %if.then15, label %if.end30, !prof !12

if.then15:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timer.c\22; .popsection; .long 14472b - 14470b; .short 911; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !18
  br label %cleanup

if.end30:                                         ; preds = %if.else, %if.end
  %storemerge = phi i64 [ %0, %if.end ], [ %2, %if.else ]
  store i64 %storemerge, i64* %clk, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %entry, %if.end30
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @internal_add_timer(%struct.timer_base* noundef %base, %struct.timer_list* noundef %timer) unnamed_addr #2 {
entry:
  %bucket_expiry = alloca i64, align 8
  %0 = bitcast i64* %bucket_expiry to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store i64 0, i64* %bucket_expiry, align 8, !annotation !11
  %expires = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 1
  %1 = load i64, i64* %expires, align 8
  %clk = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 2
  %2 = load i64, i64* %clk, align 16
  %call = call fastcc i32 @calc_wheel_index(i64 noundef %1, i64 noundef %2, i64* noundef nonnull %bucket_expiry) #21, !range !19
  %3 = load i64, i64* %bucket_expiry, align 8
  call fastcc void @enqueue_timer(%struct.timer_base* noundef %base, %struct.timer_list* noundef %timer, i32 noundef %call, i64 noundef %3) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #4 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #21
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @del_timer(%struct.timer_list* noundef %timer) local_unnamed_addr #4 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store i64 0, i64* %flags, align 8, !annotation !11
  %call = call fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.timer_base* @lock_timer_base(%struct.timer_list* noundef %timer, i64* noundef nonnull %flags) #21
  %call2 = call fastcc i32 @detach_if_pending(%struct.timer_list* noundef %timer, %struct.timer_base* noundef %call1, i1 noundef true) #21
  %lock = getelementptr inbounds %struct.timer_base, %struct.timer_base* %call1, i64 0, i32 0
  %1 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %1) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call2, %if.then ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret i32 %ret.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc i32 @detach_if_pending(%struct.timer_list* noundef %timer, %struct.timer_base* noundef %base, i1 noundef %clear_pending) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @timer_get_idx(%struct.timer_list* noundef %timer) #21
  %call1 = call fastcc i32 @timer_pending(%struct.timer_list* noundef %timer) #21
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %entry2 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0
  %idx.ext = zext i32 %call to i64
  %add.ptr = getelementptr %struct.timer_base, %struct.timer_base* %base, i64 0, i32 9, i64 %idx.ext
  %call3 = call fastcc i1 @hlist_is_singular_node(%struct.hlist_node* noundef %entry2, %struct.hlist_head* noundef %add.ptr) #21
  br i1 %call3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %rem.i = and i32 %call, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %call, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.timer_base, %struct.timer_base* %base, i64 0, i32 8, i64 %idx.ext.i
  %neg.i = xor i64 %shl.i, -1
  %0 = load i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  %next_expiry_recalc = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 5
  store i8 1, i8* %next_expiry_recalc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  call fastcc void @detach_timer(%struct.timer_list* noundef %timer, i1 noundef %clear_pending) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @try_to_del_timer_sync(%struct.timer_list* noundef %timer) local_unnamed_addr #4 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store i64 0, i64* %flags, align 8, !annotation !11
  %call = call fastcc %struct.timer_base* @lock_timer_base(%struct.timer_list* noundef %timer, i64* noundef nonnull %flags) #21
  %running_timer = getelementptr inbounds %struct.timer_base, %struct.timer_base* %call, i64 0, i32 1
  %1 = load %struct.timer_list*, %struct.timer_list** %running_timer, align 8
  %cmp.not = icmp eq %struct.timer_list* %1, %timer
  br i1 %cmp.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @detach_if_pending(%struct.timer_list* noundef %timer, %struct.timer_base* noundef %call, i1 noundef true) #21
  br label %do.body

do.body:                                          ; preds = %entry, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ -1, %entry ]
  %lock = getelementptr inbounds %struct.timer_base, %struct.timer_base* %call, i64 0, i32 0
  %2 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %2) #21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @del_timer_sync(%struct.timer_list* noundef %timer) local_unnamed_addr #4 {
entry:
  %call = call fastcc i32 @preempt_count() #21
  %0 = and i32 %call, 983040
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 3
  %1 = load i32, i32* %flags, align 8
  %and1 = and i32 %1, 2097152
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then, label %if.end, !prof !12

if.then:                                          ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timer.c\22; .popsection; .long 14472b - 14470b; .short 1372; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !21
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.rhs
  %call1940 = call i32 @try_to_del_timer_sync(%struct.timer_list* noundef %timer) #21
  %cmp41 = icmp slt i32 %call1940, 0
  br i1 %cmp41, label %if.then28, label %do.end, !prof !12

if.then28:                                        ; preds = %if.end, %if.then28
  call fastcc void @cpu_relax() #21
  %call19 = call i32 @try_to_del_timer_sync(%struct.timer_list* noundef %timer) #21
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.then28, label %do.end, !prof !12

do.end:                                           ; preds = %if.then28, %if.end
  %call19.lcssa = phi i32 [ %call1940, %if.end ], [ %call19, %if.then28 ]
  ret i32 %call19.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #4 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.1* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #4 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #23, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_process_times(i32 noundef %user_tick) local_unnamed_addr #4 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = load volatile i64, i64* @jiffies, align 64
  %conv = sext i32 %user_tick to i64
  call fastcc void @prandom_u32_add_noise(i64 noundef %2, i64 noundef %conv, i64 noundef %0) #21
  call void @account_process_tick(%struct.task_struct* noundef %1, i32 noundef %user_tick) #25
  call fastcc void @run_local_timers() #21
  call void @rcu_sched_clock_irq(i32 noundef %user_tick) #25
  %call1 = call fastcc i32 @preempt_count() #21
  %3 = and i32 %call1, 983040
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @irq_work_tick() #25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @scheduler_tick() #25
  call void @run_posix_cpu_timers() #25
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @prandom_u32_add_noise(i64 noundef %a, i64 noundef %b, i64 noundef %c) unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint (i64* @net_rand_noise to i64)
  %0 = inttoptr i64 %add to i64*
  %1 = load i64, i64* %0, align 8
  %xor = xor i64 %1, %a
  %add8 = add i64 %xor, %b
  %call11 = call fastcc i64 @rol64(i64 noundef 0, i32 noundef 16) #21
  %call13 = call fastcc i64 @rol64(i64 noundef %add8, i32 noundef 32) #21
  %xor14 = xor i64 %call11, %c
  %add15 = add i64 %call13, %xor14
  %call16 = call fastcc i64 @rol64(i64 noundef %xor14, i32 noundef 21) #21
  %xor19 = xor i64 %call16, %add15
  store i64 %xor19, i64* %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @account_process_tick(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @run_local_timers() unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint ([1 x %struct.timer_base]* @timer_bases to i64)
  %0 = inttoptr i64 %add to %struct.timer_base*
  call void @hrtimer_run_queues() #25
  %1 = load volatile i64, i64* @jiffies, align 64
  %next_expiry = getelementptr inbounds %struct.timer_base, %struct.timer_base* %0, i64 0, i32 3
  %2 = load i64, i64* %next_expiry, align 8
  %sub = sub i64 %1, %2
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @raise_softirq(i32 noundef 1) #25
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sched_clock_irq(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_tick() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @scheduler_tick() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @run_posix_cpu_timers() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @schedule_timeout(i64 noundef %timeout) local_unnamed_addr #4 section ".sched.text" {
entry:
  %timer = alloca %struct.process_timer, align 8
  %0 = bitcast %struct.process_timer* %timer to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #23
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 40, i1 false), !annotation !11
  %cond25 = icmp eq i64 %timeout, 9223372036854775807
  br i1 %cond25, label %out.thread, label %sw.default

out.thread:                                       ; preds = %entry
  call void @schedule() #25
  br label %8

sw.default:                                       ; preds = %entry
  %cmp = icmp slt i64 %timeout, 0
  br i1 %cmp, label %out.thread35, label %out

out.thread35:                                     ; preds = %sw.default
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 noundef %timeout) #26
  call void @dump_stack() #26
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  br label %9

out:                                              ; preds = %sw.default
  %3 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %3, %timeout
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %task = getelementptr inbounds %struct.process_timer, %struct.process_timer* %timer, i64 0, i32 1
  store %struct.task_struct* %5, %struct.task_struct** %task, align 8
  %timer18 = getelementptr inbounds %struct.process_timer, %struct.process_timer* %timer, i64 0, i32 0
  call fastcc void @init_timer_on_stack_key(%struct.timer_list* noundef nonnull %timer18) #21
  %call20 = call fastcc i32 @__mod_timer(%struct.timer_list* noundef nonnull %timer18, i64 noundef %add, i32 noundef 4) #21
  call void @schedule() #25
  %call22 = call i32 @del_timer_sync(%struct.timer_list* noundef nonnull %timer18) #21
  %6 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %add, %6
  %7 = icmp sgt i64 %sub, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %out.thread, %out
  %timeout.addr.034 = phi i64 [ 9223372036854775807, %out.thread ], [ %sub, %out ]
  br label %9

9:                                                ; preds = %out.thread35, %out, %8
  %10 = phi i64 [ %timeout.addr.034, %8 ], [ 0, %out ], [ 0, %out.thread35 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #23
  ret i64 %10
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_timer_on_stack_key(%struct.timer_list* nocapture noundef writeonly %timer) unnamed_addr #4 {
entry:
  call void @init_timer_key(%struct.timer_list* noundef %timer, void (%struct.timer_list*)* noundef nonnull @process_timeout, i32 noundef 0, i8* undef, %struct.lock_class_key* undef) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @process_timeout(%struct.timer_list* nocapture noundef readonly %t) #4 {
entry:
  %task = getelementptr inbounds %struct.timer_list, %struct.timer_list* %t, i64 1
  %0 = bitcast %struct.timer_list* %task to %struct.task_struct**
  %1 = load %struct.task_struct*, %struct.task_struct** %0, align 8
  %call = call i32 @wake_up_process(%struct.task_struct* noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @schedule_timeout_interruptible(i64 noundef %timeout) local_unnamed_addr #4 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  %call9 = call i64 @schedule_timeout(i64 noundef %timeout) #21
  ret i64 %call9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @schedule_timeout_killable(i64 noundef %timeout) local_unnamed_addr #4 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 258, i32* %__state, align 16
  %call9 = call i64 @schedule_timeout(i64 noundef %timeout) #21
  ret i64 %call9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @schedule_timeout_uninterruptible(i64 noundef %timeout) local_unnamed_addr #4 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 2, i32* %__state, align 16
  %call9 = call i64 @schedule_timeout(i64 noundef %timeout) #21
  ret i64 %call9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @schedule_timeout_idle(i64 noundef %timeout) local_unnamed_addr #4 section ".sched.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 1026, i32* %__state, align 16
  %call9 = call i64 @schedule_timeout(i64 noundef %timeout) #21
  ret i64 %call9
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_timers() local_unnamed_addr #10 section ".init.text" {
entry:
  call fastcc void @init_timer_cpus() #27
  call void @open_softirq(i32 noundef 1, void (%struct.softirq_action*)* noundef nonnull @run_timer_softirq) #25
  ret void
}

; Function Attrs: cold nofree noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @init_timer_cpus() unnamed_addr #11 section ".init.text" {
entry:
  %call4 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #28
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp5 = icmp ult i32 %call4, %0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call6 = phi i32 [ %call, %for.body ], [ %call4, %entry ]
  call fastcc void @init_timer_cpu(i32 noundef %call6) #27
  %call = call i32 @cpumask_next(i32 noundef %call6, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #28
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, void (%struct.softirq_action*)* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @run_timer_softirq(%struct.softirq_action* nocapture noundef readnone %h) #4 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint ([1 x %struct.timer_base]* @timer_bases to i64)
  %0 = inttoptr i64 %add to %struct.timer_base*
  call fastcc void @__run_timers(%struct.timer_base* noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @msleep(i32 noundef %msecs) local_unnamed_addr #4 {
entry:
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %msecs) #25
  %add = add i64 %call2.i, 1
  %tobool.not4 = icmp eq i64 %add, 0
  br i1 %tobool.not4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %timeout.05 = phi i64 [ %call1, %while.body ], [ %add, %entry ]
  %call1 = call i64 @schedule_timeout_uninterruptible(i64 noundef %timeout.05) #21
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @msleep_interruptible(i32 noundef %msecs) local_unnamed_addr #4 {
entry:
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %msecs) #25
  %add = add i64 %call2.i, 1
  %tobool.not9 = icmp eq i64 %add, 0
  br i1 %tobool.not9, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %timeout.010 = phi i64 [ %add, %land.rhs.lr.ph ], [ %call4, %while.body ]
  %call2 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #21
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call4 = call i64 @schedule_timeout_interruptible(i64 noundef %timeout.010) #21
  %tobool.not = icmp eq i64 %call4, 0
  br i1 %tobool.not, label %while.end, label %land.rhs

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  %timeout.0.lcssa = phi i64 [ 0, %entry ], [ 0, %while.body ], [ %timeout.010, %land.rhs ]
  %call5 = call i32 @jiffies_to_msecs(i64 noundef %timeout.0.lcssa) #25
  %conv = zext i32 %call5 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !9

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #21
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @usleep_range(i64 noundef %min, i64 noundef %max) local_unnamed_addr #4 section ".sched.text" {
entry:
  %exp = alloca i64, align 8
  %0 = bitcast i64* %exp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  %call = call i64 @ktime_get() #25
  %call1 = call fastcc i64 @ktime_add_us(i64 noundef %call, i64 noundef %min) #21
  store i64 %call1, i64* %exp, align 8
  %sub = sub i64 %max, %min
  %mul = mul i64 %sub, 1000
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  store volatile i32 2, i32* %__state, align 16
  %call15 = call i32 @schedule_hrtimeout_range(i64* noundef nonnull %exp, i64 noundef %mul, i32 noundef 0) #25
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_add_us(i64 noundef %kt, i64 noundef %usec) unnamed_addr #12 {
entry:
  %mul = mul i64 %usec, 1000
  %add = add i64 %mul, %kt
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i32 @calc_wheel_index(i64 noundef %expires, i64 noundef %clk, i64* nocapture noundef writeonly %bucket_expiry) unnamed_addr #14 {
entry:
  %sub = sub i64 %expires, %clk
  %cmp = icmp ult i64 %sub, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @calc_index(i64 noundef %expires, i32 noundef 0, i64* noundef %bucket_expiry) #21
  br label %if.end44

if.else:                                          ; preds = %entry
  %cmp1 = icmp ult i64 %sub, 504
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %call3 = call fastcc i32 @calc_index(i64 noundef %expires, i32 noundef 1, i64* noundef %bucket_expiry) #21
  br label %if.end44

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp ult i64 %sub, 4032
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %call7 = call fastcc i32 @calc_index(i64 noundef %expires, i32 noundef 2, i64* noundef %bucket_expiry) #21
  br label %if.end44

if.else8:                                         ; preds = %if.else4
  %cmp9 = icmp ult i64 %sub, 32256
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  %call11 = call fastcc i32 @calc_index(i64 noundef %expires, i32 noundef 3, i64* noundef %bucket_expiry) #21
  br label %if.end44

if.else12:                                        ; preds = %if.else8
  %cmp13 = icmp ult i64 %sub, 258048
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else12
  %call15 = call fastcc i32 @calc_index(i64 noundef %expires, i32 noundef 4, i64* noundef %bucket_expiry) #21
  br label %if.end44

if.else16:                                        ; preds = %if.else12
  %cmp17 = icmp ult i64 %sub, 2064384
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else16
  %call19 = call fastcc i32 @calc_index(i64 noundef %expires, i32 noundef 5, i64* noundef %bucket_expiry) #21
  br label %if.end44

if.else20:                                        ; preds = %if.else16
  %cmp21 = icmp ult i64 %sub, 16515072
  br i1 %cmp21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else20
  %call23 = call fastcc i32 @calc_index(i64 noundef %expires, i32 noundef 6, i64* noundef %bucket_expiry) #21
  br label %if.end44

if.else24:                                        ; preds = %if.else20
  %cmp25 = icmp ult i64 %sub, 132120576
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else24
  %call27 = call fastcc i32 @calc_index(i64 noundef %expires, i32 noundef 7, i64* noundef %bucket_expiry) #21
  br label %if.end44

if.else28:                                        ; preds = %if.else24
  %cmp29 = icmp slt i64 %sub, 0
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else28
  %0 = trunc i64 %clk to i32
  %conv = and i32 %0, 63
  store i64 %clk, i64* %bucket_expiry, align 8
  br label %if.end44

if.else31:                                        ; preds = %if.else28
  %cmp32 = icmp ugt i64 %sub, 1056964607
  %add = add i64 %clk, 1040187392
  %spec.select = select i1 %cmp32, i64 %add, i64 %expires
  %call35 = call fastcc i32 @calc_index(i64 noundef %spec.select, i32 noundef 8, i64* noundef %bucket_expiry) #21
  br label %if.end44

if.end44:                                         ; preds = %if.then2, %if.then10, %if.then18, %if.then26, %if.else31, %if.then30, %if.then22, %if.then14, %if.then6, %if.then
  %idx.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ %call7, %if.then6 ], [ %call11, %if.then10 ], [ %call15, %if.then14 ], [ %call19, %if.then18 ], [ %call23, %if.then22 ], [ %call27, %if.then26 ], [ %conv, %if.then30 ], [ %call35, %if.else31 ]
  ret i32 %idx.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @timer_get_idx(%struct.timer_list* nocapture noundef readonly %timer) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 3
  %0 = load i32, i32* %flags, align 8
  %shr = lshr i32 %0, 22
  ret i32 %shr
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.timer_base* @get_target_base() unnamed_addr #3 {
entry:
  %call = call fastcc %struct.timer_base* @get_timer_this_cpu_base() #21
  ret %struct.timer_base* %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @enqueue_timer(%struct.timer_base* noundef %base, %struct.timer_list* noundef %timer, i32 noundef %idx, i64 noundef %bucket_expiry) unnamed_addr #6 {
entry:
  %entry1 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0
  %idx.ext = zext i32 %idx to i64
  %add.ptr = getelementptr %struct.timer_base, %struct.timer_base* %base, i64 0, i32 9, i64 %idx.ext
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %entry1, %struct.hlist_head* noundef %add.ptr) #21
  %rem.i = and i32 %idx, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %idx, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.timer_base, %struct.timer_base* %base, i64 0, i32 8, i64 %idx.ext.i
  %0 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %0, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  call fastcc void @timer_set_idx(%struct.timer_list* noundef %timer, i32 noundef %idx) #21
  %next_expiry = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 3
  %1 = load i64, i64* %next_expiry, align 8
  %sub = sub i64 %bucket_expiry, %1
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %bucket_expiry, i64* %next_expiry, align 8
  %timers_pending = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 7
  store i8 1, i8* %timers_pending, align 2
  %next_expiry_recalc = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 5
  store i8 0, i8* %next_expiry_recalc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i32 @calc_index(i64 noundef %expires, i32 noundef %lvl, i64* nocapture noundef writeonly %bucket_expiry) unnamed_addr #14 {
entry:
  %mul = mul i32 %lvl, 3
  %sh_prom = zext i32 %mul to i64
  %shl = shl nuw i64 1, %sh_prom
  %add = add i64 %shl, %expires
  %shr = lshr i64 %add, %sh_prom
  %shl5 = shl i64 %shr, %sh_prom
  store i64 %shl5, i64* %bucket_expiry, align 8
  %conv = zext i32 %lvl to i64
  %mul6 = shl nuw nsw i64 %conv, 6
  %and = and i64 %shr, 63
  %add7 = or i64 %and, %mul6
  %conv8 = trunc i64 %add7 to i32
  ret i32 %conv8
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.timer_base* @get_timer_this_cpu_base() unnamed_addr #3 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  %add = add i64 %call, ptrtoint ([1 x %struct.timer_base]* @timer_bases to i64)
  %0 = inttoptr i64 %add to %struct.timer_base*
  ret %struct.timer_base* %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #6 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @timer_set_idx(%struct.timer_list* nocapture noundef %timer, i32 noundef %idx) unnamed_addr #15 {
entry:
  %flags = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 3
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 4194303
  %shl = shl i32 %idx, 22
  %or = or i32 %and, %shl
  store i32 %or, i32* %flags, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_unhashed_lockless(%struct.hlist_node* noundef %h) unnamed_addr #0 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load volatile %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.timer_base* @get_timer_base(i32 noundef %tflags) unnamed_addr #5 {
entry:
  %and = and i32 %tflags, 262143
  %call = call fastcc %struct.timer_base* @get_timer_cpu_base(i32 noundef %and) #21
  ret %struct.timer_base* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #21
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !24
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #21
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #4 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #21
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #21
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #25
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #25
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #4 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #23, !srcloc !25
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #4 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #23, !srcloc !26
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #4 {
entry:
  %call39 = call fastcc i32 @static_key_count() #21
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !12

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #23, !srcloc !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #4 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #4 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #23, !srcloc !28
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #23, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #25
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #25
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #4 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #23, !srcloc !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @hlist_is_singular_node(%struct.hlist_node* nocapture noundef readonly %n, %struct.hlist_head* noundef readnone %h) unnamed_addr #5 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %cmp = icmp eq %struct.hlist_node** %1, %first
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @detach_timer(%struct.timer_list* nocapture noundef %timer, i1 noundef %clear_pending) unnamed_addr #6 {
entry:
  %entry2 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %entry2) #21
  br i1 %clear_pending, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pprev = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %next = getelementptr inbounds %struct.timer_list, %struct.timer_list* %timer, i64 0, i32 0, i32 0
  store %struct.hlist_node* inttoptr (i64 -2401263026318606046 to %struct.hlist_node*), %struct.hlist_node** %next, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #6 {
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

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @rol64(i64 noundef %word, i32 noundef %shift) unnamed_addr #16 {
entry:
  %sh_prom = zext i32 %shift to i64
  %or = call i64 @llvm.fshl.i64(i64 %word, i64 %word, i64 %sh_prom)
  ret i64 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_run_queues() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #17

; Function Attrs: cold mustprogress nofree noinline norecurse nounwind null_pointer_is_valid optsize willreturn
define internal fastcc void @init_timer_cpu(i32 noundef %cpu) unnamed_addr #18 section ".init.text" {
entry:
  %idxprom2 = sext i32 %cpu to i64
  %arrayidx3 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom2
  %0 = load i64, i64* %arrayidx3, align 8
  %add = add i64 %0, ptrtoint ([1 x %struct.timer_base]* @timer_bases to i64)
  %1 = inttoptr i64 %add to %struct.timer_base*
  %cpu4 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %1, i64 0, i32 4
  store i32 %cpu, i32* %cpu4, align 32
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.timer_base, %struct.timer_base* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 64
  %2 = load volatile i64, i64* @jiffies, align 64
  %clk = getelementptr inbounds %struct.timer_base, %struct.timer_base* %1, i64 0, i32 2
  store i64 %2, i64* %clk, align 16
  %add9 = add i64 %2, 1073741823
  %next_expiry = getelementptr inbounds %struct.timer_base, %struct.timer_base* %1, i64 0, i32 3
  store i64 %add9, i64* %next_expiry, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__run_timers(%struct.timer_base* noundef %base) unnamed_addr #4 {
entry:
  %heads = alloca [9 x %struct.hlist_head], align 8
  %0 = bitcast [9 x %struct.hlist_head]* %heads to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #23
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !11
  %1 = load volatile i64, i64* @jiffies, align 64
  %next_expiry = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 3
  %2 = load i64, i64* %next_expiry, align 8
  %sub = sub i64 %1, %2
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #21
  %clk = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 2
  %3 = load volatile i64, i64* @jiffies, align 64
  %4 = load i64, i64* %clk, align 16
  %sub156 = sub i64 %3, %4
  %cmp257 = icmp sgt i64 %sub156, -1
  br i1 %cmp257, label %land.rhs.lr.ph, label %while.end33

land.rhs.lr.ph:                                   ; preds = %if.end
  %arraydecay = getelementptr inbounds [9 x %struct.hlist_head], [9 x %struct.hlist_head]* %heads, i64 0, i64 0
  %next_expiry_recalc = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 5
  br label %land.rhs

while.cond.loopexit:                              ; preds = %while.body31, %if.end18
  %5 = load volatile i64, i64* @jiffies, align 64
  %6 = load i64, i64* %clk, align 16
  %sub1 = sub i64 %5, %6
  %cmp2 = icmp sgt i64 %sub1, -1
  br i1 %cmp2, label %land.rhs, label %while.end33

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond.loopexit
  %7 = load volatile i64, i64* @jiffies, align 64
  %8 = load i64, i64* %next_expiry, align 8
  %sub4 = sub i64 %7, %8
  %cmp5 = icmp sgt i64 %sub4, -1
  br i1 %cmp5, label %while.body, label %while.end33

while.body:                                       ; preds = %land.rhs
  %call = call fastcc i32 @collect_expired_timers(%struct.timer_base* noundef %base, %struct.hlist_head* noundef nonnull %arraydecay) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs6, label %while.body31.preheader.critedge

land.rhs6:                                        ; preds = %while.body
  %9 = load i8, i8* %next_expiry_recalc, align 4, !range !31
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.then17, label %if.end18, !prof !12

if.then17:                                        ; preds = %land.rhs6
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timer.c\22; .popsection; .long 14472b - 14470b; .short 1729; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !32
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.rhs6
  %10 = load i64, i64* %clk, align 16
  %inc = add i64 %10, 1
  store i64 %inc, i64* %clk, align 16
  %call27 = call fastcc i64 @__next_timer_interrupt(%struct.timer_base* noundef %base) #21
  store i64 %call27, i64* %next_expiry, align 8
  br i1 %tobool.not, label %while.cond.loopexit, label %while.body31.preheader

while.body31.preheader.critedge:                  ; preds = %while.body
  %11 = load i64, i64* %clk, align 16
  %inc.c = add i64 %11, 1
  store i64 %inc.c, i64* %clk, align 16
  %call27.c = call fastcc i64 @__next_timer_interrupt(%struct.timer_base* noundef %base) #21
  store i64 %call27.c, i64* %next_expiry, align 8
  br label %while.body31.preheader

while.body31.preheader:                           ; preds = %while.body31.preheader.critedge, %if.end18
  br label %while.body31

while.body31:                                     ; preds = %while.body31.preheader, %while.body31
  %dec55.in = phi i32 [ %dec55, %while.body31 ], [ %call, %while.body31.preheader ]
  %dec55 = add i32 %dec55.in, -1
  %idx.ext = sext i32 %dec55 to i64
  %add.ptr = getelementptr [9 x %struct.hlist_head], [9 x %struct.hlist_head]* %heads, i64 0, i64 %idx.ext
  call fastcc void @expire_timers(%struct.timer_base* noundef %base, %struct.hlist_head* noundef %add.ptr) #21
  %tobool30.not = icmp eq i32 %dec55, 0
  br i1 %tobool30.not, label %while.cond.loopexit, label %while.body31

while.end33:                                      ; preds = %land.rhs, %while.cond.loopexit, %if.end
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end33
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @arch_local_irq_disable() #21
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !33
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @collect_expired_timers(%struct.timer_base* nocapture noundef %base, %struct.hlist_head* noundef %heads) unnamed_addr #19 {
entry:
  %next_expiry = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 3
  %0 = load i64, i64* %next_expiry, align 8
  %clk1 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 2
  store i64 %0, i64* %clk1, align 16
  br label %for.body

for.body:                                         ; preds = %entry, %if.end7
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end7 ]
  %levels.026 = phi i32 [ 0, %entry ], [ %levels.1, %if.end7 ]
  %clk.024 = phi i64 [ %0, %entry ], [ %shr, %if.end7 ]
  %heads.addr.023 = phi %struct.hlist_head* [ %heads, %entry ], [ %heads.addr.1, %if.end7 ]
  %and = and i64 %clk.024, 63
  %shl.i = shl nuw i64 1, %and
  %add.ptr.i = getelementptr %struct.timer_base, %struct.timer_base* %base, i64 0, i32 8, i64 %indvars.iv
  %1 = load i64, i64* %add.ptr.i, align 8
  %neg.i = xor i64 %shl.i, -1
  %and.i = and i64 %1, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  %and1.i = and i64 %1, %shl.i
  %cmp.i.not = icmp eq i64 %and1.i, 0
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %mul = shl nuw nsw i64 %indvars.iv, 6
  %idx.ext = or i64 %mul, %and
  %add.ptr = getelementptr %struct.timer_base, %struct.timer_base* %base, i64 0, i32 9, i64 %idx.ext
  %incdec.ptr = getelementptr %struct.hlist_head, %struct.hlist_head* %heads.addr.023, i64 1
  call fastcc void @hlist_move_list(%struct.hlist_head* noundef %add.ptr, %struct.hlist_head* noundef %heads.addr.023) #21
  %inc = add i32 %levels.026, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %heads.addr.1 = phi %struct.hlist_head* [ %incdec.ptr, %if.then ], [ %heads.addr.023, %for.body ]
  %levels.1 = phi i32 [ %inc, %if.then ], [ %levels.026, %for.body ]
  %and4 = and i64 %clk.024, 7
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %for.end

if.end7:                                          ; preds = %if.end
  %shr = lshr i64 %clk.024, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %if.end7
  ret i32 %levels.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__next_timer_interrupt(%struct.timer_base* noundef %base) unnamed_addr #4 {
entry:
  %clk1 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 2
  %0 = load i64, i64* %clk1, align 16
  %add = add i64 %0, 1073741823
  br label %for.body

for.body:                                         ; preds = %entry, %cleanup21.thread
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cleanup21.thread ]
  %offset.078 = phi i32 [ 0, %entry ], [ %add26, %cleanup21.thread ]
  %next.075 = phi i64 [ %add, %entry ], [ %next.2, %cleanup21.thread ]
  %clk.073 = phi i64 [ %0, %entry ], [ %add20, %cleanup21.thread ]
  %1 = trunc i64 %clk.073 to i32
  %conv = and i32 %1, 63
  %call = call fastcc i32 @next_pending_bucket(%struct.timer_base* noundef %base, i32 noundef %offset.078, i32 noundef %conv) #21
  %and3 = and i64 %clk.073, 7
  %cmp4 = icmp sgt i32 %call, -1
  br i1 %cmp4, label %if.then, label %cleanup21.thread

if.then:                                          ; preds = %for.body
  %conv672 = zext i32 %call to i64
  %add7 = add i64 %clk.073, %conv672
  %2 = mul nuw nsw i64 %indvars.iv, 3
  %shl = shl i64 %add7, %2
  %sub = sub i64 %shl, %next.075
  %cmp8 = icmp slt i64 %sub, 0
  %spec.select = select i1 %cmp8, i64 %shl, i64 %next.075
  %sub12 = sub i64 0, %clk.073
  %and13 = and i64 %sub12, 7
  %cmp14.not = icmp ult i64 %and13, %conv672
  br i1 %cmp14.not, label %cleanup21.thread, label %for.end

cleanup21.thread:                                 ; preds = %for.body, %if.then
  %next.2 = phi i64 [ %spec.select, %if.then ], [ %next.075, %for.body ]
  %tobool.not = icmp ne i64 %and3, 0
  %3 = zext i1 %tobool.not to i64
  %shr = lshr i64 %clk.073, 3
  %add20 = add nuw nsw i64 %shr, %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %add26 = add nuw nsw i32 %offset.078, 64
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.then, %cleanup21.thread
  %next.4 = phi i64 [ %next.2, %cleanup21.thread ], [ %spec.select, %if.then ]
  %next_expiry_recalc = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 5
  store i8 0, i8* %next_expiry_recalc, align 4
  %4 = load i64, i64* %clk1, align 16
  %add29 = add i64 %4, 1073741823
  %cmp30 = icmp ne i64 %next.4, %add29
  %timers_pending = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 7
  %frombool = zext i1 %cmp30 to i8
  store i8 %frombool, i8* %timers_pending, align 2
  ret i64 %next.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @expire_timers(%struct.timer_base* noundef %base, %struct.hlist_head* noundef %head) unnamed_addr #4 {
entry:
  %call27 = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %head) #21
  %tobool.not28 = icmp eq i32 %call27, 0
  br i1 %tobool.not28, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.hlist_head* %head to %struct.timer_list**
  %running_timer = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 1
  %lock = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %1 = load %struct.timer_list*, %struct.timer_list** %0, align 8
  store %struct.timer_list* %1, %struct.timer_list** %running_timer, align 8
  call fastcc void @detach_timer(%struct.timer_list* noundef %1, i1 noundef true) #21
  %function = getelementptr inbounds %struct.timer_list, %struct.timer_list* %1, i64 0, i32 2
  %2 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %function, align 8
  %flags = getelementptr inbounds %struct.timer_list, %struct.timer_list* %1, i64 0, i32 3
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 2097152
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  call fastcc void @call_timer_fn(%struct.timer_list* noundef %1, void (%struct.timer_list*)* noundef %2) #21
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #21
  br label %if.end

if.else:                                          ; preds = %while.body
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) #21
  call fastcc void @call_timer_fn(%struct.timer_list* noundef %1, void (%struct.timer_list*)* noundef %2) #21
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store %struct.timer_list* null, %struct.timer_list** %running_timer, align 8
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %head) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #4 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #21
  call fastcc void @arch_local_irq_enable() #21
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @hlist_move_list(%struct.hlist_head* nocapture noundef %old, %struct.hlist_head* noundef %new) unnamed_addr #15 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %old, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %new, i64 0, i32 0
  store %struct.hlist_node* %0, %struct.hlist_node** %first1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store %struct.hlist_node** %first1, %struct.hlist_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @next_pending_bucket(%struct.timer_base* noundef %base, i32 noundef %offset, i32 noundef %clk) unnamed_addr #4 {
entry:
  %add = add i32 %clk, %offset
  %add1 = add i32 %offset, 64
  %arraydecay = getelementptr inbounds %struct.timer_base, %struct.timer_base* %base, i64 0, i32 8, i64 0
  %conv3 = zext i32 %add1 to i64
  %conv4 = zext i32 %add to i64
  %call = call fastcc i64 @find_next_bit(i64* noundef %arraydecay, i64 noundef %conv3, i64 noundef %conv4) #21
  %conv5 = trunc i64 %call to i32
  %cmp = icmp ugt i32 %add1, %conv5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub = sub i32 %conv5, %add
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %offset to i64
  %call11 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay, i64 noundef %conv4, i64 noundef %conv) #21
  %conv12 = trunc i64 %call11 to i32
  %cmp13 = icmp ugt i32 %add, %conv12
  %0 = sub i32 64, %add
  %1 = add i32 %0, %conv12
  %conv19 = select i1 %cmp13, i32 %1, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %conv19, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #4 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #25
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #0 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @call_timer_fn(%struct.timer_list* noundef %timer, void (%struct.timer_list*)* noundef %fn) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @preempt_count() #21
  call void %fn(%struct.timer_list* noundef %timer) #25
  %call4 = call fastcc i32 @preempt_count() #21
  %cmp.not = icmp eq i32 %call, %call4
  br i1 %cmp.not, label %if.end46, label %if.then

if.then:                                          ; preds = %entry
  %.b1 = load i1, i1* @call_timer_fn.__already_done, align 1
  br i1 %.b1, label %if.end36, label %if.then9, !prof !9

if.then9:                                         ; preds = %if.then
  store i1 true, i1* @call_timer_fn.__already_done, align 1
  %call23 = call fastcc i32 @preempt_count() #21
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), void (%struct.timer_list*)* noundef %fn, i32 noundef %call, i32 noundef %call23) #25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/time/timer.c\22; .popsection; .long 14472b - 14470b; .short 1428; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !35
  br label %if.end36

if.end36:                                         ; preds = %if.then9, %if.then
  %conv45 = sext i32 %call to i64
  call fastcc void @preempt_count_set(i64 noundef %conv45) #21
  br label %if.end46

if.end46:                                         ; preds = %if.end36, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @preempt_count_set(i64 noundef %pc) unnamed_addr #4 {
entry:
  %conv = trunc i64 %pc to i32
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.1* %2 to i32*
  store volatile i32 %conv, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #4 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #23, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #21
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #21
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #21
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #0 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #12 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #20

attributes #0 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold nofree noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #18 = { cold mustprogress nofree noinline norecurse nounwind null_pointer_is_valid optsize willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #20 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nobuiltin "no-builtins" }
attributes #22 = { nounwind readonly }
attributes #23 = { nounwind }
attributes #24 = { nounwind readnone }
attributes #25 = { nobuiltin nounwind "no-builtins" }
attributes #26 = { cold nobuiltin nounwind "no-builtins" }
attributes #27 = { cold nobuiltin "no-builtins" }
attributes #28 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{i64 2148890537, i64 2148890584, i64 2148890590, i64 2148890627, i64 2148890645, i64 2148891572, i64 2148891620, i64 2148891668, i64 2148891731, i64 2148891780, i64 2148890723, i64 2148890748, i64 2148890774, i64 2148890780, i64 2148890817, i64 2148890823, i64 2148890873, i64 2148890919, i64 2148890952}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2155824565}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2155845452}
!14 = !{i64 2155850431}
!15 = !{i64 2155851939}
!16 = !{i64 2149781507}
!17 = !{i64 2149774226}
!18 = !{i64 2155840733}
!19 = !{i32 0, i32 576}
!20 = !{i64 2149785068}
!21 = !{i64 2155858007}
!22 = !{i64 1328232}
!23 = !{i64 1908036}
!24 = !{i64 2149759225}
!25 = !{i64 2149370557, i64 2149370604, i64 2149370610, i64 2149370647, i64 2149370665, i64 2149371976, i64 2149372024, i64 2149372072, i64 2149372135, i64 2149372184, i64 2149370743, i64 2149370768, i64 2149370794, i64 2149370800, i64 2149371642, i64 2149371682, i64 2149371700, i64 2149371732, i64 2149371760, i64 2149371814, i64 2149371834, i64 2149371931, i64 2149370823, i64 2149370837, i64 2149370843, i64 2149370893, i64 2149370939, i64 2149370972}
!26 = !{i64 2149372736, i64 2149372783, i64 2149372789, i64 2149372826, i64 2149372844, i64 2149373787, i64 2149373835, i64 2149373883, i64 2149373946, i64 2149373995, i64 2149372922, i64 2149372947, i64 2149372973, i64 2149372979, i64 2149373016, i64 2149373022, i64 2149373072, i64 2149373118, i64 2149373151}
!27 = !{i64 2149364854, i64 2149364901, i64 2149364907, i64 2149364944, i64 2149364962, i64 2149366303, i64 2149366351, i64 2149366399, i64 2149366462, i64 2149366511, i64 2149365040, i64 2149365065, i64 2149365091, i64 2149365097, i64 2149365969, i64 2149366009, i64 2149366027, i64 2149366059, i64 2149366087, i64 2149366141, i64 2149366161, i64 2149366258, i64 2149365120, i64 2149365134, i64 2149365140, i64 2149365190, i64 2149365236, i64 2149365269}
!28 = !{i64 2147929455, i64 2147929488, i64 2147929541, i64 2147929600, i64 2147929634, i64 2147929689, i64 2147929718, i64 2147929738}
!29 = !{i64 2149728355}
!30 = !{i64 2149376570, i64 2149376617, i64 2149376623, i64 2149376660, i64 2149376678, i64 2149377989, i64 2149378037, i64 2149378085, i64 2149378148, i64 2149378197, i64 2149376756, i64 2149376781, i64 2149376807, i64 2149376813, i64 2149377655, i64 2149377695, i64 2149377713, i64 2149377745, i64 2149377773, i64 2149377827, i64 2149377847, i64 2149377944, i64 2149376836, i64 2149376850, i64 2149376856, i64 2149376906, i64 2149376952, i64 2149376985}
!31 = !{i8 0, i8 2}
!32 = !{i64 2155868204}
!33 = !{i64 2149763518}
!34 = !{i64 2149788371}
!35 = !{i64 2155861829}
!36 = !{i64 2149355398, i64 2149355445, i64 2149355451, i64 2149355488, i64 2149355506, i64 2149356846, i64 2149356894, i64 2149356942, i64 2149357005, i64 2149357054, i64 2149355584, i64 2149355609, i64 2149355635, i64 2149355641, i64 2149356512, i64 2149356552, i64 2149356570, i64 2149356602, i64 2149356630, i64 2149356684, i64 2149356704, i64 2149356801, i64 2149355664, i64 2149355678, i64 2149355684, i64 2149355734, i64 2149355780, i64 2149355813}
