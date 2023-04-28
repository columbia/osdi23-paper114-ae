; ModuleID = 'fs/io-wq.c'
source_filename = "fs/io-wq.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_io_wq__464_1322_io_wq_init4:\09\09\09"
module asm ".long\09io_wq_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpumask = type { [4 x i64] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.workqueue_struct = type opaque
%struct.lock_class_key = type {}
%struct.io_wq_work = type { %struct.io_wq_work_node, i32 }
%struct.io_wq_work_node = type { %struct.io_wq_work_node* }
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
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.39 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.37, %struct.qspinlock }
%union.anon.37 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
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
%struct.io_worker = type { %struct.refcount_struct, i32, %struct.hlist_nulls_node, %struct.list_head, %struct.task_struct*, %struct.io_wqe*, %struct.io_wq_work*, %struct.spinlock, %struct.completion, i64, %struct.callback_head, i32, %union.anon.80 }
%struct.hlist_nulls_node = type { %struct.hlist_nulls_node*, %struct.hlist_nulls_node** }
%struct.io_wqe = type { %struct.raw_spinlock, [2 x %struct.io_wqe_acct], i32, %struct.hlist_nulls_head, %struct.list_head, %struct.wait_queue_entry, %struct.io_wq*, [64 x %struct.io_wq_work*], [1 x %struct.cpumask] }
%struct.io_wqe_acct = type { i32, i32, i32, %struct.atomic_t, %struct.io_wq_work_list, i64 }
%struct.io_wq_work_list = type { %struct.io_wq_work_node*, %struct.io_wq_work_node* }
%struct.hlist_nulls_head = type { %struct.hlist_nulls_node* }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.io_wq = type { i64, %struct.io_wq_work* (%struct.io_wq_work*)*, void (%struct.io_wq_work*)*, %struct.io_wq_hash*, %struct.atomic_t, %struct.completion, %struct.hlist_node, %struct.task_struct*, [0 x %struct.io_wqe*] }
%struct.io_wq_hash = type { %struct.refcount_struct, i64, %struct.wait_queue_head }
%union.anon.80 = type { %struct.work_struct }
%struct.io_cb_cancel_data = type { i1 (%struct.io_wq_work*, i8*)*, i8*, i32, i32, i8 }
%struct.io_wq_data = type { %struct.io_wq_hash*, %struct.task_struct*, void (%struct.io_wq_work*)*, %struct.io_wq_work* (%struct.io_wq_work*)* }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.online_data = type { i32, i8 }

@io_wq_online = internal unnamed_addr global i32 0, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable_io_wq_init465 = internal global i8* bitcast (i32 ()* @io_wq_init to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [11 x i8] c"iou-wrk-%d\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@io_wqe_create_worker.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\014io-wq is not configured for unbound workers\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@__const.io_wq_destroy.match = private unnamed_addr constant { i1 (%struct.io_wq_work*, i8*)*, i8*, i32, i32, i8, [7 x i8] } { i1 (%struct.io_wq_work*, i8*)* @io_wq_work_match_all, i8* null, i32 0, i32 0, i8 1, [7 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"io-wq/online\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_io_wq_init465 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @io_wq_worker_running(%struct.task_struct* nocapture noundef readonly %tsk) local_unnamed_addr #0 {
entry:
  %pf_io_worker = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 66
  %0 = bitcast i8** %pf_io_worker to %struct.io_worker**
  %1 = load %struct.io_worker*, %struct.io_worker** %0, align 64
  %tobool.not = icmp eq %struct.io_worker* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.io_worker, %struct.io_worker* %1, i64 0, i32 1
  %2 = load i32, i32* %flags, align 4
  %3 = and i32 %2, 3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  %or = or i32 %2, 2
  store i32 %or, i32* %flags, align 4
  call fastcc void @io_wqe_inc_running(%struct.io_worker* noundef nonnull %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_wqe_inc_running(%struct.io_worker* nocapture noundef readonly %worker) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.io_wqe_acct* @io_wqe_get_acct(%struct.io_worker* noundef %worker) #17
  %nr_running = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %nr_running) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @io_wq_worker_sleeping(%struct.task_struct* nocapture noundef readonly %tsk) local_unnamed_addr #0 {
entry:
  %pf_io_worker = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 66
  %0 = bitcast i8** %pf_io_worker to %struct.io_worker**
  %1 = load %struct.io_worker*, %struct.io_worker** %0, align 64
  %tobool.not = icmp eq %struct.io_worker* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.io_worker, %struct.io_worker* %1, i64 0, i32 1
  %2 = load i32, i32* %flags, align 4
  %3 = and i32 %2, 3
  %.not = icmp eq i32 %3, 3
  br i1 %.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  %and10 = and i32 %2, -3
  store i32 %and10, i32* %flags, align 4
  %wqe = getelementptr inbounds %struct.io_worker, %struct.io_worker* %1, i64 0, i32 5
  %4 = load %struct.io_wqe*, %struct.io_wqe** %wqe, align 8
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %4, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @io_wqe_dec_running(%struct.io_worker* noundef nonnull %1) #17
  %5 = load %struct.io_wqe*, %struct.io_wqe** %wqe, align 8
  %lock12 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %5, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock12) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !8
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_wqe_dec_running(%struct.io_worker* noundef %worker) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.io_wqe_acct* @io_wqe_get_acct(%struct.io_worker* noundef %worker) #17
  %wqe1 = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 5
  %0 = load %struct.io_wqe*, %struct.io_wqe** %wqe1, align 8
  %flags = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 1
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %nr_running = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %nr_running) #18
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call3 = call fastcc i1 @io_acct_run_queue(%struct.io_wqe_acct* noundef %call) #17
  br i1 %call3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %nr_running) #18
  %wq = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 6
  %2 = load %struct.io_wq*, %struct.io_wq** %wq, align 8
  %worker_refs = getelementptr inbounds %struct.io_wq, %struct.io_wq* %2, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %worker_refs) #18
  %call6 = call fastcc i1 @io_queue_worker_create(%struct.io_worker* noundef %worker, %struct.io_wqe_acct* noundef %call, void (%struct.callback_head*)* noundef nonnull @create_worker_cb) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then4, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @io_wq_enqueue(%struct.io_wq* nocapture noundef readonly %wq, %struct.io_wq_work* noundef %work) local_unnamed_addr #0 {
entry:
  call fastcc void @numa_node_id() #17
  %arrayidx = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 8, i64 0
  %0 = load %struct.io_wqe*, %struct.io_wqe** %arrayidx, align 8
  call fastcc void @io_wqe_enqueue(%struct.io_wqe* noundef %0, %struct.io_wq_work* noundef %work) #17
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #2 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_wqe_enqueue(%struct.io_wqe* noundef %wqe, %struct.io_wq_work* noundef %work) unnamed_addr #0 {
entry:
  %match = alloca %struct.io_cb_cancel_data, align 8
  %call = call fastcc %struct.io_wqe_acct* @io_work_get_acct(%struct.io_wqe* noundef %wqe, %struct.io_wq_work* noundef %work) #17
  %flags = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %work, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %wq = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 6
  %1 = load %struct.io_wq*, %struct.io_wq** %wq, align 8
  %state = getelementptr inbounds %struct.io_wq, %struct.io_wq* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %state, align 8
  %conv.i61 = and i64 %2, 1
  %tobool.not = icmp eq i64 %conv.i61, 0
  %and = and i32 %0, 1
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @io_run_cancel(%struct.io_wq_work* noundef %work, %struct.io_wqe* noundef %wqe) #17
  br label %cleanup33

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @io_wqe_insert_work(%struct.io_wqe* noundef %wqe, %struct.io_wq_work* noundef %work) #17
  %flags4 = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call, i64 0, i32 5
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %flags4) #17
  call fastcc void @__rcu_read_lock() #18
  %call5 = call fastcc i1 @io_wqe_activate_free_worker(%struct.io_wqe* noundef %wqe, %struct.io_wqe_acct* noundef %call) #17
  call fastcc void @rcu_read_unlock() #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  br i1 %call5, label %cleanup33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %and8 = and i32 %0, 16
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %if.then13

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %counter.i = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call, i64 0, i32 3, i32 0
  %3 = load volatile i32, i32* %counter.i, align 4
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %if.then13, label %cleanup33

if.then13:                                        ; preds = %lor.lhs.false10, %land.lhs.true
  %call14 = call fastcc i1 @io_wqe_create_worker(%struct.io_wqe* noundef %wqe, %struct.io_wqe_acct* noundef %call) #17
  br i1 %call14, label %cleanup33, label %if.end21, !prof !10

if.end21:                                         ; preds = %if.then13
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %nr_workers = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call, i64 0, i32 0
  %4 = load i32, i32* %nr_workers, align 8
  %tobool23.not = icmp eq i32 %4, 0
  br i1 %tobool23.not, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end21
  %5 = bitcast %struct.io_cb_cancel_data* %match to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #19
  %6 = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 4
  %7 = bitcast i8* %6 to i64*, !annotation !11
  store i64 0, i64* %7, align 8, !annotation !11
  %fn = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 0
  store i1 (%struct.io_wq_work*, i8*)* @io_wq_work_match_item, i1 (%struct.io_wq_work*, i8*)** %fn, align 8
  %data = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 1
  %8 = bitcast i8** %data to %struct.io_wq_work**
  store %struct.io_wq_work* %work, %struct.io_wq_work** %8, align 8
  %nr_running25 = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 2
  store i32 0, i32* %nr_running25, align 8
  %nr_pending = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 3
  store i32 0, i32* %nr_pending, align 4
  %call26 = call fastcc i1 @io_acct_cancel_pending_work(%struct.io_wqe* noundef %wqe, %struct.io_wqe_acct* noundef %call, %struct.io_cb_cancel_data* noundef nonnull %match) #17
  br i1 %call26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then24
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #19
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end21
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  br label %cleanup33

