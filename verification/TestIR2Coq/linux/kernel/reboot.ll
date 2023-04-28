; ModuleID = 'kernel/reboot.c'
source_filename = "kernel/reboot.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init\22, \22a\22\09\09"
module asm "__initcall__kmod_reboot__422_891_reboot_ksysfs_init7:\09\09\09"
module asm ".long\09reboot_ksysfs_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.cpumask = type { [4 x i64] }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.2, %union.anon.68, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.56, %struct.list_head, %struct.list_head, %union.anon.57 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.56 = type { %struct.list_head }
%union.anon.57 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.69 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.38, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.38 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.58 }
%union.anon.58 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.59, %union.anon.60 }
%union.anon.59 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.60 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.64 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.62, %struct.qspinlock }
%union.anon.62 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.64 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.68 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.37 = type { %struct.callback_head }
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
%struct.kernel_siginfo = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.53, i32, [12 x i8] }
%union.anon.53 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.55, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.55 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kmem_cache = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34, [48 x i8] }
%struct.anon.34 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.kobj_attribute = type { %struct.attribute, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)*, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* }
%struct.pt_regs = type { %union.anon.80, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.80 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@C_A_D = dso_local local_unnamed_addr global i32 1, align 4
@panic_reboot_mode = dso_local local_unnamed_addr global i32 -1, align 4
@reboot_default = dso_local local_unnamed_addr global i32 1, align 4
@reboot_type = dso_local local_unnamed_addr global i32 97, align 4
@reboot_notifier_list = external dso_local global %struct.blocking_notifier_head, align 8
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"devm_unregister_reboot_notifier\00", align 1
@restart_handler_list = internal global %struct.atomic_notifier_head zeroinitializer, align 8
@reboot_mode = dso_local local_unnamed_addr global i32 0, align 4
@reboot_cpu = dso_local local_unnamed_addr global i32 0, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"\010reboot: Restarting system\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\010reboot: Restarting system with command '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\010reboot: System halted\0A\00", align 1
@pm_power_off_prepare = dso_local local_unnamed_addr global void ()* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"\010reboot: Power down\0A\00", align 1
@system_transition_mutex = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @system_transition_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @system_transition_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@ctrl_alt_del.cad_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @ctrl_alt_del.cad_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @ctrl_alt_del.cad_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @deferred_cad }, align 8
@poweroff_cmd = dso_local global [256 x i8] c"/sbin/poweroff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@poweroff_force = internal unnamed_addr global i1 false, align 1
@poweroff_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @poweroff_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @poweroff_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @poweroff_work_func }, align 8
@reboot_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @reboot_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @reboot_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @reboot_work_func }, align 8
@hw_protection_shutdown.allow_proceed = internal global %struct.atomic_t { i32 1 }, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"\010reboot: HARDWARE PROTECTION shutdown (%s)\0A\00", align 1
@__setup_str_reboot_setup = internal constant [8 x i8] c"reboot=\00", section ".init.rodata", align 1
@__setup_reboot_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__setup_str_reboot_setup, i32 0, i32 0), i32 (i8*)* @reboot_setup, i32 0 }, section ".init.setup", align 8
@__UNIQUE_ID___addressable_reboot_ksysfs_init423 = internal global i8* bitcast (i32 ()* @reboot_ksysfs_init to i8*), section ".discard.addressable", align 8
@cad_pid = dso_local local_unnamed_addr global %struct.pid* null, align 8
@reboot_force = dso_local local_unnamed_addr global i32 0, align 4
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@pm_power_off = external dso_local local_unnamed_addr global void ()*, align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.6 = private unnamed_addr constant [63 x i8] c"\014reboot: Failed to start orderly shutdown: forcing the issue\0A\00", align 1
@run_cmd.envp = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i8* null], align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", align 1
@reboot_cmd = internal constant [13 x i8] c"/sbin/reboot\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"\014reboot: Failed to start orderly reboot: forcing the issue\0A\00", align 1
@hw_failure_emergency_poweroff_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @hw_failure_emergency_poweroff_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.delayed_work* @hw_failure_emergency_poweroff_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @hw_failure_emergency_poweroff_func }, %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152 }, %struct.workqueue_struct* null, i32 0 }, align 8
@.str.10 = private unnamed_addr constant [65 x i8] c"\010reboot: Hardware protection timed-out. Trying forced poweroff\0A\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"\010reboot: Hardware protection shutdown failed. Trying emergency restart\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"panic_\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.13 = private unnamed_addr constant [92 x i8] c"\013reboot: Ignoring the CPU number in reboot= option. CPU %d exceeds possible cpu number %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global %struct.kobject*, align 8
@reboot_attr_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @reboot_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@reboot_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @reboot_mode_attr, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.kobj_attribute, %struct.kobj_attribute* @reboot_cpu_attr, i32 0, i32 0), %struct.attribute* null], align 8
@reboot_mode_attr = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i16 420 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @mode_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @mode_store }, align 8
@reboot_cpu_attr = internal global %struct.kobj_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i16 420 }, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @cpu_show, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @cpu_store }, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"warm\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_reboot_ksysfs_init423 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_reboot_setup to i8*)], section "llvm.metadata"
@switch.table.mode_show = private unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @emergency_restart() local_unnamed_addr #0 {
entry:
  call void @kmsg_dump(i32 noundef 3) #9
  call fastcc void @machine_emergency_restart() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @machine_emergency_restart() unnamed_addr #0 {
