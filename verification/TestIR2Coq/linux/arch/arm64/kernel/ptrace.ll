; ModuleID = 'arch/arm64/kernel/ptrace.c'
source_filename = "arch/arm64/kernel/ptrace.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.pt_regs_offset = type { i8*, i32 }
%struct.user_regset_view = type { i8*, %struct.user_regset*, i32, i32, i16, i8 }
%struct.user_regset = type { i32 (%struct.task_struct*, %struct.user_regset*, [2 x i64])*, i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)*, i32 (%struct.task_struct*, %struct.user_regset*)*, i32 (%struct.task_struct*, %struct.user_regset*, i32)*, i32, i32, i32, i32, i32 }
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
%struct.poll_table_struct = type opaque
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
%struct.atomic_t = type { i32 }
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
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.membuf = type { i8*, i64 }

@regoffset_table = internal unnamed_addr constant [36 x %struct.pt_regs_offset] [%struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 8 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 16 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 24 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 32 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 40 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 48 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 56 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 64 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 72 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 80 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 88 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 96 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 104 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 112 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 120 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 128 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 136 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 144 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 152 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 160 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 168 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 176 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 184 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 192 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 200 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 208 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 216 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 224 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 232 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 240 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 240 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i32 248 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i32 256 }, %struct.pt_regs_offset { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 264 }, %struct.pt_regs_offset zeroinitializer], align 8
@user_aarch64_view = internal constant %struct.user_regset_view { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), %struct.user_regset* getelementptr inbounds ([4 x %struct.user_regset], [4 x %struct.user_regset]* @aarch64_regsets, i32 0, i32 0), i32 4, i32 0, i16 183, i8 0 }, align 8
@.str = private unnamed_addr constant [3 x i8] c"x0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"x3\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"x4\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"x5\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"x6\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"x7\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"x8\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"x9\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"x10\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"x11\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"x12\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"x13\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"x14\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"x15\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"x16\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"x17\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"x18\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"x19\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"x20\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"x21\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"x22\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"x23\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"x24\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"x25\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"x26\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"x27\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"x28\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"x29\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"x30\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"pstate\00", align 1
@irq_stack_ptr = external dso_local global i64*, section ".data..percpu", align 8
@.str.35 = private unnamed_addr constant [8 x i8] c"aarch64\00", align 1
@aarch64_regsets = internal constant [4 x %struct.user_regset] [%struct.user_regset { i32 (%struct.task_struct*, %struct.user_regset*, [2 x i64])* @gpr_get, i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)* @gpr_set, i32 (%struct.task_struct*, %struct.user_regset*)* null, i32 (%struct.task_struct*, %struct.user_regset*, i32)* null, i32 34, i32 8, i32 8, i32 0, i32 1 }, %struct.user_regset { i32 (%struct.task_struct*, %struct.user_regset*, [2 x i64])* @fpr_get, i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)* @fpr_set, i32 (%struct.task_struct*, %struct.user_regset*)* @fpr_active, i32 (%struct.task_struct*, %struct.user_regset*, i32)* null, i32 132, i32 4, i32 4, i32 0, i32 2 }, %struct.user_regset { i32 (%struct.task_struct*, %struct.user_regset*, [2 x i64])* @tls_get, i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)* @tls_set, i32 (%struct.task_struct*, %struct.user_regset*)* null, i32 (%struct.task_struct*, %struct.user_regset*, i32)* null, i32 1, i32 8, i32 8, i32 0, i32 1025 }, %struct.user_regset { i32 (%struct.task_struct*, %struct.user_regset*, [2 x i64])* @system_call_get, i32 (%struct.task_struct*, %struct.user_regset*, i32, i32, i8*, i8*)* @system_call_set, i32 (%struct.task_struct*, %struct.user_regset*)* null, i32 (%struct.task_struct*, %struct.user_regset*, i32)* null, i32 1, i32 4, i32 4, i32 0, i32 1028 }], align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @regs_query_register_offset(i8* noundef %name) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %0 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %entry ], [ %2, %for.inc ]
  %roff.08 = phi %struct.pt_regs_offset* [ getelementptr inbounds ([36 x %struct.pt_regs_offset], [36 x %struct.pt_regs_offset]* @regoffset_table, i64 0, i64 0), %entry ], [ %incdec.ptr, %for.inc ]
  %call = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef %name) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %offset = getelementptr inbounds %struct.pt_regs_offset, %struct.pt_regs_offset* %roff.08, i64 0, i32 1
  %1 = load i32, i32* %offset, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.pt_regs_offset, %struct.pt_regs_offset* %roff.08, i64 1
  %name1 = getelementptr inbounds %struct.pt_regs_offset, %struct.pt_regs_offset* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %name1, align 8
  %cmp.not = icmp eq i8* %2, null
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ -22, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i64 @regs_get_kernel_stack_nth(%struct.pt_regs* nocapture noundef readonly %regs, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %call = call fastcc i64 @kernel_stack_pointer(%struct.pt_regs* noundef %regs) #13
  %0 = inttoptr i64 %call to i64*
  %idx.ext = zext i32 %n to i64
  %add.ptr = getelementptr i64, i64* %0, i64 %idx.ext
  %1 = ptrtoint i64* %add.ptr to i64
  %call1 = call fastcc i1 @regs_within_kernel_stack(%struct.pt_regs* noundef %regs, i64 noundef %1) #13
  br i1 %call1, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %add.ptr, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %2, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @kernel_stack_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @regs_within_kernel_stack(%struct.pt_regs* nocapture noundef readonly %regs, i64 noundef %addr) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @kernel_stack_pointer(%struct.pt_regs* noundef %regs) #13
  %0 = xor i64 %call, %addr
  %cmp = icmp ult i64 %0, 16384
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call2 = call fastcc i1 @on_irq_stack(i64 noundef %addr) #13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ %call2, %lor.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ptrace_disable(%struct.task_struct* noundef %child) local_unnamed_addr #0 {
entry:
  call void @user_disable_single_step(%struct.task_struct* noundef %child) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_disable_single_step(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local nonnull %struct.user_regset_view* @task_user_regset_view(%struct.task_struct* nocapture noundef readnone %task) local_unnamed_addr #5 {
entry:
  ret %struct.user_regset_view* @user_aarch64_view
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @arch_ptrace(%struct.task_struct* noundef %child, i64 noundef %request, i64 noundef %addr, i64 noundef %data) local_unnamed_addr #0 {
entry:
  %request.off = add i64 %request, -33
  %switch = icmp ult i64 %request.off, 2
  br i1 %switch, label %return, label %sw.epilog

sw.epilog:                                        ; preds = %entry
  %call1 = call i32 @ptrace_request(%struct.task_struct* noundef %child, i64 noundef %request, i64 noundef %addr, i64 noundef %data) #12
  %conv2 = sext i32 %call1 to i64
  br label %return

return:                                           ; preds = %entry, %sw.epilog
  %retval.0 = phi i64 [ %conv2, %sw.epilog ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptrace_request(%struct.task_struct* noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @syscall_trace_enter(%struct.pt_regs* nocapture noundef %regs) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1, align 8
  %and = and i64 %2, 4352
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @tracehook_report_syscall(%struct.pt_regs* noundef %regs, i32 noundef 0) #13
  %and2 = and i64 %2, 4096
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.then, %entry
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call10 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 10) #13
  %syscallno14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 2
  %4 = load i32, i32* %syscallno14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end5
  %retval.0 = phi i32 [ %4, %if.end5 ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tracehook_report_syscall(%struct.pt_regs* nocapture noundef %regs, i32 noundef %dir) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 7
  %0 = load i64, i64* %arrayidx, align 8
  %conv = zext i32 %dir to i64
  store i64 %conv, i64* %arrayidx, align 8
  %cmp = icmp eq i32 %dir, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @tracehook_report_syscall_entry() #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  call fastcc void @forget_syscall(%struct.pt_regs* noundef %regs) #13
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  store i64 %0, i64* %arrayidx, align 8
  br label %if.end22

if.else:                                          ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = getelementptr %struct.task_struct, %struct.task_struct* %2, i64 0, i32 0
  %call11 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %3, i32 noundef 21) #13
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.else
  call fastcc void @tracehook_report_syscall_exit(i32 noundef 0) #13
  store i64 %0, i64* %arrayidx, align 8
  br label %if.end22

if.else17:                                        ; preds = %if.else
  store i64 %0, i64* %arrayidx, align 8
  call fastcc void @tracehook_report_syscall_exit(i32 noundef 1) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then13, %if.else17, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #6 {
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
define dso_local void @syscall_trace_exit(%struct.pt_regs* nocapture noundef %regs) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %flags1, align 8
  %and4 = and i64 %2, 2097408
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %entry
  call fastcc void @tracehook_report_syscall(%struct.pt_regs* noundef %regs, i32 noundef 1) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @valid_user_regs(%struct.user_pt_regs* noundef %regs, %struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  call void @user_regs_reset_single_step(%struct.user_pt_regs* noundef %regs, %struct.task_struct* noundef %task) #12
  %call3 = call fastcc i32 @valid_native_regs(%struct.user_pt_regs* noundef %regs) #13
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_regs_reset_single_step(%struct.user_pt_regs* noundef, %struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #5 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @valid_native_regs(%struct.user_pt_regs* nocapture noundef %regs) unnamed_addr #7 {
entry:
  %pstate = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %regs, i64 0, i32 3
  %0 = load i64, i64* %pstate, align 8
  %1 = and i64 %0, 991
  %2 = icmp eq i64 %1, 0
  %spec.select.v = select i1 %2, i64 4078968799, i64 4026531840
  %spec.select = and i64 %0, %spec.select.v
  %spec.select34 = zext i1 %2 to i32
  store i64 %spec.select, i64* %pstate, align 8
  ret i32 %spec.select34
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @on_irq_stack(i64 noundef %sp) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call, ptrtoint (i64** @irq_stack_ptr to i64)
  %0 = inttoptr i64 %add to i64**
  %1 = load i64*, i64** %0, align 8
  %2 = ptrtoint i64* %1 to i64
  %add8 = add i64 %2, 16384
  %call9 = call fastcc i1 @on_stack(i64 noundef %sp, i64 noundef %2, i64 noundef %add8) #13
  ret i1 %call9
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #3 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #15, !srcloc !9
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @on_stack(i64 noundef %sp, i64 noundef %low, i64 noundef %high) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq i64 %low, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ult i64 %sp, %low
  %cmp1 = icmp ugt i64 %sp, -9
  %or.cond = or i1 %cmp1, %cmp
  %add = add i64 %sp, 8
  %cmp4 = icmp ugt i64 %add, %high
  %or.cond1 = or i1 %or.cond, %cmp4
  %not.or.cond1 = xor i1 %or.cond1, true
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %not.or.cond1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gpr_get(%struct.task_struct* nocapture noundef readonly %target, %struct.user_regset* nocapture noundef readnone %regset, [2 x i64] %to.coerce) #0 {
entry:
  %to = alloca %struct.membuf, align 8
  %to.coerce.fca.0.extract = extractvalue [2 x i64] %to.coerce, 0
  %to.coerce.fca.0.gep = bitcast %struct.membuf* %to to i64*
  store i64 %to.coerce.fca.0.extract, i64* %to.coerce.fca.0.gep, align 8
  %to.coerce.fca.1.extract = extractvalue [2 x i64] %to.coerce, 1
  %0 = getelementptr inbounds %struct.membuf, %struct.membuf* %to, i64 0, i32 1
  store i64 %to.coerce.fca.1.extract, i64* %0, align 8
  %call = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %target) #13
  %add.ptr1 = getelementptr i8, i8* %call, i64 16048
  %call2 = call fastcc i32 @membuf_write(%struct.membuf* noundef nonnull %to, i8* noundef %add.ptr1, i64 noundef 272) #13
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @gpr_set(%struct.task_struct* noundef %target, %struct.user_regset* nocapture noundef readnone %regset, i32 noundef %pos, i32 noundef %count, i8* noundef %kbuf, i8* noundef %ubuf) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %kbuf.addr = alloca i8*, align 8
  %ubuf.addr = alloca i8*, align 8
  %newregs = alloca %struct.user_pt_regs, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  store i8* %kbuf, i8** %kbuf.addr, align 8
  store i8* %ubuf, i8** %ubuf.addr, align 8
  %0 = bitcast %struct.user_pt_regs* %newregs to i8*
  call void @llvm.lifetime.start.p0i8(i64 272, i8* nonnull %0) #16
  %call = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %target) #13
  %add.ptr1 = getelementptr i8, i8* %call, i64 16048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(272) %0, i8* noundef align 8 dereferenceable(272) %add.ptr1, i64 272, i1 false)
  %call2 = call fastcc i32 @user_regset_copyin(i32* noundef nonnull %pos.addr, i32* noundef nonnull %count.addr, i8** noundef nonnull %kbuf.addr, i8** noundef nonnull %ubuf.addr, i8* noundef nonnull %0, i32 noundef -1) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @valid_user_regs(%struct.user_pt_regs* noundef nonnull %newregs, %struct.task_struct* noundef %target) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %target) #13
  %add.ptr9 = getelementptr i8, i8* %call7, i64 16048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(272) %add.ptr9, i8* noundef nonnull align 8 dereferenceable(272) %0, i64 272, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call2, %entry ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 272, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @fpr_get(%struct.task_struct* noundef %target, %struct.user_regset* nocapture noundef readnone %regset, [2 x i64] %to.coerce) #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #12
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %return, label %if.end

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #12
  br i1 %call6.i.i, label %return, label %if.end

if.end:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %1, %target
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @fpsimd_preserve_current_state() #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call fastcc i32 @__fpr_get(%struct.task_struct* noundef %target, [2 x i64] %to.coerce) #13
  br label %return

return:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit, %if.end3
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %system_supports_fpsimd.exit ], [ -22, %if.then3.i.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @fpr_set(%struct.task_struct* noundef %target, %struct.user_regset* nocapture noundef readnone %regset, i32 noundef %pos, i32 noundef %count, i8* noundef %kbuf, i8* noundef %ubuf) #0 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #12
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %cleanup, label %if.end

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #12
  br i1 %call6.i.i, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  %call1 = call fastcc i32 @__fpr_set(%struct.task_struct* noundef %target, i32 noundef %pos, i32 noundef %count, i8* noundef %kbuf, i8* noundef %ubuf) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  call void @fpsimd_flush_task_state(%struct.task_struct* noundef %target) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i, %if.end, %system_supports_fpsimd.exit, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %system_supports_fpsimd.exit ], [ %call1, %if.end ], [ -22, %if.then3.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i32 @fpr_active(%struct.task_struct* nocapture noundef readnone %target, %struct.user_regset* nocapture noundef readonly %regset) #6 {
entry:
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %system_supports_fpsimd.exit

if.then3.i.i:                                     ; preds = %entry
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 22, i32 0)) #12
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %return, label %if.end