cleanup33:                                        ; preds = %if.end30, %if.then13, %if.end, %lor.lhs.false10, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @io_wq_hash_work(%struct.io_wq_work* nocapture noundef %work, i8* noundef %val) local_unnamed_addr #3 {
entry:
  %call = call fastcc i32 @hash_ptr(i8* noundef %val) #17
  %shl = shl i32 %call, 24
  %flags = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %work, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %or = or i32 %shl, %0
  %or1 = or i32 %or, 2
  store i32 %or1, i32* %flags, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @hash_ptr(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %mul.i = mul i64 %0, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 58
  %conv.i = trunc i64 %shr.i to i32
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @io_wq_cancel_cb(%struct.io_wq* nocapture noundef readonly %wq, i1 (%struct.io_wq_work*, i8*)* noundef %cancel, i8* noundef %data, i1 noundef %cancel_all) local_unnamed_addr #0 {
entry:
  %match = alloca %struct.io_cb_cancel_data, align 8
  %frombool = zext i1 %cancel_all to i8
  %0 = bitcast %struct.io_cb_cancel_data* %match to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #19
  %1 = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 4
  %2 = bitcast i8* %1 to i64*, !annotation !11
  store i64 0, i64* %2, align 8, !annotation !11
  %fn = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 0
  store i1 (%struct.io_wq_work*, i8*)* %cancel, i1 (%struct.io_wq_work*, i8*)** %fn, align 8
  %data1 = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 1
  store i8* %data, i8** %data1, align 8
  %nr_running = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 2
  store i32 0, i32* %nr_running, align 8
  %nr_pending = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 3
  store i32 0, i32* %nr_pending, align 4
  %cancel_all2 = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 4
  store i8 %frombool, i8* %cancel_all2, align 8
  %arrayidx = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 8, i64 0
  %3 = load %struct.io_wqe*, %struct.io_wqe** %arrayidx, align 8
  call fastcc void @io_wqe_cancel_pending_work(%struct.io_wqe* noundef %3, %struct.io_cb_cancel_data* noundef nonnull %match) #17
  %4 = load i32, i32* %nr_pending, align 4
  %tobool5.not = icmp ne i32 %4, 0
  %5 = load i8, i8* %cancel_all2, align 8
  %tobool7.not = icmp eq i8 %5, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %cleanup35, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %entry
  %6 = load %struct.io_wqe*, %struct.io_wqe** %arrayidx, align 8
  call fastcc void @io_wqe_cancel_running_work(%struct.io_wqe* noundef %6, %struct.io_cb_cancel_data* noundef nonnull %match) #17
  %7 = load i32, i32* %nr_running, align 8
  %tobool28.not = icmp eq i32 %7, 0
  br i1 %tobool28.not, label %if.end30, label %cleanup35

if.end30:                                         ; preds = %for.cond8.preheader
  %8 = load i32, i32* %nr_pending, align 4
  %tobool32.not = icmp eq i32 %8, 0
  %. = select i1 %tobool32.not, i32 2, i32 0
  br label %cleanup35

cleanup35:                                        ; preds = %for.cond8.preheader, %if.end30, %entry
  %retval.4 = phi i32 [ 0, %entry ], [ %., %if.end30 ], [ 1, %for.cond8.preheader ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #19
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_wqe_cancel_pending_work(%struct.io_wqe* noundef %wqe, %struct.io_cb_cancel_data* nocapture noundef %match) unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 0
  %cancel_all = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 4
  br label %retry

retry:                                            ; preds = %if.then, %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %call = call fastcc %struct.io_wqe_acct* @io_get_acct(%struct.io_wqe* noundef %wqe, i1 noundef true) #17
  %call2 = call fastcc i1 @io_acct_cancel_pending_work(%struct.io_wqe* noundef %wqe, %struct.io_wqe_acct* noundef %call, %struct.io_cb_cancel_data* noundef %match) #17
  br i1 %call2, label %if.then, label %for.cond

for.cond:                                         ; preds = %retry
  %call.1 = call fastcc %struct.io_wqe_acct* @io_get_acct(%struct.io_wqe* noundef %wqe, i1 noundef false) #17
  %call2.1 = call fastcc i1 @io_acct_cancel_pending_work(%struct.io_wqe* noundef %wqe, %struct.io_wqe_acct* noundef %call.1, %struct.io_cb_cancel_data* noundef %match) #17
  br i1 %call2.1, label %if.then, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  br label %cleanup6

if.then:                                          ; preds = %for.cond, %retry
  %0 = load i8, i8* %cancel_all, align 8, !range !12
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %cleanup6, label %retry

cleanup6:                                         ; preds = %if.then, %for.cond.1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_wqe_cancel_running_work(%struct.io_wqe* noundef %wqe, %struct.io_cb_cancel_data* noundef %match) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #18
  %0 = bitcast %struct.io_cb_cancel_data* %match to i8*
  call fastcc void @io_wq_for_each_worker(%struct.io_wqe* noundef %wqe, i1 (%struct.io_worker*, i8*)* noundef nonnull @io_wq_worker_cancel, i8* noundef %0) #17
  call fastcc void @rcu_read_unlock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.io_wq* @io_wq_create(i32 noundef %bounded, %struct.io_wq_data* nocapture noundef readonly %data) local_unnamed_addr #0 {
entry:
  %free_work = getelementptr inbounds %struct.io_wq_data, %struct.io_wq_data* %data, i64 0, i32 3
  %0 = load %struct.io_wq_work* (%struct.io_wq_work*)*, %struct.io_wq_work* (%struct.io_wq_work*)** %free_work, align 8
  %tobool.not = icmp eq %struct.io_wq_work* (%struct.io_wq_work*)* %0, null
  br i1 %tobool.not, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %do_work = getelementptr inbounds %struct.io_wq_data, %struct.io_wq_data* %data, i64 0, i32 2
  %1 = load void (%struct.io_wq_work*)*, void (%struct.io_wq_work*)** %do_work, align 8
  %tobool1.not = icmp eq void (%struct.io_wq_work*)* %1, null
  br i1 %tobool1.not, label %if.then, label %if.end19, !prof !13

if.then:                                          ; preds = %entry, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/io-wq.c\22; .popsection; .long 14472b - 14470b; .short 1060; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !14
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #17
  br label %cleanup133

if.end19:                                         ; preds = %lor.rhs
  %tobool21.not = icmp eq i32 %bounded, 0
  br i1 %tobool21.not, label %if.then36, label %if.end49, !prof !13

if.then36:                                        ; preds = %if.end19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/io-wq.c\22; .popsection; .long 14472b - 14470b; .short 1062; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !15
  %call48 = call fastcc i8* @ERR_PTR(i64 noundef -22) #17
  br label %cleanup133

if.end49:                                         ; preds = %if.end19
  %call50 = call fastcc i64 @__ab_c_size() #17
  %call51 = call fastcc i8* @kzalloc(i64 noundef %call50) #17
  %tobool52.not = icmp eq i8* %call51, null
  br i1 %tobool52.not, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end49
  %call54 = call fastcc i8* @ERR_PTR(i64 noundef -12) #17
  br label %cleanup133

if.end55:                                         ; preds = %if.end49
  %2 = load i32, i32* @io_wq_online, align 4
  %cpuhp_node = getelementptr inbounds i8, i8* %call51, i64 72
  %3 = bitcast i8* %cpuhp_node to %struct.hlist_node*
  %call56 = call fastcc i32 @cpuhp_state_add_instance_nocalls(i32 noundef %2, %struct.hlist_node* noundef %3) #17
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %err_wq

if.end59:                                         ; preds = %if.end55
  %hash = getelementptr inbounds %struct.io_wq_data, %struct.io_wq_data* %data, i64 0, i32 0
  %4 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash, align 8
  %refs = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %4, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refs) #17
  %5 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash, align 8
  %hash61 = getelementptr inbounds i8, i8* %call51, i64 24
  %6 = bitcast i8* %hash61 to %struct.io_wq_hash**
  store %struct.io_wq_hash* %5, %struct.io_wq_hash** %6, align 8
  %7 = load %struct.io_wq_work* (%struct.io_wq_work*)*, %struct.io_wq_work* (%struct.io_wq_work*)** %free_work, align 8
  %free_work63 = getelementptr inbounds i8, i8* %call51, i64 8
  %8 = bitcast i8* %free_work63 to %struct.io_wq_work* (%struct.io_wq_work*)**
  store %struct.io_wq_work* (%struct.io_wq_work*)* %7, %struct.io_wq_work* (%struct.io_wq_work*)** %8, align 8
  %9 = load void (%struct.io_wq_work*)*, void (%struct.io_wq_work*)** %do_work, align 8
  %do_work65 = getelementptr inbounds i8, i8* %call51, i64 16
  %10 = bitcast i8* %do_work65 to void (%struct.io_wq_work*)**
  store void (%struct.io_wq_work*)* %9, void (%struct.io_wq_work*)** %10, align 8
  %call71 = call fastcc i8* @kzalloc_node(i64 noundef 712) #17
  %tobool72.not = icmp eq i8* %call71, null
  br i1 %tobool72.not, label %err, label %if.end74

if.end74:                                         ; preds = %if.end59
  %cpu_mask = getelementptr inbounds i8, i8* %call71, i64 680
  %arraydecay = bitcast i8* %cpu_mask to %struct.cpumask*
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay, %struct.cpumask* noundef nonnull @__cpu_online_mask) #17
  %wqes = getelementptr inbounds i8, i8* %call51, i64 96
  %11 = bitcast i8* %wqes to i8**
  store i8* %call71, i8** %11, align 8
  %node79 = getelementptr inbounds i8, i8* %call71, i64 88
  %12 = bitcast i8* %node79 to i32*
  store i32 0, i32* %12, align 8
  %max_workers = getelementptr inbounds i8, i8* %call71, i64 12
  %13 = bitcast i8* %max_workers to i32*
  store i32 %bounded, i32* %13, align 4
  %14 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %15 = inttoptr i64 %14 to %struct.task_struct*
  %call82 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %15) #17
  %conv83 = trunc i64 %call82 to i32
  %max_workers86 = getelementptr i8, i8* %call71, i64 52
  %16 = bitcast i8* %max_workers86 to i32*
  store i32 %conv83, i32* %16, align 4
  %entry87 = getelementptr inbounds i8, i8* %call71, i64 144
  %17 = bitcast i8* %entry87 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %17) #17
  %func = getelementptr inbounds i8, i8* %call71, i64 136
  %18 = bitcast i8* %func to i32 (%struct.wait_queue_entry*, i32, i32, i8*)**
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @io_wqe_hash_wake, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %18, align 8
  %index = getelementptr i8, i8* %call71, i64 16
  %19 = bitcast i8* %index to i32*
  store i32 0, i32* %19, align 8
  %counter.i = getelementptr i8, i8* %call71, i64 20
  %20 = bitcast i8* %counter.i to i32*
  store volatile i32 0, i32* %20, align 4
  %first = getelementptr i8, i8* %call71, i64 24
  %21 = bitcast i8* %first to %struct.io_wq_work_node**
  store %struct.io_wq_work_node* null, %struct.io_wq_work_node** %21, align 8
  %last = getelementptr i8, i8* %call71, i64 32
  %22 = bitcast i8* %last to %struct.io_wq_work_node**
  store %struct.io_wq_work_node* null, %struct.io_wq_work_node** %22, align 8
  %index.1 = getelementptr i8, i8* %call71, i64 56
  %23 = bitcast i8* %index.1 to i32*
  store i32 1, i32* %23, align 8
  %counter.i.1 = getelementptr i8, i8* %call71, i64 60
  %24 = bitcast i8* %counter.i.1 to i32*
  store volatile i32 0, i32* %24, align 4
  %first.1 = getelementptr i8, i8* %call71, i64 64
  %25 = bitcast i8* %first.1 to %struct.io_wq_work_node**
  store %struct.io_wq_work_node* null, %struct.io_wq_work_node** %25, align 8
  %last.1 = getelementptr i8, i8* %call71, i64 72
  %26 = bitcast i8* %last.1 to %struct.io_wq_work_node**
  store %struct.io_wq_work_node* null, %struct.io_wq_work_node** %26, align 8
  %wq98 = getelementptr inbounds i8, i8* %call71, i64 160
  %27 = bitcast i8* %wq98 to i8**
  store i8* %call51, i8** %27, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %call71 to i32*
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %free_list = getelementptr inbounds i8, i8* %call71, i64 96
  %first102 = bitcast i8* %free_list to %struct.hlist_nulls_node**
  store %struct.hlist_nulls_node* inttoptr (i64 1 to %struct.hlist_nulls_node*), %struct.hlist_nulls_node** %first102, align 8
  %all_list = getelementptr inbounds i8, i8* %call71, i64 104
  %28 = bitcast i8* %all_list to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %28) #17
  %task = getelementptr inbounds %struct.io_wq_data, %struct.io_wq_data* %data, i64 0, i32 1
  %29 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call106 = call fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef %29) #17
  %task107 = getelementptr inbounds i8, i8* %call51, i64 88
  %30 = bitcast i8* %task107 to %struct.task_struct**
  store %struct.task_struct* %29, %struct.task_struct** %30, align 8
  %worker_refs = getelementptr inbounds i8, i8* %call51, i64 32
  %counter.i202 = bitcast i8* %worker_refs to i32*
  store volatile i32 1, i32* %counter.i202, align 4
  %worker_done = getelementptr inbounds i8, i8* %call51, i64 40
  %31 = bitcast i8* %worker_done to %struct.completion*
  call fastcc void @init_completion(%struct.completion* noundef %31) #17
  br label %cleanup133

err:                                              ; preds = %if.end59
  %32 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash, align 8
  call fastcc void @io_wq_put_hash(%struct.io_wq_hash* noundef %32) #17
  %33 = load i32, i32* @io_wq_online, align 4
  call fastcc void @cpuhp_state_remove_instance_nocalls(i32 noundef %33, %struct.hlist_node* noundef %3) #17
  %wqes115 = getelementptr inbounds i8, i8* %call51, i64 96
  %arrayidx117 = bitcast i8* %wqes115 to %struct.io_wqe**
  %34 = load %struct.io_wqe*, %struct.io_wqe** %arrayidx117, align 8
  %tobool118.not = icmp eq %struct.io_wqe* %34, null
  br i1 %tobool118.not, label %err_wq, label %if.end120

if.end120:                                        ; preds = %err
  %35 = bitcast %struct.io_wqe* %34 to i8*
  call void @kfree(i8* noundef nonnull %35) #18
  br label %err_wq

err_wq:                                           ; preds = %err, %if.end120, %if.end55
  %ret.0 = phi i32 [ %call56, %if.end55 ], [ -12, %if.end120 ], [ -12, %err ]
  call void @kfree(i8* noundef nonnull %call51) #18
  %conv131 = sext i32 %ret.0 to i64
  %call132 = call fastcc i8* @ERR_PTR(i64 noundef %conv131) #17
  br label %cleanup133

cleanup133:                                       ; preds = %err_wq, %if.end74, %if.then53, %if.then36, %if.then
  %retval.0.in = phi i8* [ %call, %if.then ], [ %call48, %if.then36 ], [ %call132, %err_wq ], [ %call51, %if.end74 ], [ %call54, %if.then53 ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.io_wq*
  ret %struct.io_wq* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #18
  ret i8* %call10.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ab_c_size() unnamed_addr #4 {
entry:
  ret i64 104
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_state_add_instance_nocalls(i32 noundef %state, %struct.hlist_node* noundef %node) unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_state_add_instance(i32 noundef %state, %struct.hlist_node* noundef %node, i1 noundef false) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc_node(i64 noundef %size) unnamed_addr #0 {
entry:
  %call.i.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #18
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_copy(%struct.cpumask* noundef %dstp, %struct.cpumask* noundef %srcp) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  %arraydecay2 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %srcp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_copy(i64* noundef %arraydecay, i64* noundef %arraydecay2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #6 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 6, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @io_wqe_hash_wake(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* nocapture noundef readnone %key) #0 {
entry:
  %add.ptr13 = getelementptr %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 -3
  %0 = bitcast %struct.wait_queue_entry* %add.ptr13 to %struct.io_wqe*
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  call fastcc void @list_del_init(%struct.list_head* noundef %entry1) #17
  call fastcc void @__rcu_read_lock() #18
  %acct2 = getelementptr %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 -3, i32 1
  %flags = getelementptr i8*, i8** %acct2, i64 4
  %1 = bitcast i8** %flags to i64*
  %call = call fastcc i1 @test_and_clear_bit(i64* noundef %1) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = bitcast i8** %acct2 to %struct.io_wqe_acct*
  %call3 = call fastcc i1 @io_wqe_activate_free_worker(%struct.io_wqe* noundef %0, %struct.io_wqe_acct* noundef %arrayidx) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %flags.1 = getelementptr i8*, i8** %acct2, i64 9
  %2 = bitcast i8** %flags.1 to i64*
  %call.1 = call fastcc i1 @test_and_clear_bit(i64* noundef %2) #17
  br i1 %call.1, label %if.then.1, label %if.end.1

if.then.1:                                        ; preds = %if.end
  %arrayidx.1 = getelementptr i8*, i8** %acct2, i64 5
  %3 = bitcast i8** %arrayidx.1 to %struct.io_wqe_acct*
  %call3.1 = call fastcc i1 @io_wqe_activate_free_worker(%struct.io_wqe* noundef %0, %struct.io_wqe_acct* noundef %3) #17
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end
  call fastcc void @rcu_read_unlock() #17
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @get_task_struct(%struct.task_struct* noundef returned %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #17
  ret %struct.task_struct* %t
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #0 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_wq_put_hash(%struct.io_wq_hash* noundef %hash) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %hash, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refs) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.io_wq_hash* %hash to i8*
  call void @kfree(i8* noundef %0) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpuhp_state_remove_instance_nocalls(i32 noundef %state, %struct.hlist_node* noundef %node) unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_state_remove_instance(i32 noundef %state, %struct.hlist_node* noundef %node, i1 noundef false) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @io_wq_exit_start(%struct.io_wq* noundef %wq) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %state) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @io_wq_put_and_exit(%struct.io_wq* noundef %wq) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 0
  %0 = load volatile i64, i64* %state, align 8
  %conv.i20 = and i64 %0, 1
  %tobool.not = icmp eq i64 %conv.i20, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/io-wq.c\22; .popsection; .long 14472b - 14470b; .short 1207; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #19, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @io_wq_exit_workers(%struct.io_wq* noundef %wq) #17
  call fastcc void @io_wq_destroy(%struct.io_wq* noundef %wq) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_wq_exit_workers(%struct.io_wq* noundef %wq) unnamed_addr #0 {
entry:
  %task = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 7
  %0 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %tobool.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %1 = bitcast %struct.io_wq* %wq to i8*
  %call52 = call %struct.callback_head* @task_work_cancel_match(%struct.task_struct* noundef nonnull %0, i1 (%struct.callback_head*, i8*)* noundef nonnull @io_task_work_match, i8* noundef %1) #18
  %cmp.not53 = icmp eq %struct.callback_head* %call52, null
  br i1 %cmp.not53, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call54 = phi %struct.callback_head* [ %call, %while.body ], [ %call52, %while.cond.preheader ]
  %add.ptr50 = getelementptr %struct.callback_head, %struct.callback_head* %call54, i64 -7
  %2 = bitcast %struct.callback_head* %add.ptr50 to %struct.io_worker*
  %call2 = call fastcc %struct.io_wqe_acct* @io_wqe_get_acct(%struct.io_worker* noundef %2) #17
  %nr_running = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call2, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %nr_running) #18
  %wqe = getelementptr %struct.callback_head, %struct.callback_head* %call54, i64 -4
  %3 = bitcast %struct.callback_head* %wqe to %struct.io_wqe**
  %4 = load %struct.io_wqe*, %struct.io_wqe** %3, align 8
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %4, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %nr_workers = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call2, i64 0, i32 0
  %5 = load i32, i32* %nr_workers, align 8
  %dec = add i32 %5, -1
  store i32 %dec, i32* %nr_workers, align 8
  %6 = load %struct.io_wqe*, %struct.io_wqe** %3, align 8
  %lock4 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %6, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock4) #17
  call fastcc void @io_worker_ref_put(%struct.io_wq* noundef %wq) #17
  %create_state = getelementptr %struct.callback_head, %struct.callback_head* %call54, i64 -1, i32 1
  %7 = bitcast void (%struct.callback_head*)** %create_state to i64*
  call fastcc void @clear_bit_unlock(i64* noundef %7) #17
  call fastcc void @io_worker_release(%struct.io_worker* noundef %2) #17
  %8 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call = call %struct.callback_head* @task_work_cancel_match(%struct.task_struct* noundef %8, i1 (%struct.callback_head*, i8*)* noundef nonnull @io_task_work_match, i8* noundef %1) #18
  %cmp.not = icmp eq %struct.callback_head* %call, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  call fastcc void @__rcu_read_lock() #18
  %arrayidx = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 8, i64 0
  %9 = load %struct.io_wqe*, %struct.io_wqe** %arrayidx, align 8
  call fastcc void @io_wq_for_each_worker(%struct.io_wqe* noundef %9, i1 (%struct.io_worker*, i8*)* noundef nonnull @io_wq_worker_wake, i8* noundef null) #17
  call fastcc void @rcu_read_unlock() #17
  call fastcc void @io_worker_ref_put(%struct.io_wq* noundef %wq) #17
  %worker_done = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 5
  call void @wait_for_completion(%struct.completion* noundef %worker_done) #18
  %hash = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 3
  %10 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash, align 8
  %rlock.i = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %10, i64 0, i32 2, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #18
  %11 = load %struct.io_wqe*, %struct.io_wqe** %arrayidx, align 8
  %entry16 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %11, i64 0, i32 5, i32 3
  call fastcc void @list_del_init(%struct.list_head* noundef %entry16) #17
  %12 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash, align 8
  %rlock.i51 = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %12, i64 0, i32 2, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i51) #18
  %13 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  call fastcc void @put_task_struct(%struct.task_struct* noundef %13) #17
  store %struct.task_struct* null, %struct.task_struct** %task, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_wq_destroy(%struct.io_wq* noundef %wq) unnamed_addr #0 {
