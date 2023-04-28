; ModuleID = 'init/main.c'
source_filename = "init/main.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.78, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.6, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.7, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.6 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.7 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.8, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.83, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.34, %struct.list_head, %struct.list_head, %union.anon.35 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.16, i64, i32 }
%union.anon.16 = type { i8* }
%struct.net = type opaque
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.22 }
%union.anon.22 = type { i64 }
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
%struct.kqid = type { %union.anon.23, i32 }
%union.anon.23 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.24, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.24 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.proc_dir_entry = type opaque
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.25, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.25 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.26, %union.anon.27, %union.anon.28, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.33, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.26 = type { %struct.hlist_node }
%union.anon.27 = type { %struct.rb_node }
%union.anon.28 = type { %struct.anon.32 }
%struct.anon.32 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.33 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.30, %union.anon.31, i32 }
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
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
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.81 = type { %struct.callback_head }
%union.anon.82 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.36 }
%union.anon.36 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.37, %union.anon.38 }
%union.anon.37 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.38 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.42 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.40, %struct.qspinlock }
%union.anon.40 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.42 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.83 = type { %struct.pipe_inode_info* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.57 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.70, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.70 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.19 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.19 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
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
%struct.kernel_siginfo = type { %struct.anon.58 }
%struct.anon.58 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.62 }
%struct.anon.62 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.77, i32, [12 x i8] }
%union.anon.77 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.78 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.79, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.79 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kmem_cache = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [48 x i8] }
%struct.anon.18 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.20, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.84 }
%union.anon.84 = type { i8* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }
%struct.blacklist_entry = type { %struct.list_head, i8* }

@__setup_str_set_reset_devices = internal constant [14 x i8] c"reset_devices\00", section ".init.rodata", align 1
@__setup_set_reset_devices = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__setup_str_set_reset_devices, i32 0, i32 0), i32 (i8*)* @set_reset_devices, i32 0 }, section ".init.setup", align 8
@.str = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"TERM=linux\00", align 1
@envp_init = dso_local global <{ i8*, i8*, [32 x i8*] }> <{ i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), [32 x i8*] zeroinitializer }>, align 8
@loops_per_jiffy = dso_local local_unnamed_addr global i64 4096, align 8
@__setup_str_debug_kernel = internal constant [6 x i8] c"debug\00", section ".init.rodata", align 1
@__setup_debug_kernel = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__setup_str_debug_kernel, i32 0, i32 0), i32 (i8*)* @debug_kernel, i32 1 }, section ".init.setup", align 8
@__setup_str_quiet_kernel = internal constant [6 x i8] c"quiet\00", section ".init.rodata", align 1
@__setup_quiet_kernel = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__setup_str_quiet_kernel, i32 0, i32 0), i32 (i8*)* @quiet_kernel, i32 1 }, section ".init.setup", align 8
@__setup_str_loglevel = internal constant [9 x i8] c"loglevel\00", section ".init.rodata", align 1
@__setup_loglevel = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__setup_str_loglevel, i32 0, i32 0), i32 (i8*)* @loglevel, i32 1 }, section ".init.setup", align 8
@__setup_str_warn_bootconfig = internal constant [11 x i8] c"bootconfig\00", section ".init.rodata", align 1
@__setup_warn_bootconfig = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_warn_bootconfig, i32 0, i32 0), i32 (i8*)* @warn_bootconfig, i32 1 }, section ".init.setup", align 8
@__setup_str_init_setup = internal constant [6 x i8] c"init=\00", section ".init.rodata", align 1
@__setup_init_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__setup_str_init_setup, i32 0, i32 0), i32 (i8*)* @init_setup, i32 0 }, section ".init.setup", align 8
@__setup_str_rdinit_setup = internal constant [8 x i8] c"rdinit=\00", section ".init.rodata", align 1
@__setup_rdinit_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__setup_str_rdinit_setup, i32 0, i32 0), i32 (i8*)* @rdinit_setup, i32 0 }, section ".init.setup", align 8
@init_pid_ns = external dso_local global %struct.pid_namespace, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@kthreadd_task = external dso_local local_unnamed_addr global %struct.task_struct*, align 8
@system_state = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@kthreadd_done = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.completion* @kthreadd_done to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.completion* @kthreadd_done to i8*), i64 16) to %struct.list_head*) } } }, section ".init.data", align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"early options\00", align 1
@parse_early_param.done = internal unnamed_addr global i1 false, section ".init.data", align 4
@parse_early_param.tmp_cmdline = internal global [2048 x i8] zeroinitializer, section ".init.data", align 1
@boot_command_line = dso_local global [2048 x i8] zeroinitializer, section ".init.data", align 1
@__param_str_initcall_debug = internal constant [15 x i8] c"initcall_debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@initcall_debug = dso_local global i8 0, align 4
@__param_initcall_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_initcall_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.84 { i8* @initcall_debug } }, section "__param", align 8
@randomize_kstack_offset = dso_local global %struct.static_key_false zeroinitializer, section ".data..ro_after_init", align 4
@__setup_str_early_randomize_kstack_offset = internal constant [24 x i8] c"randomize_kstack_offset\00", section ".init.rodata", align 1
@__setup_early_randomize_kstack_offset = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__setup_str_early_randomize_kstack_offset, i32 0, i32 0), i32 (i8*)* @early_randomize_kstack_offset, i32 1 }, section ".init.setup", align 8
@init_task = external dso_local global %struct.task_struct, align 64
@early_boot_irqs_disabled = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\015%s\00", align 1
@linux_banner = external dso_local constant [0 x i8], align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\015Kernel command line: %s\0A\00", align 1
@saved_command_line = dso_local local_unnamed_addr global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Booting kernel\00", align 1
@static_command_line = internal unnamed_addr global i8* null, align 8
@__start___param = external dso_local constant [0 x %struct.kernel_param], align 8
@__stop___param = external dso_local constant [0 x %struct.kernel_param], align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Setting init args\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Interrupts were enabled *very* early, fixing it\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Interrupts were enabled early\0A\00", align 1
@panic_later = internal unnamed_addr global i8* null, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"Too many boot %s vars at `%s'\00", align 1
@panic_param = internal unnamed_addr global i8* null, align 8
@late_time_init = dso_local local_unnamed_addr global void ()* null, section ".init.data", align 8
@__setup_str_initcall_blacklist = internal constant [20 x i8] c"initcall_blacklist=\00", section ".init.rodata", align 1
@__setup_initcall_blacklist = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__setup_str_initcall_blacklist, i32 0, i32 0), i32 (i8*)* @initcall_blacklist, i32 0 }, section ".init.setup", align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"preemption imbalance \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"disabled interrupts \00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"initcall %pS returned with %s\0A\00", align 1
@rodata_enabled = dso_local global i8 1, section ".data..ro_after_init", align 1
@__setup_str_set_debug_rodata = internal constant [8 x i8] c"rodata=\00", section ".init.rodata", align 1
@__setup_set_debug_rodata = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__setup_str_set_debug_rodata, i32 0, i32 0), i32 (i8*)* @set_debug_rodata, i32 0 }, section ".init.setup", align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"\013Warning: unable to open an initial console.\0A\00", align 1
@static_key_initialized = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@reset_devices = dso_local local_unnamed_addr global i32 0, align 4
@kstack_offset = dso_local local_unnamed_addr global i32 0, section ".data..percpu", align 4
@console_printk = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.16 = private unnamed_addr constant [93 x i8] c"\014WARNING: 'bootconfig' found on the kernel command line but CONFIG_BOOT_CONFIG is not set.\0A\00", align 1
@execute_command = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@argv_init = internal global <{ i8*, [33 x i8*] }> <{ i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), [33 x i8*] zeroinitializer }>, align 8
@ramdisk_execute_command = internal unnamed_addr global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"/init\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@__setup_start = external dso_local constant [0 x %struct.obs_kernel_param], align 8
@__setup_end = external dso_local constant [0 x %struct.obs_kernel_param], align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"earlycon\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\014Malformed early option '%s'\0A\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.24 = private unnamed_addr constant [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", align 1
@__func__.setup_command_line = private unnamed_addr constant [19 x i8] c"setup_command_line\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"\014Parameter %s is obsolete, ignored\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"\013%s: Failed to allocate %zu bytes\0A\00", align 1
@__func__.print_unknown_bootoptions = private unnamed_addr constant [26 x i8] c"print_unknown_bootoptions\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"\015Unknown command line parameters:%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"all(zero)\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"\016mem auto-init: stack:%s, heap alloc:%s, heap free:%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"\016mem auto-init: clearing system memory may take some time...\0A\00", align 1
@init_on_alloc = external dso_local global %struct.static_key_false, align 4
@init_on_free = external dso_local global %struct.static_key_false, align 4
@.str.36 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"\017blacklisting initcall %s\0A\00", align 1
@__func__.initcall_blacklist = private unnamed_addr constant [19 x i8] c"initcall_blacklist\00", align 1
@blacklisted_initcalls = internal global %struct.list_head { %struct.list_head* @blacklisted_initcalls, %struct.list_head* @blacklisted_initcalls }, section ".init.data", align 8
@.str.38 = private unnamed_addr constant [27 x i8] c"\017initcall %s blacklisted\0A\00", align 1
@initcall_calltime = internal unnamed_addr global i64 0, align 8
@.str.39 = private unnamed_addr constant [21 x i8] c"\017calling  %pS @ %i\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"\017initcall %pS returned %d after %lld usecs\0A\00", align 1
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"unused kernel image (initmem)\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"\013Failed to execute %s (error %d)\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"Requested init %s failed (error %d).\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"/sbin/init\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"/etc/init\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"/bin/init\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.48 = private unnamed_addr constant [119 x i8] c"No working init found.  Try passing init= option to kernel. See Linux Documentation/admin-guide/init.rst for guidance.\00", align 1
@gfp_allowed_mask = external dso_local local_unnamed_addr global i32, align 4
@cad_pid = external dso_local local_unnamed_addr global %struct.pid*, align 8
@setup_max_cpus = external dso_local local_unnamed_addr global i32, align 4
@__initcall_start = external dso_local global [0 x i32], align 4
@__initcall0_start = external dso_local global [0 x i32], align 4
@__func__.do_initcalls = private unnamed_addr constant [13 x i8] c"do_initcalls\00", align 1
@initcall_level_names = internal unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0)], section ".init.data", align 8
@initcall_levels = internal unnamed_addr constant [9 x i32*] [i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall0_start, i32 0, i32 0), i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall1_start, i32 0, i32 0), i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall2_start, i32 0, i32 0), i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall3_start, i32 0, i32 0), i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall4_start, i32 0, i32 0), i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall5_start, i32 0, i32 0), i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall6_start, i32 0, i32 0), i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall7_start, i32 0, i32 0), i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall_end, i32 0, i32 0)], section ".init.data", align 8
@.str.50 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"postcore\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"subsys\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"late\00", align 1
@__initcall1_start = external dso_local global [0 x i32], align 4
@__initcall2_start = external dso_local global [0 x i32], align 4
@__initcall3_start = external dso_local global [0 x i32], align 4
@__initcall4_start = external dso_local global [0 x i32], align 4
@__initcall5_start = external dso_local global [0 x i32], align 4
@__initcall6_start = external dso_local global [0 x i32], align 4
@__initcall7_start = external dso_local global [0 x i32], align 4
@__initcall_end = external dso_local global [0 x i32], align 4
@.str.58 = private unnamed_addr constant [38 x i8] c"\016Kernel memory protection disabled.\0A\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"\016Run %s as init process\0A\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"\017  with arguments:\0A\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"\017    %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"\017  with environment:\0A\00", align 1
@.str.63 = private unnamed_addr constant [63 x i8] c"\013Starting init: %s exists but couldn't execute it (error %d)\0A\00", align 1
@llvm.compiler.used = appending global [11 x i8*] [i8* bitcast (%struct.kernel_param* @__param_initcall_debug to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_debug_kernel to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_early_randomize_kstack_offset to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_init_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_initcall_blacklist to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_loglevel to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_quiet_kernel to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_rdinit_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_set_debug_rodata to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_set_reset_devices to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_warn_bootconfig to i8*)], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @set_reset_devices(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i32 1, i32* @reset_devices, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @debug_kernel(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i32 10, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @console_printk, i64 0, i64 0), align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @quiet_kernel(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i32 4, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @console_printk, i64 0, i64 0), align 4
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @loglevel(i8* noundef %str) #1 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  %newlevel = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = bitcast i32* %newlevel to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %newlevel, align 4, !annotation !8
  %call = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef nonnull %newlevel) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %newlevel, align 4
  store i32 %1, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @console_printk, i64 0, i64 0), align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @warn_bootconfig(i8* nocapture noundef readnone %str) #1 section ".init.text" {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.16, i64 0, i64 0)) #18
  ret i32 0
}