system_supports_fpsimd.exit:                      ; preds = %entry
  %call6.i.i = call fastcc i1 @cpus_have_cap() #12
  br i1 %call6.i.i, label %return, label %if.end

if.end:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit
  %n = getelementptr inbounds %struct.user_regset, %struct.user_regset* %regset, i64 0, i32 4
  %0 = load i32, i32* %n, align 8
  br label %return

return:                                           ; preds = %if.then3.i.i, %system_supports_fpsimd.exit, %if.end
  %retval.0 = phi i32 [ %0, %if.end ], [ -19, %system_supports_fpsimd.exit ], [ -19, %if.then3.i.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @tls_get(%struct.task_struct* noundef readonly %target, %struct.user_regset* nocapture noundef readnone %regset, [2 x i64] %to.coerce) #0 {
entry:
  %__v = alloca i64, align 8
  %to.coerce.fca.0.extract = extractvalue [2 x i64] %to.coerce, 0
  %0 = inttoptr i64 %to.coerce.fca.0.extract to i8*
  %to.coerce.fca.1.extract = extractvalue [2 x i64] %to.coerce, 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %2, %target
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @tls_preserve_current_state() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool.not = icmp eq i64 %to.coerce.fca.1.extract, 0
  br i1 %tobool.not, label %if.end13, label %if.then1

if.then1:                                         ; preds = %if.end
  %3 = bitcast i64* %__v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #16
  %tp_value = getelementptr inbounds %struct.task_struct, %struct.task_struct* %target, i64 0, i32 137, i32 1, i32 0
  %4 = load i64, i64* %tp_value, align 16
  store i64 %4, i64* %__v, align 8
  %cmp3 = icmp ult i64 %to.coerce.fca.1.extract, 8
  br i1 %cmp3, label %if.then6, label %if.else, !prof !10

if.then6:                                         ; preds = %if.then1
  %call8 = call i8* @memcpy(i8* noundef %0, i8* noundef nonnull %3, i64 noundef %to.coerce.fca.1.extract) #12
  br label %if.end10

if.else:                                          ; preds = %if.then1
  %5 = inttoptr i64 %to.coerce.fca.0.extract to i64*
  store i64 %4, i64* %5, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %__size.0 = phi i64 [ %to.coerce.fca.1.extract, %if.then6 ], [ 8, %if.else ]
  %sub = sub i64 %to.coerce.fca.1.extract, %__size.0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #16
  %phi.cast = trunc i64 %sub to i32
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %if.end
  %to.sroa.5.0 = phi i32 [ %phi.cast, %if.end10 ], [ 0, %if.end ]
  ret i32 %to.sroa.5.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @tls_set(%struct.task_struct* nocapture noundef %target, %struct.user_regset* nocapture noundef readnone %regset, i32 noundef %pos, i32 noundef %count, i8* noundef %kbuf, i8* noundef %ubuf) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %kbuf.addr = alloca i8*, align 8
  %ubuf.addr = alloca i8*, align 8
  %tls = alloca i64, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  store i8* %kbuf, i8** %kbuf.addr, align 8
  store i8* %ubuf, i8** %ubuf.addr, align 8
  %0 = bitcast i64* %tls to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %tp_value = getelementptr inbounds %struct.task_struct, %struct.task_struct* %target, i64 0, i32 137, i32 1, i32 0
  %1 = load i64, i64* %tp_value, align 16
  store i64 %1, i64* %tls, align 8
  %call = call fastcc i32 @user_regset_copyin(i32* noundef nonnull %pos.addr, i32* noundef nonnull %count.addr, i8** noundef nonnull %kbuf.addr, i8** noundef nonnull %ubuf.addr, i8* noundef nonnull %0, i32 noundef -1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %tls, align 8
  store i64 %2, i64* %tp_value, align 16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @system_call_get(%struct.task_struct* nocapture noundef readonly %target, %struct.user_regset* nocapture noundef readnone %regset, [2 x i64] %to.coerce) #0 {
entry:
  %__v = alloca i32, align 4
  %to.coerce.fca.0.extract = extractvalue [2 x i64] %to.coerce, 0
  %0 = inttoptr i64 %to.coerce.fca.0.extract to i8*
  %to.coerce.fca.1.extract = extractvalue [2 x i64] %to.coerce, 1
  %tobool.not = icmp eq i64 %to.coerce.fca.1.extract, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  %call = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %target) #13
  %syscallno = getelementptr i8, i8* %call, i64 16328
  %2 = bitcast i8* %syscallno to i32*
  %3 = load i32, i32* %2, align 8
  store i32 %3, i32* %__v, align 4
  %cmp = icmp ult i64 %to.coerce.fca.1.extract, 4
  br i1 %cmp, label %if.then5, label %if.else, !prof !10

if.then5:                                         ; preds = %if.then
  %call7 = call i8* @memcpy(i8* noundef %0, i8* noundef nonnull %1, i64 noundef %to.coerce.fca.1.extract) #12
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = inttoptr i64 %to.coerce.fca.0.extract to i32*
  store i32 %3, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %__size.0 = phi i64 [ %to.coerce.fca.1.extract, %if.then5 ], [ 4, %if.else ]
  %sub = sub i64 %to.coerce.fca.1.extract, %__size.0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  %phi.cast = trunc i64 %sub to i32
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  %to.sroa.5.0 = phi i32 [ %phi.cast, %if.end ], [ 0, %entry ]
  ret i32 %to.sroa.5.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @system_call_set(%struct.task_struct* nocapture noundef readonly %target, %struct.user_regset* nocapture noundef readnone %regset, i32 noundef %pos, i32 noundef %count, i8* noundef %kbuf, i8* noundef %ubuf) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %kbuf.addr = alloca i8*, align 8
  %ubuf.addr = alloca i8*, align 8
  %syscallno = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  store i8* %kbuf, i8** %kbuf.addr, align 8
  store i8* %ubuf, i8** %ubuf.addr, align 8
  %0 = bitcast i32* %syscallno to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  %call = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %target) #13
  %syscallno2 = getelementptr i8, i8* %call, i64 16328
  %1 = bitcast i8* %syscallno2 to i32*
  %2 = load i32, i32* %1, align 8
  store i32 %2, i32* %syscallno, align 4
  %call3 = call fastcc i32 @user_regset_copyin(i32* noundef nonnull %pos.addr, i32* noundef nonnull %count.addr, i8** noundef nonnull %kbuf.addr, i8** noundef nonnull %ubuf.addr, i8* noundef nonnull %0, i32 noundef -1) #13
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %syscallno, align 4
  %call4 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %target) #13
  %syscallno7 = getelementptr i8, i8* %call4, i64 16328
  %4 = bitcast i8* %syscallno7 to i32*
  store i32 %3, i32* %4, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %call3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #4 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @membuf_write(%struct.membuf* nocapture noundef %s, i8* noundef %v, i64 noundef %size) unnamed_addr #0 {