entry:
  %match = alloca %struct.io_cb_cancel_data, align 8
  %0 = load i32, i32* @io_wq_online, align 4
  %cpuhp_node = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 6
  call fastcc void @cpuhp_state_remove_instance_nocalls(i32 noundef %0, %struct.hlist_node* noundef %cpuhp_node) #17
  %arrayidx = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 8, i64 0
  %1 = load %struct.io_wqe*, %struct.io_wqe** %arrayidx, align 8
  %2 = bitcast %struct.io_cb_cancel_data* %match to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #19
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef align 8 dereferenceable(32) bitcast ({ i1 (%struct.io_wq_work*, i8*)*, i8*, i32, i32, i8, [7 x i8] }* @__const.io_wq_destroy.match to i8*), i64 32, i1 false)
  call fastcc void @io_wqe_cancel_pending_work(%struct.io_wqe* noundef %1, %struct.io_cb_cancel_data* noundef nonnull %match) #17
  %3 = bitcast %struct.io_wqe* %1 to i8*
  call void @kfree(i8* noundef %3) #18
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #19
  %hash = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 3
  %4 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash, align 8
  call fastcc void @io_wq_put_hash(%struct.io_wq_hash* noundef %4) #17
  %5 = bitcast %struct.io_wq* %wq to i8*
  call void @kfree(i8* noundef %5) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @io_wq_cpu_affinity(%struct.io_wq* nocapture noundef readonly %wq, %struct.cpumask* noundef %mask) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #18
  %arrayidx = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 8, i64 0
  %0 = load %struct.io_wqe*, %struct.io_wqe** %arrayidx, align 8
  %tobool.not = icmp eq %struct.cpumask* %mask, null
  %arraydecay2 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 8, i64 0
  %__cpu_online_mask.mask = select i1 %tobool.not, %struct.cpumask* @__cpu_online_mask, %struct.cpumask* %mask
  call fastcc void @cpumask_copy(%struct.cpumask* noundef %arraydecay2, %struct.cpumask* noundef nonnull %__cpu_online_mask.mask) #17
  call fastcc void @rcu_read_unlock() #17
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @io_wq_max_workers(%struct.io_wq* nocapture noundef readonly %wq, i32* nocapture noundef %new_count) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = load i32, i32* %new_count, align 4
  %conv = sext i32 %2 to i64
  %call7 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #17
  %cmp8 = icmp ult i64 %call7, %conv
  br i1 %cmp8, label %if.then, label %for.inc

if.then:                                          ; preds = %entry
  %call11 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #17
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, i32* %new_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %arrayidx.1 = getelementptr i32, i32* %new_count, i64 1
  %3 = load i32, i32* %arrayidx.1, align 4
  %conv.1 = sext i32 %3 to i64
  %call7.1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #17
  %cmp8.1 = icmp ult i64 %call7.1, %conv.1
  br i1 %cmp8.1, label %if.then.1, label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %call11.1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #17
  %conv12.1 = trunc i64 %call11.1 to i32
  store i32 %conv12.1, i32* %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  call fastcc void @__rcu_read_lock() #18
  %arrayidx20 = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 8, i64 0
  %4 = load %struct.io_wqe*, %struct.io_wqe** %arrayidx20, align 8
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %4, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %max_workers = getelementptr %struct.io_wqe, %struct.io_wqe* %4, i64 0, i32 1, i64 0, i32 1
  %5 = load i32, i32* %max_workers, align 4
  %cmp28 = icmp sgt i32 %5, 0
  %cond = select i1 %cmp28, i32 %5, i32 0
  %6 = load i32, i32* %new_count, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end36, label %if.then32

if.then32:                                        ; preds = %for.inc.1
  store i32 %6, i32* %max_workers, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %for.inc.1
  store i32 %cond, i32* %new_count, align 4
  %max_workers.1 = getelementptr %struct.io_wqe, %struct.io_wqe* %4, i64 0, i32 1, i64 1, i32 1
  %7 = load i32, i32* %max_workers.1, align 4
  %8 = load i32, i32* %arrayidx.1, align 4
  %tobool.not.1 = icmp eq i32 %8, 0
  br i1 %tobool.not.1, label %if.end36.1, label %if.then32.1

if.then32.1:                                      ; preds = %if.end36
  store i32 %8, i32* %max_workers.1, align 4
  br label %if.end36.1

if.end36.1:                                       ; preds = %if.then32.1, %if.end36
  %cmp28.1 = icmp sgt i32 %7, %cond
  %cond.1 = select i1 %cmp28.1, i32 %7, i32 %cond
  store i32 %cond.1, i32* %arrayidx.1, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @rcu_read_unlock() #17
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @io_wq_init() #10 section ".init.text" {
entry:
  %call = call fastcc i32 @cpuhp_setup_state_multi() #17
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i32 %call, i32* @io_wq_online, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.io_wqe_acct* @io_wqe_get_acct(%struct.io_worker* nocapture noundef readonly %worker) unnamed_addr #11 {
entry:
  %wqe = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 5
  %0 = load %struct.io_wqe*, %struct.io_wqe** %wqe, align 8
  %flags = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 1
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 8
  %tobool = icmp ne i32 %and, 0
  %call = call fastcc %struct.io_wqe_acct* @io_get_acct(%struct.io_wqe* noundef %0, i1 noundef %tobool) #17
  ret %struct.io_wqe_acct* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.io_wqe_acct* @io_get_acct(%struct.io_wqe* noundef readnone %wqe, i1 noundef %bound) unnamed_addr #4 {
entry:
  %not.bound = xor i1 %bound, true
  %0 = zext i1 %not.bound to i64
  %arrayidx = getelementptr %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 1, i64 %0
  ret %struct.io_wqe_acct* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #18
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #18
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #19, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @io_acct_run_queue(%struct.io_wqe_acct* noundef %acct) unnamed_addr #6 {
entry:
  %first = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 4, i32 0
  %0 = load volatile %struct.io_wq_work_node*, %struct.io_wq_work_node** %first, align 8
  %cmp = icmp eq %struct.io_wq_work_node* %0, null
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 5
  %1 = load volatile i64, i64* %flags, align 8
  %conv.i2 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @io_queue_worker_create(%struct.io_worker* noundef %worker, %struct.io_wqe_acct* noundef %acct, void (%struct.callback_head*)* noundef %func) unnamed_addr #0 {
entry:
  %wqe1 = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 5
  %0 = load %struct.io_wqe*, %struct.io_wqe** %wqe1, align 8
  %wq2 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 6
  %1 = load %struct.io_wq*, %struct.io_wq** %wq2, align 8
  %state = getelementptr inbounds %struct.io_wq, %struct.io_wq* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %state, align 8
  %conv.i33 = and i64 %2, 1
  %tobool.not = icmp eq i64 %conv.i33, 0
  br i1 %tobool.not, label %if.end, label %fail

if.end:                                           ; preds = %entry
  %call3 = call fastcc i1 @io_worker_get(%struct.io_worker* noundef %worker) #17
  br i1 %call3, label %if.end5, label %fail

if.end5:                                          ; preds = %if.end
  %create_state = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 9
  %3 = load volatile i64, i64* %create_state, align 8
  %conv.i3234 = and i64 %3, 1
  %tobool7.not = icmp eq i64 %conv.i3234, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %fail_release

lor.lhs.false:                                    ; preds = %if.end5
  %call9 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %create_state) #17
  br i1 %call9, label %fail_release, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false
  %create_work = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 10
  call fastcc void @init_task_work(%struct.callback_head* noundef %create_work, void (%struct.callback_head*)* noundef %func) #17
  %index = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 2
  %4 = load i32, i32* %index, align 8
  %create_index = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 11
  store i32 %4, i32* %create_index, align 8
  %task = getelementptr inbounds %struct.io_wq, %struct.io_wq* %1, i64 0, i32 7
  %5 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call13 = call i32 @task_work_add(%struct.task_struct* noundef %5, %struct.callback_head* noundef %create_work, i32 noundef 2) #18
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end11
  call fastcc void @clear_bit_unlock(i64* noundef %create_state) #17
  br label %fail_release

fail_release:                                     ; preds = %if.end5, %lor.lhs.false, %if.end16
  call fastcc void @io_worker_release(%struct.io_worker* noundef %worker) #17
  br label %fail

fail:                                             ; preds = %if.end, %entry, %fail_release
  %nr_running = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %nr_running) #18
  call fastcc void @io_worker_ref_put(%struct.io_wq* noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %fail
  %retval.0 = phi i1 [ false, %fail ], [ true, %if.end11 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @create_worker_cb(%struct.callback_head* noundef %cb) #0 {
entry:
  %wqe1 = getelementptr %struct.callback_head, %struct.callback_head* %cb, i64 -4
  %0 = bitcast %struct.callback_head* %wqe1 to %struct.io_wqe**
  %1 = load %struct.io_wqe*, %struct.io_wqe** %0, align 8
  %wq2 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %1, i64 0, i32 6
  %2 = load %struct.io_wq*, %struct.io_wq** %wq2, align 8
  %create_index = getelementptr %struct.callback_head, %struct.callback_head* %cb, i64 1
  %3 = bitcast %struct.callback_head* %create_index to i32*
  %4 = load i32, i32* %3, align 8
  %idxprom = sext i32 %4 to i64
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %1, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %nr_workers = getelementptr %struct.io_wqe, %struct.io_wqe* %1, i64 0, i32 1, i64 %idxprom, i32 0
  %5 = load i32, i32* %nr_workers, align 8
  %max_workers = getelementptr %struct.io_wqe, %struct.io_wqe* %1, i64 0, i32 1, i64 %idxprom, i32 1
  %6 = load i32, i32* %max_workers, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %if.then, label %if.else.critedge

if.then:                                          ; preds = %entry
  %inc = add nuw i32 %5, 1
  store i32 %inc, i32* %nr_workers, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  %7 = load i32, i32* %3, align 8
  %call = call fastcc i1 @create_io_worker(%struct.io_wq* noundef %2, %struct.io_wqe* noundef %1, i32 noundef %7) #17
  br label %if.end8

if.else.critedge:                                 ; preds = %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  %nr_running = getelementptr %struct.io_wqe, %struct.io_wqe* %1, i64 0, i32 1, i64 %idxprom, i32 3
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %nr_running) #18
  call fastcc void @io_worker_ref_put(%struct.io_wq* noundef %2) #17
  br label %if.end8

if.end8:                                          ; preds = %if.else.critedge, %if.then
  %add.ptr26 = getelementptr %struct.callback_head, %struct.callback_head* %cb, i64 -7
  %8 = bitcast %struct.callback_head* %add.ptr26 to %struct.io_worker*
  %create_state = getelementptr %struct.callback_head, %struct.callback_head* %cb, i64 -1, i32 1
  %9 = bitcast void (%struct.callback_head*)** %create_state to i64*
  call fastcc void @clear_bit_unlock(i64* noundef %9) #17
  call fastcc void @io_worker_release(%struct.io_worker* noundef %8) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !20
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @io_worker_get(%struct.io_worker* noundef %worker) unnamed_addr #0 {
entry:
  %ref = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 0
  %call = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %ref) #17
  ret i1 %call
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
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #18
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_task_work(%struct.callback_head* nocapture noundef writeonly %twork, void (%struct.callback_head*)* noundef %func) unnamed_addr #12 {
entry:
  %func1 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %twork, i64 0, i32 1
  store void (%struct.callback_head*)* %func, void (%struct.callback_head*)** %func1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(%struct.task_struct* noundef, %struct.callback_head* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit_unlock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_fetch_andnot_release(%struct.atomic64_t* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_worker_release(%struct.io_worker* noundef %worker) unnamed_addr #0 {
entry:
  %ref = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %ref) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ref_done = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 8
  call void @complete(%struct.completion* noundef %ref_done) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_worker_ref_put(%struct.io_wq* noundef %wq) unnamed_addr #0 {
entry:
  %worker_refs = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 4
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %worker_refs) #18
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %worker_done = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 5
  call void @complete(%struct.completion* noundef %worker_done) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) #17
  %tobool.old.not = icmp eq i32 %call, 0
  br i1 %tobool.old.not, label %if.end4, label %do.cond.preheader