; Function Attrs: cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize writeonly
define internal i32 @init_setup(i8* noundef %str) #2 section ".init.text" {
entry:
  store i8* %str, i8** @execute_command, align 8
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr [34 x i8*], [34 x i8*]* bitcast (<{ i8*, [33 x i8*] }>* @argv_init to [34 x i8*]*), i64 0, i64 %indvars.iv
  store i8* null, i8** %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 1
}

; Function Attrs: cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize writeonly
define internal i32 @rdinit_setup(i8* noundef %str) #2 section ".init.text" {
entry:
  store i8* %str, i8** @ramdisk_execute_command, align 8
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr [34 x i8*], [34 x i8*]* bitcast (<{ i8*, [33 x i8*] }>* @argv_init to [34 x i8*]*), i64 0, i64 %indvars.iv
  store i8* null, i8** %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rest_init() local_unnamed_addr #3 section ".ref.text" {
entry:
  call void @rcu_scheduler_starting() #17
  %call = call i32 @kernel_thread(i32 (i8*)* noundef nonnull @kernel_init, i8* noundef null, i64 noundef 512) #17
  call fastcc void @__rcu_read_lock() #17
  %call1 = call %struct.task_struct* @find_task_by_pid_ns(i32 noundef %call, %struct.pid_namespace* noundef nonnull @init_pid_ns) #17
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %or = or i32 %0, 67108864
  store i32 %or, i32* %flags, align 4
  %call3 = call fastcc i64 @__kern_my_cpu_offset() #19
  %add = add i64 %call3, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %call4 = call fastcc %struct.cpumask* @get_cpu_mask(i32 noundef %2) #19
  %call5 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef %call1, %struct.cpumask* noundef nonnull %call4) #17
  call fastcc void @rcu_read_unlock() #19
  %call6 = call i32 @kernel_thread(i32 (i8*)* noundef nonnull @kthreadd, i8* noundef null, i64 noundef 1536) #17
  call fastcc void @__rcu_read_lock() #17
  %call7 = call %struct.task_struct* @find_task_by_pid_ns(i32 noundef %call6, %struct.pid_namespace* noundef nonnull @init_pid_ns) #17
  store %struct.task_struct* %call7, %struct.task_struct** @kthreadd_task, align 8
  call fastcc void @rcu_read_unlock() #19
  store i32 1, i32* @system_state, align 4
  call void @complete(%struct.completion* noundef nonnull @kthreadd_done) #17
  call void @schedule_preempt_disabled() #17
  call void @cpu_startup_entry(i32 noundef 228) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_scheduler_starting() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_thread(i32 (i8*)* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kernel_init(i8* nocapture noundef readnone %unused) #3 section ".ref.text" {
entry:
  call void @wait_for_completion(%struct.completion* noundef nonnull @kthreadd_done) #17
  call fastcc void @kernel_init_freeable() #20
  call void @async_synchronize_full() #17
  call void @free_initmem() #19
  call fastcc void @mark_readonly() #19
  store i32 2, i32* @system_state, align 4
  call void @rcu_end_inkernel_boot() #17
  call void @do_sysctl_args() #17
  %0 = load i8*, i8** @ramdisk_execute_command, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @run_init_process(i8* noundef nonnull %0) #19
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %do.end5

do.end5:                                          ; preds = %if.then
  %1 = load i8*, i8** @ramdisk_execute_command, align 8
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i64 0, i64 0), i8* noundef %1, i32 noundef %call) #18
  br label %if.end7

if.end7:                                          ; preds = %do.end5, %entry
  %2 = load i8*, i8** @execute_command, align 8
  %tobool8.not = icmp eq i8* %2, null
  br i1 %tobool8.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = call fastcc i32 @run_init_process(i8* noundef nonnull %2) #19
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then9
  %3 = load i8*, i8** @execute_command, align 8
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i64 0, i64 0), i8* noundef %3, i32 noundef %call10) #21
  unreachable

if.end14:                                         ; preds = %if.end7
  %call15 = call fastcc i32 @try_to_run_init_process(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0)) #19
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %call17 = call fastcc i32 @try_to_run_init_process(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0)) #19
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %call20 = call fastcc i32 @try_to_run_init_process(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0)) #19
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %call23 = call fastcc i32 @try_to_run_init_process(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0)) #19
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false22
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([119 x i8], [119 x i8]* @.str.48, i64 0, i64 0)) #21
  unreachable