entry:
  %left = getelementptr inbounds %struct.membuf, %struct.membuf* %s, i64 0, i32 1
  %0 = load i64, i64* %left, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp ult i64 %0, %size
  %spec.select = select i1 %cmp, i64 %0, i64 %size
  %p = getelementptr inbounds %struct.membuf, %struct.membuf* %s, i64 0, i32 0
  %1 = load i8*, i8** %p, align 8
  %call = call i8* @memcpy(i8* noundef %1, i8* noundef %v, i64 noundef %spec.select) #12
  %2 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %spec.select
  store i8* %add.ptr, i8** %p, align 8
  %3 = load i64, i64* %left, align 8
  %sub = sub i64 %3, %spec.select
  store i64 %sub, i64* %left, align 8
  %phi.cast = trunc i64 %sub to i32
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  %4 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @user_regset_copyin(i32* nocapture noundef %pos, i32* nocapture noundef %count, i8** nocapture noundef %kbuf, i8** nocapture noundef %ubuf, i8* noundef %data, i32 noundef %end_pos) unnamed_addr #0 {
entry:
  %0 = load i32, i32* %count, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %do.body

do.body:                                          ; preds = %entry
  %1 = load i32, i32* %pos, align 4
  %cmp9 = icmp slt i32 %end_pos, 0
  %cmp11 = icmp ult i32 %1, %end_pos
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then13, label %return