do.cond.preheader:                                ; preds = %entry
  %0 = bitcast %struct.refcount_struct* %r to i8*
  br label %do.cond

do.cond:                                          ; preds = %do.cond.preheader, %atomic_try_cmpxchg_relaxed.exit
  %old.0 = phi i32 [ %call11.i.i.i, %atomic_try_cmpxchg_relaxed.exit ], [ %call, %do.cond.preheader ]
  %add = add i32 %old.0, 1
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %old.0, i32 noundef %add) #18
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %if.end4, label %atomic_try_cmpxchg_relaxed.exit, !prof !10

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond
  %tobool = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool, label %if.end4, label %do.cond

if.end4:                                          ; preds = %do.cond, %atomic_try_cmpxchg_relaxed.exit, %entry
  %old.2 = phi i32 [ 0, %entry ], [ %old.0, %do.cond ], [ 0, %atomic_try_cmpxchg_relaxed.exit ]
  %add5 = add i32 %old.2, 1
  %1 = or i32 %add5, %old.2
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end11, label %if.then10, !prof !10

if.then10:                                        ; preds = %if.end4
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 0) #18
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4
  %tobool12 = icmp ne i32 %old.2, 0
  ret i1 %tobool12
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #6 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #19, !srcloc !21
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #19, !srcloc !22
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_fetch_andnot_release(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #19, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #17
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #18
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #19, !srcloc !24
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !10

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !25
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @create_io_worker(%struct.io_wq* noundef %wq, %struct.io_wqe* noundef %wqe, i32 noundef %index) unnamed_addr #0 {
entry:
  %idxprom = sext i32 %index to i64
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  %node = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 2
  %call14 = call fastcc i8* @kzalloc_node(i64 noundef 168) #17
  %2 = bitcast i8* %call14 to %struct.io_worker*
  %tobool.not = icmp eq i8* %call14, null
  br i1 %tobool.not, label %fail, label %if.end

fail:                                             ; preds = %entry, %if.then31
  %nr_running = getelementptr %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 1, i64 %idxprom, i32 3
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %nr_running) #18
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %nr_workers = getelementptr %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 1, i64 %idxprom, i32 0
  %3 = load i32, i32* %nr_workers, align 8
  %dec = add i32 %3, -1
  store i32 %dec, i32* %nr_workers, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @io_worker_ref_put(%struct.io_wq* noundef %wq) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref = bitcast i8* %call14 to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef nonnull %ref) #17
  %wqe16 = getelementptr inbounds i8, i8* %call14, i64 48
  %4 = bitcast i8* %wqe16 to %struct.io_wqe**
  store %struct.io_wqe* %wqe, %struct.io_wqe** %4, align 8
  %lock18 = getelementptr inbounds i8, i8* %call14, i64 64
  %5 = bitcast i8* %lock18 to i32*
  store i32 0, i32* %5, align 8
  %ref_done = getelementptr inbounds i8, i8* %call14, i64 72
  %6 = bitcast i8* %ref_done to %struct.completion*
  call fastcc void @init_completion(%struct.completion* noundef %6) #17
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end
  %flags = getelementptr inbounds i8, i8* %call14, i64 4
  %7 = bitcast i8* %flags to i32*
  %8 = load i32, i32* %7, align 4
  %or = or i32 %8, 8
  store i32 %or, i32* %7, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end
  %9 = load i32, i32* %node, align 8
  %call26 = call %struct.task_struct* @create_io_thread(i32 (i8*)* noundef nonnull @io_wqe_worker, i8* noundef nonnull %call14, i32 noundef %9) #18
  %10 = bitcast %struct.task_struct* %call26 to i8*
  %call27 = call fastcc i1 @IS_ERR(i8* noundef %10) #17
  br i1 %call27, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end24
  call fastcc void @io_init_new_worker(%struct.io_wqe* noundef %wqe, %struct.io_worker* noundef nonnull %2, %struct.task_struct* noundef %call26) #17
  br label %cleanup

if.else:                                          ; preds = %if.end24
  %call29 = call fastcc i64 @PTR_ERR(i8* noundef %10) #17
  %call30 = call fastcc i1 @io_should_retry_thread(i64 noundef %call29) #17
  br i1 %call30, label %do.body33, label %if.then31

if.then31:                                        ; preds = %if.else
  call void @kfree(i8* noundef nonnull %call14) #18
  br label %fail

do.body33:                                        ; preds = %if.else
  %11 = getelementptr inbounds i8, i8* %call14, i64 136
  %work = bitcast i8* %11 to %struct.work_struct*
  %.compoundliteral35.sroa.0.0..sroa_idx = bitcast i8* %11 to i64*
  store i64 68719476704, i64* %.compoundliteral35.sroa.0.0..sroa_idx, align 8
  %entry38 = getelementptr inbounds i8, i8* %call14, i64 144
  %12 = bitcast i8* %entry38 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %12) #17
  %func = getelementptr inbounds i8, i8* %call14, i64 160
  %13 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @io_workqueue_create, void (%struct.work_struct*)** %13, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef %work) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body33, %fail
  %retval.0 = phi i1 [ false, %fail ], [ true, %do.body33 ], [ true, %if.then28 ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @create_io_thread(i32 (i8*)* noundef, i8* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal i32 @io_wqe_worker(i8* noundef %data) #13 {
entry:
  %buf = alloca [16 x i8], align 1
  %ksig = alloca %struct.ksignal, align 8
  %0 = bitcast i8* %data to %struct.io_worker*
  %call = call fastcc %struct.io_wqe_acct* @io_wqe_get_acct(%struct.io_worker* noundef %0) #17
  %wqe1 = getelementptr inbounds i8, i8* %data, i64 48
  %1 = bitcast i8* %wqe1 to %struct.io_wqe**
  %2 = load %struct.io_wqe*, %struct.io_wqe** %1, align 8
  %wq2 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %2, i64 0, i32 6
  %3 = load %struct.io_wq*, %struct.io_wq** %wq2, align 8
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !11
  %flags = getelementptr inbounds i8, i8* %data, i64 4
  %5 = bitcast i8* %flags to i32*
  %6 = load i32, i32* %5, align 4
  %or = or i32 %6, 3
  store i32 %or, i32* %5, align 4
  %task = getelementptr inbounds %struct.io_wq, %struct.io_wq* %3, i64 0, i32 7
  %7 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 50
  %8 = load i32, i32* %pid, align 32
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %4, i64 noundef 16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %8) #18
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %10 = inttoptr i64 %9 to %struct.task_struct*
  call fastcc void @set_task_comm(%struct.task_struct* noundef %10, i8* noundef nonnull %4) #17
  %state = getelementptr inbounds %struct.io_wq, %struct.io_wq* %3, i64 0, i32 0
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i64 0, i32 1
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %2, i64 0, i32 0
  %nr_workers = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call, i64 0, i32 0
  %11 = bitcast %struct.ksignal* %ksig to i8*
  %12 = load volatile i64, i64* %state, align 8
  %conv.i101111 = and i64 %12, 1
  %tobool.not112 = icmp eq i64 %conv.i101111, 0
  br i1 %tobool.not112, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %cleanup61
  %last_timeout.0.off0113 = phi i1 [ %last_timeout.1.off0, %cleanup61 ], [ false, %entry ]
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !27
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %call23105 = call fastcc i1 @io_acct_run_queue(%struct.io_wqe_acct* noundef %call) #17
  br i1 %call23105, label %if.then, label %if.end

if.then:                                          ; preds = %while.body, %if.then
  call fastcc void @io_worker_handle_work(%struct.io_worker* noundef %0) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %call23 = call fastcc i1 @io_acct_run_queue(%struct.io_wqe_acct* noundef %call) #17
  br i1 %call23, label %if.then, label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br i1 %last_timeout.0.off0113, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* %nr_workers, align 8
  %cmp = icmp ugt i32 %13, 1
  br i1 %cmp, label %cleanup61.thread, label %if.end45

cleanup61.thread:                                 ; preds = %land.lhs.true
  %dec = add i32 %13, -1
  store i32 %dec, i32* %nr_workers, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  store volatile i32 0, i32* %__state, align 16
  br label %while.end

if.end45:                                         ; preds = %land.lhs.true, %if.end
  call fastcc void @__io_worker_idle(%struct.io_wqe* noundef %2, %struct.io_worker* noundef %0) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  %call47 = call fastcc i1 @io_flush_signals() #17
  br i1 %call47, label %cleanup61, label %if.end49

if.end49:                                         ; preds = %if.end45
  %call50 = call i64 @schedule_timeout(i64 noundef 1250) #18
  %call52 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %10) #17
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end58, label %if.then54

if.then54:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %11) #19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %11, i8 0, i64 88, i1 false), !annotation !11
  %call55 = call i1 @get_signal(%struct.ksignal* noundef nonnull %ksig) #18
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %11) #19
  br i1 %call55, label %while.end, label %cleanup61

if.end58:                                         ; preds = %if.end49
  %tobool59.not = icmp eq i64 %call50, 0
  br label %cleanup61

cleanup61:                                        ; preds = %if.then54, %if.end45, %if.end58
  %last_timeout.1.off0 = phi i1 [ false, %if.then54 ], [ %tobool59.not, %if.end58 ], [ false, %if.end45 ]
  %14 = load volatile i64, i64* %state, align 8
  %conv.i101 = and i64 %14, 1
  %tobool.not = icmp eq i64 %conv.i101, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup61, %if.then54, %entry, %cleanup61.thread
  %15 = load volatile i64, i64* %state, align 8
  %conv.i96102 = and i64 %15, 1
  %tobool64.not = icmp eq i64 %conv.i96102, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %while.end
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @io_worker_handle_work(%struct.io_worker* noundef %0) #17
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %while.end
  call fastcc void @io_worker_exit(%struct.io_worker* noundef %0) #17
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_init_new_worker(%struct.io_wqe* noundef %wqe, %struct.io_worker* noundef %worker, %struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %pf_io_worker = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 66
  %0 = bitcast i8** %pf_io_worker to %struct.io_worker**
  store %struct.io_worker* %worker, %struct.io_worker** %0, align 64
  %task = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 4
  store %struct.task_struct* %tsk, %struct.task_struct** %task, align 8
  %arraydecay = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 8, i64 0
  %call = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %tsk, %struct.cpumask* noundef %arraydecay) #18
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %or = or i32 %1, 67108864
  store i32 %or, i32* %flags, align 4
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %nulls_node = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 2
  %free_list = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 3
  call fastcc void @hlist_nulls_add_head_rcu(%struct.hlist_nulls_node* noundef %nulls_node, %struct.hlist_nulls_head* noundef %free_list) #17
  %all_list = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 3
  %all_list1 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 4
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %all_list, %struct.list_head* noundef %all_list1) #17
  %flags2 = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 1
  %2 = load i32, i32* %flags2, align 4
  %or3 = or i32 %2, 4
  store i32 %or3, i32* %flags2, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call void @wake_up_new_task(%struct.task_struct* noundef %tsk) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @io_should_retry_thread(i64 noundef %err) unnamed_addr #4 {
