; ModuleID = 'kernel/sysctl.c'
source_filename = "kernel/sysctl.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, {}*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.139, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.6, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.6 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.7, [0 x i64] }
%struct.anon.7 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.8, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.8 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.9, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.10, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.9 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.10 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.11, %union.anon.118, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.142, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.143, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.144, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.145, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.101, %struct.list_head, %struct.list_head, %union.anon.102 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.14, i8* }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.101 = type { %struct.list_head }
%union.anon.102 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.141 }
%union.anon.141 = type { %struct.kuid_t }
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
%struct.sock = type { %struct.sock_common, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff*, %struct.sk_buff_head, %struct.anon.48, i32, i32, %struct.sk_filter*, %union.anon.80, %struct.dst_entry*, %struct.dst_entry*, %struct.atomic_t, i32, i32, %struct.refcount_struct, i64, %union.anon.88, %struct.sk_buff*, %struct.sk_buff_head, i32, i32, i32, i32, i64, %struct.timer_list, i32, i32, i64, i64, %struct.page_frag, i64, i64, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i64, %struct.proto*, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, %struct.spinlock, %struct.pid*, %struct.cred*, i64, i64, i16, i32, i8, i32, %struct.atomic_t, i8, i8, %struct.socket*, i8*, %struct.sock_cgroup_data, %struct.mem_cgroup*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*)*, %struct.sock_reuseport*, %struct.callback_head }
%struct.sock_common = type { %union.anon.19, %union.anon.21, %union.anon.22, i16, i8, i8, i32, %union.anon.24, %struct.proto*, %struct.possible_net_t, %struct.atomic64_t, %union.anon.44, [0 x i32], %union.anon.45, i16, %union.anon.46, %struct.refcount_struct, [0 x i32], %union.anon.47 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { i32 }
%union.anon.22 = type { i32 }
%union.anon.24 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.hlist_node }
%union.anon.46 = type { i32 }
%union.anon.47 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.48 = type { %struct.atomic_t, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_filter = type { %struct.refcount_struct, %struct.callback_head, %struct.bpf_prog* }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], %struct.bpf_prog_stats*, i32*, i32 (i8*, %struct.bpf_insn*)*, %struct.bpf_prog_aux*, %struct.sock_fprog_kern*, [0 x %struct.sock_filter], [0 x %struct.bpf_insn] }
%struct.bpf_prog_stats = type { i64, i64, i64, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_sync = type {}
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, %struct.bpf_ctx_arg_aux*, %struct.mutex, %struct.bpf_prog*, %struct.bpf_trampoline*, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, %struct.btf_type*, i8*, %struct.bpf_prog**, i8*, %struct.bpf_jit_poke_descriptor*, %struct.bpf_kfunc_desc_tab*, i32, %struct.bpf_ksym, %struct.bpf_prog_ops*, %struct.bpf_map**, %struct.mutex, %struct.btf_mod_pair*, %struct.bpf_prog*, %struct.user_struct*, i64, [2 x %struct.bpf_map*], [16 x i8], %struct.bpf_prog_offload*, %struct.btf*, %struct.bpf_func_info*, %struct.bpf_func_info_aux*, %struct.bpf_line_info*, i8**, i32, i32, i32, i32, %struct.exception_table_entry*, %union.anon.79 }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_trampoline = type { %struct.hlist_node, %struct.mutex, %struct.refcount_struct, i64, %struct.anon.49, %struct.bpf_prog*, [3 x %struct.hlist_head], [3 x i32], %struct.bpf_tramp_image*, i64, %struct.module* }
%struct.anon.49 = type { %struct.btf_func_model, i8*, i8 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.bpf_tramp_image = type { i8*, %struct.bpf_ksym, %struct.percpu_ref, i8*, i8*, %union.anon.50 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%union.anon.50 = type { %struct.work_struct }
%struct.btf_type = type opaque
%struct.bpf_jit_poke_descriptor = type { i8*, i8*, i8*, i8*, %union.anon.51, i8, i8, i16, i32 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { %struct.bpf_map*, i32 }
%struct.bpf_map = type { %struct.bpf_map_ops*, %struct.bpf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, [16 x i8], i32, i8, i8, [34 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, i64, [40 x i8] }
%struct.bpf_map_ops = type { i32 (%union.bpf_attr*)*, %struct.bpf_map* (%union.bpf_attr*)*, void (%struct.bpf_map*, %struct.file*)*, void (%struct.bpf_map*)*, i32 (%struct.bpf_map*, i8*, i8*)*, void (%struct.bpf_map*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*)*, i8* (%struct.bpf_map*, %struct.file*, i32)*, void (i8*)*, i32 (%struct.bpf_map*, %struct.bpf_insn*)*, i32 (i8*)*, void (%struct.bpf_map*, i8*, %struct.seq_file*)*, i32 (%struct.bpf_map*, %struct.btf*, %struct.btf_type*, %struct.btf_type*)*, i32 (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, i32, %struct.bpf_prog*, %struct.bpf_prog*)*, i32 (%struct.bpf_map*, i64*, i32)*, i32 (%struct.bpf_map*, i64, i32*)*, i32 (%struct.bpf_map*, %struct.vm_area_struct*)*, i32 (%struct.bpf_map*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.bpf_local_storage_map*, i8*, i32)*, void (%struct.bpf_local_storage_map*, i8*, i32)*, %struct.bpf_local_storage** (i8*)*, i32 (%struct.bpf_map*, i32, i64)*, i1 (%struct.bpf_map*, %struct.bpf_map*)*, i32 (%struct.bpf_verifier_env*, %struct.bpf_func_state*, %struct.bpf_func_state*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i8*, i32*, %struct.bpf_iter_seq_info* }
%union.bpf_attr = type { %struct.anon.57 }
%struct.anon.57 = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, [16 x i8], i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, %union.anon.58, i32, i64 }
%union.anon.58 = type { i32 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.bpf_local_storage_map = type opaque
%struct.bpf_local_storage = type opaque
%struct.bpf_verifier_env = type opaque
%struct.bpf_func_state = type opaque
%struct.bpf_iter_seq_info = type { %struct.seq_operations*, i32 (i8*, %struct.bpf_iter_aux_info*)*, void (i8*)*, i32 }
%struct.bpf_iter_aux_info = type opaque
%struct.bpf_kfunc_desc_tab = type opaque
%struct.bpf_ksym = type { i64, i64, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.bpf_prog_ops = type { i32 (%struct.bpf_prog*, %union.bpf_attr*, %union.bpf_attr*)* }
%struct.btf_mod_pair = type { %struct.btf*, %struct.module* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.bpf_prog_offload = type { %struct.bpf_prog*, %struct.net_device*, %struct.bpf_offload_dev*, i8*, %struct.list_head, i8, i8, i8*, i32 }
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.146, i32, i32, %struct.net_device_ops*, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.ethtool_ops*, %struct.header_ops*, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, [40 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, %struct.refcount_struct, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, i8*, i32, %union.anon.164, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.146 = type { %struct.list_head, %struct.list_head }
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.if_settings*)*, i32 (%struct.net_device*, %struct.ifreq*, i8*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, %struct.net_device* (%struct.net_device*, %struct.sock*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, %struct.net_device* (%struct.net_device*, %struct.xdp_buff*)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)*, i32 (%struct.net_device_path_ctx*, %struct.net_device_path*)* }
%struct.ifreq = type { %union.anon.147, %union.anon.148 }
%union.anon.147 = type { [16 x i8] }
%union.anon.148 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.if_settings = type { i32, i32, %union.anon.149 }
%union.anon.149 = type { %struct.raw_hdlc_proto* }
%struct.raw_hdlc_proto = type { i16, i16 }
%struct.neigh_parms = type { %struct.possible_net_t, %struct.net_device*, %struct.list_head, i32 (%struct.neighbour*)*, %struct.neigh_table*, i8*, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i64] }
%struct.neighbour = type { %struct.neighbour*, %struct.neigh_table*, %struct.neigh_parms*, i64, i64, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i64, %struct.atomic_t, i8, i8, i8, i8, i8, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, i32 (%struct.neighbour*, %struct.sk_buff*)*, %struct.neigh_ops*, %struct.list_head, %struct.callback_head, %struct.net_device*, [0 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.hh_cache = type { i32, %struct.seqlock_t, [4 x i64] }
%struct.neigh_ops = type { i32, void (%struct.neighbour*, %struct.sk_buff*)*, void (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)* }
%struct.neigh_table = type { i32, i32, i32, i16, i32 (i8*, %struct.net_device*, i32*)*, i1 (%struct.neighbour*, i8*)*, i32 (%struct.neighbour*)*, i32 (%struct.pneigh_entry*)*, void (%struct.pneigh_entry*)*, void (%struct.sk_buff*)*, i32 (i8*)*, i1 (%struct.net_device*, %struct.netlink_ext_ack*)*, i8*, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i64, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.rwlock_t, i64, %struct.neigh_statistics*, %struct.neigh_hash_table*, %struct.pneigh_entry** }
%struct.pneigh_entry = type { %struct.pneigh_entry*, %struct.possible_net_t, %struct.net_device*, i8, i8, [0 x i8] }
%struct.netlink_ext_ack = type { i8*, %struct.nlattr*, %struct.nla_policy*, [20 x i8], i8 }
%struct.nlattr = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.85 }
%union.anon.85 = type { i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.neigh_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.neigh_hash_table = type { %struct.neighbour**, i32, [4 x i32], %struct.callback_head }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.150 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.150 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.netdev_bpf = type { i32, %union.anon.151 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, %struct.xdp_rxq_info*, %struct.xdp_txq_info*, i32 }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, i32, [36 x i8] }
%struct.xdp_txq_info = type { %struct.net_device* }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.net_device_path_ctx = type { %struct.net_device*, i8*, i32, [2 x %struct.anon.155] }
%struct.anon.155 = type { i16, i16 }
%struct.net_device_path = type { i32, %struct.net_device*, %union.anon.156 }
%union.anon.156 = type { %struct.anon.158, [4 x i8] }
%struct.anon.158 = type { i32, i16, i16 }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ops = type opaque
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)*, i1 (i8*, i32)*, i16 (%struct.sk_buff*)* }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.in_device = type opaque
%struct.inet6_dev = type { %struct.net_device*, %struct.list_head, %struct.ifmcaddr6*, %struct.ifmcaddr6*, i8, i8, i8, i8, i64, i64, i64, i64, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.ifacaddr6*, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, %struct.neigh_parms*, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i64, %struct.callback_head, i32 }
%struct.ifmcaddr6 = type { %struct.in6_addr, %struct.inet6_dev*, %struct.ifmcaddr6*, %struct.ip6_sf_list*, %struct.ip6_sf_list*, i32, i8, [2 x i64], %struct.delayed_work, i32, i32, %struct.refcount_struct, i64, i64, %struct.callback_head }
%struct.ip6_sf_list = type { %struct.ip6_sf_list*, %struct.in6_addr, [2 x i64], i8, i8, i8, %struct.callback_head }
%struct.ifacaddr6 = type { %struct.in6_addr, %struct.fib6_info*, %struct.ifacaddr6*, %struct.hlist_node, i32, %struct.refcount_struct, i64, i64, %struct.callback_head }
%struct.fib6_info = type opaque
%struct.in6_addr = type { %union.anon.84 }
%union.anon.84 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.ctl_table_header* }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ctl_table_header = type { %union.anon.2, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ipv6_devstat = type { %struct.proc_dir_entry*, %struct.ipstats_mib*, %struct.icmpv6_mib_device*, %struct.icmpv6msg_mib_device* }
%struct.proc_dir_entry = type opaque
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.icmpv6_mib_device = type { [6 x %struct.atomic64_t] }
%struct.icmpv6msg_mib_device = type { [512 x %struct.atomic64_t] }
%struct.wireless_dev = type opaque
%struct.wpan_dev = type opaque
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, %struct.kobject, %struct.net_device*, [56 x i8] }
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i64, i64, %struct.net_device*, [16 x i8], %struct.spinlock, i32, i64, i64, [40 x i8] }
%struct.Qdisc = type { i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, i32, i32, %struct.Qdisc_ops*, %struct.qdisc_size_table*, %struct.hlist_node, i32, i32, %struct.netdev_queue*, %struct.net_rate_estimator*, %struct.gnet_stats_basic_cpu*, %struct.gnet_stats_queue*, i32, %struct.refcount_struct, [24 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_packed, %struct.seqcount, %struct.gnet_stats_queue, i64, %struct.Qdisc*, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.callback_head, [40 x i8], [0 x i64] }
%struct.Qdisc_ops = type { %struct.Qdisc_ops*, %struct.Qdisc_class_ops*, [16 x i8], i32, i32, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, %struct.sk_buff*)*, i32 (%struct.Qdisc*, %struct.gnet_dump*)*, void (%struct.Qdisc*, i32)*, void (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)*, %struct.module* }
%struct.Qdisc_class_ops = type { i32, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, %struct.Qdisc* (%struct.Qdisc*, i64)*, void (%struct.Qdisc*, i64)*, i64 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*, %struct.qdisc_walker*)*, %struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc*, i64, i32)*, void (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type opaque
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, %struct.net*, %struct.Qdisc*, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.160, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.tcp_mib = type { [16 x i64] }
%struct.linux_mib = type { [126 x i64] }
%struct.udp_mib = type { [10 x i64] }
%struct.icmp_mib = type { [28 x i64] }
%struct.icmpmsg_mib = type { [512 x %struct.atomic64_t] }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, %struct.ctl_table_header* }
%struct.netns_nexthop = type { %struct.rb_root, %struct.hlist_head*, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, i8, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i8, i8, i8, i8, i8, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i64, i64, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t, [48 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.83, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.83 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type { i32, %struct.list_head, i32 (%struct.net*)*, i32 (%struct.net*, %struct.notifier_block*, %struct.netlink_ext_ack*)*, %struct.module*, %struct.callback_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.87 }
%union.anon.87 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.flow_block = type { %struct.list_head }
%struct.anon.160 = type { %struct.tcf_chain*, %struct.list_head }
%struct.tcf_chain = type { %struct.mutex, %struct.tcf_proto*, %struct.list_head, %struct.tcf_block*, i32, i32, i32, i8, i8, %struct.tcf_proto_ops*, i8*, %struct.callback_head }
%struct.tcf_proto = type { %struct.tcf_proto*, i8*, i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i16, i32, i8*, %struct.tcf_proto_ops*, %struct.tcf_chain*, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.tcf_result = type { %union.anon.161 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i32 }
%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i32 (%struct.tcf_proto*)*, void (%struct.tcf_proto*, i1, %struct.netlink_ext_ack*)*, i8* (%struct.tcf_proto*, i32)*, void (%struct.tcf_proto*, i8*)*, i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, i64, i32, %struct.nlattr**, i8**, i32, %struct.netlink_ext_ack*)*, i32 (%struct.tcf_proto*, i8*, i8*, i1, %struct.netlink_ext_ack*)*, i1 (%struct.tcf_proto*)*, void (%struct.tcf_proto*, %struct.tcf_walker*, i1)*, i32 (%struct.tcf_proto*, i1, i32 (i32, i8*, i8*)*, i8*, %struct.netlink_ext_ack*)*, void (%struct.tcf_proto*, i8*)*, void (%struct.tcf_proto*, i8*)*, void (i8*, i32, i64, i8*, i64)*, i8* (%struct.net*, %struct.tcf_chain*, %struct.nlattr**, %struct.netlink_ext_ack*)*, void (i8*)*, i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i1)*, i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i1)*, i32 (%struct.sk_buff*, %struct.net*, i8*)*, %struct.module*, i32 }
%struct.tcf_walker = type opaque
%struct.gnet_dump = type { %struct.spinlock*, %struct.sk_buff*, %struct.nlattr*, i32, i32, i32, i8*, i32, %struct.tc_stats }
%struct.tc_stats = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.qdisc_size_table = type { %struct.callback_head, %struct.list_head, %struct.tc_sizespec, i32, [0 x i16] }
%struct.tc_sizespec = type { i8, i8, i16, i32, i32, i32, i32, i32 }
%struct.net_rate_estimator = type opaque
%struct.gnet_stats_basic_cpu = type { %struct.gnet_stats_basic_packed, %struct.u64_stats_sync }
%struct.qdisc_skb_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.gnet_stats_basic_packed = type { i64, i64 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.xdp_dev_bulk_queue = type opaque
%union.anon.164 = type { %struct.pcpu_lstats* }
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { %struct.local64_t }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.rtnl_link_ops = type { %struct.list_head, i8*, i64, %struct.net_device* (%struct.nlattr**, i8*, i8, i32, i32)*, void (%struct.net_device*)*, i8, i32, %struct.nla_policy*, i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, void (%struct.net_device*, %struct.list_head*)*, i64 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i32 ()*, i32 ()*, i32, %struct.nla_policy*, i32 (%struct.net_device*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i64 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*, %struct.net_device*)*, %struct.net* (%struct.net_device*)*, i64 (%struct.net_device*, i32)*, i32 (%struct.sk_buff*, %struct.net_device*, i32*, i32)* }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.phy_device = type opaque
%struct.sfp_bus = type opaque
%struct.udp_tunnel_nic_info = type opaque
%struct.udp_tunnel_nic = type opaque
%struct.bpf_xdp_entity = type { %struct.bpf_prog*, %struct.bpf_xdp_link* }
%struct.bpf_xdp_link = type opaque
%struct.bpf_offload_dev = type opaque
%struct.btf = type opaque
%struct.bpf_func_info = type { i32, i32 }
%struct.bpf_func_info_aux = type { i16, i8 }
%struct.bpf_line_info = type { i32, i32, i32, i32 }
%struct.exception_table_entry = type { i32, i32 }
%union.anon.79 = type { %struct.work_struct }
%struct.sock_fprog_kern = type { i16, %struct.sock_filter* }
%struct.sock_filter = type { i16, i8, i8, i32 }
%union.anon.80 = type { %struct.socket_wq* }
%struct.socket_wq = type { %struct.wait_queue_head, %struct.fasync_struct*, i64, %struct.callback_head, [8 x i8] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.dst_entry = type { %struct.net_device*, %struct.dst_ops*, i64, i64, i8*, i32 (%struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i16, i16, i16, i16, %struct.atomic_t, i32, i64, %struct.lwtunnel_state*, %struct.callback_head, i16, i16, i32 }
%struct.dst_ops = type { i16, i32, i32 (%struct.dst_ops*)*, %struct.dst_entry* (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)*, i32* (%struct.dst_entry*, i64)*, void (%struct.dst_entry*)*, void (%struct.dst_entry*, %struct.net_device*, i32)*, %struct.dst_entry* (%struct.dst_entry*)*, void (%struct.sk_buff*)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32, i1)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, %struct.neighbour* (%struct.dst_entry*, %struct.sk_buff*, i8*)*, void (%struct.dst_entry*, i8*)*, %struct.kmem_cache*, %struct.percpu_counter, [40 x i8] }
%struct.lwtunnel_state = type opaque
%union.anon.88 = type { %struct.sk_buff* }
%struct.sk_buff = type { %union.anon.32, %union.anon.35, %union.anon.36, [48 x i8], %union.anon.37, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.39, i32, i32, i32, i16, i16, %union.anon.41, %union.anon.42, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.34 }
%union.anon.34 = type { %struct.net_device* }
%union.anon.35 = type { %struct.sock* }
%union.anon.36 = type { i64 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { i64, void (%struct.sk_buff*)* }
%union.anon.39 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.42 = type { i16 }
%struct.sk_buff_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.proto = type { void (%struct.sock*, i64)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, i32)*, %struct.sock* (%struct.sock*, i32, i32*, i1)*, i32 (%struct.sock*, i32, i64)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, i32, i32, [2 x i64], i32)*, i32 (%struct.sock*, i32, i32, i8*, i32*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sk_buff*)*, i1 (i32, i32)*, void (%struct.sock*)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, i16)*, i32, i1 (%struct.sock*, i32)*, i1 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, %struct.atomic64_t*, %struct.percpu_counter*, i64*, i64*, i32*, i32*, i32, i32, i32, i8, %struct.kmem_cache*, i32, i32, i32, i32, %struct.percpu_counter*, %struct.request_sock_ops*, %struct.timewait_sock_ops*, %union.anon.43, %struct.module*, [32 x i8], %struct.list_head, i32 (%struct.sock*, i32)* }
%struct.msghdr = type { i8*, i32, %struct.iov_iter, %union.anon.30, i8, i64, i32, %struct.kiocb* }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.25, %union.anon.28 }
%union.anon.25 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.28 = type { i64 }
%union.anon.30 = type { i8* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.31 }
%union.anon.31 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.request_sock_ops = type { i32, i32, %struct.kmem_cache*, i8*, i32 (%struct.sock*, %struct.request_sock*)*, void (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)*, void (%struct.sock*, %struct.sk_buff*)*, void (%struct.request_sock*)*, void (%struct.request_sock*)* }
%struct.request_sock = type { %struct.sock_common, %struct.request_sock*, i16, i8, i8, i32, %struct.timer_list, %struct.request_sock_ops*, %struct.sock*, %struct.saved_syn*, i32, i32 }
%struct.saved_syn = type { i32, i32, i32, [0 x i8] }
%struct.timewait_sock_ops = type { %struct.kmem_cache*, i8*, i32, i32 (%struct.sock*, %struct.sock*, i8*)*, void (%struct.sock*)* }
%union.anon.43 = type { %struct.inet_hashinfo* }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.26, %struct.qspinlock }
%union.anon.26 = type { %struct.atomic_t }
%struct.socket = type { i32, i16, i64, %struct.file*, %struct.sock*, %struct.proto_ops*, [24 x i8], %struct.socket_wq }
%struct.proto_ops = type { i32, %struct.module*, i32 (%struct.socket*)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.socket*)*, i32 (%struct.socket*, %struct.socket*, i32, i1)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.file*, %struct.socket*, %struct.poll_table_struct*)*, i32 (%struct.socket*, i32, i64)*, i32 (%struct.socket*, i8*, i1, i1)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32, i32, [2 x i64], i32)*, i32 (%struct.socket*, i32, i32, i8*, i32*)*, void (%struct.seq_file*, %struct.socket*)*, i32 (%struct.socket*, %struct.msghdr*, i64)*, i32 (%struct.socket*, %struct.msghdr*, i64, i32)*, i32 (%struct.file*, %struct.socket*, %struct.vm_area_struct*)*, i64 (%struct.socket*, %struct.page*, i32, i64, i32)*, i64 (%struct.socket*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.sock*, i32)*, i32 (%struct.socket*)*, i32 (%struct.sock*, %struct.read_descriptor_t*, i32 (%struct.read_descriptor_t*, %struct.sk_buff*, i32, i64)*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, i32)* }
%struct.read_descriptor_t = type { i64, i64, %union.anon.90, i32 }
%union.anon.90 = type { i8* }
%struct.sock_cgroup_data = type {}
%struct.sock_reuseport = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.91, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.91 = type { %struct.kernfs_elem_dir }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.92, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.92 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.93, %union.anon.94, %union.anon.95, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.100, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.93 = type { %struct.hlist_node }
%union.anon.94 = type { %struct.rb_node }
%union.anon.95 = type { %struct.anon.99 }
%struct.anon.99 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.100 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.97, %union.anon.98, i32 }
%union.anon.97 = type { %struct.list_head }
%union.anon.98 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
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
%union.anon.142 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.143 = type { %struct.callback_head }
%union.anon.144 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.103 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.103 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.145 = type { %struct.pipe_inode_info* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.118 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.131, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.131 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.file = type { %union.anon.13, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.133 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { i32*, i32, i32, i32, i64, i32* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.89 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.89 = type { %struct.callback_head }
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
%struct.kernel_siginfo = type { %struct.anon.119 }
%struct.anon.119 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.123 }
%struct.anon.123 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.138, i32, [12 x i8] }
%union.anon.138 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.139 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.140, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.140 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kmem_cache = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82, [48 x i8] }
%struct.anon.82 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.inodes_stat_t = type { i64, i64, [5 x i64] }
%struct.files_stat_struct = type { i64, i64, i64 }
%struct.dentry_stat_t = type { i64, i64, i64, i64, i64, i64 }
%struct.do_proc_dointvec_minmax_conv_param = type { i32*, i32* }
%struct.do_proc_douintvec_minmax_conv_param = type { i32*, i32* }
%struct.static_key = type { %struct.atomic_t }