cleanup:                                          ; preds = %if.end14, %lor.lhs.false, %lor.lhs.false19, %lor.lhs.false22, %if.then9, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct* noundef, %struct.cpumask* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.cpumask* @get_cpu_mask(i32 noundef %cpu) unnamed_addr #6 {
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #7 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #22, !srcloc !9
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 {
entry:
  call fastcc void @__rcu_read_unlock() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthreadd(i8* noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_preempt_disabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_startup_entry(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @parse_early_options(i8* noundef %cmdline) local_unnamed_addr #1 section ".init.text" {
entry:
  %call = call i8* @parse_args(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* noundef %cmdline, %struct.kernel_param* noundef null, i32 noundef 0, i16 noundef 0, i16 noundef 0, i8* noundef null, i32 (i8*, i8*, i8*, i8*)* noundef nonnull @do_early_param) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @parse_args(i8* noundef, i8* noundef, %struct.kernel_param* noundef, i32 noundef, i16 noundef, i16 noundef, i8* noundef, i32 (i8*, i8*, i8*, i8*)* noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @do_early_param(i8* noundef %param, i8* noundef %val, i8* nocapture noundef readnone %unused, i8* nocapture noundef readnone %arg) #1 section ".init.text" {
entry:
  br i1 icmp ult (%struct.obs_kernel_param* getelementptr inbounds ([0 x %struct.obs_kernel_param], [0 x %struct.obs_kernel_param]* @__setup_start, i64 0, i64 0), %struct.obs_kernel_param* getelementptr inbounds ([0 x %struct.obs_kernel_param], [0 x %struct.obs_kernel_param]* @__setup_end, i64 0, i64 0)), label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %p.020 = phi %struct.obs_kernel_param* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([0 x %struct.obs_kernel_param], [0 x %struct.obs_kernel_param]* @__setup_start, i64 0, i64 0), %entry ]
  %early = getelementptr inbounds %struct.obs_kernel_param, %struct.obs_kernel_param* %p.020, i64 0, i32 2
  %0 = load i32, i32* %early, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %str = getelementptr inbounds %struct.obs_kernel_param, %struct.obs_kernel_param* %p.020, i64 0, i32 0
  %1 = load i8*, i8** %str, align 8
  %call = call i1 @parameq(i8* noundef %param, i8* noundef %1) #17
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %call1 = call i32 @strcmp(i8* noundef %param, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)) #17
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true3, label %for.inc

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %str4 = getelementptr inbounds %struct.obs_kernel_param, %struct.obs_kernel_param* %p.020, i64 0, i32 0
  %2 = load i8*, i8** %str4, align 8
  %call5 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #17
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true3, %land.lhs.true
  %setup_func = getelementptr inbounds %struct.obs_kernel_param, %struct.obs_kernel_param* %p.020, i64 0, i32 1
  %3 = load i32 (i8*)*, i32 (i8*)** %setup_func, align 8
  %call7 = call i32 %3(i8* noundef %val) #17
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %for.inc, label %do.end

do.end:                                           ; preds = %if.then
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* noundef %param) #18
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %land.lhs.true3, %do.end, %if.then
  %incdec.ptr = getelementptr %struct.obs_kernel_param, %struct.obs_kernel_param* %p.020, i64 1
  %cmp = icmp ult %struct.obs_kernel_param* %incdec.ptr, getelementptr inbounds ([0 x %struct.obs_kernel_param], [0 x %struct.obs_kernel_param]* @__setup_end, i64 0, i64 0)
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @parse_early_param() local_unnamed_addr #1 section ".init.text" {
entry:
  %.b = load i1, i1* @parse_early_param.done, align 4
  br i1 %.b, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @strlcpy(i8* noundef getelementptr inbounds ([2048 x i8], [2048 x i8]* @parse_early_param.tmp_cmdline, i64 0, i64 0), i8* noundef getelementptr inbounds ([2048 x i8], [2048 x i8]* @boot_command_line, i64 0, i64 0), i64 noundef 2048) #17
  call void @parse_early_options(i8* noundef getelementptr inbounds ([2048 x i8], [2048 x i8]* @parse_early_param.tmp_cmdline, i64 0, i64 0)) #20
  store i1 true, i1* @parse_early_param.done, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @arch_post_acpi_subsys_init() local_unnamed_addr #1 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @smp_setup_processor_id() local_unnamed_addr #1 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @thread_stack_cache_init() local_unnamed_addr #1 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @mem_encrypt_init() local_unnamed_addr #1 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @poking_init() local_unnamed_addr #1 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @pgtable_cache_init() local_unnamed_addr #1 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @trap_init() local_unnamed_addr #1 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @early_randomize_kstack_offset(i8* noundef %buf) #1 section ".init.text" {
entry:
  %bool_result = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %bool_result) #16
  store i8 0, i8* %bool_result, align 4, !annotation !8
  %call = call i32 @kstrtobool(i8* noundef %buf, i8* noundef nonnull %bool_result) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %bool_result, align 4, !range !10
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @static_key_enable() #19
  br label %cleanup

if.else:                                          ; preds = %if.end
  call fastcc void @static_key_disable() #19
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.else, %entry
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %bool_result) #16
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @arch_call_rest_init() local_unnamed_addr #1 section ".init.text" {
entry:
  call void @rest_init() #19
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @start_kernel() local_unnamed_addr #1 section ".init.text" {
entry:
  %command_line = alloca i8*, align 8
  %0 = bitcast i8** %command_line to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i8* null, i8** %command_line, align 8, !annotation !8
  call void @set_task_stack_end_magic(%struct.task_struct* noundef nonnull @init_task) #17
  call void @smp_setup_processor_id() #20
  call fastcc void @arch_local_irq_disable() #19
  store i8 1, i8* @early_boot_irqs_disabled, align 1
  call void @boot_cpu_init() #17
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @linux_banner, i64 0, i64 0)) #18
  call void @setup_arch(i8** noundef nonnull %command_line) #17
  %1 = load i8*, i8** %command_line, align 8
  call fastcc void @setup_command_line(i8* noundef %1) #20
  call void @setup_nr_cpu_ids() #18
  call void @setup_per_cpu_areas() #18
  call void @smp_prepare_boot_cpu() #17
  call void @boot_cpu_hotplug_init() #17
  call void @build_all_zonelists(%struct.pglist_data* noundef null) #17
  call void @page_alloc_init() #17
  %2 = load i8*, i8** @saved_command_line, align 8
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* noundef %2) #18
  store i8 1, i8* @static_key_initialized, align 1
  call void @parse_early_param() #20
  %3 = load i8*, i8** @static_command_line, align 8
  %call14 = call i8* @parse_args(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef %3, %struct.kernel_param* noundef getelementptr inbounds ([0 x %struct.kernel_param], [0 x %struct.kernel_param]* @__start___param, i64 0, i64 0), i32 noundef trunc (i64 sdiv (i64 sub (i64 ptrtoint ([0 x %struct.kernel_param]* @__stop___param to i64), i64 ptrtoint ([0 x %struct.kernel_param]* @__start___param to i64)), i64 40) to i32), i16 noundef -1, i16 noundef -1, i8* noundef null, i32 (i8*, i8*, i8*, i8*)* noundef nonnull @unknown_bootoption) #17
  call fastcc void @print_unknown_bootoptions() #20
  %call15 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %call14) #19
  br i1 %call15, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %call16 = call i8* @parse_args(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call14, %struct.kernel_param* noundef null, i32 noundef 0, i16 noundef -1, i16 noundef -1, i8* noundef null, i32 (i8*, i8*, i8*, i8*)* noundef nonnull @set_init_arg) #17
  br label %if.end19

if.end19:                                         ; preds = %entry, %if.then
  call void @setup_log_buf(i32 noundef 0) #18
  call void @vfs_caches_init_early() #18
  call void @sort_main_extable() #17
  call void @trap_init() #20
  call fastcc void @mm_init() #20
  call void @sched_init() #17
  %call22 = call fastcc i64 @arch_local_save_flags() #19
  %call32 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call22) #19
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end47, label %if.end67, !prof !11

do.end47:                                         ; preds = %if.end19
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22init/main.c\22; .popsection; .long 14472b - 14470b; .short 1004; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !12
  call fastcc void @arch_local_irq_disable() #19
  br label %if.end67

if.end67:                                         ; preds = %if.end19, %do.end47
  call void @radix_tree_init() #17
  call void @workqueue_init_early() #18
  call void @rcu_init() #17
  %call71 = call i32 @early_irq_init() #17
  call void @init_IRQ() #17
  call void @tick_init() #18
  call void @init_timers() #17
  call void @srcu_init() #17
  call void @hrtimers_init() #18
  call void @softirq_init() #17
  call void @timekeeping_init() #17
  %call72 = call i32 @rand_initialize() #18
  %4 = load i8*, i8** %command_line, align 8
  %call73 = call i64 @strlen(i8* noundef %4) #17
  %conv74 = trunc i64 %call73 to i32
  call void @add_device_randomness(i8* noundef %4, i32 noundef %conv74) #17
  call void @time_init() #17
  call void @call_function_init() #18
  %call84 = call fastcc i64 @arch_local_save_flags() #19
  %call94 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call84) #19
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %do.end114, label %if.end120, !prof !11