entry:
  switch i64 %err, label %sw.default [
    i64 -11, label %return
    i64 -512, label %return
    i64 -513, label %return
    i64 -514, label %return
  ]

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @io_workqueue_create(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -5, i32 2
  %0 = bitcast void (%struct.work_struct*)** %add.ptr to %struct.io_worker*
  %call = call fastcc %struct.io_wqe_acct* @io_wqe_get_acct(%struct.io_worker* noundef %0) #17
  %call1 = call fastcc i1 @io_queue_worker_create(%struct.io_worker* noundef %0, %struct.io_wqe_acct* noundef %call, void (%struct.callback_head*)* noundef nonnull @create_worker_cont) #17
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast void (%struct.work_struct*)** %add.ptr to i8*
  %create_state = getelementptr inbounds void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 13
  %2 = bitcast void (%struct.work_struct*)** %create_state to i64*
  call fastcc void @clear_bit_unlock(i64* noundef %2) #17
  call fastcc void @io_worker_release(%struct.io_worker* noundef %0) #17
  call void @kfree(i8* noundef %1) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_task_comm(%struct.task_struct* noundef %tsk, i8* noundef %from) unnamed_addr #0 {
entry:
  call void @__set_task_comm(%struct.task_struct* noundef %tsk, i8* noundef %from, i1 noundef false) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_worker_handle_work(%struct.io_worker* noundef %worker) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.io_wqe_acct* @io_wqe_get_acct(%struct.io_worker* noundef %worker) #17
  %wqe1 = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 5
  %0 = load %struct.io_wqe*, %struct.io_wqe** %wqe1, align 8
  %wq2 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 6
  %1 = load %struct.io_wq*, %struct.io_wq** %wq2, align 8
  %state = getelementptr inbounds %struct.io_wq, %struct.io_wq* %1, i64 0, i32 0
  %2 = load volatile i64, i64* %state, align 8
  %conv.i137 = and i64 %2, 1
  %tobool.not = icmp eq i64 %conv.i137, 0
  %call4138141 = call fastcc %struct.io_wq_work* @io_get_next_work(%struct.io_wqe_acct* noundef %call, %struct.io_worker* noundef %worker) #17
  %tobool5.not139142 = icmp eq %struct.io_wq_work* %call4138141, null
  br i1 %tobool5.not139142, label %do.end73, label %if.end8.lr.ph.lr.ph

if.end8.lr.ph.lr.ph:                              ; preds = %entry
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 0
  %do_work = getelementptr inbounds %struct.io_wq, %struct.io_wq* %1, i64 0, i32 2
  %free_work = getelementptr inbounds %struct.io_wq, %struct.io_wq* %1, i64 0, i32 1
  %hash49 = getelementptr inbounds %struct.io_wq, %struct.io_wq* %1, i64 0, i32 3
  %flags50 = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call, i64 0, i32 5
  br label %if.end8

get_next.loopexit:                                ; preds = %if.end56
  %call4 = call fastcc %struct.io_wq_work* @io_get_next_work(%struct.io_wqe_acct* noundef %call, %struct.io_worker* noundef %worker) #17
  %tobool5.not = icmp eq %struct.io_wq_work* %call4, null
  br i1 %tobool5.not, label %do.end73, label %if.end8.backedge

if.end8.backedge:                                 ; preds = %get_next.loopexit, %cleanup69
  %call4140.be = phi %struct.io_wq_work* [ %call4, %get_next.loopexit ], [ %call4138, %cleanup69 ]
  br label %if.end8

if.end8:                                          ; preds = %if.end8.backedge, %if.end8.lr.ph.lr.ph
  %call4140 = phi %struct.io_wq_work* [ %call4138141, %if.end8.lr.ph.lr.ph ], [ %call4140.be, %if.end8.backedge ]
  call fastcc void @__io_worker_busy(%struct.io_worker* noundef %worker) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @io_assign_current_work(%struct.io_worker* noundef %worker, %struct.io_wq_work* noundef nonnull %call4140) #17
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  br label %do.body23

do.body23:                                        ; preds = %do.cond65, %if.end8
  %work.0 = phi %struct.io_wq_work* [ %call4140, %if.end8 ], [ %work.1126, %do.cond65 ]
  %call24 = call fastcc i32 @io_get_work_hash(%struct.io_wq_work* noundef nonnull %work.0) #17
  %call25 = call fastcc %struct.io_wq_work* @wq_next_work(%struct.io_wq_work* noundef nonnull %work.0) #17
  br i1 %tobool.not, label %if.end32, label %land.lhs.true, !prof !10

land.lhs.true:                                    ; preds = %do.body23
  %flags = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %work.0, i64 0, i32 1
  %5 = load i32, i32* %flags, align 8
  %and = and i32 %5, 4
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  %or = or i32 %5, 1
  store i32 %or, i32* %flags, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true, %do.body23
  %6 = load void (%struct.io_wq_work*)*, void (%struct.io_wq_work*)** %do_work, align 8
  call void %6(%struct.io_wq_work* noundef nonnull %work.0) #18
  call fastcc void @io_assign_current_work(%struct.io_worker* noundef %worker, %struct.io_wq_work* noundef null) #17
  %7 = load %struct.io_wq_work* (%struct.io_wq_work*)*, %struct.io_wq_work* (%struct.io_wq_work*)** %free_work, align 8
  %call33 = call %struct.io_wq_work* %7(%struct.io_wq_work* noundef nonnull %work.0) #18
  %tobool34 = icmp eq %struct.io_wq_work* %call25, null
  %tobool36 = icmp ne %struct.io_wq_work* %call33, null
  %or.cond = select i1 %tobool34, i1 %tobool36, i1 false
  br i1 %or.cond, label %land.lhs.true37, label %if.end40

land.lhs.true37:                                  ; preds = %if.end32
  %call38 = call fastcc i1 @io_wq_is_hashed(%struct.io_wq_work* noundef nonnull %call33) #17
  %spec.select = select i1 %call38, %struct.io_wq_work* null, %struct.io_wq_work* %call33
  call fastcc void @io_assign_current_work(%struct.io_worker* noundef %worker, %struct.io_wq_work* noundef %spec.select) #17
  br i1 %call38, label %if.then42, label %if.end43

if.end40:                                         ; preds = %if.end32
  call fastcc void @io_assign_current_work(%struct.io_worker* noundef %worker, %struct.io_wq_work* noundef %call25) #17
  %tobool41.not = icmp eq %struct.io_wq_work* %call33, null
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %land.lhs.true37, %if.end40
  %work.1131 = phi %struct.io_wq_work* [ %call25, %if.end40 ], [ null, %land.lhs.true37 ]
  call fastcc void @io_wqe_enqueue(%struct.io_wqe* noundef %0, %struct.io_wq_work* noundef nonnull %call33) #17
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true37, %if.then42, %if.end40
  %work.1126 = phi %struct.io_wq_work* [ %work.1131, %if.then42 ], [ %call25, %if.end40 ], [ %call33, %land.lhs.true37 ]
  br i1 %tobool34, label %if.then47, label %do.cond65

if.then47:                                        ; preds = %if.end43
  %conv48 = zext i32 %call24 to i64
  %8 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash49, align 8
  %map = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %8, i64 0, i32 1
  call fastcc void @clear_bit(i64 noundef %conv48, i64* noundef %map) #17
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %flags50) #17
  %9 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash49, align 8
  %wait = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %9, i64 0, i32 2
  %call52 = call fastcc i1 @wq_has_sleeper(%struct.wait_queue_head* noundef %wait) #17
  br i1 %call52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.then47
  %10 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash49, align 8
  %wait55 = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %10, i64 0, i32 2
  call void @__wake_up(%struct.wait_queue_head* noundef %wait55, i32 noundef 3, i32 noundef 1, i8* noundef null) #18
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.then47
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %tobool58.not = icmp eq %struct.io_wq_work* %work.1126, null
  br i1 %tobool58.not, label %get_next.loopexit, label %if.end60

if.end60:                                         ; preds = %if.end56
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  br label %do.cond65

do.cond65:                                        ; preds = %if.end60, %if.end43
  %tobool66.not = icmp eq %struct.io_wq_work* %work.1126, null
  br i1 %tobool66.not, label %cleanup69, label %do.body23

cleanup69:                                        ; preds = %do.cond65
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %call4138 = call fastcc %struct.io_wq_work* @io_get_next_work(%struct.io_wqe_acct* noundef %call, %struct.io_worker* noundef %worker) #17
  %tobool5.not139 = icmp eq %struct.io_wq_work* %call4138, null
  br i1 %tobool5.not139, label %do.end73, label %if.end8.backedge

do.end73:                                         ; preds = %cleanup69, %get_next.loopexit, %entry
  %lock122 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock122) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__io_worker_idle(%struct.io_wqe* noundef %wqe, %struct.io_worker* noundef %worker) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 1
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %or = or i32 %0, 4
  store i32 %or, i32* %flags, align 4
  %nulls_node = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 2
  %free_list = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 3
  call fastcc void @hlist_nulls_add_head_rcu(%struct.hlist_nulls_node* noundef %nulls_node, %struct.hlist_nulls_head* noundef %free_list) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @io_flush_signals() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 6) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %do.body8, !prof !10

do.body8:                                         ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  call fastcc void @tracehook_notify_signal() #17
  br label %return

return:                                           ; preds = %entry, %do.body8
  %3 = xor i1 %tobool.not, true
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !10

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @get_signal(%struct.ksignal* noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @io_worker_exit(%struct.io_worker* noundef %worker) unnamed_addr #13 {
entry:
  %wqe1 = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 5
  %0 = load %struct.io_wqe*, %struct.io_wqe** %wqe1, align 8
  %ref = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %ref) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ref_done = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 8
  call void @complete(%struct.completion* noundef %ref_done) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ref_done2 = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 8
  call void @wait_for_completion(%struct.completion* noundef %ref_done2) #18
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %flags = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 1
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %nulls_node = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 2
  call fastcc void @hlist_nulls_del_rcu(%struct.hlist_nulls_node* noundef %nulls_node) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %all_list = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 3
  call fastcc void @list_del_rcu(%struct.list_head* noundef %all_list) #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !28
  call fastcc void @io_wqe_dec_running(%struct.io_worker* noundef %worker) #17
  store i32 0, i32* %flags, align 4
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %flags7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 4
  %4 = load i32, i32* %flags7, align 4
  %and8 = and i32 %4, -17
  store i32 %and8, i32* %flags7, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !29
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  %tobool10.not = icmp eq %struct.io_worker* %worker, null
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end4
  %5 = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 12
  %rcu = bitcast %union.anon.80* %5 to %struct.callback_head*
  call void @kvfree_call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull inttoptr (i64 136 to void (%struct.callback_head*)*)) #18
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end4
  %wq = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 6
  %6 = load %struct.io_wq*, %struct.io_wq** %wq, align 8
  call fastcc void @io_worker_ref_put(%struct.io_wq* noundef %6) #17
  call void @do_exit(i64 noundef 0) #21
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(%struct.task_struct* noundef, i8* noundef, i1 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.io_wq_work* @io_get_next_work(%struct.io_wqe_acct* noundef %acct, %struct.io_worker* nocapture noundef readonly %worker) unnamed_addr #0 {
entry:
  %wqe1 = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 5
  %0 = load %struct.io_wqe*, %struct.io_wqe** %wqe1, align 8
  %work_list = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 4
  %first = getelementptr inbounds %struct.io_wq_work_list, %struct.io_wq_work_list* %work_list, i64 0, i32 0
  %node.070 = load %struct.io_wq_work_node*, %struct.io_wq_work_node** %first, align 8
  %tobool.not71 = icmp eq %struct.io_wq_work_node* %node.070, null
  br i1 %tobool.not71, label %cleanup21, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %wq = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %node.074 = phi %struct.io_wq_work_node* [ %node.070, %for.body.lr.ph ], [ %node.0, %for.inc ]
  %stall_hash.073 = phi i32 [ -1, %for.body.lr.ph ], [ %spec.select, %for.inc ]
  %prev.072 = phi %struct.io_wq_work_node* [ null, %for.body.lr.ph ], [ %list15, %for.inc ]
  %1 = bitcast %struct.io_wq_work_node* %node.074 to %struct.io_wq_work*
  %call = call fastcc i1 @io_wq_is_hashed(%struct.io_wq_work* noundef nonnull %1) #17
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %2 = bitcast %struct.io_wq_work_node* %node.074 to %struct.io_wq_work*
  call fastcc void @wq_list_del(%struct.io_wq_work_list* noundef %work_list, %struct.io_wq_work_node* noundef nonnull %node.074, %struct.io_wq_work_node* noundef %prev.072) #17
  br label %cleanup21

if.end:                                           ; preds = %for.body
  %call3 = call fastcc i32 @io_get_work_hash(%struct.io_wq_work* noundef nonnull %1) #17
  %idxprom = zext i32 %call3 to i64
  %arrayidx = getelementptr %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 7, i64 %idxprom
  %3 = load %struct.io_wq_work*, %struct.io_wq_work** %arrayidx, align 8
  %4 = load %struct.io_wq*, %struct.io_wq** %wq, align 8
  %hash4 = getelementptr inbounds %struct.io_wq, %struct.io_wq* %4, i64 0, i32 3
  %5 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash4, align 8
  %map = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %5, i64 0, i32 1
  %call5 = call fastcc i1 @test_and_set_bit(i64 noundef %idxprom, i64* noundef %map) #17
  br i1 %call5, label %for.inc, label %if.then6

if.then6:                                         ; preds = %if.end
  %6 = bitcast %struct.io_wq_work_node* %node.074 to %struct.io_wq_work*
  store %struct.io_wq_work* null, %struct.io_wq_work** %arrayidx, align 8
  %list = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %3, i64 0, i32 0
  call fastcc void @wq_list_cut(%struct.io_wq_work_list* noundef %work_list, %struct.io_wq_work_node* noundef %list, %struct.io_wq_work_node* noundef %prev.072) #17
  br label %cleanup21

for.inc:                                          ; preds = %if.end
  %cmp = icmp eq i32 %stall_hash.073, -1
  %spec.select = select i1 %cmp, i32 %call3, i32 %stall_hash.073
  %list15 = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %3, i64 0, i32 0
  %next = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %3, i64 0, i32 0, i32 0
  %node.0 = load %struct.io_wq_work_node*, %struct.io_wq_work_node** %next, align 8
  %tobool.not = icmp eq %struct.io_wq_work_node* %node.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp16.not = icmp eq i32 %spec.select, -1
  br i1 %cmp16.not, label %cleanup21, label %if.then18

if.then18:                                        ; preds = %for.end
  %flags = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 5
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %flags) #17
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %0, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @io_wait_on_hash(%struct.io_wqe* noundef %0, i32 noundef %spec.select) #17
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  br label %cleanup21

cleanup21:                                        ; preds = %entry, %if.then, %if.then6, %for.end, %if.then18
  %retval.2 = phi %struct.io_wq_work* [ null, %if.then18 ], [ null, %for.end ], [ %6, %if.then6 ], [ %2, %if.then ], [ null, %entry ]
  ret %struct.io_wq_work* %retval.2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__io_worker_busy(%struct.io_worker* noundef %worker) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 1
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %0, -5
  store i32 %and2, i32* %flags, align 4
  %nulls_node = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 2
  call fastcc void @hlist_nulls_del_init_rcu(%struct.hlist_nulls_node* noundef %nulls_node) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_assign_current_work(%struct.io_worker* noundef %worker, %struct.io_wq_work* noundef %work) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.io_wq_work* %work, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @io_flush_signals() #17
  call fastcc void @_cond_resched() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rlock.i = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %cur_work = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 6
  store %struct.io_wq_work* %work, %struct.io_wq_work** %cur_work, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @io_get_work_hash(%struct.io_wq_work* nocapture noundef readonly %work) unnamed_addr #11 {
entry:
  %flags = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %work, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %shr = lshr i32 %0, 24
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.io_wq_work* @wq_next_work(%struct.io_wq_work* nocapture noundef readonly %work) unnamed_addr #11 {
entry:
  %0 = bitcast %struct.io_wq_work* %work to %struct.io_wq_work**
  %1 = load %struct.io_wq_work*, %struct.io_wq_work** %0, align 8
  ret %struct.io_wq_work* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @io_wq_is_hashed(%struct.io_wq_work* nocapture noundef readonly %work) unnamed_addr #11 {
entry:
  %flags = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %work, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
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
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @wq_has_sleeper(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  %call = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) #17
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @wq_list_del(%struct.io_wq_work_list* noundef %list, %struct.io_wq_work_node* noundef %node, %struct.io_wq_work_node* noundef %prev) unnamed_addr #7 {
entry:
  call fastcc void @wq_list_cut(%struct.io_wq_work_list* noundef %list, %struct.io_wq_work_node* noundef %node, %struct.io_wq_work_node* noundef %prev) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr i64, i64* %addr, i64 %idx.ext.i
  %0 = load volatile i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #18
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @wq_list_cut(%struct.io_wq_work_list* noundef %list, %struct.io_wq_work_node* noundef %last, %struct.io_wq_work_node* noundef %prev) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.io_wq_work_node* %prev, null
  %next = getelementptr inbounds %struct.io_wq_work_node, %struct.io_wq_work_node* %last, i64 0, i32 0
  %0 = load %struct.io_wq_work_node*, %struct.io_wq_work_node** %next, align 8
  br i1 %tobool.not, label %do.body2, label %if.else