if.then13:                                        ; preds = %do.body
  %sub = sub i32 %end_pos, %1
  %cmp16 = icmp ult i32 %0, %sub
  %2 = select i1 %cmp9, i1 true, i1 %cmp16
  %cond21 = select i1 %2, i32 %0, i32 %sub
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr i8, i8* %data, i64 %idx.ext
  %3 = load i8*, i8** %kbuf, align 8
  %tobool23.not = icmp eq i8* %3, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then13
  %conv25 = zext i32 %cond21 to i64
  %call = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef nonnull %3, i64 noundef %conv25) #12
  br label %cleanup.thread

if.else:                                          ; preds = %if.then13
  %4 = load i8*, i8** %ubuf, align 8
  %conv28 = zext i32 %cond21 to i64
  %call2.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #12
  %call3.i = call i64 @__arch_copy_from_user(i8* noundef %add.ptr, i8* noundef %call2.i, i64 noundef %conv28) #12
  %tobool30.not = icmp eq i64 %call3.i, 0
  br i1 %tobool30.not, label %cleanup.thread, label %return

cleanup.thread:                                   ; preds = %if.else, %if.then24
  %kbuf.sink3 = phi i8** [ %kbuf, %if.then24 ], [ %ubuf, %if.else ]
  %conv25.sink = phi i64 [ %conv25, %if.then24 ], [ %conv28, %if.else ]
  %5 = load i8*, i8** %kbuf.sink3, align 8
  %add.ptr27 = getelementptr i8, i8* %5, i64 %conv25.sink
  store i8* %add.ptr27, i8** %kbuf.sink3, align 8
  %6 = load i32, i32* %pos, align 4
  %add = add i32 %6, %cond21
  store i32 %add, i32* %pos, align 4
  %7 = load i32, i32* %count, align 4
  %sub37 = sub i32 %7, %cond21
  store i32 %sub37, i32* %count, align 4
  br label %return