do.end114:                                        ; preds = %if.end67
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22init/main.c\22; .popsection; .long 14472b - 14470b; .short 1059; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !13
  br label %if.end120

if.end120:                                        ; preds = %do.end114, %if.end67
  store i8 0, i8* @early_boot_irqs_disabled, align 1
  call fastcc void @arch_local_irq_enable() #19
  call void @kmem_cache_init_late() #18
  call void @console_init() #17
  %5 = load i8*, i8** @panic_later, align 8
  %tobool132.not = icmp eq i8* %5, null
  br i1 %tobool132.not, label %do.end140, label %if.then133

if.then133:                                       ; preds = %if.end120
  %6 = load i8*, i8** @panic_param, align 8
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %5, i8* noundef %6) #21
  unreachable

do.end140:                                        ; preds = %if.end120
  call void @mem_encrypt_init() #20
  call void @setup_per_cpu_pageset() #17
  %7 = load void ()*, void ()** @late_time_init, align 8
  %tobool141.not = icmp eq void ()* %7, null
  br i1 %tobool141.not, label %if.end143, label %if.then142

if.then142:                                       ; preds = %do.end140
  call void %7() #17
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %do.end140
  call void @sched_clock_init() #17
  call void @calibrate_delay() #17
  call void @pid_idr_init() #17
  call void @anon_vma_init() #17
  call void @thread_stack_cache_init() #20
  call void @cred_init() #18
  call void @fork_init() #17
  call void @proc_caches_init() #17
  call void @vfs_caches_init() #18
  call void @pagecache_init() #18
  call void @signals_init() #17
  call void @seq_file_init() #17
  call void @proc_root_init() #17
  call void @nsfs_init() #17
  call void @poking_init() #20
  call void @arch_post_acpi_subsys_init() #20
  call void @arch_call_rest_init() #20
  call void asm sideeffect "dsb sy", "~{memory}"() #16, !srcloc !14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_stack_end_magic(%struct.task_struct* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #3 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #19
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #16, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @boot_cpu_init() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_arch(i8** noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @setup_command_line(i8* noundef %command_line) unnamed_addr #1 section ".init.text" {
entry:
  %call5 = call i64 @strlen(i8* noundef getelementptr inbounds ([2048 x i8], [2048 x i8]* @boot_command_line, i64 0, i64 0)) #17
  %add7 = add i64 %call5, 1
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %add7, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #17
  store i8* %call.i, i8** @saved_command_line, align 8
  %tobool10.not = icmp eq i8* %call.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.setup_command_line, i64 0, i64 0), i64 noundef %add7) #21
  unreachable

if.end13:                                         ; preds = %entry
  %call.i50 = call i8* @memblock_alloc_try_nid(i64 noundef %add7, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #17
  store i8* %call.i50, i8** @static_command_line, align 8
  %tobool15.not = icmp eq i8* %call.i50, null
  br i1 %tobool15.not, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end13
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.setup_command_line, i64 0, i64 0), i64 noundef %add7) #21
  unreachable

if.end22:                                         ; preds = %if.end13
  %0 = load i8*, i8** @saved_command_line, align 8
  %call23 = call i8* @strcpy(i8* noundef %0, i8* noundef getelementptr inbounds ([2048 x i8], [2048 x i8]* @boot_command_line, i64 0, i64 0)) #17
  %1 = load i8*, i8** @static_command_line, align 8
  %call25 = call i8* @strcpy(i8* noundef %1, i8* noundef %command_line) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @setup_nr_cpu_ids() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @setup_per_cpu_areas() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_prepare_boot_cpu() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @boot_cpu_hotplug_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @build_all_zonelists(%struct.pglist_data* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_alloc_init() local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @unknown_bootoption(i8* noundef %param, i8* noundef %val, i8* nocapture noundef readnone %unused, i8* nocapture noundef readnone %arg) #1 section ".init.text" {
entry:
  %call = call i64 @strlen(i8* noundef %param) #17
  call fastcc void @repair_env_string(i8* noundef %param, i8* noundef %val) #20
  %call1 = call fastcc i1 @obsolete_checksetup(i8* noundef %param) #20
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i8* @strnchr(i8* noundef %param, i64 noundef %call, i32 noundef 46) #17
  %tobool.not = icmp eq i8* %call2, null
  %0 = load i8*, i8** @panic_later, align 8
  %tobool5.not = icmp eq i8* %0, null
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %tobool8.not = icmp eq i8* %val, null
  br i1 %tobool8.not, label %for.cond22.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  %1 = load i8*, i8** getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 0), align 8
  %tobool10.not56 = icmp eq i8* %1, null
  br i1 %tobool10.not56, label %cleanup.sink.split, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add = add i64 %call, 1
  br label %for.body

for.cond22.preheader:                             ; preds = %if.end7
  %2 = load i8*, i8** getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 0), align 8
  %tobool25.not60 = icmp eq i8* %2, null
  br i1 %tobool25.not60, label %cleanup.sink.split, label %for.body26

for.cond:                                         ; preds = %if.end12
  %idxprom = zext i32 %inc to i64
  %arrayidx = getelementptr [34 x i8*], [34 x i8*]* bitcast (<{ i8*, i8*, [32 x i8*] }>* @envp_init to [34 x i8*]*), i64 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool10.not = icmp eq i8* %3, null
  br i1 %tobool10.not, label %cleanup.sink.split, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %4 = phi i8* [ %1, %for.body.lr.ph ], [ %3, %for.cond ]
  %arrayidx58 = phi i8** [ getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 0), %for.body.lr.ph ], [ %arrayidx, %for.cond ]
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %cmp = icmp eq i32 %i.057, 32
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8** @panic_later, align 8
  store i8* %param, i8** @panic_param, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.body
  %call15 = call i32 @strncmp(i8* noundef %param, i8* noundef nonnull %4, i64 noundef %add) #17
  %tobool16.not = icmp eq i32 %call15, 0
  %inc = add i32 %i.057, 1
  br i1 %tobool16.not, label %cleanup.sink.split, label %for.cond

for.body26:                                       ; preds = %for.cond22.preheader, %for.inc30
  %i21.061 = phi i32 [ %inc31, %for.inc30 ], [ 0, %for.cond22.preheader ]
  %cmp27 = icmp eq i32 %i21.061, 32
  br i1 %cmp27, label %if.then28, label %for.inc30

if.then28:                                        ; preds = %for.body26
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** @panic_later, align 8
  store i8* %param, i8** @panic_param, align 8
  br label %for.inc30

for.inc30:                                        ; preds = %for.body26, %if.then28
  %inc31 = add i32 %i21.061, 1
  %idxprom23 = zext i32 %inc31 to i64
  %arrayidx24 = getelementptr [34 x i8*], [34 x i8*]* bitcast (<{ i8*, [33 x i8*] }>* @argv_init to [34 x i8*]*), i64 0, i64 %idxprom23
  %5 = load i8*, i8** %arrayidx24, align 8
  %tobool25.not = icmp eq i8* %5, null
  br i1 %tobool25.not, label %cleanup.sink.split, label %for.body26

cleanup.sink.split:                               ; preds = %if.end12, %for.cond, %for.inc30, %for.cond22.preheader, %for.cond.preheader
  %arrayidx.lcssa.sink = phi i8** [ getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 0), %for.cond.preheader ], [ getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 0), %for.cond22.preheader ], [ %arrayidx24, %for.inc30 ], [ %arrayidx58, %if.end12 ], [ %arrayidx, %for.cond ]
  store i8* %param, i8** %arrayidx.lcssa.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %entry
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @print_unknown_bootoptions() unnamed_addr #1 section ".init.text" {
entry:
  %0 = load i8*, i8** @panic_later, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 1, i64 0), align 8
  %tobool1 = icmp ne i8* %1, null
  %2 = load i8*, i8** getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 2, i64 0), align 8
  %tobool2 = icmp ne i8* %2, null
  %or.cond = select i1 %tobool1, i1 true, i1 %tobool2
  br i1 %or.cond, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %tobool3.not72 = icmp eq i8* %1, null
  br i1 %tobool3.not72, label %for.cond4.preheader, label %for.body