entry:
  call void @machine_restart(i8* noundef null) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_restart_prepare(i8* noundef %cmd) local_unnamed_addr #0 {
entry:
  %call = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef nonnull @reboot_notifier_list, i64 noundef 1, i8* noundef %cmd) #9
  store i32 5, i32* @system_state, align 4
  call fastcc void @usermodehelper_disable() #10
  call void @device_shutdown() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @usermodehelper_disable() unnamed_addr #0 {
entry:
  %call = call i32 @__usermodehelper_disable(i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_shutdown() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_reboot_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef nonnull @reboot_notifier_list, %struct.notifier_block* noundef %nb) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unregister_reboot_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef nonnull @reboot_notifier_list, %struct.notifier_block* noundef %nb) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_register_reboot_notifier(%struct.device* noundef %dev, %struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_unregister_reboot_notifier, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)) #9
  %0 = bitcast i8* %call to %struct.notifier_block**
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @register_reboot_notifier(%struct.notifier_block* noundef %nb) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store %struct.notifier_block* %nb, %struct.notifier_block** %0, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.else, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call1, %if.else ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_unregister_reboot_notifier(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %0 = bitcast i8* %res to %struct.notifier_block**
  %1 = load %struct.notifier_block*, %struct.notifier_block** %0, align 8
  %call = call i32 @unregister_reboot_notifier(%struct.notifier_block* noundef %1) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/reboot.c\22; .popsection; .long 14472b - 14470b; .short 113; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_restart_handler(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef nonnull @restart_handler_list, %struct.notifier_block* noundef %nb) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unregister_restart_handler(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* noundef nonnull @restart_handler_list, %struct.notifier_block* noundef %nb) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_kernel_restart(i8* noundef %cmd) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @reboot_mode, align 4
  %conv = sext i32 %0 to i64
  %call = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @restart_handler_list, i64 noundef %conv, i8* noundef %cmd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @migrate_to_reboot_cpu() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @reboot_cpu, align 4
  %call = call fastcc i1 @cpu_online(i32 noundef %0) #10
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @cpumask_first() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cpu.0 = phi i32 [ %0, %entry ], [ %call1, %if.then ]
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 4
  %3 = load i32, i32* %flags, align 4
  %or = or i32 %3, 67108864
  store i32 %or, i32* %flags, align 4
  %call4 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %cpu.0) #10
  %call5 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %2, %struct.cpumask* noundef nonnull %call4) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) #10
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_first() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @find_first_bit() #10
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #4 {
entry:
  %rem = and i32 %cpu, 63
  %add = add nuw nsw i32 %rem, 1
  %idxprom = zext i32 %add to i64
  %div = lshr i32 %cpu, 6
  %idx.ext = zext i32 %div to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr [65 x [4 x i64]], [65 x [4 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, i64 %idx.neg
  %0 = bitcast i64* %add.ptr to %struct.cpumask*
  ret %struct.cpumask* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_restart(i8* noundef %cmd) local_unnamed_addr #0 {
entry:
  call void @kernel_restart_prepare(i8* noundef %cmd) #10
  call void @migrate_to_reboot_cpu() #10
  call void @syscore_shutdown() #9
  %tobool.not = icmp eq i8* %cmd, null
  br i1 %tobool.not, label %do.end, label %do.end2

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #13
  br label %if.end

do.end2:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %cmd) #13
  br label %if.end

if.end:                                           ; preds = %do.end2, %do.end
  call void @kmsg_dump(i32 noundef 4) #9
  call void @machine_restart(i8* noundef %cmd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @syscore_shutdown() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_restart(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_halt() local_unnamed_addr #0 {
entry:
  call fastcc void @kernel_shutdown_prepare(i32 noundef 3) #10
  call void @migrate_to_reboot_cpu() #10
  call void @syscore_shutdown() #9
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #13
  call void @kmsg_dump(i32 noundef 4) #9
  call void @machine_halt() #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernel_shutdown_prepare(i32 noundef %state) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %state, 3
  %cond = select i1 %cmp, i64 2, i64 3
  %call = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef nonnull @reboot_notifier_list, i64 noundef %cond, i8* noundef null) #9
  store i32 %state, i32* @system_state, align 4
  call fastcc void @usermodehelper_disable() #10
  call void @device_shutdown() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_halt() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_power_off() local_unnamed_addr #0 {
entry:
  call fastcc void @kernel_shutdown_prepare(i32 noundef 4) #10
  %0 = load void ()*, void ()** @pm_power_off_prepare, align 8
  %tobool.not = icmp eq void ()* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %0() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @migrate_to_reboot_cpu() #10
  call void @syscore_shutdown() #9
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #13
  call void @kmsg_dump(i32 noundef 4) #9
  call void @machine_power_off() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_power_off() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_reboot(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_reboot(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_reboot(i64 noundef %magic1, i64 noundef %magic2, i64 noundef %cmd, i64 noundef %arg) unnamed_addr #0 {
entry:
  %conv = trunc i64 %magic1 to i32
  %conv1 = trunc i64 %magic2 to i32
  %conv2 = trunc i64 %cmd to i32
  %0 = inttoptr i64 %arg to i8*
  %call = call fastcc i64 @__do_sys_reboot(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i8* noundef %0) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ctrl_alt_del() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @C_A_D, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @schedule_work(%struct.work_struct* noundef nonnull @ctrl_alt_del.cad_work) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @kill_cad_pid() #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @deferred_cad(%struct.work_struct* nocapture noundef readnone %dummy) #0 {
entry:
  call void @kernel_restart(i8* noundef null) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kill_cad_pid() unnamed_addr #0 {
entry:
  %0 = load %struct.pid*, %struct.pid** @cad_pid, align 8
  %call = call i32 @kill_pid(%struct.pid* noundef %0, i32 noundef 2, i32 noundef 1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @orderly_poweroff(i1 noundef %force) local_unnamed_addr #0 {
entry:
  br i1 %force, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* @poweroff_force, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @schedule_work(%struct.work_struct* noundef nonnull @poweroff_work) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @orderly_reboot() local_unnamed_addr #0 {
entry:
  call fastcc void @schedule_work(%struct.work_struct* noundef nonnull @reboot_work) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @hw_protection_shutdown(i8* noundef %reason, i32 noundef %ms_until_forced) local_unnamed_addr #0 {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* noundef %reason) #13
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return() #9
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @hw_failure_emergency_poweroff(i32 noundef %ms_until_forced) #10
  call void @orderly_poweroff(i1 noundef true) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hw_failure_emergency_poweroff(i32 noundef %poweroff_delay_ms) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %poweroff_delay_ms, 1
  br i1 %cmp, label %return, label %if.else.i

if.else.i:                                        ; preds = %entry
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %poweroff_delay_ms) #9
  call fastcc void @schedule_delayed_work(i64 noundef %call2.i) #10
  br label %return

return:                                           ; preds = %entry, %if.else.i
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @reboot_setup(i8* noundef %str) #6 section ".init.text" {
entry:
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %sw.epilog ]
  store i32 0, i32* @reboot_default, align 4
  %call = call i32 @strncmp(i8* noundef %str.addr.0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i64 noundef 6) #9
  %tobool.not = icmp eq i32 %call, 0
  %mode.0 = select i1 %tobool.not, i32* @panic_reboot_mode, i32* @reboot_mode
  %str.addr.1.idx = select i1 %tobool.not, i64 6, i64 0
  %str.addr.1 = getelementptr i8, i8* %str.addr.0, i64 %str.addr.1.idx
  %0 = load i8, i8* %str.addr.1, align 1
  switch i8 %0, label %sw.epilog [
    i8 119, label %sw.bb
    i8 99, label %sw.bb1
    i8 104, label %sw.bb2
    i8 115, label %sw.bb3
    i8 103, label %sw.bb27
    i8 98, label %sw.bb28
    i8 97, label %sw.bb28
    i8 107, label %sw.bb28
    i8 116, label %sw.bb28
    i8 101, label %sw.bb28
    i8 112, label %sw.bb28
    i8 102, label %sw.bb30
  ]

sw.bb:                                            ; preds = %for.cond
  store i32 1, i32* %mode.0, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.cond
  store i32 0, i32* %mode.0, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.cond
  store i32 2, i32* %mode.0, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.cond
  %arrayidx = getelementptr i8, i8* %str.addr.1, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  %cmp = icmp eq i8 %1, 109
  br i1 %cmp, label %land.end, label %land.end.thread

land.end:                                         ; preds = %sw.bb3
  %arrayidx6 = getelementptr i8, i8* %str.addr.1, i64 2
  %2 = load i8, i8* %arrayidx6, align 1
  %cmp8 = icmp eq i8 %2, 112
  %spec.select = select i1 %cmp8, i64 3, i64 1
  %add.ptr10.phi.trans.insert = getelementptr i8, i8* %str.addr.1, i64 %spec.select
  %.pre = load i8, i8* %add.ptr10.phi.trans.insert, align 1
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %sw.bb3
  %3 = phi i8 [ %1, %sw.bb3 ], [ %.pre, %land.end ]
  %4 = phi i64 [ 1, %sw.bb3 ], [ %spec.select, %land.end ]
  %add.ptr10 = getelementptr i8, i8* %str.addr.1, i64 %4
  %conv12 = zext i8 %3 to i32
  %call13 = call fastcc i32 @isdigit(i32 noundef %conv12) #10
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else25, label %if.then15

if.then15:                                        ; preds = %land.end.thread
  %call16 = call i64 @simple_strtoul(i8* noundef %add.ptr10, i8** noundef null, i32 noundef 0) #9
  %conv17 = trunc i64 %call16 to i32
  %call18 = call fastcc i32 @cpumask_weight() #10
  %cmp19.not = icmp ugt i32 %call18, %conv17
  br i1 %cmp19.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.then15
  %call22 = call fastcc i32 @cpumask_weight() #10
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv17, i32 noundef %call22) #13
  br label %sw.epilog

if.end24:                                         ; preds = %if.then15
  store i32 %conv17, i32* @reboot_cpu, align 4
  br label %sw.epilog

if.else25:                                        ; preds = %land.end.thread
  store i32 3, i32* %mode.0, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.cond
  store i32 4, i32* %mode.0, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  %conv29 = zext i8 %0 to i32
  store i32 %conv29, i32* @reboot_type, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %for.cond
  store i32 1, i32* @reboot_force, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end24, %if.else25, %for.cond, %sw.bb30, %sw.bb28, %sw.bb27, %sw.bb2, %sw.bb1, %sw.bb
  %str.addr.2 = phi i8* [ %str.addr.1, %for.cond ], [ %str.addr.1, %sw.bb30 ], [ %str.addr.1, %sw.bb28 ], [ %str.addr.1, %sw.bb27 ], [ %add.ptr10, %if.else25 ], [ %str.addr.1, %sw.bb2 ], [ %str.addr.1, %sw.bb1 ], [ %str.addr.1, %sw.bb ], [ %add.ptr10, %if.end24 ], [ %add.ptr10, %do.end ]
  %call31 = call i8* @strchr(i8* noundef %str.addr.2, i32 noundef 44) #9
  %tobool32.not = icmp eq i8* %call31, null
  %incdec.ptr = getelementptr i8, i8* %call31, i64 1
  br i1 %tobool32.not, label %for.end, label %for.cond

for.end:                                          ; preds = %sw.epilog
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @reboot_ksysfs_init() #6 section ".init.text" {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @kernel_kobj, align 8
  %call = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %struct.kobject* noundef %0) #9
  %tobool.not = icmp eq %struct.kobject* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @sysfs_create_group(%struct.kobject* noundef nonnull %call, %struct.attribute_group* noundef nonnull @reboot_attr_group) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @kobject_put(%struct.kobject* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ -12, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usermodehelper_disable(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) unnamed_addr #3 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit() unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_online_mask, i64 0, i32 0, i64 0), i64 noundef 256) #9
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_reboot(i32 noundef %magic1, i32 noundef %magic2, i32 noundef %cmd, i8* noundef %arg) unnamed_addr #0 {
entry:
  %buffer = alloca [256 x i8], align 1
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #12, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %1) #9
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %2, i8 0, i64 256, i1 false), !annotation !10
  %user_ns = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %call1, i64 0, i32 7
  %3 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call2 = call i1 @ns_capable(%struct.user_namespace* noundef %3, i32 noundef 22) #9
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq i32 %magic1, -18751827
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  switch i32 %magic2, label %cleanup [
    i32 672274793, label %if.end10
    i32 537993216, label %if.end10
    i32 369367448, label %if.end10
    i32 85072278, label %if.end10
  ]

if.end10:                                         ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false
  %cmp14 = icmp ne i32 %cmd, 1126301404
  %4 = load void ()*, void ()** @pm_power_off, align 8
  %tobool17 = icmp ne void ()* %4, null
  %or.cond37 = select i1 %cmp14, i1 true, i1 %tobool17
  %spec.store.select = select i1 %or.cond37, i32 %cmd, i32 -839974621
  call void @mutex_lock(%struct.mutex* noundef nonnull @system_transition_mutex) #9
  switch i32 %spec.store.select, label %sw.epilog [
    i32 19088743, label %sw.bb
    i32 -1985229329, label %sw.bb20
    i32 0, label %sw.bb21
    i32 -839974621, label %sw.bb22
    i32 1126301404, label %sw.bb23
    i32 -1582119980, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end10
  call void @kernel_restart(i8* noundef null) #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end10
  store i32 1, i32* @C_A_D, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end10
  store i32 0, i32* @C_A_D, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end10
  call void @kernel_halt() #10
  call void @do_exit(i64 noundef 0) #14
  unreachable

sw.bb23:                                          ; preds = %if.end10
  call void @kernel_power_off() #10
  call void @do_exit(i64 noundef 0) #14
  unreachable

sw.bb24:                                          ; preds = %if.end10
  %call25 = call i64 @strncpy_from_user(i8* noundef nonnull %2, i8* noundef %arg, i64 noundef 255) #9
  %5 = and i64 %call25, 2147483648
  %cmp27.not = icmp eq i64 %5, 0
  br i1 %cmp27.not, label %if.end30, label %sw.epilog

if.end30:                                         ; preds = %sw.bb24
  %arrayidx31 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i64 0, i64 255
  store i8 0, i8* %arrayidx31, align 1
  call void @kernel_restart(i8* noundef nonnull %2) #10
  %sext = shl i64 %call25, 32
  %phi.cast = ashr exact i64 %sext, 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end10, %sw.bb24, %if.end30, %sw.bb21, %sw.bb20, %sw.bb
  %ret.0 = phi i64 [ %phi.cast, %if.end30 ], [ 0, %sw.bb21 ], [ 0, %sw.bb20 ], [ 0, %sw.bb ], [ -14, %sw.bb24 ], [ -22, %if.end10 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @system_transition_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %sw.epilog
  %retval.0 = phi i64 [ %ret.0, %sw.epilog ], [ -1, %entry ], [ -22, %lor.lhs.false ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #11
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strncpy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(%struct.pid* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @poweroff_work_func(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  %.b1 = load i1, i1* @poweroff_force, align 1
  call fastcc void @__orderly_poweroff(i1 noundef %.b1) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__orderly_poweroff(i1 noundef %force) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @run_cmd(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @poweroff_cmd, i64 0, i64 0)) #10
  %tobool.not = icmp ne i32 %call, 0
  %0 = and i1 %tobool.not, %force
  br i1 %0, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0)) #13
  call void @emergency_sync() #9
  call void @kernel_power_off() #10
  br label %if.end

if.end:                                           ; preds = %entry, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @run_cmd(i8* noundef %cmd) unnamed_addr #0 {
entry:
  %call = call i8** @argv_split(i32 noundef 3264, i8* noundef %cmd, i32* noundef null) #9
  %tobool.not = icmp eq i8** %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %call, align 8
  %call1 = call i32 @call_usermodehelper(i8* noundef %0, i8** noundef nonnull %call, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @run_cmd.envp, i64 0, i64 0), i32 noundef 1) #9
  call void @argv_free(i8** noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ -12, %entry ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_sync() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8** @argv_split(i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(i8* noundef, i8** noundef, i8** noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @argv_free(i8** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @reboot_work_func(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  call fastcc void @__orderly_reboot() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__orderly_reboot() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @run_cmd(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @reboot_cmd, i64 0, i64 0)) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0)) #13
  call void @emergency_sync() #9
  call void @kernel_restart(i8* noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @hw_protection_shutdown.allow_proceed, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @hw_protection_shutdown.allow_proceed, i64 0, i32 0)) #11, !srcloc !11
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_delayed_work(i64 noundef %delay) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %0, i64 noundef %delay) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq, i64 noundef %delay) unnamed_addr #0 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef nonnull @hw_failure_emergency_poweroff_work, i64 noundef %delay) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @hw_failure_emergency_poweroff_func(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0)) #13
  call void @kernel_power_off() #10
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0)) #13
  call void @emergency_restart() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #4 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #9
  ret i32 %call4.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_create_and_add(i8* noundef, %struct.kobject* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @mode_show(%struct.kobject* nocapture noundef readnone %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %0 = load i32, i32* @reboot_mode, align 4
  %1 = icmp ult i32 %0, 5
  br i1 %1, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %2 = sext i32 %0 to i64
  %switch.gep = getelementptr inbounds [5 x i8*], [5 x i8*]* @switch.table.mode_show, i64 0, i64 %2
  %switch.load = load i8*, i8** %switch.gep, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %switch.lookup
  %val.0 = phi i8* [ %switch.load, %switch.lookup ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), %entry ]
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* noundef nonnull %val.0) #9
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @mode_store(%struct.kobject* nocapture noundef readnone %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %call = call i1 @capable(i32 noundef 22) #9
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #9
  %call2 = call i32 @strncmp(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i64 noundef %call1) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end28, label %if.else

if.else:                                          ; preds = %if.end
  %call4 = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #9
  %call5 = call i32 @strncmp(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 noundef %call4) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end28, label %if.else8

if.else8:                                         ; preds = %if.else
  %call9 = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #9
  %call10 = call i32 @strncmp(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 noundef %call9) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end28, label %if.else13

if.else13:                                        ; preds = %if.else8
  %call14 = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #9
  %call15 = call i32 @strncmp(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 noundef %call14) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end28, label %if.else18

if.else18:                                        ; preds = %if.else13
  %call19 = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #9
  %call20 = call i32 @strncmp(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 noundef %call19) #9
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end28, label %return

if.end28:                                         ; preds = %if.else18, %if.else13, %if.else8, %if.else, %if.end
  %.sink = phi i32 [ 0, %if.end ], [ 1, %if.else ], [ 2, %if.else8 ], [ 3, %if.else13 ], [ 4, %if.else18 ]
  store i32 %.sink, i32* @reboot_mode, align 4
  store i32 0, i32* @reboot_default, align 4
  br label %return

return:                                           ; preds = %if.else18, %entry, %if.end28
  %retval.0 = phi i64 [ %count, %if.end28 ], [ -1, %entry ], [ -22, %if.else18 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @cpu_show(%struct.kobject* nocapture noundef readnone %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %0 = load i32, i32* @reboot_cpu, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32 noundef %0) #9
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @cpu_store(%struct.kobject* nocapture noundef readnone %kobj, %struct.kobj_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %cpunum = alloca i32, align 4
  %0 = bitcast i32* %cpunum to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 0, i32* %cpunum, align 4, !annotation !10
  %call = call i1 @capable(i32 noundef 22) #9
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtouint(i8* noundef %buf, i32 noundef 0, i32* noundef nonnull %cpunum) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %conv = sext i32 %call1 to i64
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load i32, i32* %cpunum, align 4
  %call4 = call fastcc i32 @cpumask_weight() #10
  %cmp.not = icmp ult i32 %1, %call4
  br i1 %cmp.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  store i32 0, i32* @reboot_default, align 4
  %2 = load i32, i32* %cpunum, align 4
  store i32 %2, i32* @reboot_cpu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %if.end7, %if.then2
  %retval.0 = phi i64 [ %conv, %if.then2 ], [ %count, %if.end7 ], [ -1, %entry ], [ -34, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2155539274}
!9 = !{i64 1063134}
!10 = !{!"auto-init"}
!11 = !{i64 2147678461, i64 2147679109, i64 2147679139, i64 2147679171, i64 2147679205, i64 2147679241, i64 2147679266}