do.body2:                                         ; preds = %entry
  %first = getelementptr inbounds %struct.io_wq_work_list, %struct.io_wq_work_list* %list, i64 0, i32 0
  store volatile %struct.io_wq_work_node* %0, %struct.io_wq_work_node** %first, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %next6 = getelementptr inbounds %struct.io_wq_work_node, %struct.io_wq_work_node* %prev, i64 0, i32 0
  store %struct.io_wq_work_node* %0, %struct.io_wq_work_node** %next6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body2
  %last7 = getelementptr inbounds %struct.io_wq_work_list, %struct.io_wq_work_list* %list, i64 0, i32 1
  %1 = load %struct.io_wq_work_node*, %struct.io_wq_work_node** %last7, align 8
  %cmp = icmp eq %struct.io_wq_work_node* %1, %last
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  store %struct.io_wq_work_node* %prev, %struct.io_wq_work_node** %last7, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %next11 = getelementptr inbounds %struct.io_wq_work_node, %struct.io_wq_work_node* %last, i64 0, i32 0
  store %struct.io_wq_work_node* null, %struct.io_wq_work_node** %next11, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_wait_on_hash(%struct.io_wqe* noundef %wqe, i32 noundef %hash) unnamed_addr #0 {
entry:
  %wq1 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 6
  %0 = load %struct.io_wq*, %struct.io_wq** %wq1, align 8
  %hash2 = getelementptr inbounds %struct.io_wq, %struct.io_wq* %0, i64 0, i32 3
  %1 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash2, align 8
  %rlock.i = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %1, i64 0, i32 2, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #18
  %entry4 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 5, i32 3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %entry4) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end27, label %if.then

if.then:                                          ; preds = %entry
  %wait3 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 5
  %2 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash2, align 8
  %wait6 = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %2, i64 0, i32 2
  call fastcc void @__add_wait_queue(%struct.wait_queue_head* noundef %wait6, %struct.wait_queue_entry* noundef %wait3) #17
  %3 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash2, align 8
  %map = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %3, i64 0, i32 1
  %div.i = lshr i32 %hash, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %map, i64 %idxprom.i
  %4 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %hash, 63
  %sh_prom.i = zext i32 %and.i to i64
  %5 = shl nuw i64 1, %sh_prom.i
  %6 = and i64 %4, %5
  %tobool10.not = icmp eq i64 %6, 0
  br i1 %tobool10.not, label %do.body17, label %if.end27

do.body17:                                        ; preds = %if.then
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i64 0, i32 1
  store volatile i32 0, i32* %__state, align 16
  call fastcc void @list_del_init(%struct.list_head* noundef %entry4) #17
  br label %if.end27

if.end27:                                         ; preds = %if.then, %do.body17, %entry
  %9 = load %struct.io_wq_hash*, %struct.io_wq_hash** %hash2, align 8
  %rlock.i38 = getelementptr inbounds %struct.io_wq_hash, %struct.io_wq_hash* %9, i64 0, i32 2, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i38) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !31
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__add_wait_queue(%struct.wait_queue_head* noundef %wq_head, %struct.wait_queue_entry* noundef %wq_entry) unnamed_addr #7 {
entry:
  %head1 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %0 = bitcast %struct.list_head* %head1 to i8**
  %.pn24 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn24 to %struct.list_head*
  %cmp.not25 = icmp eq %struct.list_head* %head1, %1
  br i1 %cmp.not25, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wq.0.in29 = getelementptr i8, i8* %.pn24, i64 -24
  %flags30 = bitcast i8* %wq.0.in29 to i32*
  %2 = load i32, i32* %flags30, align 8
  %and31 = and i32 %2, 32
  %tobool.not32 = icmp eq i32 %and31, 0
  br i1 %tobool.not32, label %for.end, label %if.end

for.body:                                         ; preds = %if.end
  %wq.0.in = getelementptr i8, i8* %.pn, i64 -24
  %flags = bitcast i8* %wq.0.in to i32*
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end, label %if.end

if.end:                                           ; preds = %for.body.preheader, %for.body
  %.pn2733 = phi i8* [ %.pn, %for.body ], [ %.pn24, %for.body.preheader ]
  %4 = phi %struct.list_head* [ %6, %for.body ], [ %1, %for.body.preheader ]
  %5 = bitcast i8* %.pn2733 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %head1, %6
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end, %for.body.preheader, %entry
  %head.0.lcssa = phi %struct.list_head* [ %head1, %entry ], [ %head1, %for.body.preheader ], [ %4, %if.end ], [ %4, %for.body ]
  %entry14 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %entry14, %struct.list_head* noundef %head.0.lcssa) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !32
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #17
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #19, !srcloc !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #6 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
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
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @arch_local_irq_enable() #17
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #19, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #19, !srcloc !36
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_nulls_del_init_rcu(%struct.hlist_nulls_node* noundef %n) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @hlist_nulls_unhashed(%struct.hlist_nulls_node* noundef %n) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_nulls_del(%struct.hlist_nulls_node* noundef %n) #17
  %pprev = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %n, i64 0, i32 1
  store volatile %struct.hlist_nulls_node** null, %struct.hlist_nulls_node*** %pprev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_nulls_unhashed(%struct.hlist_nulls_node* nocapture noundef readonly %h) unnamed_addr #11 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_nulls_node**, %struct.hlist_nulls_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_nulls_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_nulls_del(%struct.hlist_nulls_node* nocapture noundef readonly %n) unnamed_addr #7 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_nulls_node**, %struct.hlist_nulls_node*** %pprev2, align 8
  store volatile %struct.hlist_nulls_node* %0, %struct.hlist_nulls_node** %1, align 8
  %call = call fastcc i32 @is_a_nulls(%struct.hlist_nulls_node* noundef %0) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body13, label %if.end

do.body13:                                        ; preds = %entry
  %pprev14 = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %0, i64 0, i32 1
  store volatile %struct.hlist_nulls_node** %1, %struct.hlist_nulls_node*** %pprev14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @is_a_nulls(%struct.hlist_nulls_node* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint %struct.hlist_nulls_node* %ptr to i64
  %1 = trunc i64 %0 to i32
  %conv = and i32 %1, 1
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #6 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #17
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_nulls_add_head_rcu(%struct.hlist_nulls_node* noundef %n, %struct.hlist_nulls_head* noundef %h) unnamed_addr #0 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_nulls_head, %struct.hlist_nulls_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %n, i64 0, i32 0
  store %struct.hlist_nulls_node* %0, %struct.hlist_nulls_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %n, i64 0, i32 1
  store volatile %struct.hlist_nulls_node** %first1, %struct.hlist_nulls_node*** %pprev, align 8
  %1 = ptrtoint %struct.hlist_nulls_node* %n to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_nulls_node** elementtype(%struct.hlist_nulls_node*) %first1, i64 %1) #19, !srcloc !38
  %call29 = call fastcc i32 @is_a_nulls(%struct.hlist_nulls_node* noundef %0) #17
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %do.body35, label %if.end42

do.body35:                                        ; preds = %entry
  %pprev37 = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %0, i64 0, i32 1
  store volatile %struct.hlist_nulls_node** %next, %struct.hlist_nulls_node*** %pprev37, align 8
  br label %if.end42

if.end42:                                         ; preds = %do.body35, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #6 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %div.i = lshr i32 %flag, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %flags, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tracehook_notify_signal() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %2) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !39
  %task_works = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 96
  %3 = load %struct.callback_head*, %struct.callback_head** %task_works, align 32
  %tobool.not = icmp eq %struct.callback_head* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @task_work_run() #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef 6, i64* noundef %flags) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #17
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #4 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_nulls_del_rcu(%struct.hlist_nulls_node* noundef %n) unnamed_addr #7 {
entry:
  call fastcc void @__hlist_nulls_del(%struct.hlist_nulls_node* noundef %n) #17
  %pprev = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %n, i64 0, i32 1
  store volatile %struct.hlist_nulls_node** inttoptr (i64 -2401263026318606046 to %struct.hlist_nulls_node**), %struct.hlist_nulls_node*** %pprev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #9

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i64 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_new_task(%struct.task_struct* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #19, !srcloc !40
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @create_worker_cont(%struct.callback_head* noundef %cb) #0 {
entry:
  %match = alloca %struct.io_cb_cancel_data, align 8
  %add.ptr41 = getelementptr %struct.callback_head, %struct.callback_head* %cb, i64 -7
  %add.ptr = bitcast %struct.callback_head* %add.ptr41 to i8*
  %0 = bitcast %struct.callback_head* %add.ptr41 to %struct.io_worker*
  %create_state = getelementptr %struct.callback_head, %struct.callback_head* %cb, i64 -1, i32 1
  %1 = bitcast void (%struct.callback_head*)** %create_state to i64*
  call fastcc void @clear_bit_unlock(i64* noundef %1) #17
  %wqe1 = getelementptr %struct.callback_head, %struct.callback_head* %cb, i64 -4
  %2 = bitcast %struct.callback_head* %wqe1 to %struct.io_wqe**
  %3 = load %struct.io_wqe*, %struct.io_wqe** %2, align 8
  %node = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %3, i64 0, i32 2
  %4 = load i32, i32* %node, align 8
  %call = call %struct.task_struct* @create_io_thread(i32 (i8*)* noundef nonnull @io_wqe_worker, i8* noundef %add.ptr, i32 noundef %4) #18
  %5 = bitcast %struct.task_struct* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %5) #17
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @io_init_new_worker(%struct.io_wqe* noundef %3, %struct.io_worker* noundef %0, %struct.task_struct* noundef %call) #17
  call fastcc void @io_worker_release(%struct.io_worker* noundef %0) #17
  br label %cleanup

if.else:                                          ; preds = %entry
  %call3 = call fastcc i64 @PTR_ERR(i8* noundef %5) #17
  %call4 = call fastcc i1 @io_should_retry_thread(i64 noundef %call3) #17
  br i1 %call4, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.else
  %call6 = call fastcc %struct.io_wqe_acct* @io_wqe_get_acct(%struct.io_worker* noundef %0) #17
  %nr_running = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call6, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %nr_running) #18
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %3, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %nr_workers = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call6, i64 0, i32 0
  %6 = load i32, i32* %nr_workers, align 8
  %dec = add i32 %6, -1
  store i32 %dec, i32* %nr_workers, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then5
  %7 = bitcast %struct.io_cb_cancel_data* %match to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #19
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef align 8 dereferenceable(32) bitcast ({ i1 (%struct.io_wq_work*, i8*)*, i8*, i32, i32, i8, [7 x i8] }* @__const.io_wq_destroy.match to i8*), i64 32, i1 false)
  %call942 = call fastcc i1 @io_acct_cancel_pending_work(%struct.io_wqe* noundef %3, %struct.io_wqe_acct* noundef %call6, %struct.io_cb_cancel_data* noundef nonnull %match) #17
  br i1 %call942, label %while.body, label %while.end

while.body:                                       ; preds = %if.then8, %while.body
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %call9 = call fastcc i1 @io_acct_cancel_pending_work(%struct.io_wqe* noundef %3, %struct.io_wqe_acct* noundef %call6, %struct.io_cb_cancel_data* noundef nonnull %match) #17
  br i1 %call9, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.then8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #19
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then5
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  %wq = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %3, i64 0, i32 6
  %8 = load %struct.io_wq*, %struct.io_wq** %wq, align 8
  call fastcc void @io_worker_ref_put(%struct.io_wq* noundef %8) #17
  call void @kfree(i8* noundef %add.ptr) #18
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call fastcc void @io_worker_release(%struct.io_worker* noundef %0) #17
  %9 = getelementptr %struct.callback_head, %struct.callback_head* %cb, i64 1, i32 1
  %work = bitcast void (%struct.callback_head*)** %9 to %struct.work_struct*
  call fastcc void @schedule_work(%struct.work_struct* noundef %work) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @io_wq_work_match_all(%struct.io_wq_work* nocapture noundef readnone %work, i8* nocapture noundef readnone %data) #4 {
entry:
  ret i1 true
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @io_acct_cancel_pending_work(%struct.io_wqe* noundef %wqe, %struct.io_wqe_acct* nocapture noundef readonly %acct, %struct.io_cb_cancel_data* nocapture noundef %match) unnamed_addr #0 {
entry:
  %first = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 4, i32 0
  %node.019 = load %struct.io_wq_work_node*, %struct.io_wq_work_node** %first, align 8
  %tobool.not20 = icmp eq %struct.io_wq_work_node* %node.019, null
  br i1 %tobool.not20, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %fn = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 0
  %data = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 1
  %0 = bitcast %struct.io_wq_work_node* %node.019 to %struct.io_wq_work*
  %1 = load i1 (%struct.io_wq_work*, i8*)*, i1 (%struct.io_wq_work*, i8*)** %fn, align 8
  %2 = load i8*, i8** %data, align 8
  %call31 = call i1 %1(%struct.io_wq_work* noundef nonnull %0, i8* noundef %2) #18
  br i1 %call31, label %if.end, label %for.inc