for.cond4.preheader.loopexit:                     ; preds = %for.body
  %.pre = load i8*, i8** getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 2, i64 0), align 8
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.loopexit, %for.cond.preheader
  %3 = phi i8* [ %2, %for.cond.preheader ], [ %.pre, %for.cond4.preheader.loopexit ]
  %len.0.lcssa = phi i64 [ 1, %for.cond.preheader ], [ %add, %for.cond4.preheader.loopexit ]
  %tobool5.not75 = icmp eq i8* %3, null
  br i1 %tobool5.not75, label %for.end12, label %for.body6

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %len.074 = phi i64 [ %add, %for.body ], [ 1, %for.cond.preheader ]
  %p.073 = phi i8** [ %incdec.ptr, %for.body ], [ getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 1, i64 0), %for.cond.preheader ]
  %4 = phi i8* [ %.pr, %for.body ], [ %1, %for.cond.preheader ]
  %inc = add i64 %len.074, 1
  %call = call i64 @strlen(i8* noundef nonnull %4) #17
  %add = add i64 %inc, %call
  %incdec.ptr = getelementptr i8*, i8** %p.073, i64 1
  %.pr = load i8*, i8** %incdec.ptr, align 8
  %tobool3.not = icmp eq i8* %.pr, null
  br i1 %tobool3.not, label %for.cond4.preheader.loopexit, label %for.body

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %5 = phi i8* [ %6, %for.body6 ], [ %3, %for.cond4.preheader ]
  %len.177 = phi i64 [ %add9, %for.body6 ], [ %len.0.lcssa, %for.cond4.preheader ]
  %p.176 = phi i8** [ %incdec.ptr11, %for.body6 ], [ getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 2, i64 0), %for.cond4.preheader ]
  %inc7 = add i64 %len.177, 1
  %call8 = call i64 @strlen(i8* noundef nonnull %5) #17
  %add9 = add i64 %inc7, %call8
  %incdec.ptr11 = getelementptr i8*, i8** %p.176, i64 1
  %6 = load i8*, i8** %incdec.ptr11, align 8
  %tobool5.not = icmp eq i8* %6, null
  br i1 %tobool5.not, label %for.end12, label %for.body6

for.end12:                                        ; preds = %for.body6, %for.cond4.preheader
  %len.1.lcssa = phi i64 [ %len.0.lcssa, %for.cond4.preheader ], [ %add9, %for.body6 ]
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %len.1.lcssa, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #17
  %tobool14.not = icmp eq i8* %call.i, null
  br i1 %tobool14.not, label %do.end, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.end12
  %7 = load i8*, i8** getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 1, i64 0), align 8
  %tobool19.not79 = icmp eq i8* %7, null
  br i1 %tobool19.not79, label %for.cond25.preheader, label %for.body20

do.end:                                           ; preds = %for.end12
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.print_unknown_bootoptions, i64 0, i64 0), i64 noundef %len.1.lcssa) #18
  br label %cleanup

for.cond25.preheader:                             ; preds = %for.body20, %for.cond18.preheader
  %end.0.lcssa = phi i8* [ %call.i, %for.cond18.preheader ], [ %add.ptr, %for.body20 ]
  %8 = load i8*, i8** getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 2, i64 0), align 8
  %tobool26.not83 = icmp eq i8* %8, null
  br i1 %tobool26.not83, label %do.end36, label %for.body27

for.body20:                                       ; preds = %for.cond18.preheader, %for.body20
  %9 = phi i8* [ %10, %for.body20 ], [ %7, %for.cond18.preheader ]
  %end.081 = phi i8* [ %add.ptr, %for.body20 ], [ %call.i, %for.cond18.preheader ]
  %p.280 = phi i8** [ %incdec.ptr23, %for.body20 ], [ getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 1, i64 0), %for.cond18.preheader ]
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %end.081, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %9) #17
  %idx.ext = sext i32 %call21 to i64
  %add.ptr = getelementptr i8, i8* %end.081, i64 %idx.ext
  %incdec.ptr23 = getelementptr i8*, i8** %p.280, i64 1
  %10 = load i8*, i8** %incdec.ptr23, align 8
  %tobool19.not = icmp eq i8* %10, null
  br i1 %tobool19.not, label %for.cond25.preheader, label %for.body20

for.body27:                                       ; preds = %for.cond25.preheader, %for.body27
  %11 = phi i8* [ %12, %for.body27 ], [ %8, %for.cond25.preheader ]
  %end.185 = phi i8* [ %add.ptr30, %for.body27 ], [ %end.0.lcssa, %for.cond25.preheader ]
  %p.384 = phi i8** [ %incdec.ptr32, %for.body27 ], [ getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 2, i64 0), %for.cond25.preheader ]
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %end.185, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %11) #17
  %idx.ext29 = sext i32 %call28 to i64
  %add.ptr30 = getelementptr i8, i8* %end.185, i64 %idx.ext29
  %incdec.ptr32 = getelementptr i8*, i8** %p.384, i64 1
  %12 = load i8*, i8** %incdec.ptr32, align 8
  %tobool26.not = icmp eq i8* %12, null
  br i1 %tobool26.not, label %do.end36, label %for.body27

do.end36:                                         ; preds = %for.body27, %for.cond25.preheader
  %call38 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* noundef nonnull %call.i) #18
  call void @memblock_free_ptr(i8* noundef nonnull %call.i, i64 noundef %len.1.lcssa) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %do.end36, %do.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @set_init_arg(i8* noundef %param, i8* noundef %val, i8* nocapture noundef readnone %unused, i8* nocapture noundef readnone %arg) #1 section ".init.text" {
entry:
  %0 = load i8*, i8** @panic_later, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @repair_env_string(i8* noundef %param, i8* noundef %val) #20
  %1 = load i8*, i8** getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 0), align 8
  %tobool1.not13 = icmp eq i8* %1, null
  br i1 %tobool1.not13, label %cleanup.sink.split, label %for.body

for.cond:                                         ; preds = %for.body
  %arrayidx = getelementptr [34 x i8*], [34 x i8*]* bitcast (<{ i8*, [33 x i8*] }>* @argv_init to [34 x i8*]*), i64 0, i64 %indvars.iv.next
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool1.not = icmp eq i8* %2, null
  br i1 %tobool1.not, label %cleanup.sink.split, label %for.body

for.body:                                         ; preds = %if.end, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end ]
  %cmp = icmp eq i64 %indvars.iv, 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp, label %if.then2, label %for.cond

if.then2:                                         ; preds = %for.body
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** @panic_later, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.cond, %if.end, %if.then2
  %arrayidx.lcssa.sink = phi i8** [ @panic_param, %if.then2 ], [ getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 0), %if.end ], [ %arrayidx, %for.cond ]
  store i8* %param, i8** %arrayidx.lcssa.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @setup_log_buf(i32 noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vfs_caches_init_early() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort_main_extable() local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @mm_init() unnamed_addr #1 section ".init.text" {
entry:
  call void @init_mem_debugging_and_hardening() #17
  call fastcc void @report_meminit() #20
  call void @mem_init() #17
  call void @mem_init_print_info() #17
  call void @kmem_cache_init() #18
  call fastcc void @pgtable_init() #19
  call void @vmalloc_init() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_init() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #3 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #16, !srcloc !16
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #3 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #16, !srcloc !17
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_init() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @workqueue_init_early() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_irq_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_IRQ() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tick_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timers() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_init() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @hrtimers_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @softirq_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @timekeeping_init() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @rand_initialize() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @time_init() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @call_function_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #3 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #16, !srcloc !18
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kmem_cache_init_late() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_init() local_unnamed_addr #5

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_per_cpu_pageset() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @calibrate_delay() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pid_idr_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_init() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cred_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fork_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_caches_init() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vfs_caches_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @pagecache_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @signals_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_file_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_root_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsfs_init() local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @initcall_blacklist(i8* noundef %str) #1 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %call35 = call i8* @strsep(i8** noundef nonnull %str.addr, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #17
  %tobool.not36 = icmp eq i8* %call35, null
  br i1 %tobool.not36, label %do.end20, label %do.end

do.end:                                           ; preds = %entry, %if.end14
  %call37 = phi i8* [ %call, %if.end14 ], [ %call35, %entry ]
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), i8* noundef nonnull %call37) #18
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef 24, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #17
  %tobool5.not = icmp eq i8* %call.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end

if.then6:                                         ; preds = %do.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.initcall_blacklist, i64 0, i64 0), i64 noundef 24) #21
  unreachable

if.end:                                           ; preds = %do.end
  %call7 = call i64 @strlen(i8* noundef nonnull %call37) #17
  %add = add i64 %call7, 1
  %call.i32 = call i8* @memblock_alloc_try_nid(i64 noundef %add, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #17
  %buf = getelementptr inbounds i8, i8* %call.i, i64 16
  %0 = bitcast i8* %buf to i8**
  store i8* %call.i32, i8** %0, align 8
  %tobool10.not = icmp eq i8* %call.i32, null
  br i1 %tobool10.not, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %call12 = call i64 @strlen(i8* noundef nonnull %call37) #17
  %add13 = add i64 %call12, 1
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.initcall_blacklist, i64 0, i64 0), i64 noundef %add13) #21
  unreachable