return:                                           ; preds = %do.body, %cleanup.thread, %if.else, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ -14, %if.else ], [ 0, %cleanup.thread ], [ 0, %do.body ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #16, !srcloc !11
  call void asm sideeffect "hint #20", "~{memory}"() #16, !srcloc !12
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_preserve_current_state() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__fpr_get(%struct.task_struct* noundef %target, [2 x i64] %to.coerce) unnamed_addr #0 {
entry:
  %to = alloca %struct.membuf, align 8
  %to.coerce.fca.0.extract = extractvalue [2 x i64] %to.coerce, 0
  %to.coerce.fca.0.gep = bitcast %struct.membuf* %to to i64*
  store i64 %to.coerce.fca.0.extract, i64* %to.coerce.fca.0.gep, align 8
  %to.coerce.fca.1.extract = extractvalue [2 x i64] %to.coerce, 1
  %0 = getelementptr inbounds %struct.membuf, %struct.membuf* %to, i64 0, i32 1
  store i64 %to.coerce.fca.1.extract, i64* %0, align 8
  %fpsimd_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %target, i64 0, i32 137, i32 1, i32 2
  %1 = bitcast %struct.user_fpsimd_state* %fpsimd_state to i8*
  %call = call fastcc i32 @membuf_write(%struct.membuf* noundef nonnull %to, i8* noundef %1, i64 noundef 528) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap() unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %1 = and i64 %0, 4194304
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #6 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__fpr_set(%struct.task_struct* nocapture noundef %target, i32 noundef %pos, i32 noundef %count, i8* noundef %kbuf, i8* noundef %ubuf) unnamed_addr #0 {
entry:
  %pos.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %kbuf.addr = alloca i8*, align 8
  %ubuf.addr = alloca i8*, align 8
  %newstate = alloca %struct.user_fpsimd_state, align 16
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  store i8* %kbuf, i8** %kbuf.addr, align 8
  store i8* %ubuf, i8** %ubuf.addr, align 8
  %0 = bitcast %struct.user_fpsimd_state* %newstate to i8*
  call void @llvm.lifetime.start.p0i8(i64 528, i8* nonnull %0) #16
  %fpsimd_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %target, i64 0, i32 137, i32 1, i32 2
  %1 = bitcast %struct.user_fpsimd_state* %fpsimd_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(528) %0, i8* noundef align 16 dereferenceable(528) %1, i64 528, i1 false)
  %call = call fastcc i32 @user_regset_copyin(i32* noundef nonnull %pos.addr, i32* noundef nonnull %count.addr, i8** noundef nonnull %kbuf.addr, i8** noundef nonnull %ubuf.addr, i8* noundef nonnull %0, i32 noundef 528) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 16 dereferenceable(528) %1, i8* noundef nonnull align 16 dereferenceable(528) %0, i64 528, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 528, i8* nonnull %0) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpsimd_flush_task_state(%struct.task_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_preserve_current_state() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tracehook_report_syscall_entry() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @ptrace_report_syscall(i64 noundef 1) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @forget_syscall(%struct.pt_regs* nocapture noundef writeonly %regs) unnamed_addr #11 {
entry:
  %syscallno = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 2
  store i32 -1, i32* %syscallno, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tracehook_report_syscall_exit(i32 noundef %step) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %step, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @user_single_step_report() #13
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = call fastcc i32 @ptrace_report_syscall(i64 noundef 2) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_report_syscall(i64 noundef %message) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %ptrace1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 5
  %2 = load i32, i32* %ptrace1, align 8
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptrace_message = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 113
  store i64 %message, i64* %ptrace_message, align 8
  %and3 = shl i32 %2, 4
  %3 = and i32 %and3, 128
  %or = or i32 %3, 5
  call void @ptrace_notify(i32 noundef %or) #12
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 40
  %4 = load i32, i32* %exit_code, align 8
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end
  %call11 = call i32 @send_sig(i32 noundef %4, %struct.task_struct* noundef %1, i32 noundef 1) #12
  store i32 0, i32* %exit_code, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end
  store i64 0, i64* %ptrace_message, align 8
  %call18 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14
  %retval.0 = phi i32 [ %call18, %if.end14 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #13
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p) #13
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #4 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #13
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #13
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef 0) #13
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #4 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @user_single_step_report() unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !13
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #13
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 5, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 0, i32* %si_code, align 8
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  store i32 0, i32* %_pid, align 8
  %1 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  store i32 0, i32* %1, align 4
  %call = call i32 @force_sig_info(%struct.kernel_siginfo* noundef nonnull %info) #12
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 48) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_info(%struct.kernel_siginfo* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind }

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
!8 = !{i64 220499}
!9 = !{i64 2149127033, i64 2149127080, i64 2149127086, i64 2149127123, i64 2149127141, i64 2149128068, i64 2149128116, i64 2149128164, i64 2149128227, i64 2149128276, i64 2149127219, i64 2149127244, i64 2149127270, i64 2149127276, i64 2149127313, i64 2149127319, i64 2149127369, i64 2149127415, i64 2149127448}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 3116218, i64 3116242}
!12 = !{i64 2150915676}
!13 = !{!"auto-init"}