@__const.proc_do_large_bitmap.tr_a = private unnamed_addr constant [3 x i8] c"-,\0A", align 1
@__const.proc_do_large_bitmap.tr_b = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@proc_do_static_key.static_key_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @proc_do_static_key.static_key_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @proc_do_static_key.static_key_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@sysctl_vals = external dso_local constant [0 x i32], align 4
@sysctl_legacy_va_layout = dso_local global i32 0, align 4
@sysctl_writes_strict = internal global i32 1, align 4
@warn_sysctl_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [152 x i8] c"\014%s wrote to %s when file position was not 0!\0AThis will not be supported in the future. To silence this\0Awarning, set kernel.sysctl_writes_strict = -1\0A\00", align 1
@proc_wspace_sep = internal constant [3 x i8] c" \09\0A", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%lu\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"vm\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@dev_table = internal global [1 x %struct.ctl_table] zeroinitializer, align 8
@sysctl_base_table = internal global [6 x { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }] [{ i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([40 x %struct.ctl_table], [40 x %struct.ctl_table]* bitcast ([40 x { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }]* @kern_table to [40 x %struct.ctl_table]*), i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([33 x %struct.ctl_table], [33 x %struct.ctl_table]* bitcast ([33 x { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }]* @vm_table to [33 x %struct.ctl_table]*), i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([23 x %struct.ctl_table], [23 x %struct.ctl_table]* bitcast ([23 x { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }]* @fs_table to [23 x %struct.ctl_table]*), i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* bitcast ([2 x { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }]* @debug_table to [2 x %struct.ctl_table]*), i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([1 x %struct.ctl_table], [1 x %struct.ctl_table]* @dev_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } zeroinitializer], align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"sched_child_runs_first\00", align 1
@sysctl_sched_child_runs_first = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"sched_rt_period_us\00", align 1
@sysctl_sched_rt_period = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"sched_rt_runtime_us\00", align 1
@sysctl_sched_rt_runtime = external dso_local global i32, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"sched_deadline_period_max_us\00", align 1
@sysctl_sched_dl_period_max = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"sched_deadline_period_min_us\00", align 1
@sysctl_sched_dl_period_min = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"sched_rr_timeslice_ms\00", align 1
@sysctl_sched_rr_timeslice = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@panic_timeout = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"core_uses_pid\00", align 1
@core_uses_pid = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"core_pattern\00", align 1
@core_pattern = external dso_local global [0 x i8], align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"core_pipe_limit\00", align 1
@core_pipe_limit = external dso_local global i32, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"tainted\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"sysctl_writes_strict\00", align 1
@neg_one = internal global i32 -1, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c"print-fatal-signals\00", align 1
@print_fatal_signals = external dso_local global i32, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"ctrl-alt-del\00", align 1
@C_A_D = external dso_local global i32, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"cad_pid\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"threads-max\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@random_table = external dso_local global [0 x %struct.ctl_table], align 8
@.str.28 = private unnamed_addr constant [15 x i8] c"usermodehelper\00", align 1
@usermodehelper_table = external dso_local global [0 x %struct.ctl_table], align 8
@.str.29 = private unnamed_addr constant [12 x i8] c"overflowuid\00", align 1
@overflowuid = external dso_local global i32, align 4
@minolduid = internal global i32 0, align 4
@maxolduid = internal global i32 65535, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"overflowgid\00", align 1
@overflowgid = external dso_local global i32, align 4
@.str.31 = private unnamed_addr constant [23 x i8] c"oops_all_cpu_backtrace\00", align 1
@sysctl_oops_all_cpu_backtrace = external dso_local global i32, align 4
@.str.32 = private unnamed_addr constant [8 x i8] c"pid_max\00", align 1
@pid_max = external dso_local global i32, align 4
@pid_max_min = external dso_local global i32, align 4
@pid_max_max = external dso_local global i32, align 4
@.str.33 = private unnamed_addr constant [14 x i8] c"panic_on_oops\00", align 1
@panic_on_oops = external dso_local global i32, align 4
@.str.34 = private unnamed_addr constant [12 x i8] c"panic_print\00", align 1
@panic_print = external dso_local global i64, align 8
@.str.35 = private unnamed_addr constant [7 x i8] c"printk\00", align 1
@console_printk = external dso_local global [0 x i32], align 4
@.str.36 = private unnamed_addr constant [17 x i8] c"printk_ratelimit\00", align 1
@printk_ratelimit_state = external dso_local global %struct.ratelimit_state, align 8
@.str.37 = private unnamed_addr constant [23 x i8] c"printk_ratelimit_burst\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"printk_delay\00", align 1
@printk_delay_msec = external dso_local global i32, align 4
@ten_thousand = internal global i32 10000, align 4
@.str.39 = private unnamed_addr constant [15 x i8] c"printk_devkmsg\00", align 1
@devkmsg_log_str = external dso_local global [0 x i8], align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"dmesg_restrict\00", align 1
@dmesg_restrict = external dso_local global i32, align 4
@.str.41 = private unnamed_addr constant [14 x i8] c"kptr_restrict\00", align 1
@kptr_restrict = external dso_local global i32, align 4
@two = internal global i32 2, align 4
@.str.42 = private unnamed_addr constant [12 x i8] c"ngroups_max\00", align 1
@ngroups_max = internal global i32 65536, align 4
@.str.43 = private unnamed_addr constant [13 x i8] c"cap_last_cap\00", align 1
@cap_last_cap = internal constant i32 40, align 4
@.str.44 = private unnamed_addr constant [19 x i8] c"randomize_va_space\00", align 1
@randomize_va_space = external dso_local global i32, align 4
@.str.45 = private unnamed_addr constant [15 x i8] c"max_lock_depth\00", align 1
@max_lock_depth = external dso_local global i32, align 4
@.str.46 = private unnamed_addr constant [13 x i8] c"poweroff_cmd\00", align 1
@poweroff_cmd = external dso_local global [256 x i8], align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"panic_on_warn\00", align 1
@panic_on_warn = external dso_local global i32, align 4
@.str.48 = private unnamed_addr constant [19 x i8] c"panic_on_rcu_stall\00", align 1
@sysctl_panic_on_rcu_stall = external dso_local global i32, align 4
@.str.49 = private unnamed_addr constant [23 x i8] c"max_rcu_stall_to_panic\00", align 1
@sysctl_max_rcu_stall_to_panic = external dso_local global i32, align 4
@kern_table = internal global [40 x { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }] [{ i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (i32* @sysctl_sched_child_runs_first to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (i32* @sysctl_sched_rt_period to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @sched_rt_handler, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (i32* @sysctl_sched_rt_runtime to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @sched_rt_handler, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (i32* @sysctl_sched_dl_period_max to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i8* bitcast (i32* @sysctl_sched_dl_period_min to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (i32* @sysctl_sched_rr_timeslice to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @sched_rr_handler, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* bitcast (i32* @panic_timeout to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (i32* @core_uses_pid to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @core_pattern, i32 0, i32 0), i32 128, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dostring_coredump, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* bitcast (i32* @core_pipe_limit to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* null, i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_taint, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i8* bitcast (i32* @sysctl_writes_strict to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @neg_one to i8*), i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* bitcast (i32* @print_fatal_signals to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* bitcast (i32* @C_A_D to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* null, i32 4, i16 384, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_do_cad_pid, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* null, i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @sysctl_max_threads, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([0 x %struct.ctl_table], [0 x %struct.ctl_table]* @random_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([0 x %struct.ctl_table], [0 x %struct.ctl_table]* @usermodehelper_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* bitcast (i32* @overflowuid to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @minolduid to i8*), i8* bitcast (i32* @maxolduid to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (i32* @overflowgid to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @minolduid to i8*), i8* bitcast (i32* @maxolduid to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0), i8* bitcast (i32* @sysctl_oops_all_cpu_backtrace to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* bitcast (i32* @pid_max to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @pid_max_min to i8*), i8* bitcast (i32* @pid_max_max to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* bitcast (i32* @panic_on_oops to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8* bitcast (i64* @panic_print to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* bitcast ([0 x i32]* @console_printk to i8*), i32 16, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.ratelimit_state* @printk_ratelimit_state to i8*), i64 4), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_jiffies, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.ratelimit_state* @printk_ratelimit_state to i8*), i64 8), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* bitcast (i32* @printk_delay_msec to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* bitcast (i32* @ten_thousand to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @devkmsg_log_str, i32 0, i32 0), i32 10, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @devkmsg_sysctl_set_loglvl, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i8* bitcast (i32* @dmesg_restrict to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax_sysadmin, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), i8* bitcast (i32* @kptr_restrict to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax_sysadmin, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* bitcast (i32* @two to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* bitcast (i32* @ngroups_max to i8*), i32 4, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i8* bitcast (i32* @cap_last_cap to i8*), i32 4, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), i8* bitcast (i32* @randomize_va_space to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* bitcast (i32* @max_lock_depth to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @poweroff_cmd, i32 0, i32 0), i32 256, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dostring, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* bitcast (i32* @panic_on_warn to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), i8* bitcast (i32* @sysctl_panic_on_rcu_stall to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), i8* bitcast (i32* @sysctl_max_rcu_stall_to_panic to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4), i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 8) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } zeroinitializer], align 8
@suid_dumpable = external dso_local global i32, align 4
@.str.51 = private unnamed_addr constant [159 x i8] c"\014Unsafe core_pattern used with fs.suid_dumpable=2.\0APipe handler or fully qualified core dump path required.\0ASet kernel.core_pattern before fs.suid_dumpable.\0A\00", align 1
@panic_on_taint_nousertaint = external dso_local local_unnamed_addr global i8, align 1
@panic_on_taint = external dso_local local_unnamed_addr global i64, align 8
@cad_pid = external dso_local global %struct.pid*, align 8
@.str.52 = private unnamed_addr constant [18 x i8] c"overcommit_memory\00", align 1
@sysctl_overcommit_memory = external dso_local global i32, align 4
@.str.53 = private unnamed_addr constant [13 x i8] c"panic_on_oom\00", align 1
@sysctl_panic_on_oom = external dso_local global i32, align 4
@.str.54 = private unnamed_addr constant [25 x i8] c"oom_kill_allocating_task\00", align 1
@sysctl_oom_kill_allocating_task = external dso_local global i32, align 4
@.str.55 = private unnamed_addr constant [15 x i8] c"oom_dump_tasks\00", align 1
@sysctl_oom_dump_tasks = external dso_local global i32, align 4
@.str.56 = private unnamed_addr constant [17 x i8] c"overcommit_ratio\00", align 1
@sysctl_overcommit_ratio = external dso_local global i32, align 4
@.str.57 = private unnamed_addr constant [18 x i8] c"overcommit_kbytes\00", align 1
@sysctl_overcommit_kbytes = external dso_local global i64, align 8
@.str.58 = private unnamed_addr constant [13 x i8] c"page-cluster\00", align 1
@page_cluster = external dso_local global i32, align 4
@.str.59 = private unnamed_addr constant [23 x i8] c"dirty_background_ratio\00", align 1
@dirty_background_ratio = external dso_local global i32, align 4
@one_hundred = internal global i32 100, align 4
@.str.60 = private unnamed_addr constant [23 x i8] c"dirty_background_bytes\00", align 1
@dirty_background_bytes = external dso_local global i64, align 8
@one_ul = internal global i64 1, align 8
@.str.61 = private unnamed_addr constant [12 x i8] c"dirty_ratio\00", align 1
@vm_dirty_ratio = external dso_local global i32, align 4
@.str.62 = private unnamed_addr constant [12 x i8] c"dirty_bytes\00", align 1
@vm_dirty_bytes = external dso_local global i64, align 8
@dirty_bytes_min = internal global i64 8192, align 8
@.str.63 = private unnamed_addr constant [26 x i8] c"dirty_writeback_centisecs\00", align 1
@dirty_writeback_interval = external dso_local global i32, align 4
@.str.64 = private unnamed_addr constant [23 x i8] c"dirty_expire_centisecs\00", align 1
@dirty_expire_interval = external dso_local global i32, align 4
@.str.65 = private unnamed_addr constant [25 x i8] c"dirtytime_expire_seconds\00", align 1
@dirtytime_expire_interval = external dso_local global i32, align 4
@.str.66 = private unnamed_addr constant [11 x i8] c"swappiness\00", align 1
@vm_swappiness = external dso_local global i32, align 4
@two_hundred = internal global i32 200, align 4
@.str.67 = private unnamed_addr constant [21 x i8] c"lowmem_reserve_ratio\00", align 1
@sysctl_lowmem_reserve_ratio = external dso_local global [4 x i32], align 4
@.str.68 = private unnamed_addr constant [12 x i8] c"drop_caches\00", align 1
@sysctl_drop_caches = external dso_local global i32, align 4
@four = internal global i32 4, align 4
@.str.69 = private unnamed_addr constant [16 x i8] c"min_free_kbytes\00", align 1
@min_free_kbytes = external dso_local global i32, align 4
@.str.70 = private unnamed_addr constant [23 x i8] c"watermark_boost_factor\00", align 1
@watermark_boost_factor = external dso_local global i32, align 4
@.str.71 = private unnamed_addr constant [23 x i8] c"watermark_scale_factor\00", align 1
@watermark_scale_factor = external dso_local global i32, align 4
@one_thousand = internal global i32 1000, align 4
@.str.72 = private unnamed_addr constant [30 x i8] c"percpu_pagelist_high_fraction\00", align 1
@percpu_pagelist_high_fraction = external dso_local global i32, align 4
@.str.73 = private unnamed_addr constant [21 x i8] c"page_lock_unfairness\00", align 1
@sysctl_page_lock_unfairness = external dso_local global i32, align 4
@.str.74 = private unnamed_addr constant [14 x i8] c"max_map_count\00", align 1
@sysctl_max_map_count = external dso_local global i32, align 4
@.str.75 = private unnamed_addr constant [12 x i8] c"laptop_mode\00", align 1
@laptop_mode = external dso_local global i32, align 4
@.str.76 = private unnamed_addr constant [19 x i8] c"vfs_cache_pressure\00", align 1
@sysctl_vfs_cache_pressure = external dso_local global i32, align 4
@.str.77 = private unnamed_addr constant [17 x i8] c"legacy_va_layout\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"stat_interval\00", align 1
@sysctl_stat_interval = external dso_local global i32, align 4
@.str.79 = private unnamed_addr constant [13 x i8] c"stat_refresh\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"mmap_min_addr\00", align 1
@dac_mmap_min_addr = external dso_local global i64, align 8
@.str.81 = private unnamed_addr constant [20 x i8] c"user_reserve_kbytes\00", align 1
@sysctl_user_reserve_kbytes = external dso_local global i64, align 8
@.str.82 = private unnamed_addr constant [21 x i8] c"admin_reserve_kbytes\00", align 1
@sysctl_admin_reserve_kbytes = external dso_local global i64, align 8
@.str.83 = private unnamed_addr constant [14 x i8] c"mmap_rnd_bits\00", align 1
@mmap_rnd_bits = external dso_local global i32, section ".data..read_mostly", align 4
@mmap_rnd_bits_min = external dso_local constant i32, align 4
@mmap_rnd_bits_max = external dso_local constant i32, align 4
@vm_table = internal global [33 x { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }] [{ i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* bitcast (i32* @sysctl_overcommit_memory to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @overcommit_policy_handler, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* bitcast (i32* @two to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8* bitcast (i32* @sysctl_panic_on_oom to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* bitcast (i32* @two to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i8* bitcast (i32* @sysctl_oom_kill_allocating_task to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), i8* bitcast (i32* @sysctl_oom_dump_tasks to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i8* bitcast (i32* @sysctl_overcommit_ratio to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @overcommit_ratio_handler, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i32 0, i32 0), i8* bitcast (i64* @sysctl_overcommit_kbytes to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @overcommit_kbytes_handler, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i8* bitcast (i32* @page_cluster to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0), i8* bitcast (i32* @dirty_background_ratio to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @dirty_background_ratio_handler, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* bitcast (i32* @one_hundred to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), i8* bitcast (i64* @dirty_background_bytes to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @dirty_background_bytes_handler, %struct.ctl_table_poll* null, i8* bitcast (i64* @one_ul to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i8* bitcast (i32* @vm_dirty_ratio to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @dirty_ratio_handler, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* bitcast (i32* @one_hundred to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8* bitcast (i64* @vm_dirty_bytes to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @dirty_bytes_handler, %struct.ctl_table_poll* null, i8* bitcast (i64* @dirty_bytes_min to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i32 0, i32 0), i8* bitcast (i32* @dirty_writeback_interval to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @dirty_writeback_centisecs_handler, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0), i8* bitcast (i32* @dirty_expire_interval to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i32 0, i32 0), i8* bitcast (i32* @dirtytime_expire_interval to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @dirtytime_interval_handler, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* bitcast (i32* @vm_swappiness to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* bitcast (i32* @two_hundred to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i32 0, i32 0), i8* bitcast ([4 x i32]* @sysctl_lowmem_reserve_ratio to i8*), i32 16, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @lowmem_reserve_ratio_sysctl_handler, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i32 0, i32 0), i8* bitcast (i32* @sysctl_drop_caches to i8*), i32 4, i16 128, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @drop_caches_sysctl_handler, %struct.ctl_table_poll* null, i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4), i8* bitcast (i32* @four to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), i8* bitcast (i32* @min_free_kbytes to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @min_free_kbytes_sysctl_handler, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i32 0, i32 0), i8* bitcast (i32* @watermark_boost_factor to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i8* bitcast (i32* @watermark_scale_factor to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @watermark_scale_factor_sysctl_handler, %struct.ctl_table_poll* null, i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4), i8* bitcast (i32* @one_thousand to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i32 0, i32 0), i8* bitcast (i32* @percpu_pagelist_high_fraction to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @percpu_pagelist_high_fraction_sysctl_handler, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), i8* bitcast (i32* @sysctl_page_lock_unfairness to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0), i8* bitcast (i32* @sysctl_max_map_count to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i8* bitcast (i32* @laptop_mode to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_jiffies, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0), i8* bitcast (i32* @sysctl_vfs_cache_pressure to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0), i8* bitcast (i32* @sysctl_legacy_va_layout to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0), i8* bitcast (i32* @sysctl_stat_interval to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_jiffies, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0), i8* null, i32 0, i16 384, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @vmstat_refresh, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i8* bitcast (i64* @dac_mmap_min_addr to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @mmap_min_addr_handler, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.81, i32 0, i32 0), i8* bitcast (i64* @sysctl_user_reserve_kbytes to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.82, i32 0, i32 0), i8* bitcast (i64* @sysctl_admin_reserve_kbytes to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i8* bitcast (i32* @mmap_rnd_bits to i8*), i32 4, i16 384, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @mmap_rnd_bits_min to i8*), i8* bitcast (i32* @mmap_rnd_bits_max to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } zeroinitializer], align 8
@.str.85 = private unnamed_addr constant [9 x i8] c"inode-nr\00", align 1
@inodes_stat = external dso_local global %struct.inodes_stat_t, align 8
@.str.86 = private unnamed_addr constant [12 x i8] c"inode-state\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"file-nr\00", align 1
@files_stat = external dso_local global %struct.files_stat_struct, align 8
@.str.88 = private unnamed_addr constant [9 x i8] c"file-max\00", align 1
@zero_ul = internal global i64 0, align 8
@long_max = internal global i64 9223372036854775807, align 8
@.str.89 = private unnamed_addr constant [8 x i8] c"nr_open\00", align 1
@sysctl_nr_open = external dso_local global i32, align 4
@sysctl_nr_open_min = external dso_local global i32, align 4
@sysctl_nr_open_max = external dso_local global i32, align 4
@.str.90 = private unnamed_addr constant [13 x i8] c"dentry-state\00", align 1
@dentry_stat = external dso_local global %struct.dentry_stat_t, align 8
@fs_overflowuid = external dso_local global i32, align 4
@fs_overflowgid = external dso_local global i32, align 4
@.str.91 = private unnamed_addr constant [14 x i8] c"leases-enable\00", align 1
@leases_enable = external dso_local global i32, align 4
@.str.92 = private unnamed_addr constant [17 x i8] c"lease-break-time\00", align 1
@lease_break_time = external dso_local global i32, align 4
@.str.93 = private unnamed_addr constant [7 x i8] c"aio-nr\00", align 1
@aio_nr = external dso_local global i64, align 8
@.str.94 = private unnamed_addr constant [11 x i8] c"aio-max-nr\00", align 1
@aio_max_nr = external dso_local global i64, align 8
@.str.95 = private unnamed_addr constant [6 x i8] c"epoll\00", align 1
@epoll_table = external dso_local global [0 x %struct.ctl_table], align 8
@.str.96 = private unnamed_addr constant [19 x i8] c"protected_symlinks\00", align 1
@sysctl_protected_symlinks = external dso_local global i32, align 4
@.str.97 = private unnamed_addr constant [20 x i8] c"protected_hardlinks\00", align 1
@sysctl_protected_hardlinks = external dso_local global i32, align 4
@.str.98 = private unnamed_addr constant [16 x i8] c"protected_fifos\00", align 1
@sysctl_protected_fifos = external dso_local global i32, align 4
@.str.99 = private unnamed_addr constant [18 x i8] c"protected_regular\00", align 1
@sysctl_protected_regular = external dso_local global i32, align 4
@.str.100 = private unnamed_addr constant [14 x i8] c"suid_dumpable\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"pipe-max-size\00", align 1
@pipe_max_size = external dso_local global i32, align 4
@.str.102 = private unnamed_addr constant [21 x i8] c"pipe-user-pages-hard\00", align 1
@pipe_user_pages_hard = external dso_local global i64, align 8
@.str.103 = private unnamed_addr constant [21 x i8] c"pipe-user-pages-soft\00", align 1
@pipe_user_pages_soft = external dso_local global i64, align 8
@.str.104 = private unnamed_addr constant [10 x i8] c"mount-max\00", align 1
@sysctl_mount_max = external dso_local global i32, align 4
@fs_table = internal global [23 x { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }] [{ i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0), i8* bitcast (%struct.inodes_stat_t* @inodes_stat to i8*), i32 16, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_nr_inodes, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i8* bitcast (%struct.inodes_stat_t* @inodes_stat to i8*), i32 56, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_nr_inodes, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* bitcast (%struct.files_stat_struct* @files_stat to i8*), i32 24, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_nr_files, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr (i8, i8* bitcast (%struct.files_stat_struct* @files_stat to i8*), i64 16), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i64* @zero_ul to i8*), i8* bitcast (i64* @long_max to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8* bitcast (i32* @sysctl_nr_open to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @sysctl_nr_open_min to i8*), i8* bitcast (i32* @sysctl_nr_open_max to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i8* bitcast (%struct.dentry_stat_t* @dentry_stat to i8*), i32 48, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_nr_dentry, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* bitcast (i32* @fs_overflowuid to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @minolduid to i8*), i8* bitcast (i32* @maxolduid to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* bitcast (i32* @fs_overflowgid to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i32* @minolduid to i8*), i8* bitcast (i32* @maxolduid to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i8* bitcast (i32* @leases_enable to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0), i8* bitcast (i32* @lease_break_time to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i8* bitcast (i64* @aio_nr to i8*), i32 8, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), i8* bitcast (i64* @aio_max_nr to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([0 x %struct.ctl_table], [0 x %struct.ctl_table]* @epoll_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), i8* bitcast (i32* @sysctl_protected_symlinks to i8*), i32 4, i16 384, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i32 0, i32 0), i8* bitcast (i32* @sysctl_protected_hardlinks to i8*), i32 4, i16 384, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0), i8* bitcast (i32* @sysctl_protected_fifos to i8*), i32 4, i16 384, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* bitcast (i32* @two to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0), i8* bitcast (i32* @sysctl_protected_regular to i8*), i32 4, i16 384, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* bitcast (i32* @two to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), i8* bitcast (i32* @suid_dumpable to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax_coredump, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* bitcast (i32* @two to i8*) }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i32 0, i32 0), i8* bitcast (i32* @pipe_max_size to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dopipe_max_size, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i32 0, i32 0), i8* bitcast (i64* @pipe_user_pages_hard to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.103, i32 0, i32 0), i8* bitcast (i64* @pipe_user_pages_soft to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i8* bitcast (i32* @sysctl_mount_max to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec_minmax, %struct.ctl_table_poll* null, i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4), i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } zeroinitializer], align 8
@.str.106 = private unnamed_addr constant [16 x i8] c"exception-trace\00", align 1
@show_unhandled_signals = external dso_local global i32, align 4
@debug_table = internal global [2 x { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }] [{ i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i32 0, i32 0), i8* bitcast (i32* @show_unhandled_signals to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* } zeroinitializer], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_dostring(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @proc_first_pos_non_zero_ignore(i64* noundef %ppos, %struct.ctl_table* noundef %table) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %0 = load i8*, i8** %data, align 8
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 2
  %1 = load i32, i32* %maxlen, align 8
  call fastcc void @_proc_do_string(i8* noundef %0, i32 noundef %1, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #12
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @proc_first_pos_non_zero_ignore(i64* nocapture noundef readonly %ppos, %struct.ctl_table* nocapture noundef readonly %table) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %ppos, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @sysctl_writes_strict, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %return
    i32 0, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %if.end
  call fastcc void @warn_sysctl_write(%struct.ctl_table* noundef %table) #12
  br label %return

sw.default:                                       ; preds = %if.end
  br label %return

return:                                           ; preds = %if.end, %entry, %sw.default, %sw.bb1
  %retval.0 = phi i1 [ false, %sw.default ], [ false, %sw.bb1 ], [ false, %entry ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_proc_do_string(i8* noundef %data, i32 noundef %maxlen, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) unnamed_addr #0 {
entry:
  %tobool = icmp ne i8* %data, null
  %tobool1 = icmp ne i32 %maxlen, 0
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %entry
  %0 = load i64, i64* %lenp, align 8
  %tobool3.not = icmp eq i64 %0, 0
  br i1 %tobool3.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  store i64 0, i64* %lenp, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %tobool4.not = icmp eq i32 %write, 0
  br i1 %tobool4.not, label %if.else34, label %if.then5

if.then5:                                         ; preds = %if.end
  %1 = load i32, i32* @sysctl_writes_strict, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then6, label %if.then5.if.end17_crit_edge

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  %.pre13 = load i64, i64* %ppos, align 8
  %.pre15 = add i32 %maxlen, -1
  %.pre16 = sext i32 %.pre15 to i64
  br label %if.end17

if.then6:                                         ; preds = %if.then5
  %call = call i64 @strlen(i8* noundef nonnull %data) #13
  %sub = add i32 %maxlen, -1
  %conv = sext i32 %sub to i64
  %cmp7 = icmp ugt i64 %call, %conv
  %spec.select = select i1 %cmp7, i64 %conv, i64 %call
  %2 = load i64, i64* %ppos, align 8
  %cmp13 = icmp ugt i64 %2, %spec.select
  br i1 %cmp13, label %cleanup, label %if.then6.if.end17_crit_edge

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  %.pre = load i64, i64* %lenp, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then5.if.end17_crit_edge, %if.then6.if.end17_crit_edge
  %conv21.pre-phi = phi i64 [ %.pre16, %if.then5.if.end17_crit_edge ], [ %conv, %if.then6.if.end17_crit_edge ]
  %3 = phi i64 [ %.pre13, %if.then5.if.end17_crit_edge ], [ %2, %if.then6.if.end17_crit_edge ]
  %4 = phi i64 [ %0, %if.then5.if.end17_crit_edge ], [ %.pre, %if.then6.if.end17_crit_edge ]
  %len.1 = phi i64 [ 0, %if.then5.if.end17_crit_edge ], [ %2, %if.then6.if.end17_crit_edge ]
  %add = add i64 %3, %4
  store i64 %add, i64* %ppos, align 8
  %sub.ptr.rhs.cast = ptrtoint i8* %buffer to i64
  %5 = load i64, i64* %lenp, align 8
  %cmp185 = icmp ne i64 %5, 0
  %cmp226 = icmp ult i64 %len.1, %conv21.pre-phi
  %or.cond37 = select i1 %cmp185, i1 %cmp226, i1 false
  br i1 %or.cond37, label %while.body, label %while.end

while.body:                                       ; preds = %if.end17, %if.end32
  %p.09 = phi i8* [ %incdec.ptr, %if.end32 ], [ %buffer, %if.end17 ]
  %len.28 = phi i64 [ %inc, %if.end32 ], [ %len.1, %if.end17 ]
  %6 = load i8, i8* %p.09, align 1
  switch i8 %6, label %if.end32 [
    i8 10, label %while.end
    i8 0, label %while.end
  ]

if.end32:                                         ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %p.09, i64 1
  %inc = add nuw i64 %len.28, 1
  %arrayidx = getelementptr i8, i8* %data, i64 %len.28
  store i8 %6, i8* %arrayidx, align 1
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = load i64, i64* %lenp, align 8
  %cmp18 = icmp ult i64 %sub.ptr.sub, %7
  %cmp22 = icmp ult i64 %inc, %conv21.pre-phi
  %or.cond3 = select i1 %cmp18, i1 %cmp22, i1 false
  br i1 %or.cond3, label %while.body, label %while.end

while.end:                                        ; preds = %if.end32, %while.body, %while.body, %if.end17
  %len.2.lcssa = phi i64 [ %len.1, %if.end17 ], [ %len.28, %while.body ], [ %len.28, %while.body ], [ %inc, %if.end32 ]
  %arrayidx33 = getelementptr i8, i8* %data, i64 %len.2.lcssa
  store i8 0, i8* %arrayidx33, align 1
  br label %cleanup

if.else34:                                        ; preds = %if.end
  %call35 = call i64 @strlen(i8* noundef nonnull %data) #13
  %conv36 = sext i32 %maxlen to i64
  %cmp37 = icmp ugt i64 %call35, %conv36
  %spec.select1 = select i1 %cmp37, i64 %conv36, i64 %call35
  %8 = load i64, i64* %ppos, align 8
  %cmp42 = icmp ult i64 %spec.select1, %8
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.else34
  store i64 0, i64* %lenp, align 8
  br label %cleanup

if.end45:                                         ; preds = %if.else34
  %sub46 = sub i64 %spec.select1, %8
  %9 = load i64, i64* %lenp, align 8
  %cmp47 = icmp ugt i64 %sub46, %9
  %spec.select2 = select i1 %cmp47, i64 %9, i64 %sub46
  %tobool51.not = icmp eq i64 %spec.select2, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end45
  %add.ptr = getelementptr i8, i8* %data, i64 %8
  %call53 = call i8* @memcpy(i8* noundef %buffer, i8* noundef %add.ptr, i64 noundef %spec.select2) #13
  %.pre14 = load i64, i64* %lenp, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end45
  %10 = phi i64 [ %.pre14, %if.then52 ], [ %9, %if.end45 ]
  %cmp55 = icmp ult i64 %spec.select2, %10
  br i1 %cmp55, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end54
  %arrayidx58 = getelementptr i8, i8* %buffer, i64 %spec.select2
  store i8 10, i8* %arrayidx58, align 1
  %inc59 = add nuw i64 %spec.select2, 1
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end54
  %len.5 = phi i64 [ %inc59, %if.then57 ], [ %spec.select2, %if.end54 ]
  store i64 %len.5, i64* %lenp, align 8
  %11 = load i64, i64* %ppos, align 8
  %add61 = add i64 %11, %len.5
  store i64 %add61, i64* %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end60, %if.then6, %if.then44, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_dobool(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_proc_dointvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i8*, i64*, i32*, i32, i8*)* noundef nonnull @do_proc_dobool_conv, i8* noundef null) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_proc_dointvec(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos, i32 (i8*, i64*, i32*, i32, i8*)* noundef %conv, i8* noundef %data) unnamed_addr #0 {
entry:
  %data1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %0 = load i8*, i8** %data1, align 8
  %call = call fastcc i32 @__do_proc_dointvec(i8* noundef %0, %struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i8*, i64*, i32*, i32, i8*)* noundef %conv, i8* noundef %data) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @do_proc_dobool_conv(i8* nocapture noundef writeonly %negp, i64* nocapture noundef %lvalp, i32* nocapture noundef %valp, i32 noundef %write, i8* nocapture noundef readnone %data) #1 {
entry:
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %lvalp, align 8
  %tobool1 = icmp ne i64 %0, 0
  %1 = bitcast i32* %valp to i8*
  %frombool = zext i1 %tobool1 to i8
  store i8 %frombool, i8* %1, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = bitcast i32* %valp to i8*
  %3 = load i8, i8* %2, align 1, !range !7
  %4 = zext i8 %3 to i64
  store i64 %4, i64* %lvalp, align 8
  store i8 0, i8* %negp, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_dointvec(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %call = call fastcc i32 @do_proc_dointvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i8*, i64*, i32*, i32, i8*)* noundef null, i8* noundef null) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_douintvec(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_proc_douintvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i64*, i32*, i32, i8*)* noundef nonnull @do_proc_douintvec_conv, i8* noundef null) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_proc_douintvec(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos, i32 (i64*, i32*, i32, i8*)* noundef %conv, i8* noundef %data) unnamed_addr #0 {
entry:
  %data1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %0 = load i8*, i8** %data1, align 8
  %call = call fastcc i32 @__do_proc_douintvec(i8* noundef %0, %struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i64*, i32*, i32, i8*)* noundef %conv, i8* noundef %data) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @do_proc_douintvec_conv(i64* nocapture noundef %lvalp, i32* nocapture noundef %valp, i32 noundef %write, i8* nocapture noundef readnone %data) #1 {
entry:
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %lvalp, align 8
  %cmp = icmp ugt i64 %0, 4294967295
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %valp, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %valp, align 4
  %conv2 = zext i32 %1 to i64
  store i64 %conv2, i64* %lvalp, align 8
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.else ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_dointvec_minmax(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %param = alloca %struct.do_proc_dointvec_minmax_conv_param, align 8
  %0 = bitcast %struct.do_proc_dointvec_minmax_conv_param* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %min = getelementptr inbounds %struct.do_proc_dointvec_minmax_conv_param, %struct.do_proc_dointvec_minmax_conv_param* %param, i64 0, i32 0
  %extra1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 7
  %1 = bitcast i8** %extra1 to i32**
  %2 = load i32*, i32** %1, align 8
  store i32* %2, i32** %min, align 8
  %max = getelementptr inbounds %struct.do_proc_dointvec_minmax_conv_param, %struct.do_proc_dointvec_minmax_conv_param* %param, i64 0, i32 1
  %extra2 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 8
  %3 = bitcast i8** %extra2 to i32**
  %4 = load i32*, i32** %3, align 8
  store i32* %4, i32** %max, align 8
  %call = call fastcc i32 @do_proc_dointvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i8*, i64*, i32*, i32, i8*)* noundef nonnull @do_proc_dointvec_minmax_conv, i8* noundef nonnull %0) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal i32 @do_proc_dointvec_minmax_conv(i8* nocapture noundef %negp, i64* nocapture noundef %lvalp, i32* nocapture noundef %valp, i32 noundef %write, i8* nocapture noundef readonly %data) #4 {
entry:
  %tmp = alloca i32, align 4
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 0, i32* %tmp, align 4, !annotation !8
  %tobool.not = icmp eq i32 %write, 0
  %cond = select i1 %tobool.not, i32* %valp, i32* %tmp
  %call = call i32 @do_proc_dointvec_conv(i8* noundef %negp, i64* noundef %lvalp, i32* noundef %cond, i32 noundef %write, i8* noundef %data) #12
  %tobool1.not = icmp ne i32 %call, 0
  %brmerge = or i1 %tobool.not, %tobool1.not
  br i1 %brmerge, label %cleanup, label %if.then3

if.then3:                                         ; preds = %entry
  %min = bitcast i8* %data to i32**
  %1 = load i32*, i32** %min, align 8
  %tobool4.not = icmp eq i32* %1, null
  br i1 %tobool4.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* %tmp, align 4
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then3
  %max = getelementptr inbounds i8, i8* %data, i64 8
  %4 = bitcast i8* %max to i32**
  %5 = load i32*, i32** %4, align 8
  %tobool6.not = icmp eq i32* %5, null
  br i1 %tobool6.not, label %lor.lhs.false.if.end11_crit_edge, label %land.lhs.true7

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  %.pre = load i32, i32* %tmp, align 4
  br label %if.end11

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %tmp, align 4
  %cmp9 = icmp slt i32 %6, %7
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false.if.end11_crit_edge, %land.lhs.true7
  %8 = phi i32 [ %.pre, %lor.lhs.false.if.end11_crit_edge ], [ %7, %land.lhs.true7 ]
  store i32 %8, i32* %valp, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11, %land.lhs.true, %land.lhs.true7
  %retval.0 = phi i32 [ %call, %entry ], [ -22, %land.lhs.true7 ], [ -22, %land.lhs.true ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_douintvec_minmax(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %param = alloca %struct.do_proc_douintvec_minmax_conv_param, align 8
  %0 = bitcast %struct.do_proc_douintvec_minmax_conv_param* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %min = getelementptr inbounds %struct.do_proc_douintvec_minmax_conv_param, %struct.do_proc_douintvec_minmax_conv_param* %param, i64 0, i32 0
  %extra1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 7
  %1 = bitcast i8** %extra1 to i32**
  %2 = load i32*, i32** %1, align 8
  store i32* %2, i32** %min, align 8
  %max = getelementptr inbounds %struct.do_proc_douintvec_minmax_conv_param, %struct.do_proc_douintvec_minmax_conv_param* %param, i64 0, i32 1
  %extra2 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 8
  %3 = bitcast i8** %extra2 to i32**
  %4 = load i32*, i32** %3, align 8
  store i32* %4, i32** %max, align 8
  %call = call fastcc i32 @do_proc_douintvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i64*, i32*, i32, i8*)* noundef nonnull @do_proc_douintvec_minmax_conv, i8* noundef nonnull %0) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal i32 @do_proc_douintvec_minmax_conv(i64* nocapture noundef %lvalp, i32* nocapture noundef %valp, i32 noundef %write, i8* nocapture noundef readonly %data) #4 {
entry:
  %tmp = alloca i32, align 4
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 0, i32* %tmp, align 4, !annotation !8
  %tobool.not = icmp eq i32 %write, 0
  %cond = select i1 %tobool.not, i32* %valp, i32* %tmp
  %call = call i32 @do_proc_douintvec_conv(i64* noundef %lvalp, i32* noundef %cond, i32 noundef %write, i8* noundef %data) #12
  %tobool1.not = icmp ne i32 %call, 0
  %brmerge = or i1 %tobool.not, %tobool1.not
  br i1 %brmerge, label %cleanup, label %if.then3

if.then3:                                         ; preds = %entry
  %min = bitcast i8* %data to i32**
  %1 = load i32*, i32** %min, align 8
  %tobool4.not = icmp eq i32* %1, null
  br i1 %tobool4.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then3
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* %tmp, align 4
  %cmp = icmp ugt i32 %2, %3
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then3
  %max = getelementptr inbounds i8, i8* %data, i64 8
  %4 = bitcast i8* %max to i32**
  %5 = load i32*, i32** %4, align 8
  %tobool6.not = icmp eq i32* %5, null
  br i1 %tobool6.not, label %lor.lhs.false.if.end11_crit_edge, label %land.lhs.true7

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  %.pre = load i32, i32* %tmp, align 4
  br label %if.end11

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %tmp, align 4
  %cmp9 = icmp ult i32 %6, %7
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false.if.end11_crit_edge, %land.lhs.true7
  %8 = phi i32 [ %.pre, %lor.lhs.false.if.end11_crit_edge ], [ %7, %land.lhs.true7 ]
  store i32 %8, i32* %valp, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11, %land.lhs.true, %land.lhs.true7
  %retval.0 = phi i32 [ %call, %entry ], [ -34, %land.lhs.true7 ], [ -34, %land.lhs.true ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_dou8vec_minmax(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ctl_table, align 8
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %val = alloca i32, align 4
  %param = alloca %struct.do_proc_douintvec_minmax_conv_param, align 8
  %0 = bitcast %struct.ctl_table* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast i32* %min to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  store i32 0, i32* %min, align 4
  %2 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  store i32 255, i32* %max, align 4
  %3 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14
  %data1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %4 = load i8*, i8** %data1, align 8
  %5 = bitcast %struct.do_proc_douintvec_minmax_conv_param* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #14
  %min2 = getelementptr inbounds %struct.do_proc_douintvec_minmax_conv_param, %struct.do_proc_douintvec_minmax_conv_param* %param, i64 0, i32 0
  store i32* %min, i32** %min2, align 8
  %max3 = getelementptr inbounds %struct.do_proc_douintvec_minmax_conv_param, %struct.do_proc_douintvec_minmax_conv_param* %param, i64 0, i32 1
  store i32* %max, i32** %max3, align 8
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 2
  %6 = load i32, i32* %maxlen, align 8
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %extra1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 7
  %7 = load i8*, i8** %extra1, align 8
  %tobool.not = icmp eq i8* %7, null
  br i1 %tobool.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.end
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %min, align 4
  %cmp7 = icmp ugt i32 %9, 255
  br i1 %cmp7, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end
  %extra2 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 8
  %10 = load i8*, i8** %extra2, align 8
  %tobool12.not = icmp eq i8* %10, null
  br i1 %tobool12.not, label %if.end19, label %if.then13

if.then13:                                        ; preds = %if.end11
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %max, align 4
  %cmp15 = icmp ugt i32 %12, 255
  br i1 %cmp15, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end11
  %13 = bitcast %struct.ctl_table* %table to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8* noundef align 8 dereferenceable(64) %13, i64 64, i1 false)
  %maxlen20 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %tmp, i64 0, i32 2
  store i32 4, i32* %maxlen20, align 8
  %data21 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %tmp, i64 0, i32 1
  %14 = bitcast i8** %data21 to i32**
  store i32* %val, i32** %14, align 8
  %15 = load i8, i8* %4, align 1
  %conv22 = zext i8 %15 to i32
  store i32 %conv22, i32* %val, align 4
  %call = call fastcc i32 @do_proc_douintvec(%struct.ctl_table* noundef nonnull %tmp, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i64*, i32*, i32, i8*)* noundef nonnull @do_proc_douintvec_minmax_conv, i8* noundef nonnull %5) #12
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.end25, label %cleanup

if.end25:                                         ; preds = %if.end19
  %tobool26.not = icmp eq i32 %write, 0
  br i1 %tobool26.not, label %cleanup, label %if.then27

if.then27:                                        ; preds = %if.end25
  %16 = load i32, i32* %val, align 4
  %conv28 = trunc i32 %16 to i8
  store i8 %conv28, i8* %4, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then27, %if.end19, %if.then13, %if.then5, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %if.then5 ], [ -22, %if.then13 ], [ %call, %if.end19 ], [ 0, %if.then27 ], [ 0, %if.end25 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_doulongvec_minmax(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %call = call fastcc i32 @do_proc_doulongvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i64 noundef 1, i64 noundef 1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_proc_doulongvec_minmax(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos, i64 noundef %convmul, i64 noundef %convdiv) unnamed_addr #0 {
entry:
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %0 = load i8*, i8** %data, align 8
  %call = call fastcc i32 @__do_proc_doulongvec_minmax(i8* noundef %0, %struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i64 noundef %convmul, i64 noundef %convdiv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_doulongvec_ms_jiffies_minmax(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_proc_doulongvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i64 noundef 250, i64 noundef 1000) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_dointvec_jiffies(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %call = call fastcc i32 @do_proc_dointvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i8*, i64*, i32*, i32, i8*)* noundef nonnull @do_proc_dointvec_jiffies_conv, i8* noundef null) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @do_proc_dointvec_jiffies_conv(i8* nocapture noundef %negp, i64* nocapture noundef %lvalp, i32* nocapture noundef %valp, i32 noundef %write, i8* nocapture noundef readnone %data) #1 {
entry:
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %lvalp, align 8
  %cmp = icmp ugt i64 %0, 8589934
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %1 = load i8, i8* %negp, align 1, !range !7
  %tobool2.not = icmp eq i8 %1, 0
  %cond.v = select i1 %tobool2.not, i64 250, i64 -250
  %cond = mul nsw i64 %cond.v, %0
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %valp, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %valp, align 4
  %cmp4 = icmp slt i32 %2, 0
  br i1 %cmp4, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  store i8 1, i8* %negp, align 1
  %sub8 = sub i32 0, %2
  br label %if.end11

if.else9:                                         ; preds = %if.else
  store i8 0, i8* %negp, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then6
  %lval.0 = phi i32 [ %sub8, %if.then6 ], [ %2, %if.else9 ]
  %div24 = udiv i32 %lval.0, 250
  %div.zext = zext i32 %div24 to i64
  store i64 %div.zext, i64* %lvalp, align 8
  br label %return

return:                                           ; preds = %if.end, %if.end11, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end11 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_dointvec_userhz_jiffies(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_proc_dointvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i8*, i64*, i32*, i32, i8*)* noundef nonnull @do_proc_dointvec_userhz_jiffies_conv, i8* noundef null) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @do_proc_dointvec_userhz_jiffies_conv(i8* nocapture noundef %negp, i64* nocapture noundef %lvalp, i32* nocapture noundef %valp, i32 noundef %write, i8* nocapture noundef readnone %data) #0 {
entry:
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %lvalp, align 8
  %cmp = icmp ugt i64 %0, 3689348814741910300
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %1 = load i8, i8* %negp, align 1, !range !7
  %tobool2.not = icmp eq i8 %1, 0
  %sub = sub nsw i64 0, %0
  %cond = select i1 %tobool2.not, i64 %0, i64 %sub
  %call = call i64 @clock_t_to_jiffies(i64 noundef %cond) #13
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %valp, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %valp, align 4
  %cmp3 = icmp slt i32 %2, 0
  br i1 %cmp3, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  store i8 1, i8* %negp, align 1
  %conv6 = sext i32 %2 to i64
  %sub7 = sub nsw i64 0, %conv6
  br label %if.end10

if.else8:                                         ; preds = %if.else
  store i8 0, i8* %negp, align 1
  %conv924 = zext i32 %2 to i64
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then5
  %lval.0 = phi i64 [ %sub7, %if.then5 ], [ %conv924, %if.else8 ]
  %call11 = call i64 @jiffies_to_clock_t(i64 noundef %lval.0) #13
  store i64 %call11, i64* %lvalp, align 8
  br label %return

return:                                           ; preds = %if.end, %if.end10, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end10 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_dointvec_ms_jiffies(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_proc_dointvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i8*, i64*, i32*, i32, i8*)* noundef nonnull @do_proc_dointvec_ms_jiffies_conv, i8* noundef null) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @do_proc_dointvec_ms_jiffies_conv(i8* nocapture noundef %negp, i64* nocapture noundef %lvalp, i32* nocapture noundef %valp, i32 noundef %write, i8* nocapture noundef readnone %data) #0 {
entry:
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %lvalp, align 8
  %1 = load i8, i8* %negp, align 1, !range !7
  %tobool1.not = icmp eq i8 %1, 0
  %sub = sub i64 0, %0
  %cond = select i1 %tobool1.not, i64 %0, i64 %sub
  %conv = trunc i64 %cond to i32
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %conv) #13
  %cmp = icmp ugt i64 %call2.i, 2147483647
  br i1 %cmp, label %return, label %cleanup

cleanup:                                          ; preds = %if.then
  %conv4 = trunc i64 %call2.i to i32
  store i32 %conv4, i32* %valp, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %valp, align 4
  %cmp5 = icmp slt i32 %2, 0
  br i1 %cmp5, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.else
  store i8 1, i8* %negp, align 1
  %conv8 = sext i32 %2 to i64
  %sub9 = sub nsw i64 0, %conv8
  br label %if.end12

if.else10:                                        ; preds = %if.else
  store i8 0, i8* %negp, align 1
  %conv1132 = zext i32 %2 to i64
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then7
  %lval.0 = phi i64 [ %sub9, %if.then7 ], [ %conv1132, %if.else10 ]
  %call13 = call i32 @jiffies_to_msecs(i64 noundef %lval.0) #13
  %conv14 = zext i32 %call13 to i64
  store i64 %conv14, i64* %lvalp, align 8
  br label %return

return:                                           ; preds = %if.then, %if.end12, %cleanup
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.end12 ], [ 1, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_do_large_bitmap(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %left = alloca i64, align 8
  %tr_a = alloca [3 x i8], align 1
  %tr_b = alloca [3 x i8], align 1
  %c = alloca i8, align 4
  %p = alloca i8*, align 8
  %val_a = alloca i64, align 8
  %val_b = alloca i64, align 8
  %neg = alloca i8, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = bitcast i64* %left to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = load i64, i64* %lenp, align 8
  store i64 %1, i64* %left, align 8
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 2
  %2 = load i32, i32* %maxlen, align 8
  %conv = sext i32 %2 to i64
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %3 = bitcast i8** %data to i64***
  %4 = load i64**, i64*** %3, align 8
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds [3 x i8], [3 x i8]* %tr_a, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %6) #14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %6, i8* noundef align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @__const.proc_do_large_bitmap.tr_a, i64 0, i64 0), i64 3, i1 false)
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %tr_b, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %7) #14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %7, i8* noundef align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @__const.proc_do_large_bitmap.tr_b, i64 0, i64 0), i64 3, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #14
  store i8 0, i8* %c, align 4, !annotation !8
  %tobool = icmp ne i64* %5, null
  %tobool1 = icmp ne i32 %2, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  %tobool3 = icmp ne i64 %1, 0
  %or.cond121 = select i1 %or.cond, i1 %tobool3, i1 false
  br i1 %or.cond121, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %entry
  %8 = load i64, i64* %ppos, align 8
  %tobool5 = icmp eq i64 %8, 0
  %tobool6 = icmp ne i32 %write, 0
  %or.cond122 = or i1 %tobool6, %tobool5
  br i1 %or.cond122, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %entry
  store i64 0, i64* %lenp, align 8
  br label %cleanup113

if.end:                                           ; preds = %lor.lhs.false4
  br i1 %tobool6, label %if.then8, label %while.body81

if.then8:                                         ; preds = %if.end
  %9 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #14
  store i8* %buffer, i8** %p, align 8
  %cmp = icmp ugt i64 %1, 4095
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  store i64 4095, i64* %left, align 8
  %sub = add i64 %1, -4095
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  %skipped.0 = phi i64 [ %sub, %if.then10 ], [ 0, %if.then8 ]
  %call = call i64* @bitmap_zalloc(i32 noundef %2, i32 noundef 3264) #13
  %tobool13.not = icmp eq i64* %call, null
  br i1 %tobool13.not, label %cleanup75.thread, label %if.end15

cleanup75.thread:                                 ; preds = %if.end11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #14
  br label %cleanup113

if.end15:                                         ; preds = %if.end11
  call fastcc void @proc_skip_char(i8** noundef nonnull %p, i64* noundef nonnull %left) #12
  %10 = load i64, i64* %left, align 8
  %tobool17.not203 = icmp eq i64 %10, 0
  br i1 %tobool17.not203, label %if.end98.thread210, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end15
  %11 = bitcast i64* %val_a to i8*
  %12 = bitcast i64* %val_b to i8*
  %tobool22 = icmp ne i64 %skipped.0, 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #14
  store i64 0, i64* %val_a, align 8, !annotation !8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #14
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %neg) #14
  store i8 0, i8* %neg, align 4, !annotation !8
  %call18227 = call fastcc i32 @proc_get_long(i8** noundef nonnull %p, i64* noundef nonnull %left, i64* noundef nonnull %val_a, i8* noundef nonnull %neg, i8* noundef nonnull %6, i8* noundef nonnull %c) #12
  %13 = load i64, i64* %left, align 8
  %cmp19228 = icmp ult i64 %13, 2
  %or.cond123229 = select i1 %cmp19228, i1 %tobool22, i1 false
  br i1 %or.cond123229, label %if.end98, label %if.end24

while.body:                                       ; preds = %if.end67
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #14
  store i64 0, i64* %val_a, align 8, !annotation !8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #14
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %neg) #14
  store i8 0, i8* %neg, align 4, !annotation !8
  %call18 = call fastcc i32 @proc_get_long(i8** noundef nonnull %p, i64* noundef nonnull %left, i64* noundef nonnull %val_a, i8* noundef nonnull %neg, i8* noundef nonnull %6, i8* noundef nonnull %c) #12
  %14 = load i64, i64* %left, align 8
  %cmp19 = icmp ult i64 %14, 2
  %or.cond123 = select i1 %cmp19, i1 %tobool22, i1 false
  br i1 %or.cond123, label %if.end98, label %if.end24

if.end24:                                         ; preds = %while.body.lr.ph, %while.body
  %15 = phi i64 [ %14, %while.body ], [ %13, %while.body.lr.ph ]
  %call18230 = phi i32 [ %call18, %while.body ], [ %call18227, %while.body.lr.ph ]
  %16 = phi i64 [ %27, %while.body ], [ %10, %while.body.lr.ph ]
  %tobool25.not = icmp eq i32 %call18230, 0
  br i1 %tobool25.not, label %if.end27, label %if.end98.thread215

if.end27:                                         ; preds = %if.end24
  %17 = load i64, i64* %val_a, align 8
  %cmp28.not = icmp ult i64 %17, %conv
  %18 = load i8, i8* %neg, align 4
  %tobool31.not = icmp eq i8 %18, 0
  %or.cond175 = select i1 %cmp28.not, i1 %tobool31.not, i1 false
  br i1 %or.cond175, label %if.end34, label %if.end98.thread215

if.end34:                                         ; preds = %if.end27
  store i64 %17, i64* %val_b, align 8
  %tobool35.not = icmp eq i64 %15, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end34
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %19, i64 1
  store i8* %incdec.ptr, i8** %p, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %left, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  %20 = load i8, i8* %c, align 4
  %cmp39 = icmp eq i8 %20, 45
  br i1 %cmp39, label %if.then41, label %if.end67

if.then41:                                        ; preds = %if.end37
  %call43 = call fastcc i32 @proc_get_long(i8** noundef nonnull %p, i64* noundef nonnull %left, i64* noundef nonnull %val_b, i8* noundef nonnull %neg, i8* noundef nonnull %7, i8* noundef nonnull %c) #12
  %21 = load i64, i64* %left, align 8
  %tobool44 = icmp eq i64 %21, 0
  %or.cond124 = select i1 %tobool44, i1 %tobool22, i1 false
  br i1 %or.cond124, label %if.end98, label %if.end48

if.end48:                                         ; preds = %if.then41
  %tobool49.not = icmp eq i32 %call43, 0
  br i1 %tobool49.not, label %if.end51, label %if.end98.thread215

if.end51:                                         ; preds = %if.end48
  %22 = load i64, i64* %val_b, align 8
  %cmp52.not = icmp uge i64 %22, %conv
  %23 = load i8, i8* %neg, align 4
  %tobool55.not = icmp ne i8 %23, 0
  %or.cond176 = select i1 %cmp52.not, i1 true, i1 %tobool55.not
  %cmp58 = icmp ugt i64 %17, %22
  %or.cond177 = select i1 %or.cond176, i1 true, i1 %cmp58
  br i1 %or.cond177, label %if.end98.thread215, label %if.end61

if.end61:                                         ; preds = %if.end51
  br i1 %tobool44, label %if.end67, label %if.then63

if.then63:                                        ; preds = %if.end61
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr64 = getelementptr i8, i8* %24, i64 1
  store i8* %incdec.ptr64, i8** %p, align 8
  %dec65 = add i64 %21, -1
  store i64 %dec65, i64* %left, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end61, %if.then63, %if.end37
  %25 = phi i64 [ %22, %if.end61 ], [ %22, %if.then63 ], [ %17, %if.end37 ]
  %conv68 = trunc i64 %17 to i32
  %sub69 = sub i64 %25, %17
  %26 = trunc i64 %sub69 to i32
  %conv70 = add i32 %26, 1
  call void @__bitmap_set(i64* noundef nonnull %call, i32 noundef %conv68, i32 noundef %conv70) #13
  call fastcc void @proc_skip_char(i8** noundef nonnull %p, i64* noundef nonnull %left) #12
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %neg) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #14
  %27 = load i64, i64* %left, align 8
  %tobool17.not = icmp eq i64 %27, 0
  br i1 %tobool17.not, label %if.end98.thread210, label %while.body

while.body81:                                     ; preds = %if.end, %if.end96
  %first.0.off0202 = phi i1 [ false, %if.end96 ], [ true, %if.end ]
  %bit_b.0201 = phi i64 [ %call88, %if.end96 ], [ 0, %if.end ]
  %call82 = call fastcc i64 @find_next_bit(i64* noundef nonnull %5, i64 noundef %conv, i64 noundef %bit_b.0201) #12
  %cmp83.not = icmp ult i64 %call82, %conv
  br i1 %cmp83.not, label %if.end86, label %if.end98.thread

if.end86:                                         ; preds = %while.body81
  %add87 = add nuw i64 %call82, 1
  %call88 = call fastcc i64 @find_next_zero_bit(i64* noundef nonnull %5, i64 noundef %conv, i64 noundef %add87) #12
  %sub89 = add i64 %call88, -1
  br i1 %first.0.off0202, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.end86
  call fastcc void @proc_put_char(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i8 noundef 44) #12
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end86
  call fastcc void @proc_put_long(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i64 noundef %call82, i1 noundef false) #12
  %cmp93.not = icmp eq i64 %call82, %sub89
  br i1 %cmp93.not, label %if.end96, label %if.then95

if.then95:                                        ; preds = %if.end92
  call fastcc void @proc_put_char(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i8 noundef 45) #12
  call fastcc void @proc_put_long(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i64 noundef %sub89, i1 noundef false) #12
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end92
  %28 = load i64, i64* %left, align 8
  %tobool80.not = icmp eq i64 %28, 0
  br i1 %tobool80.not, label %if.end98.thread, label %while.body81

if.end98.thread:                                  ; preds = %while.body81, %if.end96
  call fastcc void @proc_put_char(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i8 noundef 10) #12
  br label %if.then100

if.end98.thread210:                               ; preds = %if.end67, %if.end15
  store i64 %skipped.0, i64* %left, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #14
  br label %if.then100

if.end98.thread215:                               ; preds = %if.end24, %if.end27, %if.end48, %if.end51
  %.ph = phi i64 [ %21, %if.end51 ], [ %21, %if.end48 ], [ %15, %if.end27 ], [ %15, %if.end24 ]
  %err.2.ph.ph = phi i32 [ -22, %if.end51 ], [ %call43, %if.end48 ], [ -22, %if.end27 ], [ %call18230, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %neg) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #14
  %add74217 = add i64 %.ph, %skipped.0
  store i64 %add74217, i64* %left, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #14
  br label %if.end112

if.end98:                                         ; preds = %while.body, %if.then41, %while.body.lr.ph
  %.lcssa = phi i64 [ %10, %while.body.lr.ph ], [ %27, %while.body ], [ %16, %if.then41 ]
  %err.2.ph = phi i32 [ %call18227, %while.body.lr.ph ], [ %call18, %while.body ], [ %call43, %if.then41 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %neg) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #14
  %add74 = add i64 %.lcssa, %skipped.0
  store i64 %add74, i64* %left, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #14
  %tobool99.not = icmp eq i32 %err.2.ph, 0
  br i1 %tobool99.not, label %if.then100, label %if.end112

if.then100:                                       ; preds = %if.end98.thread210, %if.end98.thread, %if.end98
  %tmp_bitmap.0188 = phi i64* [ null, %if.end98.thread ], [ %call, %if.end98 ], [ %call, %if.end98.thread210 ]
  br i1 %tobool6, label %if.then102, label %if.end109

if.then102:                                       ; preds = %if.then100
  %29 = load i64, i64* %ppos, align 8
  %tobool103.not = icmp eq i64 %29, 0
  br i1 %tobool103.not, label %if.else106, label %if.then104

if.then104:                                       ; preds = %if.then102
  call fastcc void @bitmap_or(i64* noundef nonnull %5, i64* noundef nonnull %5, i64* noundef %tmp_bitmap.0188, i32 noundef %2) #12
  br label %if.end109

if.else106:                                       ; preds = %if.then102
  call fastcc void @bitmap_copy(i64* noundef nonnull %5, i64* noundef %tmp_bitmap.0188, i32 noundef %2) #12
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.else106, %if.then100
  %30 = load i64, i64* %left, align 8
  %31 = load i64, i64* %lenp, align 8
  %sub110 = sub i64 %31, %30
  store i64 %sub110, i64* %lenp, align 8
  %32 = load i64, i64* %ppos, align 8
  %add111 = add i64 %32, %sub110
  store i64 %add111, i64* %ppos, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.end98.thread215, %if.end109, %if.end98
  %tmp_bitmap.0187 = phi i64* [ %tmp_bitmap.0188, %if.end109 ], [ %call, %if.end98 ], [ %call, %if.end98.thread215 ]
  %err.5185 = phi i32 [ 0, %if.end109 ], [ %err.2.ph, %if.end98 ], [ %err.2.ph.ph, %if.end98.thread215 ]
  call void @bitmap_free(i64* noundef %tmp_bitmap.0187) #13
  br label %cleanup113

cleanup113:                                       ; preds = %cleanup75.thread, %if.end112, %if.then
  %retval.1 = phi i32 [ %err.5185, %if.end112 ], [ 0, %if.then ], [ -12, %cleanup75.thread ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #14
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %7) #14
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %6) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64* @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @proc_skip_char(i8** nocapture noundef %buf, i64* nocapture noundef %size) unnamed_addr #7 {
entry:
  %0 = load i64, i64* %size, align 8
  %tobool.not1 = icmp eq i64 %0, 0
  br i1 %tobool.not1, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %.pre = load i8*, i8** %buf, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %1 = phi i8* [ %incdec.ptr, %if.end ], [ %.pre, %while.body.preheader ]
  %2 = phi i64 [ %5, %if.end ], [ %0, %while.body.preheader ]
  %3 = load i8, i8* %1, align 1
  %cmp.not = icmp eq i8 %3, 10
  br i1 %cmp.not, label %if.end, label %while.end

if.end:                                           ; preds = %while.body
  %dec = add i64 %2, -1
  store i64 %dec, i64* %size, align 8
  %4 = load i8*, i8** %buf, align 8
  %incdec.ptr = getelementptr i8, i8* %4, i64 1
  store i8* %incdec.ptr, i8** %buf, align 8
  %5 = load i64, i64* %size, align 8
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @proc_get_long(i8** nocapture noundef %buf, i64* nocapture noundef %size, i64* nocapture noundef writeonly %val, i8* nocapture noundef writeonly %neg, i8* noundef %perm_tr, i8* noundef writeonly %tr) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %tmp = alloca [22 x i8], align 4
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = getelementptr inbounds [22 x i8], [22 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(22) %1, i8 0, i64 22, i1 false), !annotation !8
  %2 = load i64, i64* %size, align 8
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = trunc i64 %2 to i32
  %3 = icmp slt i32 %conv, 21
  %4 = load i8*, i8** %buf, align 8
  %.op = shl i64 %2, 32
  %.op.op = ashr exact i64 %.op, 32
  %conv4 = select i1 %3, i64 %.op.op, i64 21
  %call = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef %4, i64 noundef %conv4) #13
  %arrayidx = getelementptr [22 x i8], [22 x i8]* %tmp, i64 0, i64 %conv4
  store i8 0, i8* %arrayidx, align 1
  store i8* %1, i8** %p, align 8
  %5 = load i8, i8* %1, align 4
  %cmp7 = icmp eq i8 %5, 45
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load i64, i64* %size, align 8
  %cmp9 = icmp ugt i64 %6, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  store i8 1, i8* %neg, align 1
  %incdec.ptr = getelementptr inbounds [22 x i8], [22 x i8]* %tmp, i64 0, i64 1
  store i8* %incdec.ptr, i8** %p, align 8
  %.pre = load i8, i8* %incdec.ptr, align 1
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i8 0, i8* %neg, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %7 = phi i8 [ %5, %if.else ], [ %.pre, %if.then11 ]
  %8 = phi i8* [ %1, %if.else ], [ %incdec.ptr, %if.then11 ]
  %conv13 = zext i8 %7 to i32
  %call14 = call fastcc i32 @isdigit(i32 noundef %conv13) #12
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = call fastcc i32 @strtoul_lenient(i8* noundef %8, i8** noundef nonnull %p, i64* noundef %val) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.end17
  %9 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint [22 x i8]* %tmp to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv23 = trunc i64 %sub.ptr.sub to i32
  %cmp24 = icmp eq i32 %conv23, 21
  br i1 %cmp24, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end21
  %sext = shl i64 %sub.ptr.sub, 32
  %conv28 = ashr exact i64 %sext, 32
  %10 = load i64, i64* %size, align 8
  %cmp29 = icmp ult i64 %conv28, %10
  br i1 %cmp29, label %land.lhs.true33, label %if.end39

land.lhs.true33:                                  ; preds = %if.end27
  %11 = load i8, i8* %9, align 1
  %conv34 = zext i8 %11 to i32
  %call36 = call i8* @memchr(i8* noundef %perm_tr, i32 noundef %conv34, i64 noundef 3) #13
  %tobool37.not = icmp eq i8* %call36, null
  br i1 %tobool37.not, label %cleanup, label %if.end39

if.end39:                                         ; preds = %land.lhs.true33, %if.end27
  %tobool40.not = icmp eq i8* %tr, null
  br i1 %tobool40.not, label %if.end46, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.end39
  %12 = load i64, i64* %size, align 8
  %cmp43 = icmp ult i64 %conv28, %12
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %land.lhs.true41
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %tr, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %land.lhs.true41, %if.end39
  %15 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %15, i64 %conv28
  store i8* %add.ptr, i8** %buf, align 8
  %16 = load i64, i64* %size, align 8
  %sub = sub i64 %16, %conv28
  store i64 %sub, i64* %size, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true33, %if.end21, %if.end17, %if.end12, %entry, %if.end46
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -22, %entry ], [ -22, %if.end12 ], [ -22, %if.end17 ], [ -22, %if.end21 ], [ -22, %land.lhs.true33 ]
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #13
  ret i64 %call12
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_zero_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call13 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef -1, i64 noundef 0) #13
  ret i64 %call13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @proc_put_char(i8** nocapture noundef %buf, i64* nocapture noundef %size, i8 noundef %c) unnamed_addr #1 {
entry:
  %0 = load i64, i64* %size, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf, align 8
  store i8 %c, i8* %1, align 1
  %2 = load i64, i64* %size, align 8
  %dec = add i64 %2, -1
  store i64 %dec, i64* %size, align 8
  %3 = load i8*, i8** %buf, align 8
  %incdec.ptr = getelementptr i8, i8* %3, i64 1
  store i8* %incdec.ptr, i8** %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @proc_put_long(i8** nocapture noundef %buf, i64* nocapture noundef %size, i64 noundef %val, i1 noundef %neg) unnamed_addr #0 {
entry:
  %tmp = alloca [22 x i8], align 1
  %0 = getelementptr inbounds [22 x i8], [22 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 22, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(22) %0, i8 0, i64 22, i1 false), !annotation !8
  %cond = select i1 %neg, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %cond, i64 noundef %val) #13
  %call2 = call i64 @strlen(i8* noundef nonnull %0) #13
  %sext = shl i64 %call2, 32
  %conv3 = ashr exact i64 %sext, 32
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %conv3, %1
  %spec.select = select i1 %cmp, i64 %1, i64 %call2
  %2 = load i8*, i8** %buf, align 8
  %sext18 = shl i64 %spec.select, 32
  %conv7 = ashr exact i64 %sext18, 32
  %call8 = call i8* @memcpy(i8* noundef %2, i8* noundef nonnull %0, i64 noundef %conv7) #13
  %3 = load i64, i64* %size, align 8
  %sub = sub i64 %3, %conv7
  store i64 %sub, i64* %size, align 8
  %4 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %conv7
  store i8* %add.ptr, i8** %buf, align 8
  call void @llvm.lifetime.end.p0i8(i64 22, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_or(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2, i32 noundef %nbits) unnamed_addr #0 {
entry:
  call void @__bitmap_or(i64* noundef %dst, i64* noundef %src1, i64* noundef %src2, i32 noundef %nbits) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy(i64* noundef %dst, i64* noundef %src, i32 noundef %nbits) unnamed_addr #0 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %0 = lshr i64 %sub, 3
  %conv1 = and i64 %0, 1073741816
  %1 = bitcast i64* %dst to i8*
  %2 = bitcast i64* %src to i8*
  %call = call i8* @memcpy(i8* noundef %1, i8* noundef %2, i64 noundef %conv1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(i64* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @proc_do_static_key(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) local_unnamed_addr #0 {
entry:
  %val = alloca i32, align 4
  %tmp = alloca %struct.ctl_table, align 8
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %0 = bitcast i8** %data to %struct.static_key**
  %1 = load %struct.static_key*, %struct.static_key** %0, align 8
  %2 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  store i32 0, i32* %val, align 4, !annotation !8
  %3 = bitcast %struct.ctl_table* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #14
  %data1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %tmp, i64 0, i32 1
  %4 = bitcast i8** %data1 to i32**
  %5 = bitcast %struct.ctl_table* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32* %val, i32** %4, align 8
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %tmp, i64 0, i32 2
  store i32 4, i32* %maxlen, align 8
  %mode = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %tmp, i64 0, i32 3
  %mode2 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 3
  %6 = load i16, i16* %mode2, align 4
  store i16 %6, i16* %mode, align 4
  %child = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %tmp, i64 0, i32 4
  store %struct.ctl_table* null, %struct.ctl_table** %child, align 8
  %proc_handler = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %tmp, i64 0, i32 5
  %proc_handler3 = bitcast {}** %proc_handler to i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)**
  store i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)** %proc_handler3, align 8
  %poll = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %tmp, i64 0, i32 6
  store %struct.ctl_table_poll* null, %struct.ctl_table_poll** %poll, align 8
  %extra1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %tmp, i64 0, i32 7
  store i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8** %extra1, align 8
  %extra2 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %tmp, i64 0, i32 8
  store i8* bitcast (i32* getelementptr inbounds ([0 x i32], [0 x i32]* @sysctl_vals, i64 0, i64 1) to i8*), i8** %extra2, align 8
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i1 @capable(i32 noundef 21) #13
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @proc_do_static_key.static_key_mutex) #13
  %call5 = call fastcc i32 @static_key_count(%struct.static_key* noundef %1) #12
  %cmp = icmp sgt i32 %call5, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %val, align 4
  %call6 = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef nonnull %tmp, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #12
  %tobool9 = icmp ne i32 %call6, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool9
  br i1 %or.cond, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  %7 = load i32, i32* %val, align 4
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  call fastcc void @static_key_enable(%struct.static_key* noundef %1) #12
  br label %if.end14

if.else:                                          ; preds = %if.then10
  call fastcc void @static_key_disable(%struct.static_key* noundef %1) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else, %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @proc_do_static_key.static_key_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end14
  %retval.0 = phi i32 [ %call6, %if.end14 ], [ -1, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #8 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_enable(%struct.static_key* noundef %key) unnamed_addr #0 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !9

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.static_key_enable, i64 0, i64 0), %struct.static_key* noundef %key) #13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 318; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* %counter.i, align 4
  %cmp27.not = icmp eq i32 %2, 1
  br i1 %cmp27.not, label %return, label %if.then41, !prof !11

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 321; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !12
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 1, i32* %counter.i, align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_disable(%struct.static_key* noundef %key) unnamed_addr #0 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !9

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.static_key_disable, i64 0, i64 0), %struct.static_key* noundef %key) #13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 329; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* %counter.i, align 4
  %cmp27.not = icmp eq i32 %2, 0
  br i1 %cmp27.not, label %return, label %if.then41, !prof !11

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 332; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !14
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 0, i32* %counter.i, align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @sysctl_init() local_unnamed_addr #9 section ".init.text" {
entry:
  %call = call %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* noundef bitcast ([6 x { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }]* @sysctl_base_table to %struct.ctl_table*)) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @warn_sysctl_write(%struct.ctl_table* nocapture noundef readonly %table) unnamed_addr #0 {
entry:
  %.b15 = load i1, i1* @warn_sysctl_write.__already_done, align 1
  br i1 %.b15, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  store i1 true, i1* @warn_sysctl_write.__already_done, align 1
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !15
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 81, i64 0
  %procname = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 0
  %2 = load i8*, i8** %procname, align 8
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([152 x i8], [152 x i8]* @.str, i64 0, i64 0), i8* noundef %arraydecay, i8* noundef %2) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__do_proc_dointvec(i8* noundef %tbl_data, %struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos, i32 (i8*, i64*, i32*, i32, i8*)* noundef readonly %conv, i8* noundef %data) unnamed_addr #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %left = alloca i64, align 8
  %p = alloca i8*, align 8
  %lval = alloca i64, align 8
  %neg = alloca i8, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = bitcast i64* %left to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i8* null, i8** %p, align 8, !annotation !8
  %tobool.not = icmp eq i8* %tbl_data, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 2
  %2 = load i32, i32* %maxlen, align 8
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* %lenp, align 8
  %tobool3.not = icmp eq i64 %3, 0
  br i1 %tobool3.not, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i64, i64* %ppos, align 8
  %tobool5 = icmp eq i64 %4, 0
  %tobool6 = icmp ne i32 %write, 0
  %or.cond = or i1 %tobool6, %tobool5
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i64 0, i64* %lenp, align 8
  br label %cleanup72

if.end:                                           ; preds = %lor.lhs.false4
  %5 = bitcast i8* %tbl_data to i32*
  %conv9 = ashr i32 %2, 2
  store i64 %3, i64* %left, align 8
  %tobool10.not = icmp eq i32 (i8*, i64*, i32*, i32, i8*)* %conv, null
  %spec.store.select = select i1 %tobool10.not, i32 (i8*, i64*, i32*, i32, i8*)* @do_proc_dointvec_conv, i32 (i8*, i64*, i32*, i32, i8*)* %conv
  br i1 %tobool6, label %if.then14, label %land.rhs.lr.ph

if.then14:                                        ; preds = %if.end
  %call = call fastcc i1 @proc_first_pos_non_zero_ignore(i64* noundef %ppos, %struct.ctl_table* noundef %table) #12
  br i1 %call, label %if.then14.out_crit_edge, label %if.end16

if.then14.out_crit_edge:                          ; preds = %if.then14
  %.pre132 = load i64, i64* %lenp, align 8
  br label %out

if.end16:                                         ; preds = %if.then14
  %cmp = icmp ugt i64 %3, 4095
  br i1 %cmp, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  store i64 4095, i64* %left, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16
  %6 = phi i64 [ 4095, %if.then18 ], [ %3, %if.end16 ]
  store i8* %buffer, i8** %p, align 8
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end, %if.end19
  %7 = phi i64 [ %6, %if.end19 ], [ %3, %if.end ]
  %8 = bitcast i64* %lval to i8*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %9 = phi i64 [ %7, %land.rhs.lr.ph ], [ %12, %for.inc ]
  %tobool41.not129 = phi i1 [ false, %land.rhs.lr.ph ], [ true, %for.inc ]
  %tobool49128 = phi i1 [ true, %land.rhs.lr.ph ], [ false, %for.inc ]
  %vleft.0127 = phi i32 [ %conv9, %land.rhs.lr.ph ], [ %dec, %for.inc ]
  %i.0125 = phi i32* [ %5, %land.rhs.lr.ph ], [ %incdec.ptr, %for.inc ]
  %dec = add i32 %vleft.0127, -1
  %tobool22.not = icmp eq i32 %vleft.0127, 0
  br i1 %tobool22.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #14
  store i64 0, i64* %lval, align 8, !annotation !8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %neg) #14
  store i8 0, i8* %neg, align 4, !annotation !8
  br i1 %tobool6, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.body
  %call25 = call fastcc i64 @proc_skip_spaces(i8** noundef nonnull %p) #12
  %sub = sub i64 %9, %call25
  store i64 %sub, i64* %left, align 8
  %tobool26.not = icmp eq i64 %sub, 0
  br i1 %tobool26.not, label %cleanup.thread, label %if.end28

if.end28:                                         ; preds = %if.then24
  %call29 = call fastcc i32 @proc_get_long(i8** noundef nonnull %p, i64* noundef nonnull %left, i64* noundef nonnull %lval, i8* noundef nonnull %neg, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @proc_wspace_sep, i64 0, i64 0), i8* noundef null) #12
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %cleanup.thread

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 %spec.store.select(i8* noundef nonnull %neg, i64* noundef nonnull %lval, i32* noundef %i.0125, i32 noundef 1, i8* noundef %data) #13
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %for.inc, label %cleanup.thread

if.else:                                          ; preds = %for.body
  %call37 = call i32 %spec.store.select(i8* noundef nonnull %neg, i64* noundef nonnull %lval, i32* noundef %i.0125, i32 noundef 0, i8* noundef %data) #13
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %cleanup.thread

if.end40:                                         ; preds = %if.else
  br i1 %tobool41.not129, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  call fastcc void @proc_put_char(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i8 noundef 9) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40
  %10 = load i64, i64* %lval, align 8
  %11 = load i8, i8* %neg, align 4, !range !7
  %tobool44 = icmp ne i8 %11, 0
  call fastcc void @proc_put_long(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i64 noundef %10, i1 noundef %tobool44) #12
  br label %for.inc

cleanup.thread:                                   ; preds = %if.then24, %if.end28, %if.end32, %if.else
  %err.2.ph = phi i32 [ -22, %if.else ], [ -22, %if.end32 ], [ %call29, %if.end28 ], [ 0, %if.then24 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %neg) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #14
  %.pre = load i64, i64* %left, align 8
  br label %for.end

for.inc:                                          ; preds = %if.end32, %if.end43
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %neg) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #14
  %incdec.ptr = getelementptr i32, i32* %i.0125, i64 1
  %12 = load i64, i64* %left, align 8
  %tobool21.not = icmp eq i64 %12, 0
  br i1 %tobool21.not, label %if.end70, label %land.rhs

for.end:                                          ; preds = %land.rhs, %cleanup.thread
  %13 = phi i64 [ %.pre, %cleanup.thread ], [ %9, %land.rhs ]
  %err.3 = phi i32 [ %err.2.ph, %cleanup.thread ], [ 0, %land.rhs ]
  %or.cond78 = or i1 %tobool6, %tobool49128
  %tobool51 = icmp eq i64 %13, 0
  %or.cond79.not = select i1 %or.cond78, i1 true, i1 %tobool51
  %tobool53 = icmp ne i32 %err.3, 0
  %or.cond80 = select i1 %or.cond79.not, i1 true, i1 %tobool53
  br i1 %or.cond80, label %if.end55, label %if.end55.thread

if.end55.thread:                                  ; preds = %for.end
  call fastcc void @proc_put_char(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i8 noundef 10) #12
  br label %if.end64

if.end55:                                         ; preds = %for.end
  %tobool56 = icmp eq i32 %write, 0
  %or.cond81 = select i1 %tobool56, i1 true, i1 %tobool53
  %or.cond81.not = xor i1 %or.cond81, true
  %tobool60 = icmp ne i64 %13, 0
  %or.cond82 = select i1 %or.cond81.not, i1 %tobool60, i1 false
  br i1 %or.cond82, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end55
  %call62 = call fastcc i64 @proc_skip_spaces(i8** noundef nonnull %p) #12
  %sub63 = sub i64 %13, %call62
  store i64 %sub63, i64* %left, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.end55.thread, %if.then61, %if.end55
  %err.3142 = phi i32 [ 0, %if.end55.thread ], [ %err.3, %if.then61 ], [ %err.3, %if.end55 ]
  %or.cond83 = and i1 %tobool6, %tobool49128
  br i1 %or.cond83, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end64
  %. = select i1 %tobool53, i32 %err.3142, i32 -22
  br label %cleanup72

if.end70:                                         ; preds = %for.inc, %if.end64
  %err.3142159 = phi i32 [ %err.3142, %if.end64 ], [ 0, %for.inc ]
  %14 = load i64, i64* %left, align 8
  %15 = load i64, i64* %lenp, align 8
  %sub71 = sub i64 %15, %14
  store i64 %sub71, i64* %lenp, align 8
  br label %out

out:                                              ; preds = %if.then14.out_crit_edge, %if.end70
  %16 = phi i64 [ %.pre132, %if.then14.out_crit_edge ], [ %sub71, %if.end70 ]
  %err.4 = phi i32 [ 0, %if.then14.out_crit_edge ], [ %err.3142159, %if.end70 ]
  %17 = load i64, i64* %ppos, align 8
  %add = add i64 %17, %16
  store i64 %add, i64* %ppos, align 8
  br label %cleanup72

cleanup72:                                        ; preds = %out, %if.then68, %if.then
  %retval.0 = phi i32 [ %err.4, %out ], [ %., %if.then68 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @do_proc_dointvec_conv(i8* nocapture noundef %negp, i64* nocapture noundef %lvalp, i32* nocapture noundef %valp, i32 noundef %write, i8* nocapture noundef readnone %data) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8, i8* %negp, align 1, !range !7
  %tobool1.not = icmp eq i8 %0, 0
  %1 = load i64, i64* %lvalp, align 8
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %cmp = icmp ugt i64 %1, 2147483648
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then2
  %2 = trunc i64 %1 to i32
  %conv = sub i32 0, %2
  store i32 %conv, i32* %valp, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %cmp4 = icmp ugt i64 %1, 2147483647
  br i1 %cmp4, label %return, label %if.end7

if.end7:                                          ; preds = %if.else
  %conv8 = trunc i64 %1 to i32
  store i32 %conv8, i32* %valp, align 4
  br label %return

if.else10:                                        ; preds = %entry
  %3 = load i32, i32* %valp, align 4
  %cmp11 = icmp slt i32 %3, 0
  br i1 %cmp11, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else10
  store i8 1, i8* %negp, align 1
  %conv14 = sext i32 %3 to i64
  %sub15 = sub nsw i64 0, %conv14
  br label %if.end18

if.else16:                                        ; preds = %if.else10
  store i8 0, i8* %negp, align 1
  %conv1734 = zext i32 %3 to i64
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then13
  %storemerge = phi i64 [ %conv1734, %if.else16 ], [ %sub15, %if.then13 ]
  store i64 %storemerge, i64* %lvalp, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.end7, %if.end, %if.else, %if.then2
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %if.else ], [ 0, %if.end ], [ 0, %if.end7 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @proc_skip_spaces(i8** nocapture noundef %buf) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %buf, align 8
  %call = call i8* @skip_spaces(i8* noundef %0) #13
  %1 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i8* %call, i8** %buf, align 8
  ret i64 %sub.ptr.sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @skip_spaces(i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__do_proc_douintvec(i8* noundef %tbl_data, %struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos, i32 (i64*, i32*, i32, i8*)* noundef readonly %conv, i8* noundef %data) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %tbl_data, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 2
  %0 = load i32, i32* %maxlen, align 8
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %1 = load i64, i64* %lenp, align 8
  %tobool3.not = icmp eq i64 %1, 0
  br i1 %tobool3.not, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %2 = load i64, i64* %ppos, align 8
  %tobool5 = icmp eq i64 %2, 0
  %tobool6 = icmp ne i32 %write, 0
  %or.cond = or i1 %tobool6, %tobool5
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i64 0, i64* %lenp, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %3 = bitcast i8* %tbl_data to i32*
  %conv9.mask = and i32 %0, -4
  %cmp.not = icmp eq i32 %conv9.mask, 4
  br i1 %cmp.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  store i64 0, i64* %lenp, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %tobool13.not = icmp eq i32 (i64*, i32*, i32, i8*)* %conv, null
  %spec.store.select = select i1 %tobool13.not, i32 (i64*, i32*, i32, i8*)* @do_proc_douintvec_conv, i32 (i64*, i32*, i32, i8*)* %conv
  br i1 %tobool6, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  %call = call fastcc i32 @do_proc_douintvec_w(i32* noundef nonnull %3, %struct.ctl_table* noundef %table, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i64*, i32*, i32, i8*)* noundef %spec.store.select, i8* noundef %data) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call19 = call fastcc i32 @do_proc_douintvec_r(i32* noundef nonnull %3, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i64*, i32*, i32, i8*)* noundef %spec.store.select, i8* noundef %data) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then11, %if.then
  %retval.0 = phi i32 [ -22, %if.then11 ], [ %call, %if.then17 ], [ %call19, %if.end18 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_proc_douintvec_w(i32* noundef %tbl_data, %struct.ctl_table* nocapture noundef readonly %table, i8* noundef %buffer, i64* nocapture noundef readonly %lenp, i64* nocapture noundef %ppos, i32 (i64*, i32*, i32, i8*)* nocapture noundef readonly %conv, i8* noundef %data) unnamed_addr #0 {
entry:
  %lval = alloca i64, align 8
  %left = alloca i64, align 8
  %neg = alloca i8, align 4
  %p = alloca i8*, align 8
  %0 = bitcast i64* %lval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %lval, align 8, !annotation !8
  %1 = bitcast i64* %left to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %neg) #14
  store i8 0, i8* %neg, align 4, !annotation !8
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store i8* %buffer, i8** %p, align 8
  %3 = load i64, i64* %lenp, align 8
  %call = call fastcc i1 @proc_first_pos_non_zero_ignore(i64* noundef %ppos, %struct.ctl_table* noundef %table) #12
  br i1 %call, label %bail_early, label %if.end

if.end:                                           ; preds = %entry
  %4 = icmp ult i64 %3, 4095
  %spec.select = select i1 %4, i64 %3, i64 4095
  %call4 = call fastcc i64 @proc_skip_spaces(i8** noundef nonnull %p) #12
  %sub = sub i64 %spec.select, %call4
  store i64 %sub, i64* %left, align 8
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @proc_get_long(i8** noundef nonnull %p, i64* noundef nonnull %left, i64* noundef nonnull %lval, i8* noundef nonnull %neg, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @proc_wspace_sep, i64 0, i64 0), i8* noundef null) #12
  %tobool8.not = icmp eq i32 %call7, 0
  %5 = load i8, i8* %neg, align 4
  %tobool9.not = icmp eq i8 %5, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 %conv(i64* noundef nonnull %lval, i32* noundef %tbl_data, i32 noundef 1, i8* noundef %data) #13, !callees !16
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end12
  %6 = load i64, i64* %left, align 8
  %tobool18.not = icmp eq i64 %6, 0
  br i1 %tobool18.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %if.end16
  %call20 = call fastcc i64 @proc_skip_spaces(i8** noundef nonnull %p) #12
  br label %cleanup

bail_early:                                       ; preds = %entry
  %7 = load i64, i64* %lenp, align 8
  %8 = load i64, i64* %ppos, align 8
  %add = add i64 %8, %7
  store i64 %add, i64* %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6, %if.end, %if.then19, %if.end16, %bail_early
  %retval.0 = phi i32 [ 0, %bail_early ], [ 0, %if.then19 ], [ 0, %if.end16 ], [ -22, %if.end ], [ -22, %if.end6 ], [ -22, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %neg) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_proc_douintvec_r(i32* noundef %tbl_data, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos, i32 (i64*, i32*, i32, i8*)* nocapture noundef readonly %conv, i8* noundef %data) unnamed_addr #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %lval = alloca i64, align 8
  %left = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = bitcast i64* %lval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %lval, align 8, !annotation !8
  %1 = bitcast i64* %left to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %2 = load i64, i64* %lenp, align 8
  store i64 %2, i64* %left, align 8
  %call = call i32 %conv(i64* noundef nonnull %lval, i32* noundef %tbl_data, i32 noundef 0, i8* noundef %data) #13, !callees !16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %lval, align 8
  call fastcc void @proc_put_long(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i64 noundef %3, i1 noundef false) #12
  %4 = load i64, i64* %left, align 8
  %tobool1.not = icmp eq i64 %4, 0
  br i1 %tobool1.not, label %out, label %if.end3

if.end3:                                          ; preds = %if.end
  call fastcc void @proc_put_char(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i8 noundef 10) #12
  %.pre = load i64, i64* %left, align 8
  br label %out

out:                                              ; preds = %entry, %if.end, %if.end3
  %5 = phi i64 [ %.pre, %if.end3 ], [ 0, %if.end ], [ %2, %entry ]
  %err.0 = phi i32 [ 0, %if.end3 ], [ 0, %if.end ], [ -22, %entry ]
  %6 = load i64, i64* %lenp, align 8
  %sub = sub i64 %6, %5
  store i64 %sub, i64* %lenp, align 8
  %7 = load i64, i64* %ppos, align 8
  %add = add i64 %7, %sub
  store i64 %add, i64* %ppos, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %err.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__do_proc_doulongvec_minmax(i8* noundef %data, %struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos, i64 noundef %convmul, i64 noundef %convdiv) unnamed_addr #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %left = alloca i64, align 8
  %p = alloca i8*, align 8
  %val = alloca i64, align 8
  %neg = alloca i8, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = bitcast i64* %left to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i8* null, i8** %p, align 8, !annotation !8
  %tobool.not = icmp eq i8* %data, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %maxlen = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 2
  %2 = load i32, i32* %maxlen, align 8
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* %lenp, align 8
  %tobool3.not = icmp eq i64 %3, 0
  br i1 %tobool3.not, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i64, i64* %ppos, align 8
  %tobool5 = icmp eq i64 %4, 0
  %tobool6 = icmp ne i32 %write, 0
  %or.cond = or i1 %tobool6, %tobool5
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i64 0, i64* %lenp, align 8
  br label %cleanup76

if.end:                                           ; preds = %lor.lhs.false4
  %5 = bitcast i8* %data to i64*
  %extra1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 7
  %6 = bitcast i8** %extra1 to i64**
  %7 = load i64*, i64** %6, align 8
  %extra2 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 8
  %8 = bitcast i8** %extra2 to i64**
  %9 = load i64*, i64** %8, align 8
  %conv8 = ashr i32 %2, 3
  store i64 %3, i64* %left, align 8
  br i1 %tobool6, label %if.then10, label %land.rhs.lr.ph

if.then10:                                        ; preds = %if.end
  %call = call fastcc i1 @proc_first_pos_non_zero_ignore(i64* noundef %ppos, %struct.ctl_table* noundef %table) #12
  br i1 %call, label %if.then10.out_crit_edge, label %if.end12

if.then10.out_crit_edge:                          ; preds = %if.then10
  %.pre = load i64, i64* %lenp, align 8
  br label %out

if.end12:                                         ; preds = %if.then10
  %cmp = icmp ugt i64 %3, 4095
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  store i64 4095, i64* %left, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %10 = phi i64 [ 4095, %if.then14 ], [ %3, %if.end12 ]
  store i8* %buffer, i8** %p, align 8
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end, %if.end15
  %11 = phi i64 [ %10, %if.end15 ], [ %3, %if.end ]
  %12 = bitcast i64* %val to i8*
  %tobool33.not = icmp eq i64* %7, null
  %tobool38.not = icmp eq i64* %9, null
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %13 = phi i64 [ %11, %land.rhs.lr.ph ], [ %19, %for.inc ]
  %tobool46.not166 = phi i1 [ false, %land.rhs.lr.ph ], [ true, %for.inc ]
  %tobool55164 = phi i1 [ true, %land.rhs.lr.ph ], [ false, %for.inc ]
  %vleft.0163 = phi i32 [ %conv8, %land.rhs.lr.ph ], [ %dec, %for.inc ]
  %i.0160 = phi i64* [ %5, %land.rhs.lr.ph ], [ %incdec.ptr, %for.inc ]
  %dec = add i32 %vleft.0163, -1
  %tobool18.not = icmp eq i32 %vleft.0163, 0
  br i1 %tobool18.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #14
  store i64 0, i64* %val, align 8, !annotation !8
  br i1 %tobool6, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %neg) #14
  store i8 0, i8* %neg, align 4, !annotation !8
  %call21 = call fastcc i64 @proc_skip_spaces(i8** noundef nonnull %p) #12
  %sub = sub i64 %13, %call21
  store i64 %sub, i64* %left, align 8
  %tobool22.not = icmp eq i64 %sub, 0
  br i1 %tobool22.not, label %for.end.thread, label %if.end24

if.end24:                                         ; preds = %if.then20
  %call25 = call fastcc i32 @proc_get_long(i8** noundef nonnull %p, i64* noundef nonnull %left, i64* noundef nonnull %val, i8* noundef nonnull %neg, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @proc_wspace_sep, i64 0, i64 0), i8* noundef null) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %for.end.thread

if.end28:                                         ; preds = %if.end24
  %14 = load i8, i8* %neg, align 4, !range !7
  %tobool29.not = icmp eq i8 %14, 0
  br i1 %tobool29.not, label %if.end31, label %cleanup50

if.end31:                                         ; preds = %if.end28
  %15 = load i64, i64* %val, align 8
  %mul = mul i64 %15, %convmul
  %div32 = udiv i64 %mul, %convdiv
  br i1 %tobool33.not, label %lor.lhs.false37, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.end31
  %16 = load i64, i64* %7, align 8
  %cmp35 = icmp ult i64 %div32, %16
  br i1 %cmp35, label %for.end.thread, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %land.lhs.true34, %if.end31
  br i1 %tobool38.not, label %cleanup, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %lor.lhs.false37
  %17 = load i64, i64* %9, align 8
  %cmp40 = icmp ugt i64 %div32, %17
  br i1 %cmp40, label %for.end.thread, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false37, %land.lhs.true39
  store i64 %div32, i64* %i.0160, align 8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %neg) #14
  br label %cleanup50.thread

if.else:                                          ; preds = %for.body
  %18 = load i64, i64* %i.0160, align 8
  %mul44 = mul i64 %18, %convdiv
  %div45 = udiv i64 %mul44, %convmul
  br i1 %tobool46.not166, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.else
  call fastcc void @proc_put_char(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i8 noundef 9) #12
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.else
  call fastcc void @proc_put_long(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i64 noundef %div45, i1 noundef false) #12
  br label %cleanup50.thread

cleanup50.thread:                                 ; preds = %cleanup, %if.end48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #14
  br label %for.inc

for.end.thread:                                   ; preds = %if.then20, %if.end24, %land.lhs.true39, %land.lhs.true34
  %err.1.ph.ph = phi i32 [ 0, %if.then20 ], [ %call25, %if.end24 ], [ -22, %land.lhs.true39 ], [ -22, %land.lhs.true34 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %neg) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #14
  %tobool59146 = icmp ne i32 %err.1.ph.ph, 0
  br label %if.end61

cleanup50:                                        ; preds = %if.end28
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %neg) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #14
  br label %for.inc

for.inc:                                          ; preds = %cleanup50, %cleanup50.thread
  %incdec.ptr = getelementptr i64, i64* %i.0160, i64 1
  %19 = load i64, i64* %left, align 8
  %tobool17.not = icmp eq i64 %19, 0
  br i1 %tobool17.not, label %if.end61, label %land.rhs

for.end:                                          ; preds = %land.rhs
  %or.cond85 = or i1 %tobool6, %tobool55164
  br i1 %or.cond85, label %if.end61, label %if.end68.thread

if.end68.thread:                                  ; preds = %for.end
  call fastcc void @proc_put_char(i8** noundef nonnull %buffer.addr, i64* noundef nonnull %left, i8 noundef 10) #12
  br label %if.end74

if.end61:                                         ; preds = %for.inc, %for.end.thread, %for.end
  %tobool55158 = phi i1 [ %tobool55164, %for.end.thread ], [ %tobool55164, %for.end ], [ false, %for.inc ]
  %tobool59149 = phi i1 [ %tobool59146, %for.end.thread ], [ false, %for.end ], [ false, %for.inc ]
  %err.4148 = phi i32 [ %err.1.ph.ph, %for.end.thread ], [ 0, %for.end ], [ 0, %for.inc ]
  %tobool62 = icmp eq i32 %write, 0
  %or.cond88 = select i1 %tobool62, i1 true, i1 %tobool59149
  br i1 %or.cond88, label %if.end68, label %if.then65

if.then65:                                        ; preds = %if.end61
  %call66 = call fastcc i64 @proc_skip_spaces(i8** noundef nonnull %p) #12
  %20 = load i64, i64* %left, align 8
  %sub67 = sub i64 %20, %call66
  store i64 %sub67, i64* %left, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end61
  %tobool59149154 = phi i1 [ false, %if.then65 ], [ %tobool59149, %if.end61 ]
  %or.cond89 = and i1 %tobool6, %tobool55158
  br i1 %or.cond89, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end68
  %. = select i1 %tobool59149154, i32 %err.4148, i32 -22
  br label %cleanup76

if.end74:                                         ; preds = %if.end68.thread, %if.end68
  %err.4148155178 = phi i32 [ 0, %if.end68.thread ], [ %err.4148, %if.end68 ]
  %21 = load i64, i64* %left, align 8
  %22 = load i64, i64* %lenp, align 8
  %sub75 = sub i64 %22, %21
  store i64 %sub75, i64* %lenp, align 8
  br label %out

out:                                              ; preds = %if.then10.out_crit_edge, %if.end74
  %23 = phi i64 [ %.pre, %if.then10.out_crit_edge ], [ %sub75, %if.end74 ]
  %err.5 = phi i32 [ 0, %if.then10.out_crit_edge ], [ %err.4148155178, %if.end74 ]
  %24 = load i64, i64* %ppos, align 8
  %add = add i64 %24, %23
  store i64 %add, i64* %ppos, align 8
  br label %cleanup76

cleanup76:                                        ; preds = %out, %if.then72, %if.then
  %retval.0 = phi i32 [ %err.5, %out ], [ %., %if.then72 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clock_t_to_jiffies(i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @jiffies_to_clock_t(i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #11 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strtoul_lenient(i8* noundef %cp, i8** noundef writeonly %endp, i64* nocapture noundef writeonly %res) unnamed_addr #0 {
entry:
  %base.addr = alloca i32, align 4
  %result = alloca i64, align 8
  store i32 0, i32* %base.addr, align 4
  %0 = bitcast i64* %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %result, align 8, !annotation !8
  %call = call i8* @_parse_integer_fixup_radix(i8* noundef %cp, i32* noundef nonnull %base.addr) #13
  %1 = load i32, i32* %base.addr, align 4
  %call1 = call i32 @_parse_integer(i8* noundef %call, i32 noundef %1, i64* noundef nonnull %result) #13
  %tobool.not = icmp sgt i32 %call1, -1
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq i8** %endp, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %idx.ext = zext i32 %call1 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  store i8* %add.ptr, i8** %endp, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load i64, i64* %result, align 8
  store i64 %2, i64* %res, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -34, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @_parse_integer_fixup_radix(i8* noundef, i32* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_rt_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_rr_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_dostring_coredump(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %call = call i32 @proc_dostring(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #12
  call fastcc void @validate_coredump_safety() #12
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_taint(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %t = alloca %struct.ctl_table, align 8
  %tmptaint = alloca i64, align 8
  %0 = bitcast %struct.ctl_table* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #14
  %1 = bitcast i64* %tmptaint to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %call = call i64 @get_taint() #13
  store i64 %call, i64* %tmptaint, align 8
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i1 @capable(i32 noundef 21) #13
  br i1 %call1, label %if.end, label %cleanup18

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = bitcast %struct.ctl_table* %table to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8* noundef align 8 dereferenceable(64) %2, i64 64, i1 false)
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %t, i64 0, i32 1
  %3 = bitcast i8** %data to i64**
  store i64* %tmptaint, i64** %3, align 8
  %call2 = call i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef nonnull %t, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #12
  %cmp = icmp slt i32 %call2, 0
  %brmerge = or i1 %tobool.not, %cmp
  br i1 %brmerge, label %cleanup18, label %if.then6

if.then6:                                         ; preds = %if.end
  %4 = load i8, i8* @panic_on_taint_nousertaint, align 1, !range !7
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %for.body.preheader, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.then6
  %5 = load i64, i64* %tmptaint, align 8
  %6 = load i64, i64* @panic_on_taint, align 8
  %and = and i64 %6, %5
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %for.body.preheader, label %cleanup18

for.body.preheader:                               ; preds = %land.lhs.true8, %if.then6
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body.preheader ]
  %shl = shl nuw i64 1, %indvars.iv
  %7 = load i64, i64* %tmptaint, align 8
  %and13 = and i64 %7, %shl
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %for.inc, label %if.then15

if.then15:                                        ; preds = %for.body
  %8 = trunc i64 %indvars.iv to i32
  call void @add_taint(i32 noundef %8, i32 noundef 0) #13
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %exitcond.not, label %cleanup18, label %for.body

cleanup18:                                        ; preds = %for.inc, %if.end, %land.lhs.true8, %land.lhs.true
  %retval.1 = phi i32 [ -1, %land.lhs.true ], [ %call2, %if.end ], [ -22, %land.lhs.true8 ], [ %call2, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #14
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_do_cad_pid(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %tmp = alloca i32, align 4
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %1 = load %struct.pid*, %struct.pid** @cad_pid, align 8
  %call = call i32 @pid_vnr(%struct.pid* noundef %1) #13
  store i32 %call, i32* %tmp, align 4
  %call1 = call fastcc i32 @__do_proc_dointvec(i8* noundef nonnull %0, %struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i8*, i64*, i32*, i32, i8*)* noundef null, i8* noundef null) #12
  %tobool = icmp eq i32 %call1, 0
  %tobool2 = icmp ne i32 %write, 0
  %or.cond = and i1 %tobool2, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %tmp, align 4
  %call3 = call %struct.pid* @find_get_pid(i32 noundef %2) #13
  %tobool4.not = icmp eq %struct.pid* %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint %struct.pid* %call3 to i64
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i64 noundef %3) #13
  %4 = inttoptr i64 %call11.i to %struct.pid*
  call void @put_pid(%struct.pid* noundef %4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1, %entry ], [ -3, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysctl_max_threads(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devkmsg_sysctl_set_loglvl(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_dointvec_minmax_sysadmin(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i1 @capable(i32 noundef 21) #13
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #12
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @validate_coredump_safety() unnamed_addr #0 {
entry:
  %0 = load i32, i32* @suid_dumpable, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @core_pattern, i64 0, i64 0), align 1
  switch i8 %1, label %do.end [
    i8 47, label %if.end
    i8 124, label %if.end
  ]

do.end:                                           ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([159 x i8], [159 x i8]* @.str.51, i64 0, i64 0)) #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true, %do.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_taint() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(%struct.pid* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_get_pid(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i64 noundef %x) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) bitcast (%struct.pid** @cad_pid to i64*), i64 %x, i64* elementtype(i64) bitcast (%struct.pid** @cad_pid to i64*)) #14, !srcloc !17
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @overcommit_policy_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @overcommit_ratio_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @overcommit_kbytes_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirty_background_ratio_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirty_background_bytes_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirty_ratio_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirty_bytes_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirty_writeback_centisecs_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dirtytime_interval_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowmem_reserve_ratio_sysctl_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drop_caches_sysctl_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @min_free_kbytes_sysctl_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watermark_scale_factor_sysctl_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_pagelist_high_fraction_sysctl_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmstat_refresh(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmap_min_addr_handler(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_nr_inodes(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_nr_files(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_nr_dentry(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_dointvec_minmax_coredump(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %call = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @validate_coredump_safety() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_dopipe_max_size(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* nocapture noundef %lenp, i64* nocapture noundef %ppos) #0 {
entry:
  %call = call fastcc i32 @do_proc_douintvec(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos, i32 (i64*, i32*, i32, i8*)* noundef nonnull @do_proc_dopipe_max_size_conv, i8* noundef null) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @do_proc_dopipe_max_size_conv(i64* nocapture noundef %lvalp, i32* nocapture noundef %valp, i32 noundef %write, i8* nocapture noundef readnone %data) #0 {
entry:
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %lvalp, align 8
  %call = call i32 @round_pipe_size(i64 noundef %0) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  store i32 %call, i32* %valp, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %valp, align 4
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %lvalp, align 8
  br label %return

return:                                           ; preds = %if.else, %cleanup.thread, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ 0, %cleanup.thread ], [ 0, %if.else ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_pipe_size(i64 noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i8 0, i8 2}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148817054}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148818800}
!13 = !{i64 2148821185}
!14 = !{i64 2148822931}
!15 = !{i64 1520653}
!16 = !{i32 (i64*, i32*, i32, i8*)* @do_proc_dopipe_max_size_conv, i32 (i64*, i32*, i32, i8*)* @do_proc_douintvec_conv, i32 (i64*, i32*, i32, i8*)* @do_proc_douintvec_minmax_conv}
!17 = !{i64 2147994503, i64 2147994535, i64 2147994579, i64 2147994626, i64 2147994652}