if.end14:                                         ; preds = %if.end
  %call16 = call i8* @strcpy(i8* noundef nonnull %call.i32, i8* noundef nonnull %call37) #17
  %next = bitcast i8* %call.i to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef nonnull %next) #19
  %call = call i8* @strsep(i8** noundef nonnull %str.addr, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %do.end20, label %do.end

do.end20:                                         ; preds = %if.end14, %entry
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @do_one_initcall(i32 ()* noundef %fn) local_unnamed_addr #1 section ".init.text" {
entry:
  %msgbuf = alloca [64 x i8], align 4
  %call = call fastcc i32 @preempt_count() #19
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %msgbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !8
  %call1 = call fastcc i1 @initcall_blacklisted(i32 ()* noundef %fn) #20
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @do_trace_initcall_start(i32 ()* noundef %fn) #19
  %call2 = call i32 %fn() #17
  call fastcc void @do_trace_initcall_finish(i32 ()* noundef %fn, i32 noundef %call2) #19
  store i8 0, i8* %0, align 4
  %call3 = call fastcc i32 @preempt_count() #19
  %cmp.not = icmp eq i32 %call3, %call
  br i1 %cmp.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0)) #17
  %conv = sext i32 %call to i64
  call fastcc void @preempt_count_set(i64 noundef %conv) #19
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %call9 = call fastcc i64 @arch_local_save_flags() #19
  %call17 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call9) #19
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.end6
  %call20 = call i64 @strlcat(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i64 noundef 64) #17
  call fastcc void @arch_local_irq_enable() #19
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end6
  %1 = load i8, i8* %0, align 4
  %tobool26.not = icmp eq i8 %1, 0
  br i1 %tobool26.not, label %cleanup, label %do.end39, !prof !19

do.end39:                                         ; preds = %if.end24
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 ()* noundef %fn, i8* noundef nonnull %0) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22init/main.c\22; .popsection; .long 14472b - 14470b; .short 1317; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end39, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %call2, %do.end39 ], [ %call2, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !21
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i1 @initcall_blacklisted(i32 ()* noundef %fn) unnamed_addr #1 section ".init.text" {
entry:
  %fn_name = alloca [282 x i8], align 1
  %0 = getelementptr inbounds [282 x i8], [282 x i8]* %fn_name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 282, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(282) %0, i8 0, i64 282, i1 false), !annotation !8
  %call = call fastcc i32 @list_empty() #19
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint i32 ()* %fn to i64
  %call2 = call i32 @sprint_symbol_no_offset(i8* noundef nonnull %0, i64 noundef %1) #17
  %call4 = call i8* @strreplace(i8* noundef nonnull %0, i8 noundef 32, i8 noundef 0) #17
  %entry1.032 = load %struct.blacklist_entry*, %struct.blacklist_entry** bitcast (%struct.list_head* @blacklisted_initcalls to %struct.blacklist_entry**), align 8
  %next33 = getelementptr inbounds %struct.blacklist_entry, %struct.blacklist_entry* %entry1.032, i64 0, i32 0
  %cmp.not34 = icmp eq %struct.list_head* %next33, @blacklisted_initcalls
  br i1 %cmp.not34, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %entry1.035 = phi %struct.blacklist_entry* [ %entry1.0, %for.inc ], [ %entry1.032, %if.end ]
  %buf = getelementptr inbounds %struct.blacklist_entry, %struct.blacklist_entry* %entry1.035, i64 0, i32 1
  %2 = load i8*, i8** %buf, align 8
  %call6 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef %2) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end11, label %for.inc

do.end11:                                         ; preds = %for.body
  %call14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i8* noundef nonnull %0) #18
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %3 = bitcast %struct.blacklist_entry* %entry1.035 to %struct.blacklist_entry**
  %entry1.0 = load %struct.blacklist_entry*, %struct.blacklist_entry** %3, align 8
  %next = getelementptr inbounds %struct.blacklist_entry, %struct.blacklist_entry* %entry1.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %next, @blacklisted_initcalls
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end, %entry, %do.end11
  %retval.0 = phi i1 [ true, %do.end11 ], [ false, %entry ], [ false, %if.end ], [ false, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 282, i8* nonnull %0) #16
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_trace_initcall_start(i32 ()* noundef %fn) unnamed_addr #3 {
entry:
  %0 = load i8, i8* @initcall_debug, align 4, !range !10
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @trace_initcall_start_cb(i32 ()* noundef %fn) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_trace_initcall_finish(i32 ()* noundef %fn, i32 noundef %ret) unnamed_addr #3 {
entry:
  %0 = load i8, i8* @initcall_debug, align 4, !range !10
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @trace_initcall_finish_cb(i32 ()* noundef %fn, i32 noundef %ret) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @preempt_count_set(i64 noundef %pc) unnamed_addr #3 {
entry:
  %conv = trunc i64 %pc to i32
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !21
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon* %2 to i32*
  store volatile i32 %conv, i32* %count, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @set_debug_rodata(i8* noundef %str) #1 section ".init.text" {
entry:
  %call = call fastcc i32 @strtobool(i8* noundef %str) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @free_initmem() local_unnamed_addr #3 {
entry:
  call fastcc void @free_initmem_default() #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_initmem_default() unnamed_addr #3 {
entry:
  %call = call i64 @free_reserved_area(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @__init_end, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0)) #17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @console_on_rootfs() local_unnamed_addr #1 section ".init.text" {