for.body:                                         ; preds = %for.inc
  %3 = bitcast %struct.io_wq_work_node* %node.0 to %struct.io_wq_work*
  %4 = load i1 (%struct.io_wq_work*, i8*)*, i1 (%struct.io_wq_work*, i8*)** %fn, align 8
  %5 = load i8*, i8** %data, align 8
  %call = call i1 %4(%struct.io_wq_work* noundef nonnull %3, i8* noundef %5) #18
  br i1 %call, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body, %for.body.lr.ph
  %node.022.lcssa = phi %struct.io_wq_work_node* [ %node.019, %for.body.lr.ph ], [ %node.0, %for.body ]
  %prev.021.lcssa = phi %struct.io_wq_work_node* [ null, %for.body.lr.ph ], [ %node.02232, %for.body ]
  %6 = bitcast %struct.io_wq_work_node* %node.022.lcssa to %struct.io_wq_work*
  call fastcc void @io_wqe_remove_pending(%struct.io_wqe* noundef %wqe, %struct.io_wq_work* noundef nonnull %6, %struct.io_wq_work_node* noundef %prev.021.lcssa) #17
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @io_run_cancel(%struct.io_wq_work* noundef nonnull %6, %struct.io_wqe* noundef %wqe) #17
  %nr_pending = getelementptr inbounds %struct.io_cb_cancel_data, %struct.io_cb_cancel_data* %match, i64 0, i32 3
  %7 = load i32, i32* %nr_pending, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %nr_pending, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body.lr.ph, %for.body
  %node.02232 = phi %struct.io_wq_work_node* [ %node.0, %for.body ], [ %node.019, %for.body.lr.ph ]
  %next = getelementptr inbounds %struct.io_wq_work_node, %struct.io_wq_work_node* %node.02232, i64 0, i32 0
  %node.0 = load %struct.io_wq_work_node*, %struct.io_wq_work_node** %next, align 8
  %tobool.not = icmp eq %struct.io_wq_work_node* %node.0, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %entry, %if.end
  %tobool.not17 = phi i1 [ true, %if.end ], [ false, %entry ], [ false, %for.inc ]
  ret i1 %tobool.not17
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @io_wqe_remove_pending(%struct.io_wqe* noundef %wqe, %struct.io_wq_work* noundef %work, %struct.io_wq_work_node* noundef %prev) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.io_wqe_acct* @io_work_get_acct(%struct.io_wqe* noundef %wqe, %struct.io_wq_work* noundef %work) #17
  %call1 = call fastcc i32 @io_get_work_hash(%struct.io_wq_work* noundef %work) #17
  %call2 = call fastcc i1 @io_wq_is_hashed(%struct.io_wq_work* noundef %work) #17
  br i1 %call2, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %entry
  %idxprom = zext i32 %call1 to i64
  %arrayidx = getelementptr %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 7, i64 %idxprom
  %0 = load %struct.io_wq_work*, %struct.io_wq_work** %arrayidx, align 8
  %cmp = icmp eq %struct.io_wq_work* %0, %work
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %land.lhs.true
  %tobool4.not = icmp eq %struct.io_wq_work_node* %prev, null
  br i1 %tobool4.not, label %if.else, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.then
  %1 = bitcast %struct.io_wq_work_node* %prev to %struct.io_wq_work*
  %call6 = call fastcc i32 @io_get_work_hash(%struct.io_wq_work* noundef nonnull %1) #17
  %cmp7 = icmp eq i32 %call6, %call1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %land.lhs.true5
  %2 = bitcast %struct.io_wq_work** %arrayidx to %struct.io_wq_work_node**
  store %struct.io_wq_work_node* %prev, %struct.io_wq_work_node** %2, align 8
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true5, %if.then
  store %struct.io_wq_work* null, %struct.io_wq_work** %arrayidx, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %if.else, %land.lhs.true, %entry
  %work_list = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call, i64 0, i32 4
  %list = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %work, i64 0, i32 0
  call fastcc void @wq_list_del(%struct.io_wq_work_list* noundef %work_list, %struct.io_wq_work_node* noundef %list, %struct.io_wq_work_node* noundef %prev) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_run_cancel(%struct.io_wq_work* noundef %work, %struct.io_wqe* nocapture noundef readonly %wqe) unnamed_addr #0 {
entry:
  %wq1 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 6
  %0 = load %struct.io_wq*, %struct.io_wq** %wq1, align 8
  %do_work = getelementptr inbounds %struct.io_wq, %struct.io_wq* %0, i64 0, i32 2
  %free_work = getelementptr inbounds %struct.io_wq, %struct.io_wq* %0, i64 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %work.addr.0 = phi %struct.io_wq_work* [ %work, %entry ], [ %call, %do.body ]
  %flags = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %work.addr.0, i64 0, i32 1
  %1 = load i32, i32* %flags, align 8
  %or = or i32 %1, 1
  store i32 %or, i32* %flags, align 8
  %2 = load void (%struct.io_wq_work*)*, void (%struct.io_wq_work*)** %do_work, align 8
  call void %2(%struct.io_wq_work* noundef %work.addr.0) #18
  %3 = load %struct.io_wq_work* (%struct.io_wq_work*)*, %struct.io_wq_work* (%struct.io_wq_work*)** %free_work, align 8
  %call = call %struct.io_wq_work* %3(%struct.io_wq_work* noundef %work.addr.0) #18
  %tobool.not = icmp eq %struct.io_wq_work* %call, null
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.io_wqe_acct* @io_work_get_acct(%struct.io_wqe* noundef readnone %wqe, %struct.io_wq_work* nocapture noundef readonly %work) unnamed_addr #11 {
entry:
  %flags = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %work, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  %call = call fastcc %struct.io_wqe_acct* @io_get_acct(%struct.io_wqe* noundef %wqe, i1 noundef %tobool.not) #17
  ret %struct.io_wqe_acct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #2 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #22, !srcloc !41
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @io_wqe_insert_work(%struct.io_wqe* noundef %wqe, %struct.io_wq_work* noundef %work) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.io_wqe_acct* @io_work_get_acct(%struct.io_wqe* noundef %wqe, %struct.io_wq_work* noundef %work) #17
  %call1 = call fastcc i1 @io_wq_is_hashed(%struct.io_wq_work* noundef %work) #17
  br i1 %call1, label %if.end, label %append

append:                                           ; preds = %if.end, %entry
  %list = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %work, i64 0, i32 0
  %work_list = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call, i64 0, i32 4
  call fastcc void @wq_list_add_tail(%struct.io_wq_work_node* noundef %list, %struct.io_wq_work_list* noundef %work_list) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @io_get_work_hash(%struct.io_wq_work* noundef %work) #17
  %idxprom = zext i32 %call2 to i64
  %arrayidx = getelementptr %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 7, i64 %idxprom
  %0 = load %struct.io_wq_work*, %struct.io_wq_work** %arrayidx, align 8
  store %struct.io_wq_work* %work, %struct.io_wq_work** %arrayidx, align 8
  %tobool.not = icmp eq %struct.io_wq_work* %0, null
  br i1 %tobool.not, label %append, label %if.end7

if.end7:                                          ; preds = %if.end
  %list8 = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %work, i64 0, i32 0
  %list9 = getelementptr inbounds %struct.io_wq_work, %struct.io_wq_work* %0, i64 0, i32 0
  %work_list10 = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %call, i64 0, i32 4
  call fastcc void @wq_list_add_after(%struct.io_wq_work_node* noundef %list8, %struct.io_wq_work_node* noundef %list9, %struct.io_wq_work_list* noundef %work_list10) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %append
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @io_wqe_activate_free_worker(%struct.io_wqe* noundef %wqe, %struct.io_wqe_acct* noundef readnone %acct) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !42
  %first = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 3, i32 0
  %n.037 = load volatile %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %first, align 8
  %call38 = call fastcc i32 @is_a_nulls(%struct.hlist_nulls_node* noundef %n.037) #17
  %tobool.not39 = icmp eq i32 %call38, 0
  br i1 %tobool.not39, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %entry, %for.inc
  %n.040 = phi %struct.hlist_nulls_node* [ %n.0, %for.inc ], [ %n.037, %entry ]
  %add.ptr = getelementptr %struct.hlist_nulls_node, %struct.hlist_nulls_node* %n.040, i64 -1, i32 1
  %0 = bitcast %struct.hlist_nulls_node*** %add.ptr to %struct.io_worker*
  %call8 = call fastcc i1 @io_worker_get(%struct.io_worker* noundef %0) #17
  br i1 %call8, label %if.end, label %for.inc

if.end:                                           ; preds = %land.rhs
  %call9 = call fastcc %struct.io_wqe_acct* @io_wqe_get_acct(%struct.io_worker* noundef %0) #17
  %cmp.not = icmp eq %struct.io_wqe_acct* %call9, %acct
  br i1 %cmp.not, label %if.end11, label %for.inc.sink.split

if.end11:                                         ; preds = %if.end
  %task = getelementptr inbounds %struct.hlist_nulls_node**, %struct.hlist_nulls_node*** %add.ptr, i64 5
  %1 = bitcast %struct.hlist_nulls_node*** %task to %struct.task_struct**
  %2 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %call12 = call i32 @wake_up_process(%struct.task_struct* noundef %2) #18
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.inc.sink.split, label %if.then14

if.then14:                                        ; preds = %if.end11
  %3 = bitcast %struct.hlist_nulls_node*** %add.ptr to %struct.io_worker*
  call fastcc void @io_worker_release(%struct.io_worker* noundef %3) #17
  br label %cleanup

for.inc.sink.split:                               ; preds = %if.end11, %if.end
  call fastcc void @io_worker_release(%struct.io_worker* noundef %0) #17
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.rhs
  %next = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %n.040, i64 0, i32 0
  %n.0 = load volatile %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %next, align 8
  %call = call fastcc i32 @is_a_nulls(%struct.hlist_nulls_node* noundef %n.0) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %cleanup

cleanup:                                          ; preds = %for.inc, %entry, %if.then14
  %tobool.not36 = phi i1 [ true, %if.then14 ], [ false, %entry ], [ false, %for.inc ]
  ret i1 %tobool.not36
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @io_wqe_create_worker(%struct.io_wqe* noundef %wqe, %struct.io_wqe_acct* noundef %acct) unnamed_addr #0 {
entry:
  %max_workers = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 1
  %0 = load i32, i32* %max_workers, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end25, !prof !13

if.then:                                          ; preds = %entry
  %.b46 = load i1, i1* @io_wqe_create_worker.__already_done, align 1
  br i1 %.b46, label %if.end25, label %if.then16, !prof !10

if.then16:                                        ; preds = %if.then
  store i1 true, i1* @io_wqe_create_worker.__already_done, align 1
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0)) #23
  br label %if.end25

if.end25:                                         ; preds = %if.then, %if.then16, %entry
  %lock = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  %nr_workers = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 0
  %1 = load i32, i32* %nr_workers, align 8
  %2 = load i32, i32* %max_workers, align 4
  %cmp.not = icmp ult i32 %1, %2
  br i1 %cmp.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  br label %return

if.end30:                                         ; preds = %if.end25
  %inc = add nuw i32 %1, 1
  store i32 %inc, i32* %nr_workers, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  %nr_running = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %nr_running) #18
  %wq = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 6
  %3 = load %struct.io_wq*, %struct.io_wq** %wq, align 8
  %worker_refs = getelementptr inbounds %struct.io_wq, %struct.io_wq* %3, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %worker_refs) #18
  %4 = load %struct.io_wq*, %struct.io_wq** %wq, align 8
  %index = getelementptr inbounds %struct.io_wqe_acct, %struct.io_wqe_acct* %acct, i64 0, i32 2
  %5 = load i32, i32* %index, align 8
  %call34 = call fastcc i1 @create_io_worker(%struct.io_wq* noundef %4, %struct.io_wqe* noundef %wqe, i32 noundef %5) #17
  br label %return