entry:
  %call = call %struct.file* @filp_open(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 noundef 2, i16 noundef 0) #17
  %0 = bitcast %struct.file* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #19
  br i1 %call1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0)) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @init_dup(%struct.file* noundef %call) #18
  %call4 = call i32 @init_dup(%struct.file* noundef %call) #18
  %call5 = call i32 @init_dup(%struct.file* noundef %call) #18
  call void @fput(%struct.file* noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @filp_open(i8* noundef, i32 noundef, i16 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_dup(%struct.file* noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(i8** noundef, i32* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  call void @rcu_read_unlock_strict() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @parameq(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_enable() unnamed_addr #3 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !10
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !11

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.static_key_enable, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @randomize_kstack_offset, i64 0, i32 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 318; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @randomize_kstack_offset, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @randomize_kstack_offset, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp27.not = icmp eq i32 %2, 1
  br i1 %cmp27.not, label %return, label %if.then41, !prof !19

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 321; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !25
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 1, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @randomize_kstack_offset, i64 0, i32 0, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_disable() unnamed_addr #3 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !10
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !11

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.static_key_disable, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @randomize_kstack_offset, i64 0, i32 0)) #17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 329; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @randomize_kstack_offset, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @randomize_kstack_offset, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp27.not = icmp eq i32 %2, 0
  br i1 %cmp27.not, label %return, label %if.then41, !prof !19

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 332; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !27
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 0, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @randomize_kstack_offset, i64 0, i32 0, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #12 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @repair_env_string(i8* noundef %param, i8* noundef %val) unnamed_addr #1 section ".init.text" {
entry:
  %tobool.not = icmp eq i8* %val, null
  br i1 %tobool.not, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @strlen(i8* noundef %param) #17
  %add.ptr = getelementptr i8, i8* %param, i64 %call
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 1
  %cmp = icmp eq i8* %add.ptr1, %val
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %arrayidx = getelementptr i8, i8* %val, i64 -1
  store i8 61, i8* %arrayidx, align 1
  br label %if.end16

if.else:                                          ; preds = %if.then
  %call3 = call i64 @strlen(i8* noundef %param) #17
  %add.ptr4 = getelementptr i8, i8* %param, i64 %call3
  %add.ptr5 = getelementptr i8, i8* %add.ptr4, i64 2
  %cmp6 = icmp eq i8* %add.ptr5, %val
  br i1 %cmp6, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.else
  %arrayidx8 = getelementptr i8, i8* %val, i64 -2
  store i8 61, i8* %arrayidx8, align 1
  %add.ptr9 = getelementptr i8, i8* %val, i64 -1
  %call10 = call i64 @strlen(i8* noundef nonnull %val) #17
  %add = add i64 %call10, 1
  %call11 = call i8* @memmove(i8* noundef %add.ptr9, i8* noundef nonnull %val, i64 noundef %add) #17
  br label %if.end16

do.body:                                          ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22init/main.c\22; .popsection; .long 14472b - 14470b; .short 508; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !28
  unreachable

if.end16:                                         ; preds = %if.then2, %if.then7, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i1 @obsolete_checksetup(i8* noundef %line) unnamed_addr #1 section ".init.text" {
entry:
  br label %do.body

do.body:                                          ; preds = %do.cond27, %entry
  %p.0 = phi %struct.obs_kernel_param* [ getelementptr inbounds ([0 x %struct.obs_kernel_param], [0 x %struct.obs_kernel_param]* @__setup_start, i64 0, i64 0), %entry ], [ %incdec.ptr, %do.cond27 ]
  %had_early_param.0.off0 = phi i1 [ false, %entry ], [ %had_early_param.1.off0, %do.cond27 ]
  %str = getelementptr inbounds %struct.obs_kernel_param, %struct.obs_kernel_param* %p.0, i64 0, i32 0
  %0 = load i8*, i8** %str, align 8
  %call = call i64 @strlen(i8* noundef %0) #17
  %1 = load i8*, i8** %str, align 8
  %sext = shl i64 %call, 32
  %conv2 = ashr exact i64 %sext, 32
  %call3 = call i1 @parameqn(i8* noundef %line, i8* noundef %1, i64 noundef %conv2) #17
  br i1 %call3, label %if.then, label %do.cond27

if.then:                                          ; preds = %do.body
  %early = getelementptr inbounds %struct.obs_kernel_param, %struct.obs_kernel_param* %p.0, i64 0, i32 2
  %2 = load i32, i32* %early, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %arrayidx = getelementptr i8, i8* %line, i64 %conv2
  %3 = load i8, i8* %arrayidx, align 1
  switch i8 %3, label %do.cond27 [
    i8 0, label %if.then12
    i8 61, label %if.then12
  ]

if.then12:                                        ; preds = %if.then4, %if.then4
  br label %do.cond27

if.else:                                          ; preds = %if.then
  %setup_func = getelementptr inbounds %struct.obs_kernel_param, %struct.obs_kernel_param* %p.0, i64 0, i32 1
  %4 = load i32 (i8*)*, i32 (i8*)** %setup_func, align 8
  %tobool13.not = icmp eq i32 (i8*)* %4, null
  br i1 %tobool13.not, label %do.end, label %if.else18

do.end:                                           ; preds = %if.else
  %str.le = getelementptr inbounds %struct.obs_kernel_param, %struct.obs_kernel_param* %p.0, i64 0, i32 0
  %5 = load i8*, i8** %str.le, align 8
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i8* noundef %5) #18
  br label %cleanup32

if.else18:                                        ; preds = %if.else
  %add.ptr = getelementptr i8, i8* %line, i64 %conv2
  %call20 = call i32 %4(i8* noundef %add.ptr) #17
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.cond27, label %cleanup32

do.cond27:                                        ; preds = %if.then4, %if.then12, %if.else18, %do.body
  %had_early_param.1.off0 = phi i1 [ true, %if.then12 ], [ %had_early_param.0.off0, %if.else18 ], [ %had_early_param.0.off0, %do.body ], [ %had_early_param.0.off0, %if.then4 ]
  %incdec.ptr = getelementptr %struct.obs_kernel_param, %struct.obs_kernel_param* %p.0, i64 1
  %cmp28 = icmp ult %struct.obs_kernel_param* %incdec.ptr, getelementptr inbounds ([0 x %struct.obs_kernel_param], [0 x %struct.obs_kernel_param]* @__setup_end, i64 0, i64 0)
  br i1 %cmp28, label %do.body, label %cleanup32

cleanup32:                                        ; preds = %if.else18, %do.cond27, %do.end
  %retval.2 = phi i1 [ true, %do.end ], [ true, %if.else18 ], [ %had_early_param.1.off0, %do.cond27 ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strnchr(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @parameqn(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free_ptr(i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_mem_debugging_and_hardening() local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @report_meminit() unnamed_addr #1 section ".init.text" {
entry:
  %call = call fastcc i1 @want_init_on_alloc() #19
  %cond = select i1 %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)
  %call1 = call fastcc i1 @want_init_on_free() #19
  %cond2 = select i1 %call1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond2) #18
  %call4 = call fastcc i1 @want_init_on_free() #19
  br i1 %call4, label %do.end7, label %if.end

do.end7:                                          ; preds = %entry
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.35, i64 0, i64 0)) #18
  br label %if.end

if.end:                                           ; preds = %do.end7, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_init_print_info() local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kmem_cache_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pgtable_init() unnamed_addr #3 {
entry:
  call void @pgtable_cache_init() #20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vmalloc_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @want_init_on_alloc() unnamed_addr #12 {
entry:
  %call5 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_alloc, i64 0, i32 0)) #19
  %cmp6 = icmp sgt i32 %call5, 0
  ret i1 %cmp6
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @want_init_on_free() unnamed_addr #12 {
entry:
  %call = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @init_on_free, i64 0, i32 0)) #19
  %cmp = icmp sgt i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strsep(i8** noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #13 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @blacklisted_initcalls, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #13 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @blacklisted_initcalls, %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @blacklisted_initcalls, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty() unnamed_addr #12 {
entry:
  %0 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @blacklisted_initcalls, i64 0, i32 0), align 8
  %cmp = icmp eq %struct.list_head* %0, @blacklisted_initcalls
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_symbol_no_offset(i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strreplace(i8* noundef, i8 noundef, i8 noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @trace_initcall_start_cb(i32 ()* noundef %fn) unnamed_addr #1 section ".init.text" {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !21
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %1) #19
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i32 ()* noundef %fn, i32 noundef %call1) #18
  %call3 = call i64 @ktime_get() #17
  store i64 %call3, i64* @initcall_calltime, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #14 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @trace_initcall_finish_cb(i32 ()* noundef %fn, i32 noundef %ret) unnamed_addr #1 section ".init.text" {
entry:
  %call = call i64 @ktime_get() #17
  %0 = load i64, i64* @initcall_calltime, align 8
  %sub = sub i64 %call, %0
  %shr = lshr i64 %sub, 10
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), i32 ()* noundef %fn, i32 noundef %ret, i64 noundef %shr) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strtobool(i8* noundef %s) unnamed_addr #3 {
entry:
  %call = call i32 @kstrtobool(i8* noundef %s, i8* noundef nonnull @rodata_enabled) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @free_reserved_area(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @kernel_init_freeable() unnamed_addr #1 section ".init.text" {
entry:
  store i32 33554431, i32* @gfp_allowed_mask, align 4
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #23, !srcloc !21
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %1) #19
  %call2 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %call1) #19
  store %struct.pid* %call1, %struct.pid** @cad_pid, align 8
  %2 = load i32, i32* @setup_max_cpus, align 4
  call void @smp_prepare_cpus(i32 noundef %2) #17
  call void @workqueue_init() #18
  call void @init_mm_internals() #17
  call fastcc void @do_pre_smp_initcalls() #20
  call void @smp_init() #18
  call void @sched_init_smp() #17
  call void @page_alloc_init_late() #17
  call fastcc void @do_basic_setup() #20
  call void @console_on_rootfs() #20
  %3 = load i8*, i8** @ramdisk_execute_command, align 8
  %call4 = call i32 @init_eaccess(i8* noundef %3) #18
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** @ramdisk_execute_command, align 8
  call void @prepare_namespace() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_readonly() unnamed_addr #3 {
entry:
  %0 = load i8, i8* @rodata_enabled, align 1, !range !10
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @rcu_barrier() #17
  call void @mark_rodata_ro() #17
  br label %if.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.58, i64 0, i64 0)) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_end_inkernel_boot() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_sysctl_args() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @run_init_process(i8* noundef %init_filename) unnamed_addr #3 {
entry:
  store i8* %init_filename, i8** getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 0), align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i64 0, i64 0), i8* noundef %init_filename) #18
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i64 0, i64 0)) #18
  %0 = load i8*, i8** getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 0), align 8
  %tobool.not37 = icmp eq i8* %0, null
  br i1 %tobool.not37, label %do.end13, label %do.end8

do.end8:                                          ; preds = %entry, %do.end8
  %1 = phi i8* [ %2, %do.end8 ], [ %0, %entry ]
  %p.038 = phi i8** [ %incdec.ptr, %do.end8 ], [ getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 0), %entry ]
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %1) #18
  %incdec.ptr = getelementptr i8*, i8** %p.038, i64 1
  %2 = load i8*, i8** %incdec.ptr, align 8
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %do.end13, label %do.end8

do.end13:                                         ; preds = %do.end8, %entry
  %call15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0)) #18
  %3 = load i8*, i8** getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 0), align 8
  %tobool17.not39 = icmp eq i8* %3, null
  br i1 %tobool17.not39, label %for.end26, label %do.end21

do.end21:                                         ; preds = %do.end13, %do.end21
  %4 = phi i8* [ %5, %do.end21 ], [ %3, %do.end13 ]
  %p.140 = phi i8** [ %incdec.ptr25, %do.end21 ], [ getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 0), %do.end13 ]
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %4) #18
  %incdec.ptr25 = getelementptr i8*, i8** %p.140, i64 1
  %5 = load i8*, i8** %incdec.ptr25, align 8
  %tobool17.not = icmp eq i8* %5, null
  br i1 %tobool17.not, label %for.end26, label %do.end21

for.end26:                                        ; preds = %do.end21, %do.end13
  %call27 = call i32 @kernel_execve(i8* noundef %init_filename, i8** noundef getelementptr inbounds (<{ i8*, [33 x i8*] }>, <{ i8*, [33 x i8*] }>* @argv_init, i64 0, i32 0), i8** noundef getelementptr inbounds (<{ i8*, i8*, [32 x i8*] }>, <{ i8*, i8*, [32 x i8*] }>* @envp_init, i64 0, i32 0)) #17
  ret i32 %call27
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_to_run_init_process(i8* noundef %init_filename) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @run_init_process(i8* noundef %init_filename) #19
  switch i32 %call, label %do.end [
    i32 -2, label %if.end
    i32 0, label %if.end
  ]

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.63, i64 0, i64 0), i8* noundef %init_filename, i32 noundef %call) #18
  br label %if.end

if.end:                                           ; preds = %entry, %entry, %do.end
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @get_pid(%struct.pid* noundef returned %pid) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.pid* %pid
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #14 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  ret %struct.pid* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_prepare_cpus(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @workqueue_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_mm_internals() local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @do_pre_smp_initcalls() unnamed_addr #1 section ".init.text" {
entry:
  br i1 icmp ult (i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall_start, i64 0, i64 0), i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall0_start, i64 0, i64 0)), label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %fn.05 = phi i32* [ %incdec.ptr, %for.body ], [ getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall_start, i64 0, i64 0), %entry ]
  %call = call fastcc i32 ()* @initcall_from_entry(i32* noundef %fn.05) #19
  %call1 = call i32 @do_one_initcall(i32 ()* noundef %call) #20
  %incdec.ptr = getelementptr i32, i32* %fn.05, i64 1
  %cmp = icmp ult i32* %incdec.ptr, getelementptr inbounds ([0 x i32], [0 x i32]* @__initcall0_start, i64 0, i64 0)
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @smp_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_init_smp() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_alloc_init_late() local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @do_basic_setup() unnamed_addr #1 section ".init.text" {
entry:
  call void @driver_init() #17
  call void @init_irq_proc() #17
  call fastcc void @do_initcalls() #20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_eaccess(i8* noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_namespace() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #3 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #3 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #3 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #17
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !11

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !19

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #17
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #16, !srcloc !29
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 ()* @initcall_from_entry(i32* noundef readonly %entry1) unnamed_addr #14 {
entry:
  %call = call fastcc i8* @offset_to_ptr(i32* noundef %entry1) #19
  %0 = bitcast i8* %call to i32 ()*
  ret i32 ()* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @offset_to_ptr(i32* noundef %off) unnamed_addr #14 {
entry:
  %0 = ptrtoint i32* %off to i64
  %1 = load i32, i32* %off, align 4
  %conv = sext i32 %1 to i64
  %add = add i64 %conv, %0
  %2 = inttoptr i64 %add to i8*
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_irq_proc() local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @do_initcalls() unnamed_addr #1 section ".init.text" {
entry:
  %0 = load i8*, i8** @saved_command_line, align 8
  %call = call i64 @strlen(i8* noundef %0) #17
  %add = add i64 %call, 1
  %call1 = call fastcc i8* @kzalloc(i64 noundef %add) #19
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.do_initcalls, i64 0, i64 0), i64 noundef %add) #21
  unreachable

for.body:                                         ; preds = %entry, %for.body
  %level.013 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %1 = load i8*, i8** @saved_command_line, align 8
  %call3 = call i8* @strcpy(i8* noundef nonnull %call1, i8* noundef %1) #17
  call fastcc void @do_initcall_level(i32 noundef %level.013, i8* noundef nonnull %call1) #20
  %inc = add nuw nsw i32 %level.013, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call void @kfree(i8* noundef nonnull %call1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #3 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #17
  ret i8* %call10.i
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @do_initcall_level(i32 noundef %level, i8* noundef %command_line) unnamed_addr #1 section ".init.text" {
entry:
  %idxprom = sext i32 %level to i64
  %arrayidx = getelementptr [8 x i8*], [8 x i8*]* @initcall_level_names, i64 0, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8
  %conv = trunc i32 %level to i16
  %call = call i8* @parse_args(i8* noundef %0, i8* noundef %command_line, %struct.kernel_param* noundef getelementptr inbounds ([0 x %struct.kernel_param], [0 x %struct.kernel_param]* @__start___param, i64 0, i64 0), i32 noundef trunc (i64 sdiv (i64 sub (i64 ptrtoint ([0 x %struct.kernel_param]* @__stop___param to i64), i64 ptrtoint ([0 x %struct.kernel_param]* @__start___param to i64)), i64 40) to i32), i16 noundef %conv, i16 noundef %conv, i8* noundef null, i32 (i8*, i8*, i8*, i8*)* noundef nonnull @ignore_unknown_bootoption) #17
  %arrayidx5 = getelementptr [9 x i32*], [9 x i32*]* @initcall_levels, i64 0, i64 %idxprom
  %1 = load i32*, i32** %arrayidx5, align 8
  %add = add i32 %level, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr [9 x i32*], [9 x i32*]* @initcall_levels, i64 0, i64 %idxprom6
  %2 = load i32*, i32** %arrayidx7, align 8
  %cmp19 = icmp ult i32* %1, %2
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %fn.020 = phi i32* [ %incdec.ptr, %for.body ], [ %1, %entry ]
  %call9 = call fastcc i32 ()* @initcall_from_entry(i32* noundef %fn.020) #19
  %call10 = call i32 @do_one_initcall(i32 ()* noundef %call9) #20
  %incdec.ptr = getelementptr i32, i32* %fn.020, i64 1
  %cmp = icmp ult i32* %incdec.ptr, %2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define internal i32 @ignore_unknown_bootoption(i8* nocapture noundef readnone %param, i8* nocapture noundef readnone %val, i8* nocapture noundef readnone %unused, i8* nocapture noundef readnone %arg) #15 section ".init.text" {
entry:
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_rodata_ro() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_execve(i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #5

attributes #0 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin nounwind "no-builtins" }
attributes #19 = { nobuiltin "no-builtins" }
attributes #20 = { cold nobuiltin "no-builtins" }
attributes #21 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #22 = { nounwind readonly }
attributes #23 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{i64 2149041917, i64 2149041964, i64 2149041970, i64 2149042007, i64 2149042025, i64 2149042952, i64 2149043000, i64 2149043048, i64 2149043111, i64 2149043160, i64 2149042103, i64 2149042128, i64 2149042154, i64 2149042160, i64 2149042197, i64 2149042203, i64 2149042253, i64 2149042299, i64 2149042332}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2156744919}
!13 = !{i64 2156747768}
!14 = !{i64 2156748239}
!15 = !{i64 2149269849, i64 2149269896, i64 2149269902, i64 2149269939, i64 2149269957, i64 2149271298, i64 2149271346, i64 2149271394, i64 2149271457, i64 2149271506, i64 2149270035, i64 2149270060, i64 2149270086, i64 2149270092, i64 2149270964, i64 2149271004, i64 2149271022, i64 2149271054, i64 2149271082, i64 2149271136, i64 2149271156, i64 2149271253, i64 2149270115, i64 2149270129, i64 2149270135, i64 2149270185, i64 2149270231, i64 2149270264}
!16 = !{i64 2149275552, i64 2149275599, i64 2149275605, i64 2149275642, i64 2149275660, i64 2149276971, i64 2149277019, i64 2149277067, i64 2149277130, i64 2149277179, i64 2149275738, i64 2149275763, i64 2149275789, i64 2149275795, i64 2149276637, i64 2149276677, i64 2149276695, i64 2149276727, i64 2149276755, i64 2149276809, i64 2149276829, i64 2149276926, i64 2149275818, i64 2149275832, i64 2149275838, i64 2149275888, i64 2149275934, i64 2149275967}
!17 = !{i64 2149277731, i64 2149277778, i64 2149277784, i64 2149277821, i64 2149277839, i64 2149278782, i64 2149278830, i64 2149278878, i64 2149278941, i64 2149278990, i64 2149277917, i64 2149277942, i64 2149277968, i64 2149277974, i64 2149278011, i64 2149278017, i64 2149278067, i64 2149278113, i64 2149278146}
!18 = !{i64 2149260393, i64 2149260440, i64 2149260446, i64 2149260483, i64 2149260501, i64 2149261841, i64 2149261889, i64 2149261937, i64 2149262000, i64 2149262049, i64 2149260579, i64 2149260604, i64 2149260630, i64 2149260636, i64 2149261507, i64 2149261547, i64 2149261565, i64 2149261597, i64 2149261625, i64 2149261679, i64 2149261699, i64 2149261796, i64 2149260659, i64 2149260673, i64 2149260679, i64 2149260729, i64 2149260775, i64 2149260808}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2156760187}
!21 = !{i64 1479612}
!22 = !{i64 2149692127}
!23 = !{i64 2149692344}
!24 = !{i64 2148776013}
!25 = !{i64 2148777759}
!26 = !{i64 2148780144}
!27 = !{i64 2148781890}
!28 = !{i64 2156715660}
!29 = !{i64 2147824717, i64 2147825381, i64 2147825411, i64 2147825443, i64 2147825477, i64 2147825512, i64 2147825537}