return:                                           ; preds = %if.end30, %if.then28
  %retval.0 = phi i1 [ true, %if.then28 ], [ %call34, %if.end30 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @io_wq_work_match_item(%struct.io_wq_work* noundef readnone %work, i8* noundef readnone %data) #4 {
entry:
  %0 = bitcast i8* %data to %struct.io_wq_work*
  %cmp = icmp eq %struct.io_wq_work* %0, %work
  ret i1 %cmp
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @wq_list_add_tail(%struct.io_wq_work_node* noundef %node, %struct.io_wq_work_list* noundef %list) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.io_wq_work_node, %struct.io_wq_work_node* %node, i64 0, i32 0
  store %struct.io_wq_work_node* null, %struct.io_wq_work_node** %next, align 8
  %first = getelementptr inbounds %struct.io_wq_work_list, %struct.io_wq_work_list* %list, i64 0, i32 0
  %0 = load %struct.io_wq_work_node*, %struct.io_wq_work_node** %first, align 8
  %tobool.not = icmp eq %struct.io_wq_work_node* %0, null
  %last = getelementptr inbounds %struct.io_wq_work_list, %struct.io_wq_work_list* %list, i64 0, i32 1
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.io_wq_work_node* %node, %struct.io_wq_work_node** %last, align 8
  store volatile %struct.io_wq_work_node* %node, %struct.io_wq_work_node** %first, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.io_wq_work_node*, %struct.io_wq_work_node** %last, align 8
  %next7 = getelementptr inbounds %struct.io_wq_work_node, %struct.io_wq_work_node* %1, i64 0, i32 0
  store %struct.io_wq_work_node* %node, %struct.io_wq_work_node** %next7, align 8
  store %struct.io_wq_work_node* %node, %struct.io_wq_work_node** %last, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @wq_list_add_after(%struct.io_wq_work_node* noundef %node, %struct.io_wq_work_node* nocapture noundef %pos, %struct.io_wq_work_list* nocapture noundef writeonly %list) unnamed_addr #3 {
entry:
  %next1 = getelementptr inbounds %struct.io_wq_work_node, %struct.io_wq_work_node* %pos, i64 0, i32 0
  %0 = load %struct.io_wq_work_node*, %struct.io_wq_work_node** %next1, align 8
  store %struct.io_wq_work_node* %node, %struct.io_wq_work_node** %next1, align 8
  %next3 = getelementptr inbounds %struct.io_wq_work_node, %struct.io_wq_work_node* %node, i64 0, i32 0
  store %struct.io_wq_work_node* %0, %struct.io_wq_work_node** %next3, align 8
  %tobool.not = icmp eq %struct.io_wq_work_node* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %last = getelementptr inbounds %struct.io_wq_work_list, %struct.io_wq_work_list* %list, i64 0, i32 1
  store %struct.io_wq_work_node* %node, %struct.io_wq_work_node** %last, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_wq_for_each_worker(%struct.io_wqe* noundef %wqe, i1 (%struct.io_worker*, i8*)* nocapture noundef readonly %func, i8* noundef %data) unnamed_addr #0 {
entry:
  %all_list = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %wqe, i64 0, i32 4
  %.pn.in5 = getelementptr inbounds %struct.list_head, %struct.list_head* %all_list, i64 0, i32 0
  %.pn6 = load volatile %struct.list_head*, %struct.list_head** %.pn.in5, align 8
  %worker.0.in7 = getelementptr %struct.list_head, %struct.list_head* %.pn6, i64 -2, i32 1
  %all_list59 = getelementptr inbounds %struct.list_head*, %struct.list_head** %worker.0.in7, i64 3
  %0 = bitcast %struct.list_head** %all_list59 to %struct.list_head*
  %cmp.not10 = icmp eq %struct.list_head* %all_list, %0
  br i1 %cmp.not10, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi %struct.list_head* [ %4, %for.inc ], [ %0, %entry ]
  %worker.0.in11 = phi %struct.list_head** [ %worker.0.in, %for.inc ], [ %worker.0.in7, %entry ]
  %worker.012 = bitcast %struct.list_head** %worker.0.in11 to %struct.io_worker*
  %call = call fastcc i1 @io_worker_get(%struct.io_worker* noundef %worker.012) #17
  br i1 %call, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %task = getelementptr inbounds %struct.list_head*, %struct.list_head** %worker.0.in11, i64 5
  %2 = bitcast %struct.list_head** %task to %struct.task_struct**
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %tobool.not = icmp eq %struct.task_struct* %3, null
  br i1 %tobool.not, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then
  %call8 = call i1 %func(%struct.io_worker* noundef %worker.012, i8* noundef %data) #18, !callees !43
  call fastcc void @io_worker_release(%struct.io_worker* noundef %worker.012) #17
  br i1 %call8, label %for.end, label %for.inc

if.end:                                           ; preds = %if.then
  call fastcc void @io_worker_release(%struct.io_worker* noundef %worker.012) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then7, %for.body
  %.pn.in = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  %.pn = load volatile %struct.list_head*, %struct.list_head** %.pn.in, align 8
  %worker.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -2, i32 1
  %all_list5 = getelementptr inbounds %struct.list_head*, %struct.list_head** %worker.0.in, i64 3
  %4 = bitcast %struct.list_head** %all_list5 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %all_list, %4
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then7, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @io_wq_worker_cancel(%struct.io_worker* noundef %worker, i8* nocapture noundef %data) #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #18
  %cur_work = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 6
  %0 = load %struct.io_wq_work*, %struct.io_wq_work** %cur_work, align 8
  %tobool.not = icmp eq %struct.io_wq_work* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %fn = bitcast i8* %data to i1 (%struct.io_wq_work*, i8*)**
  %1 = load i1 (%struct.io_wq_work*, i8*)*, i1 (%struct.io_wq_work*, i8*)** %fn, align 8
  %data2 = getelementptr inbounds i8, i8* %data, i64 8
  %2 = bitcast i8* %data2 to i8**
  %3 = load i8*, i8** %2, align 8
  %call = call i1 %1(%struct.io_wq_work* noundef nonnull %0, i8* noundef %3) #18
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %task = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 4
  %4 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  call fastcc void @set_notify_signal(%struct.task_struct* noundef %4) #17
  %nr_running = getelementptr inbounds i8, i8* %data, i64 16
  %5 = bitcast i8* %nr_running to i32*
  %6 = load i32, i32* %5, align 8
  %inc = add i32 %6, 1
  store i32 %inc, i32* %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #18
  %nr_running4 = getelementptr inbounds i8, i8* %data, i64 16
  %7 = bitcast i8* %nr_running4 to i32*
  %8 = load i32, i32* %7, align 8
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %9 = getelementptr inbounds i8, i8* %data, i64 24
  %10 = load i8, i8* %9, align 8, !range !12
  %tobool6.not = icmp eq i8 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %11 = phi i1 [ false, %if.end ], [ %tobool6.not, %land.rhs ]
  ret i1 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_notify_signal(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @test_and_set_tsk_thread_flag(%struct.task_struct* noundef %task) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @wake_up_state(%struct.task_struct* noundef %task, i32 noundef 1) #18
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @kick_process(%struct.task_struct* noundef %task) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_and_set_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  %call1 = call fastcc i32 @test_and_set_ti_thread_flag(%struct.thread_info* noundef %call) #17
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kick_process(%struct.task_struct* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_and_set_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %call = call fastcc i1 @test_and_set_bit(i64 noundef 6, i64* noundef %flags) #17
  %conv1 = zext i1 %call to i32
  ret i32 %conv1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, %struct.hlist_node* noundef, i1 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #18
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !13

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !10

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #18
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #19, !srcloc !44
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %dst to i8*
  %1 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 32) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #18
  %2 = and i64 %call.i.i.i, 1
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #19, !srcloc !45
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, %struct.hlist_node* noundef, i1 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #19, !srcloc !46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.callback_head* @task_work_cancel_match(%struct.task_struct* noundef, i1 (%struct.callback_head*, i8*)* noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i1 @io_task_work_match(%struct.callback_head* nocapture noundef readonly %cb, i8* noundef readnone %data) #11 {
entry:
  %func = getelementptr inbounds %struct.callback_head, %struct.callback_head* %cb, i64 0, i32 1
  %0 = load void (%struct.callback_head*)*, void (%struct.callback_head*)** %func, align 8
  %cmp.not = icmp eq void (%struct.callback_head*)* %0, @create_worker_cb
  %cmp2.not = icmp eq void (%struct.callback_head*)* %0, @create_worker_cont
  %or.cond = or i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %wqe = getelementptr %struct.callback_head, %struct.callback_head* %cb, i64 -4
  %1 = bitcast %struct.callback_head* %wqe to %struct.io_wqe**
  %2 = load %struct.io_wqe*, %struct.io_wqe** %1, align 8
  %wq = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %2, i64 0, i32 6
  %3 = load %struct.io_wq*, %struct.io_wq** %wq, align 8
  %4 = bitcast i8* %data to %struct.io_wq*
  %cmp3 = icmp eq %struct.io_wq* %3, %4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %cmp3, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @io_wq_worker_wake(%struct.io_worker* nocapture noundef readonly %worker, i8* nocapture noundef readnone %data) #0 {
entry:
  %task = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 4
  %0 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  call fastcc void @set_notify_signal(%struct.task_struct* noundef %0) #17
  %1 = load %struct.task_struct*, %struct.task_struct** %task, align 8
  %call = call i32 @wake_up_process(%struct.task_struct* noundef %1) #18
  ret i1 false
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !48
  call void @rcu_read_unlock_strict() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state_multi() unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 192, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i1 noundef false, i32 (i32)* noundef bitcast (i32 (i32, %struct.hlist_node*)* @io_wq_cpu_online to i32 (i32)*), i32 (i32)* noundef bitcast (i32 (i32, %struct.hlist_node*)* @io_wq_cpu_offline to i32 (i32)*), i1 noundef true) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @io_wq_cpu_online(i32 noundef %cpu, %struct.hlist_node* noundef readonly %node) #0 {
entry:
  %tobool.not = icmp eq %struct.hlist_node* %node, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %node, i64 -5, i32 1
  %0 = bitcast %struct.hlist_node*** %add.ptr to %struct.io_wq*
  %cond = select i1 %tobool.not, %struct.io_wq* null, %struct.io_wq* %0
  call fastcc void @__io_wq_cpu_online(%struct.io_wq* noundef %cond, i32 noundef %cpu, i1 noundef true) #17
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @io_wq_cpu_offline(i32 noundef %cpu, %struct.hlist_node* noundef readonly %node) #0 {
entry:
  %tobool.not = icmp eq %struct.hlist_node* %node, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %node, i64 -5, i32 1
  %0 = bitcast %struct.hlist_node*** %add.ptr to %struct.io_wq*
  %cond = select i1 %tobool.not, %struct.io_wq* null, %struct.io_wq* %0
  call fastcc void @__io_wq_cpu_online(%struct.io_wq* noundef %cond, i32 noundef %cpu, i1 noundef false) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__io_wq_cpu_online(%struct.io_wq* nocapture noundef readonly %wq, i32 noundef %cpu, i1 noundef %online) unnamed_addr #0 {
entry:
  %od = alloca i64, align 8, !annotation !11
  %tmpcast = bitcast i64* %od to %struct.online_data*, !annotation !11
  %frombool = zext i1 %online to i8
  %0 = bitcast i64* %od to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #19
  store i64 0, i64* %od, align 8, !annotation !11
  %cpu1 = bitcast i64* %od to i32*
  store i32 %cpu, i32* %cpu1, align 8
  %online2 = getelementptr inbounds %struct.online_data, %struct.online_data* %tmpcast, i64 0, i32 1
  store i8 %frombool, i8* %online2, align 4
  call fastcc void @__rcu_read_lock() #18
  %arrayidx = getelementptr inbounds %struct.io_wq, %struct.io_wq* %wq, i64 0, i32 8, i64 0
  %1 = load %struct.io_wqe*, %struct.io_wqe** %arrayidx, align 8
  call fastcc void @io_wq_for_each_worker(%struct.io_wqe* noundef %1, i1 (%struct.io_worker*, i8*)* noundef nonnull @io_wq_worker_affinity, i8* noundef nonnull %0) #17
  call fastcc void @rcu_read_unlock() #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @io_wq_worker_affinity(%struct.io_worker* nocapture noundef readonly %worker, i8* nocapture noundef readonly %data) #0 {
entry:
  %0 = getelementptr inbounds i8, i8* %data, i64 4
  %1 = load i8, i8* %0, align 4, !range !12
  %tobool.not = icmp eq i8 %1, 0
  %cpu1 = bitcast i8* %data to i32*
  %2 = load i32, i32* %cpu1, align 4
  %wqe2 = getelementptr inbounds %struct.io_worker, %struct.io_worker* %worker, i64 0, i32 5
  %3 = load %struct.io_wqe*, %struct.io_wqe** %wqe2, align 8
  %arraydecay4 = getelementptr inbounds %struct.io_wqe, %struct.io_wqe* %3, i64 0, i32 8, i64 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @cpumask_set_cpu(i32 noundef %2, %struct.cpumask* noundef %arraydecay4) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @cpumask_clear_cpu(i32 noundef %2, %struct.cpumask* noundef %arraydecay4) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i1 false
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef %arraydecay) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear_cpu(i32 noundef %cpu, %struct.cpumask* noundef %dstp) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @clear_bit(i64 noundef %conv, i64* noundef %arraydecay) #17
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #15 = { nofree nounwind readonly }
attributes #16 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind "no-builtins" }
attributes #19 = { nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #22 = { nounwind readonly }
attributes #23 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2149776393}
!9 = !{i64 2149787735}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2155227353}
!15 = !{i64 2155228988}
!16 = !{i64 1479652}
!17 = !{i64 2155237080}
!18 = !{i64 2147751211, i64 2147751727, i64 2147751757, i64 2147751784, i64 2147751818, i64 2147751848}
!19 = !{i64 2147847073, i64 2147847106, i64 2147847159, i64 2147847218, i64 2147847252, i64 2147847307, i64 2147847336, i64 2147847356}
!20 = !{i64 2147761784, i64 2147762432, i64 2147762462, i64 2147762494, i64 2147762528, i64 2147762564, i64 2147762589}
!21 = !{i64 2147840535, i64 2147840568, i64 2147840620, i64 2147840679, i64 2147840713, i64 2147840768, i64 2147840797, i64 2147840817}
!22 = !{i64 2147823179, i64 2147823849, i64 2147823879, i64 2147823911, i64 2147823943, i64 2147823977, i64 2147824002}
!23 = !{i64 2147834809, i64 2147835489, i64 2147835519, i64 2147835550, i64 2147835582, i64 2147835617, i64 2147835642}
!24 = !{i64 2149935698}
!25 = !{i64 2147768957, i64 2147769631, i64 2147769661, i64 2147769693, i64 2147769727, i64 2147769763, i64 2147769788}
!26 = !{i64 2147760932, i64 2147761448, i64 2147761478, i64 2147761505, i64 2147761539, i64 2147761569}
!27 = !{i64 2155170188}
!28 = !{i64 2155137074}
!29 = !{i64 2155137147}
!30 = !{i64 2149915278}
!31 = !{i64 2147821137, i64 2147821789, i64 2147821819, i64 2147821850, i64 2147821882, i64 2147821917, i64 2147821942}
!32 = !{i64 2149765685}
!33 = !{i64 2148893677, i64 2148893724, i64 2148893730, i64 2148893767, i64 2148893785, i64 2148895126, i64 2148895174, i64 2148895222, i64 2148895285, i64 2148895334, i64 2148893863, i64 2148893888, i64 2148893914, i64 2148893920, i64 2148894792, i64 2148894832, i64 2148894850, i64 2148894882, i64 2148894910, i64 2148894964, i64 2148894984, i64 2148895081, i64 2148893943, i64 2148893957, i64 2148893963, i64 2148894013, i64 2148894059, i64 2148894092}
!34 = !{i64 2149794599}
!35 = !{i64 2149730522}
!36 = !{i64 2148884221, i64 2148884268, i64 2148884274, i64 2148884311, i64 2148884329, i64 2148885669, i64 2148885717, i64 2148885765, i64 2148885828, i64 2148885877, i64 2148884407, i64 2148884432, i64 2148884458, i64 2148884464, i64 2148885335, i64 2148885375, i64 2148885393, i64 2148885425, i64 2148885453, i64 2148885507, i64 2148885527, i64 2148885624, i64 2148884487, i64 2148884501, i64 2148884507, i64 2148884557, i64 2148884603, i64 2148884636}
!37 = !{i64 2147830861, i64 2147831382, i64 2147831412, i64 2147831438, i64 2147831470, i64 2147831499}
!38 = !{i64 2151401345}
!39 = !{i64 2155114553}
!40 = !{i64 2149429201}
!41 = !{i64 2149033886, i64 2149033933, i64 2149033939, i64 2149033976, i64 2149033994, i64 2149034921, i64 2149034969, i64 2149035017, i64 2149035080, i64 2149035129, i64 2149034072, i64 2149034097, i64 2149034123, i64 2149034129, i64 2149034166, i64 2149034172, i64 2149034222, i64 2149034268, i64 2149034301}
!42 = !{i64 2155142909}
!43 = !{i1 (%struct.io_worker*, i8*)* @io_wq_worker_affinity, i1 (%struct.io_worker*, i8*)* @io_wq_worker_cancel, i1 (%struct.io_worker*, i8*)* @io_wq_worker_wake}
!44 = !{i64 2147757175, i64 2147757839, i64 2147757869, i64 2147757901, i64 2147757935, i64 2147757970, i64 2147757995}
!45 = !{i64 2147831714, i64 2147832376, i64 2147832406, i64 2147832437, i64 2147832469, i64 2147832504, i64 2147832529}
!46 = !{i64 2147820291, i64 2147820802, i64 2147820832, i64 2147820858, i64 2147820890, i64 2147820919}
!47 = !{i64 2149407273}
!48 = !{i64 2149407490}
