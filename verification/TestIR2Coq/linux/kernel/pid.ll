; ModuleID = 'kernel/pid.c'
source_filename = "kernel/pid.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.137, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.4 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.5, [0 x i64] }
%struct.anon.5 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.6, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.6 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.7, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.8, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.7 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.8 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.9, %union.anon.118, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.158, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.159, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.160, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.161, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.101, %struct.list_head, %struct.list_head, %union.anon.102 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.101 = type { %struct.list_head }
%union.anon.102 = type { %struct.hlist_node }
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
%struct.sock = type { %struct.sock_common, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff*, %struct.sk_buff_head, %struct.anon.46, i32, i32, %struct.sk_filter*, %union.anon.78, %struct.dst_entry*, %struct.dst_entry*, %struct.atomic_t, i32, i32, %struct.refcount_struct, i64, %union.anon.89, %struct.sk_buff*, %struct.sk_buff_head, i32, i32, i32, i32, i64, %struct.timer_list, i32, i32, i64, i64, %struct.page_frag, i64, i64, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i64, %struct.proto*, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, %struct.spinlock, %struct.pid*, %struct.cred*, i64, i64, i16, i32, i8, i32, %struct.atomic_t, i8, i8, %struct.socket*, i8*, %struct.sock_cgroup_data, %struct.mem_cgroup*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*)*, %struct.sock_reuseport*, %struct.callback_head }
%struct.sock_common = type { %union.anon.17, %union.anon.19, %union.anon.20, i16, i8, i8, i32, %union.anon.22, %struct.proto*, %struct.possible_net_t, %struct.atomic64_t, %union.anon.42, [0 x i32], %union.anon.43, i16, %union.anon.44, %struct.refcount_struct, [0 x i32], %union.anon.45 }
%union.anon.17 = type { i64 }
%union.anon.19 = type { i32 }
%union.anon.20 = type { i32 }
%union.anon.22 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%union.anon.42 = type { i64 }
%union.anon.43 = type { %struct.hlist_node }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.46 = type { %struct.atomic_t, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_filter = type { %struct.refcount_struct, %struct.callback_head, %struct.bpf_prog* }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], %struct.bpf_prog_stats*, i32*, i32 (i8*, %struct.bpf_insn*)*, %struct.bpf_prog_aux*, %struct.sock_fprog_kern*, [0 x %struct.sock_filter], [0 x %struct.bpf_insn] }
%struct.bpf_prog_stats = type { i64, i64, i64, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_sync = type {}
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, %struct.bpf_ctx_arg_aux*, %struct.mutex, %struct.bpf_prog*, %struct.bpf_trampoline*, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, %struct.btf_type*, i8*, %struct.bpf_prog**, i8*, %struct.bpf_jit_poke_descriptor*, %struct.bpf_kfunc_desc_tab*, i32, %struct.bpf_ksym, %struct.bpf_prog_ops*, %struct.bpf_map**, %struct.mutex, %struct.btf_mod_pair*, %struct.bpf_prog*, %struct.user_struct*, i64, [2 x %struct.bpf_map*], [16 x i8], %struct.bpf_prog_offload*, %struct.btf*, %struct.bpf_func_info*, %struct.bpf_func_info_aux*, %struct.bpf_line_info*, i8**, i32, i32, i32, i32, %struct.exception_table_entry*, %union.anon.77 }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_trampoline = type { %struct.hlist_node, %struct.mutex, %struct.refcount_struct, i64, %struct.anon.47, %struct.bpf_prog*, [3 x %struct.hlist_head], [3 x i32], %struct.bpf_tramp_image*, i64, %struct.module* }
%struct.anon.47 = type { %struct.btf_func_model, i8*, i8 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.bpf_tramp_image = type { i8*, %struct.bpf_ksym, %struct.percpu_ref, i8*, i8*, %union.anon.48 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%union.anon.48 = type { %struct.work_struct }
%struct.btf_type = type opaque
%struct.bpf_jit_poke_descriptor = type { i8*, i8*, i8*, i8*, %union.anon.49, i8, i8, i16, i32 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { %struct.bpf_map*, i32 }
%struct.bpf_map = type { %struct.bpf_map_ops*, %struct.bpf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, [16 x i8], i32, i8, i8, [34 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, i64, [40 x i8] }
%struct.bpf_map_ops = type { i32 (%union.bpf_attr*)*, %struct.bpf_map* (%union.bpf_attr*)*, void (%struct.bpf_map*, %struct.file*)*, void (%struct.bpf_map*)*, i32 (%struct.bpf_map*, i8*, i8*)*, void (%struct.bpf_map*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*)*, i8* (%struct.bpf_map*, %struct.file*, i32)*, void (i8*)*, i32 (%struct.bpf_map*, %struct.bpf_insn*)*, i32 (i8*)*, void (%struct.bpf_map*, i8*, %struct.seq_file*)*, i32 (%struct.bpf_map*, %struct.btf*, %struct.btf_type*, %struct.btf_type*)*, i32 (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, i32, %struct.bpf_prog*, %struct.bpf_prog*)*, i32 (%struct.bpf_map*, i64*, i32)*, i32 (%struct.bpf_map*, i64, i32*)*, i32 (%struct.bpf_map*, %struct.vm_area_struct*)*, i32 (%struct.bpf_map*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.bpf_local_storage_map*, i8*, i32)*, void (%struct.bpf_local_storage_map*, i8*, i32)*, %struct.bpf_local_storage** (i8*)*, i32 (%struct.bpf_map*, i32, i64)*, i1 (%struct.bpf_map*, %struct.bpf_map*)*, i32 (%struct.bpf_verifier_env*, %struct.bpf_func_state*, %struct.bpf_func_state*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i8*, i32*, %struct.bpf_iter_seq_info* }
%union.bpf_attr = type { %struct.anon.55 }
%struct.anon.55 = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, [16 x i8], i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, %union.anon.56, i32, i64 }
%union.anon.56 = type { i32 }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.bpf_prog_offload = type { %struct.bpf_prog*, %struct.net_device*, %struct.bpf_offload_dev*, i8*, %struct.list_head, i8, i8, i8*, i32 }
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.139, i32, i32, %struct.net_device_ops*, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.ethtool_ops*, %struct.header_ops*, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, [40 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, %struct.refcount_struct, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, i8*, i32, %union.anon.157, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.139 = type { %struct.list_head, %struct.list_head }
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.if_settings*)*, i32 (%struct.net_device*, %struct.ifreq*, i8*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, %struct.net_device* (%struct.net_device*, %struct.sock*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, %struct.net_device* (%struct.net_device*, %struct.xdp_buff*)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)*, i32 (%struct.net_device_path_ctx*, %struct.net_device_path*)* }
%struct.ifreq = type { %union.anon.140, %union.anon.141 }
%union.anon.140 = type { [16 x i8] }
%union.anon.141 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.if_settings = type { i32, i32, %union.anon.142 }
%union.anon.142 = type { %struct.raw_hdlc_proto* }
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
%struct.nla_policy = type { i8, i8, i16, %union.anon.86 }
%union.anon.86 = type { i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.neigh_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.neigh_hash_table = type { %struct.neighbour**, i32, [4 x i32], %struct.callback_head }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.143 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.143 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.netdev_bpf = type { i32, %union.anon.144 }
%union.anon.144 = type { %struct.anon.145 }
%struct.anon.145 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, %struct.xdp_rxq_info*, %struct.xdp_txq_info*, i32 }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, i32, [36 x i8] }
%struct.xdp_txq_info = type { %struct.net_device* }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.net_device_path_ctx = type { %struct.net_device*, i8*, i32, [2 x %struct.anon.148] }
%struct.anon.148 = type { i16, i16 }
%struct.net_device_path = type { i32, %struct.net_device*, %union.anon.149 }
%union.anon.149 = type { %struct.anon.151, [4 x i8] }
%struct.anon.151 = type { i32, i16, i16 }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ops = type opaque
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)*, i1 (i8*, i32)*, i16 (%struct.sk_buff*)* }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.in_device = type opaque
%struct.inet6_dev = type opaque
%struct.wireless_dev = type opaque
%struct.wpan_dev = type opaque
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, %struct.kobject, %struct.net_device*, [56 x i8] }
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i64, i64, %struct.net_device*, [16 x i8], %struct.spinlock, i32, i64, i64, [40 x i8] }
%struct.Qdisc = type { i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, i32, i32, %struct.Qdisc_ops*, %struct.qdisc_size_table*, %struct.hlist_node, i32, i32, %struct.netdev_queue*, %struct.net_rate_estimator*, %struct.gnet_stats_basic_cpu*, %struct.gnet_stats_queue*, i32, %struct.refcount_struct, [24 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_packed, %struct.seqcount, %struct.gnet_stats_queue, i64, %struct.Qdisc*, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.callback_head, [40 x i8], [0 x i64] }
%struct.Qdisc_ops = type { %struct.Qdisc_ops*, %struct.Qdisc_class_ops*, [16 x i8], i32, i32, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, %struct.sk_buff*)*, i32 (%struct.Qdisc*, %struct.gnet_dump*)*, void (%struct.Qdisc*, i32)*, void (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)*, %struct.module* }
%struct.Qdisc_class_ops = type { i32, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, %struct.Qdisc* (%struct.Qdisc*, i64)*, void (%struct.Qdisc*, i64)*, i64 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*, %struct.qdisc_walker*)*, %struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc*, i64, i32)*, void (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type opaque
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, %struct.net*, %struct.Qdisc*, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.153, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.82, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
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
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.84, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.84 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.85 }
%union.anon.85 = type { [4 x i32] }
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
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.88 }
%union.anon.88 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.flow_block = type { %struct.list_head }
%struct.anon.153 = type { %struct.tcf_chain*, %struct.list_head }
%struct.tcf_chain = type { %struct.mutex, %struct.tcf_proto*, %struct.list_head, %struct.tcf_block*, i32, i32, i32, i8, i8, %struct.tcf_proto_ops*, i8*, %struct.callback_head }
%struct.tcf_proto = type { %struct.tcf_proto*, i8*, i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i16, i32, i8*, %struct.tcf_proto_ops*, %struct.tcf_chain*, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.tcf_result = type { %union.anon.154 }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type { i64, i32 }
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
%union.anon.157 = type { %struct.pcpu_lstats* }
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
%union.anon.77 = type { %struct.work_struct }
%struct.sock_fprog_kern = type { i16, %struct.sock_filter* }
%struct.sock_filter = type { i16, i8, i8, i32 }
%union.anon.78 = type { %struct.socket_wq* }
%struct.socket_wq = type { %struct.wait_queue_head, %struct.fasync_struct*, i64, %struct.callback_head, [8 x i8] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.dst_entry = type { %struct.net_device*, %struct.dst_ops*, i64, i64, i8*, i32 (%struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i16, i16, i16, i16, %struct.atomic_t, i32, i64, %struct.lwtunnel_state*, %struct.callback_head, i16, i16, i32 }
%struct.dst_ops = type { i16, i32, i32 (%struct.dst_ops*)*, %struct.dst_entry* (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)*, i32* (%struct.dst_entry*, i64)*, void (%struct.dst_entry*)*, void (%struct.dst_entry*, %struct.net_device*, i32)*, %struct.dst_entry* (%struct.dst_entry*)*, void (%struct.sk_buff*)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32, i1)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, %struct.neighbour* (%struct.dst_entry*, %struct.sk_buff*, i8*)*, void (%struct.dst_entry*, i8*)*, %struct.kmem_cache*, %struct.percpu_counter, [40 x i8] }
%struct.lwtunnel_state = type opaque
%union.anon.89 = type { %struct.sk_buff* }
%struct.sk_buff = type { %union.anon.30, %union.anon.33, %union.anon.34, [48 x i8], %union.anon.35, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.37, i32, i32, i32, i16, i16, %union.anon.39, %union.anon.40, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.32 }
%union.anon.32 = type { %struct.net_device* }
%union.anon.33 = type { %struct.sock* }
%union.anon.34 = type { i64 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { i64, void (%struct.sk_buff*)* }
%union.anon.37 = type { i32 }
%union.anon.39 = type { i32 }
%union.anon.40 = type { i16 }
%struct.sk_buff_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.proto = type { void (%struct.sock*, i64)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, i32)*, %struct.sock* (%struct.sock*, i32, i32*, i1)*, i32 (%struct.sock*, i32, i64)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, i32, i32, [2 x i64], i32)*, i32 (%struct.sock*, i32, i32, i8*, i32*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sk_buff*)*, i1 (i32, i32)*, void (%struct.sock*)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, i16)*, i32, i1 (%struct.sock*, i32)*, i1 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, %struct.atomic64_t*, %struct.percpu_counter*, i64*, i64*, i32*, i32*, i32, i32, i32, i8, %struct.kmem_cache*, i32, i32, i32, i32, %struct.percpu_counter*, %struct.request_sock_ops*, %struct.timewait_sock_ops*, %union.anon.41, %struct.module*, [32 x i8], %struct.list_head, i32 (%struct.sock*, i32)* }
%struct.msghdr = type { i8*, i32, %struct.iov_iter, %union.anon.28, i8, i64, i32, %struct.kiocb* }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.23, %union.anon.26 }
%union.anon.23 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.26 = type { i64 }
%union.anon.28 = type { i8* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.29 }
%union.anon.29 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.sockaddr = type { i16, [14 x i8] }
%struct.request_sock_ops = type opaque
%struct.timewait_sock_ops = type opaque
%union.anon.41 = type { %struct.inet_hashinfo* }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.24, %struct.qspinlock }
%union.anon.24 = type { %struct.atomic_t }
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
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.158 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.159 = type { %struct.callback_head }
%union.anon.160 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.103 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.103 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.161 = type { %struct.pipe_inode_info* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.118 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.119 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.81 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.81 = type { %struct.callback_head }
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
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.124 }
%struct.anon.124 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.136, i32, [12 x i8] }
%union.anon.136 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.137 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.138, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.138 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kmem_cache = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.79 }
%union.anon.79 = type { %struct.anon.80, [48 x i8] }
%struct.anon.80 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type { i8*, i8*, i32, %struct.ns_common* (%struct.task_struct*)*, void (%struct.ns_common*)*, i32 (%struct.nsset*, %struct.ns_common*)*, %struct.user_namespace* (%struct.ns_common*)*, %struct.ns_common* (%struct.ns_common*)* }
%struct.nsset = type { i32, %struct.nsproxy*, %struct.fs_struct*, %struct.cred* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pt_regs = type { %union.anon.164, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.164 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@init_pid_ns = dso_local global %struct.pid_namespace { %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, i8* null }, i32 0, i32 0 }, %struct.callback_head zeroinitializer, i32 -2147483648, %struct.task_struct* @init_task, %struct.kmem_cache* null, i32 0, %struct.pid_namespace* null, %struct.user_namespace* @init_user_ns, %struct.ucounts* null, i32 0, %struct.ns_common { %struct.atomic64_t zeroinitializer, %struct.proc_ns_operations* null, i32 -268435460, %struct.refcount_struct { %struct.atomic_t { i32 2 } } } }, align 8
@init_struct_pid = dso_local local_unnamed_addr global %struct.pid { %struct.refcount_struct { %struct.atomic_t { i32 1 } }, i32 0, %struct.spinlock zeroinitializer, [4 x %struct.hlist_head] zeroinitializer, %struct.hlist_head zeroinitializer, %struct.wait_queue_head zeroinitializer, %struct.callback_head zeroinitializer, [1 x %struct.upid] [%struct.upid { i32 0, %struct.pid_namespace* @init_pid_ns }] }, align 8
@pid_max = dso_local local_unnamed_addr global i32 32768, align 4
@pid_max_min = dso_local local_unnamed_addr global i32 301, align 4
@pid_max_max = dso_local local_unnamed_addr global i32 4194304, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@pidmap_lock = internal global %struct.spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@alloc_pid.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [17 x i8] c"&pid->wait_pidfd\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[pidfd]\00", align 1
@pidfd_fops = external dso_local constant %struct.file_operations, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"\016pid_max: default: %u minimum: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_pid(%struct.pid* noundef %pid) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %level = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 1
  %0 = load i32, i32* %level, align 4
  %idxprom = zext i32 %0 to i64
  %ns1 = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 %idxprom, i32 1
  %1 = load %struct.pid_namespace*, %struct.pid_namespace** %ns1, align 8
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %count) #11
  br i1 %call, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %pid_cachep = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %1, i64 0, i32 4
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** %pid_cachep, align 8
  %3 = bitcast %struct.pid* %pid to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %2, i8* noundef nonnull %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #11
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_pid(%struct.pid* noundef %pid) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pidmap_lock, i64 0, i32 0, i32 0)) #11
  %level = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %entry, %sw.epilog
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %sw.epilog ]
  %idx.ext = sext i32 %i.045 to i64
  %ns7 = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 %idx.ext, i32 1
  %0 = load %struct.pid_namespace*, %struct.pid_namespace** %ns7, align 8
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %0, i64 0, i32 2
  %1 = load i32, i32* %pid_allocated, align 8
  %dec = add i32 %1, -1
  store i32 %dec, i32* %pid_allocated, align 8
  switch i32 %1, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 -2147483647, label %sw.bb9
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %child_reaper = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %0, i64 0, i32 3
  %2 = load %struct.task_struct*, %struct.task_struct** %child_reaper, align 8
  %call8 = call i32 @wake_up_process(%struct.task_struct* noundef %2) #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  %child_reaper10 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %0, i64 0, i32 3
  %3 = load %struct.task_struct*, %struct.task_struct** %child_reaper10, align 8
  %tobool.not = icmp eq %struct.task_struct* %3, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %sw.bb9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/pid.c\22; .popsection; .long 14472b - 14470b; .short 147; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb9
  store i32 0, i32* %pid_allocated, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %if.end, %sw.bb
  %idr = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %0, i64 0, i32 0
  %nr = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 %idx.ext, i32 0
  %4 = load i32, i32* %nr, align 8
  %conv28 = sext i32 %4 to i64
  %call29 = call i8* @idr_remove(%struct.idr* noundef %idr, i64 noundef %conv28) #12
  %inc = add i32 %i.045, 1
  %5 = load i32, i32* %level, align 4
  %cmp5.not = icmp ugt i32 %inc, %5
  br i1 %cmp5.not, label %for.end, label %for.body

for.end:                                          ; preds = %sw.epilog
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #12
  %rcu = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 6
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @delayed_put_pid) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #11
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @idr_remove(%struct.idr* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @delayed_put_pid(%struct.callback_head* noundef %rhp) #0 {
entry:
  %add.ptr3 = getelementptr %struct.callback_head, %struct.callback_head* %rhp, i64 -5
  %0 = bitcast %struct.callback_head* %add.ptr3 to %struct.pid*
  call void @put_pid(%struct.pid* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pid* @alloc_pid(%struct.pid_namespace* noundef %ns, i32* nocapture noundef readonly %set_tid, i64 noundef %set_tid_size) local_unnamed_addr #0 {
entry:
  %level = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %ns, i64 0, i32 5
  %0 = load i32, i32* %level, align 8
  %add = add i32 %0, 1
  %conv = zext i32 %add to i64
  %cmp = icmp ult i64 %conv, %set_tid_size
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #11
  br label %cleanup120

if.end:                                           ; preds = %entry
  %pid_cachep = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %ns, i64 0, i32 4
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** %pid_cachep, align 8
  %call3 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #12
  %tobool.not = icmp eq i8* %call3, null
  br i1 %tobool.not, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef -12) #11
  br label %cleanup120

if.end7:                                          ; preds = %if.end
  %2 = load i32, i32* %level, align 8
  %level9 = getelementptr inbounds i8, i8* %call3, i64 4
  %3 = bitcast i8* %level9 to i32*
  store i32 %2, i32* %3, align 4
  %cmp11206 = icmp sgt i32 %2, -1
  br i1 %cmp11206, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %numbers = getelementptr inbounds i8, i8* %call3, i64 96
  %4 = bitcast i8* %numbers to [1 x %struct.upid]*
  %5 = zext i32 %2 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %tmp.0209 = phi %struct.pid_namespace* [ %ns, %for.body.lr.ph ], [ %14, %for.inc ]
  %set_tid_size.addr.0207 = phi i64 [ %set_tid_size, %for.body.lr.ph ], [ %set_tid_size.addr.1, %for.inc ]
  %tobool13.not = icmp eq i64 %set_tid_size.addr.0207, 0
  br i1 %tobool13.not, label %if.end30, label %if.then14

if.then14:                                        ; preds = %for.body
  %6 = load i32, i32* %level, align 8
  %7 = trunc i64 %indvars.iv to i32
  %sub = sub i32 %6, %7
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr i32, i32* %set_tid, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp16 = icmp sgt i32 %8, 0
  %9 = load i32, i32* @pid_max, align 4
  %cmp18.not = icmp slt i32 %8, %9
  %or.cond = select i1 %cmp16, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %if.end21, label %out_free.loopexit

if.end21:                                         ; preds = %if.then14
  %cmp22.not = icmp eq i32 %8, 1
  br i1 %cmp22.not, label %if.end26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end21
  %child_reaper = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %tmp.0209, i64 0, i32 3
  %10 = load %struct.task_struct*, %struct.task_struct** %child_reaper, align 8
  %tobool24.not = icmp eq %struct.task_struct* %10, null
  br i1 %tobool24.not, label %out_free.loopexit, label %if.end26

if.end26:                                         ; preds = %land.lhs.true, %if.end21
  %user_ns = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %tmp.0209, i64 0, i32 7
  %11 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call27 = call fastcc i1 @checkpoint_restore_ns_capable(%struct.user_namespace* noundef %11) #11
  br i1 %call27, label %if.end29, label %out_free.loopexit

if.end29:                                         ; preds = %if.end26
  %dec = add i64 %set_tid_size.addr.0207, -1
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %for.body
  %set_tid_size.addr.1 = phi i64 [ %dec, %if.end29 ], [ 0, %for.body ]
  %tid.0 = phi i32 [ %8, %if.end29 ], [ 0, %for.body ]
  call void @idr_preload(i32 noundef 3264) #12
  call fastcc void @__raw_spin_lock_irq() #12
  %tobool31.not = icmp eq i32 %tid.0, 0
  %idr39 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %tmp.0209, i64 0, i32 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end30
  %add33 = add nuw nsw i32 %tid.0, 1
  %call34 = call i32 @idr_alloc(%struct.idr* noundef %idr39, i8* noundef null, i32 noundef %tid.0, i32 noundef %add33, i32 noundef 2592) #12
  %cmp35 = icmp eq i32 %call34, -28
  %spec.select227 = select i1 %cmp35, i32 -17, i32 %call34
  br label %if.end47

if.else:                                          ; preds = %if.end30
  %call40 = call fastcc i32 @idr_get_cursor(%struct.idr* noundef %idr39) #11
  %cmp41 = icmp ugt i32 %call40, 300
  %spec.select = select i1 %cmp41, i32 300, i32 1
  %12 = load i32, i32* @pid_max, align 4
  %call46 = call i32 @idr_alloc_cyclic(%struct.idr* noundef %idr39, i8* noundef null, i32 noundef %spec.select, i32 noundef %12, i32 noundef 2592) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then32, %if.else
  %nr.0 = phi i32 [ %call46, %if.else ], [ %spec.select227, %if.then32 ]
  call fastcc void @__raw_spin_unlock_irq() #12
  call fastcc void @idr_preload_end() #11
  %cmp48 = icmp slt i32 %nr.0, 0
  br i1 %cmp48, label %if.then50, label %for.inc

if.then50:                                        ; preds = %if.end47
  %13 = trunc i64 %indvars.iv to i32
  %cmp51 = icmp eq i32 %nr.0, -28
  %cond = select i1 %cmp51, i32 -11, i32 %nr.0
  %phi.cast = sext i32 %cond to i64
  br label %out_free

for.inc:                                          ; preds = %if.end47
  %nr56 = getelementptr [1 x %struct.upid], [1 x %struct.upid]* %4, i64 0, i64 %indvars.iv, i32 0
  store i32 %nr.0, i32* %nr56, align 8
  %ns60 = getelementptr [1 x %struct.upid], [1 x %struct.upid]* %4, i64 0, i64 %indvars.iv, i32 1
  store %struct.pid_namespace* %tmp.0209, %struct.pid_namespace** %ns60, align 8
  %parent = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %tmp.0209, i64 0, i32 6
  %14 = load %struct.pid_namespace*, %struct.pid_namespace** %parent, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp11 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp11, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end7
  %i.0.lcssa = phi i32 [ %2, %if.end7 ], [ -1, %for.inc ]
  %count = bitcast i8* %call3 to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef nonnull %count) #11
  %lock = getelementptr inbounds i8, i8* %call3, i64 8
  %15 = bitcast i8* %lock to i32*
  store i32 0, i32* %15, align 8
  %tasks = getelementptr inbounds i8, i8* %call3, i64 16
  %first = bitcast i8* %tasks to %struct.hlist_node**
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  %first.1 = getelementptr i8, i8* %call3, i64 24
  %16 = bitcast i8* %first.1 to %struct.hlist_node**
  store %struct.hlist_node* null, %struct.hlist_node** %16, align 8
  %first.2 = getelementptr i8, i8* %call3, i64 32
  %17 = bitcast i8* %first.2 to %struct.hlist_node**
  store %struct.hlist_node* null, %struct.hlist_node** %17, align 8
  %first.3 = getelementptr i8, i8* %call3, i64 40
  %18 = bitcast i8* %first.3 to %struct.hlist_node**
  store %struct.hlist_node* null, %struct.hlist_node** %18, align 8
  %wait_pidfd = getelementptr inbounds i8, i8* %call3, i64 56
  %19 = bitcast i8* %wait_pidfd to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %19, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_pid.__key) #12
  %inodes = getelementptr inbounds i8, i8* %call3, i64 48
  %first76 = bitcast i8* %inodes to %struct.hlist_node**
  store %struct.hlist_node* null, %struct.hlist_node** %first76, align 8
  %numbers77 = getelementptr inbounds i8, i8* %call3, i64 96
  %arraydecay = bitcast i8* %numbers77 to %struct.upid*
  %20 = load i32, i32* %level, align 8
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr %struct.upid, %struct.upid* %arraydecay, i64 %idx.ext
  call fastcc void @__raw_spin_lock_irq() #12
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %ns, i64 0, i32 2
  %21 = load i32, i32* %pid_allocated, align 8
  %tobool79.not = icmp sgt i32 %21, -1
  br i1 %tobool79.not, label %out_unlock, label %for.cond82.preheader

for.cond82.preheader:                             ; preds = %for.end
  %cmp85.not212 = icmp ult %struct.upid* %add.ptr, %arraydecay
  br i1 %cmp85.not212, label %for.end97, label %for.body87

for.body87:                                       ; preds = %for.cond82.preheader, %for.body87
  %upid.0213 = phi %struct.upid* [ %incdec.ptr, %for.body87 ], [ %add.ptr, %for.cond82.preheader ]
  %ns88 = getelementptr inbounds %struct.upid, %struct.upid* %upid.0213, i64 0, i32 1
  %22 = load %struct.pid_namespace*, %struct.pid_namespace** %ns88, align 8
  %idr89 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %22, i64 0, i32 0
  %nr90 = getelementptr inbounds %struct.upid, %struct.upid* %upid.0213, i64 0, i32 0
  %23 = load i32, i32* %nr90, align 8
  %conv91 = sext i32 %23 to i64
  %call92 = call i8* @idr_replace(%struct.idr* noundef %idr89, i8* noundef nonnull %call3, i64 noundef %conv91) #12
  %24 = load %struct.pid_namespace*, %struct.pid_namespace** %ns88, align 8
  %pid_allocated94 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %24, i64 0, i32 2
  %25 = load i32, i32* %pid_allocated94, align 8
  %inc95 = add i32 %25, 1
  store i32 %inc95, i32* %pid_allocated94, align 8
  %incdec.ptr = getelementptr %struct.upid, %struct.upid* %upid.0213, i64 -1
  %cmp85.not = icmp ult %struct.upid* %incdec.ptr, %arraydecay
  br i1 %cmp85.not, label %for.end97, label %for.body87

for.end97:                                        ; preds = %for.body87, %for.cond82.preheader
  call fastcc void @__raw_spin_unlock_irq() #12
  br label %cleanup120

out_unlock:                                       ; preds = %for.end
  call fastcc void @__raw_spin_unlock_irq() #12
  br label %out_free

out_free.loopexit:                                ; preds = %if.then14, %land.lhs.true, %if.end26
  %retval1.3.ph = phi i64 [ -22, %if.then14 ], [ -22, %land.lhs.true ], [ -1, %if.end26 ]
  %26 = trunc i64 %indvars.iv to i32
  br label %out_free

out_free:                                         ; preds = %out_free.loopexit, %if.then50, %out_unlock
  %i.0205 = phi i32 [ %i.0.lcssa, %out_unlock ], [ %13, %if.then50 ], [ %26, %out_free.loopexit ]
  %retval1.3 = phi i64 [ -12, %out_unlock ], [ %phi.cast, %if.then50 ], [ %retval1.3.ph, %out_free.loopexit ]
  call fastcc void @__raw_spin_lock_irq() #12
  %inc98214 = add i32 %i.0205, 1
  %27 = load i32, i32* %level, align 8
  %cmp100.not215 = icmp ugt i32 %inc98214, %27
  br i1 %cmp100.not215, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %out_free
  %numbers102 = getelementptr inbounds i8, i8* %call3, i64 96
  %arraydecay103 = bitcast i8* %numbers102 to %struct.upid*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inc98216 = phi i32 [ %inc98214, %while.body.lr.ph ], [ %inc98, %while.body ]
  %idx.ext104 = sext i32 %inc98216 to i64
  %ns106 = getelementptr %struct.upid, %struct.upid* %arraydecay103, i64 %idx.ext104, i32 1
  %28 = load %struct.pid_namespace*, %struct.pid_namespace** %ns106, align 8
  %idr107 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %28, i64 0, i32 0
  %nr108 = getelementptr %struct.upid, %struct.upid* %arraydecay103, i64 %idx.ext104, i32 0
  %29 = load i32, i32* %nr108, align 8
  %conv109 = sext i32 %29 to i64
  %call110 = call i8* @idr_remove(%struct.idr* noundef %idr107, i64 noundef %conv109) #12
  %inc98 = add i32 %inc98216, 1
  %30 = load i32, i32* %level, align 8
  %cmp100.not = icmp ugt i32 %inc98, %30
  br i1 %cmp100.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %out_free
  %pid_allocated111 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %ns, i64 0, i32 2
  %31 = load i32, i32* %pid_allocated111, align 8
  %cmp112 = icmp eq i32 %31, -2147483648
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %while.end
  %idr115 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %ns, i64 0, i32 0
  call fastcc void @idr_set_cursor(%struct.idr* noundef %idr115) #11
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %while.end
  call fastcc void @__raw_spin_unlock_irq() #12
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %pid_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %32, i8* noundef nonnull %call3) #12
  %call119 = call fastcc i8* @ERR_PTR(i64 noundef %retval1.3) #11
  br label %cleanup120

cleanup120:                                       ; preds = %if.end116, %for.end97, %if.then4, %if.then
  %retval.0.in = phi i8* [ %call, %if.then ], [ %call119, %if.end116 ], [ %call3, %for.end97 ], [ %call6, %if.then4 ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.pid*
  ret %struct.pid* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #2 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @checkpoint_restore_ns_capable(%struct.user_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %call = call i1 @ns_capable(%struct.user_namespace* noundef %ns, i32 noundef 40) #12
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call1 = call i1 @ns_capable(%struct.user_namespace* noundef %ns, i32 noundef 21) #12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(%struct.idr* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @idr_get_cursor(%struct.idr* noundef %idr) unnamed_addr #3 {
entry:
  %idr_next = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 2
  %0 = load volatile i32, i32* %idr_next, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(%struct.idr* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @idr_preload_end() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @idr_replace(%struct.idr* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @idr_set_cursor(%struct.idr* noundef %idr) unnamed_addr #4 {
entry:
  %idr_next = getelementptr inbounds %struct.idr, %struct.idr* %idr, i64 0, i32 2
  store volatile i32 0, i32* %idr_next, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disable_pid_allocation(%struct.pid_namespace* nocapture noundef %ns) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock_irq() #12
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %ns, i64 0, i32 2
  %0 = load i32, i32* %pid_allocated, align 8
  %and = and i32 %0, 2147483647
  store i32 %and, i32* %pid_allocated, align 8
  call fastcc void @__raw_spin_unlock_irq() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pid* @find_pid_ns(i32 noundef %nr, %struct.pid_namespace* noundef %ns) local_unnamed_addr #0 {
entry:
  %idr = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %ns, i64 0, i32 0
  %conv = sext i32 %nr to i64
  %call = call i8* @idr_find(%struct.idr* noundef %idr, i64 noundef %conv) #12
  %0 = bitcast i8* %call to %struct.pid*
  ret %struct.pid* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @idr_find(%struct.idr* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pid* @find_vpid(i32 noundef %nr) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %1) #11
  %call2 = call %struct.pid* @find_pid_ns(i32 noundef %nr, %struct.pid_namespace* noundef %call1) #11
  ret %struct.pid* %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* nocapture noundef readonly %tsk) local_unnamed_addr #5 {
entry:
  %call = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %tsk) #11
  %call1 = call fastcc %struct.pid_namespace* @ns_of_pid(%struct.pid* noundef %call) #11
  ret %struct.pid_namespace* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @attach_pid(%struct.task_struct* noundef %task, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pid** @task_pid_ptr(%struct.task_struct* noundef %task, i32 noundef %type) #11
  %0 = load %struct.pid*, %struct.pid** %call, align 8
  %idxprom = zext i32 %type to i64
  %arrayidx = getelementptr %struct.task_struct, %struct.task_struct* %task, i64 0, i32 60, i64 %idxprom
  %arrayidx2 = getelementptr %struct.pid, %struct.pid* %0, i64 0, i32 3, i64 %idxprom
  call fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %arrayidx, %struct.hlist_head* noundef %arrayidx2) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid** @task_pid_ptr(%struct.task_struct* noundef readonly %task, i32 noundef %type) unnamed_addr #5 {
entry:
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  br label %cond.end

cond.false:                                       ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %type to i64
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.pid** [ %thread_pid, %cond.true ], [ %arrayidx, %cond.false ]
  ret %struct.pid** %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #0 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev, align 8
  %1 = ptrtoint %struct.hlist_node* %n to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_node** elementtype(%struct.hlist_node*) %first1, i64 %1) #13, !srcloc !13
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end41, label %do.body34

do.body34:                                        ; preds = %entry
  %pprev36 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev36, align 8
  br label %if.end41

if.end41:                                         ; preds = %do.body34, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @detach_pid(%struct.task_struct* noundef %task, i32 noundef %type) local_unnamed_addr #0 {
entry:
  call fastcc void @__change_pid(%struct.task_struct* noundef %task, i32 noundef %type, %struct.pid* noundef null) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__change_pid(%struct.task_struct* noundef %task, i32 noundef %type, %struct.pid* noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pid** @task_pid_ptr(%struct.task_struct* noundef %task, i32 noundef %type) #11
  %0 = load %struct.pid*, %struct.pid** %call, align 8
  %idxprom = zext i32 %type to i64
  %arrayidx = getelementptr %struct.task_struct, %struct.task_struct* %task, i64 0, i32 60, i64 %idxprom
  call fastcc void @hlist_del_rcu(%struct.hlist_node* noundef %arrayidx) #11
  store %struct.pid* %new, %struct.pid** %call, align 8
  %call1 = call fastcc i1 @pid_has_task(%struct.pid* noundef %0, i32 noundef 3) #11
  br i1 %call1, label %cleanup, label %for.cond.1

for.cond.1:                                       ; preds = %entry
  %call1.1 = call fastcc i1 @pid_has_task(%struct.pid* noundef %0, i32 noundef 2) #11
  br i1 %call1.1, label %cleanup, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %call1.2 = call fastcc i1 @pid_has_task(%struct.pid* noundef %0, i32 noundef 1) #11
  br i1 %call1.2, label %cleanup, label %for.cond.3

for.cond.3:                                       ; preds = %for.cond.2
  %call1.3 = call fastcc i1 @pid_has_task(%struct.pid* noundef %0, i32 noundef 0) #11
  br i1 %call1.3, label %cleanup, label %for.end

for.end:                                          ; preds = %for.cond.3
  call void @free_pid(%struct.pid* noundef %0) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.cond.1, %for.cond.2, %for.cond.3, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @change_pid(%struct.task_struct* noundef %task, i32 noundef %type, %struct.pid* noundef %pid) local_unnamed_addr #0 {
entry:
  call fastcc void @__change_pid(%struct.task_struct* noundef %task, i32 noundef %type, %struct.pid* noundef %pid) #11
  call void @attach_pid(%struct.task_struct* noundef %task, i32 noundef %type) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exchange_tids(%struct.task_struct* noundef %left, %struct.task_struct* noundef %right) local_unnamed_addr #0 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %left, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  %thread_pid1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %right, i64 0, i32 59
  %1 = load %struct.pid*, %struct.pid** %thread_pid1, align 64
  %arrayidx = getelementptr inbounds %struct.pid, %struct.pid* %0, i64 0, i32 3, i64 0
  %arrayidx3 = getelementptr inbounds %struct.pid, %struct.pid* %1, i64 0, i32 3, i64 0
  call fastcc void @hlists_swap_heads_rcu(%struct.hlist_head* noundef %arrayidx, %struct.hlist_head* noundef %arrayidx3) #11
  %2 = ptrtoint %struct.pid* %1 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.pid** elementtype(%struct.pid*) %thread_pid, i64 %2) #13, !srcloc !14
  %3 = ptrtoint %struct.pid* %0 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.pid** elementtype(%struct.pid*) %thread_pid1, i64 %3) #13, !srcloc !15
  %call58 = call fastcc i32 @pid_nr(%struct.pid* noundef %1) #11
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %left, i64 0, i32 50
  store volatile i32 %call58, i32* %pid, align 32
  %call68 = call fastcc i32 @pid_nr(%struct.pid* noundef %0) #11
  %pid69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %right, i64 0, i32 50
  store volatile i32 %call68, i32* %pid69, align 32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlists_swap_heads_rcu(%struct.hlist_head* noundef %left, %struct.hlist_head* noundef %right) unnamed_addr #0 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %left, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %right, i64 0, i32 0
  %1 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %2 = ptrtoint %struct.hlist_node* %1 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_node** elementtype(%struct.hlist_node*) %first, i64 %2) #13, !srcloc !16
  %3 = ptrtoint %struct.hlist_node* %0 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_node** elementtype(%struct.hlist_node*) %first1, i64 %3) #13, !srcloc !17
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %1, i64 0, i32 1
  store volatile %struct.hlist_node** %first, %struct.hlist_node*** %pprev, align 8
  %pprev67 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev67, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pid_nr(%struct.pid* noundef readonly %pid) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %nr1 = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 0, i32 0
  %0 = load i32, i32* %nr1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nr.0 = phi i32 [ %0, %if.then ], [ 0, %entry ]
  ret i32 %nr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @transfer_pid(%struct.task_struct* noundef %old, %struct.task_struct* noundef %new, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %old, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  %thread_pid1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %new, i64 0, i32 59
  store %struct.pid* %0, %struct.pid** %thread_pid1, align 64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %idxprom = zext i32 %type to i64
  %arrayidx = getelementptr %struct.task_struct, %struct.task_struct* %old, i64 0, i32 60, i64 %idxprom
  %arrayidx4 = getelementptr %struct.task_struct, %struct.task_struct* %new, i64 0, i32 60, i64 %idxprom
  call fastcc void @hlist_replace_rcu(%struct.hlist_node* noundef %arrayidx, %struct.hlist_node* noundef %arrayidx4) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_replace_rcu(%struct.hlist_node* noundef %old, %struct.hlist_node* noundef %new) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %old, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8
  %next2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %new, i64 0, i32 0
  store %struct.hlist_node* %0, %struct.hlist_node** %next2, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %old, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %pprev5 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %new, i64 0, i32 1
  store volatile %struct.hlist_node** %1, %struct.hlist_node*** %pprev5, align 8
  %2 = ptrtoint %struct.hlist_node* %new to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_node** elementtype(%struct.hlist_node*) %1, i64 %2) #13, !srcloc !18
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %do.body48, label %do.body35

do.body35:                                        ; preds = %entry
  %3 = load %struct.hlist_node*, %struct.hlist_node** %next2, align 8
  %pprev38 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %3, i64 0, i32 1
  store volatile %struct.hlist_node** %next2, %struct.hlist_node*** %pprev38, align 8
  br label %do.body48

do.body48:                                        ; preds = %entry, %do.body35
  store volatile %struct.hlist_node** inttoptr (i64 -2401263026318606046 to %struct.hlist_node**), %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local %struct.task_struct* @pid_task(%struct.pid* noundef %pid, i32 noundef %type) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = zext i32 %type to i64
  %first1 = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 3, i64 %idxprom, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %tobool6.not = icmp eq %struct.hlist_node* %0, null
  %1 = bitcast %struct.hlist_node* %0 to i8*
  %.neg = mul nsw i64 %idxprom, -16
  %idx.neg = add nsw i64 %.neg, -1032
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.neg
  %2 = bitcast i8* %add.ptr to %struct.task_struct*
  %result.0 = select i1 %tobool6.not, %struct.task_struct* null, %struct.task_struct* %2
  br label %if.end12

if.end12:                                         ; preds = %if.then, %entry
  %result.1 = phi %struct.task_struct* [ %result.0, %if.then ], [ null, %entry ]
  ret %struct.task_struct* %result.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.task_struct* @find_task_by_pid_ns(i32 noundef %nr, %struct.pid_namespace* noundef %ns) local_unnamed_addr #0 {
entry:
  %call = call %struct.pid* @find_pid_ns(i32 noundef %nr, %struct.pid_namespace* noundef %ns) #11
  %call1 = call %struct.task_struct* @pid_task(%struct.pid* noundef %call, i32 noundef 0) #11
  ret %struct.task_struct* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.task_struct* @find_task_by_vpid(i32 noundef %vnr) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %1) #11
  %call2 = call %struct.task_struct* @find_task_by_pid_ns(i32 noundef %vnr, %struct.pid_namespace* noundef %call1) #11
  ret %struct.task_struct* %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.task_struct* @find_get_task_by_vpid(i32 noundef %nr) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %call = call %struct.task_struct* @find_task_by_vpid(i32 noundef %nr) #11
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @get_task_struct(%struct.task_struct* noundef nonnull %call) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @rcu_read_unlock() #11
  ret %struct.task_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pid* @get_task_pid(%struct.task_struct* noundef %task, i32 noundef %type) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %call = call fastcc %struct.pid** @task_pid_ptr(%struct.task_struct* noundef %task, i32 noundef %type) #11
  %0 = load volatile %struct.pid*, %struct.pid** %call, align 8
  %call5 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %0) #11
  call fastcc void @rcu_read_unlock() #11
  ret %struct.pid* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @get_pid(%struct.pid* noundef returned %pid) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.pid* %pid
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.task_struct* @get_pid_task(%struct.pid* noundef %pid, i32 noundef %type) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %call = call %struct.task_struct* @pid_task(%struct.pid* noundef %pid, i32 noundef %type) #11
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @get_task_struct(%struct.task_struct* noundef nonnull %call) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @rcu_read_unlock() #11
  ret %struct.task_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pid* @find_get_pid(i32 noundef %nr) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %call = call %struct.pid* @find_vpid(i32 noundef %nr) #11
  %call1 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %call) #11
  call fastcc void @rcu_read_unlock() #11
  ret %struct.pid* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @pid_nr_ns(%struct.pid* noundef readonly %pid, %struct.pid_namespace* noundef readonly %ns) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %level = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %ns, i64 0, i32 5
  %0 = load i32, i32* %level, align 8
  %level1 = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 1
  %1 = load i32, i32* %level1, align 4
  %cmp.not = icmp ugt i32 %0, %1
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %0 to i64
  %ns3 = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 %idxprom, i32 1
  %2 = load %struct.pid_namespace*, %struct.pid_namespace** %ns3, align 8
  %cmp4 = icmp eq %struct.pid_namespace* %2, %ns
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then
  %nr6 = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 %idxprom, i32 0
  %3 = load i32, i32* %nr6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then5, %land.lhs.true, %entry
  %nr.0 = phi i32 [ %3, %if.then5 ], [ 0, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %nr.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @pid_vnr(%struct.pid* noundef readonly %pid) local_unnamed_addr #6 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %1) #11
  %call2 = call i32 @pid_nr_ns(%struct.pid* noundef %pid, %struct.pid_namespace* noundef %call1) #11
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef %task, i32 noundef %type, %struct.pid_namespace* noundef readonly %ns) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %tobool.not = icmp eq %struct.pid_namespace* %ns, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #14, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ns.addr.0 = phi %struct.pid_namespace* [ %ns, %entry ], [ %call1, %if.then ]
  %call2 = call fastcc %struct.pid** @task_pid_ptr(%struct.task_struct* noundef %task, i32 noundef %type) #11
  %2 = load volatile %struct.pid*, %struct.pid** %call2, align 8
  %call7 = call i32 @pid_nr_ns(%struct.pid* noundef %2, %struct.pid_namespace* noundef %ns.addr.0) #11
  call fastcc void @rcu_read_unlock() #11
  ret i32 %call7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid_namespace* @ns_of_pid(%struct.pid* noundef readonly %pid) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %level = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 1
  %0 = load i32, i32* %level, align 4
  %idxprom = zext i32 %0 to i64
  %ns1 = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 %idxprom, i32 1
  %1 = load %struct.pid_namespace*, %struct.pid_namespace** %ns1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ns.0 = phi %struct.pid_namespace* [ %1, %if.then ], [ null, %entry ]
  ret %struct.pid_namespace* %ns.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #5 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  ret %struct.pid* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pid* @find_ge_pid(i32 noundef %nr, %struct.pid_namespace* noundef %ns) local_unnamed_addr #0 {
entry:
  %nr.addr = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4
  %idr = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %ns, i64 0, i32 0
  %call = call i8* @idr_get_next(%struct.idr* noundef %idr, i32* noundef nonnull %nr.addr) #12
  %0 = bitcast i8* %call to %struct.pid*
  ret %struct.pid* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @idr_get_next(%struct.idr* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pid* @pidfd_get_pid(i32 noundef %fd, i32* nocapture noundef writeonly %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %fd) #11
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -9) #11
  %1 = bitcast i8* %call1 to %struct.pid*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call %struct.pid* @pidfd_pid(%struct.file* noundef nonnull %0) #12
  %2 = bitcast %struct.pid* %call3 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %2) #11
  br i1 %call4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %call3) #11
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 7
  %3 = load i32, i32* %f_flags, align 8
  store i32 %3, i32* %flags, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  call fastcc void @fdput([2 x i64] %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %retval.0 = phi %struct.pid* [ %call3, %if.end8 ], [ %1, %if.then ]
  ret %struct.pid* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #12
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #11
  ret [2 x i64] %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @pidfd_pid(%struct.file* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #2 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #0 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pidfd_create(%struct.pid* noundef %pid, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @pid_has_task(%struct.pid* noundef nonnull %pid, i32 noundef 1) #11
  %and = and i32 %flags, -526339
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool1.not, %call
  br i1 %or.cond, label %if.end3, label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %call4 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef nonnull %pid) #11
  %0 = bitcast %struct.pid* %pid to i8*
  %or5 = or i32 %flags, 524290
  %call6 = call i32 @anon_inode_getfd(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.file_operations* noundef nonnull @pidfd_fops, i8* noundef nonnull %0, i32 noundef %or5) #12
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @put_pid(%struct.pid* noundef nonnull %pid) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then7, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -22, %lor.lhs.false ], [ -22, %entry ], [ %call6, %if.then7 ], [ %call6, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @pid_has_task(%struct.pid* noundef %pid, i32 noundef %type) unnamed_addr #3 {
entry:
  %idxprom = zext i32 %type to i64
  %arrayidx = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 3, i64 %idxprom
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %arrayidx) #11
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(i8* noundef, %struct.file_operations* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pidfd_open(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_pidfd_open(i64 noundef %0, i64 noundef %1) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pidfd_open(i64 noundef %pid, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %conv1 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_pidfd_open(i32 noundef %conv, i32 noundef %conv1) #11
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @pid_idr_init() local_unnamed_addr #7 section ".init.text" {
entry:
  %0 = load i32, i32* @pid_max_max, align 4
  %1 = load i32, i32* @pid_max, align 4
  %call = call fastcc i32 @cpumask_weight() #11
  %mul = shl i32 %call, 10
  %cmp = icmp sgt i32 %1, %mul
  %cond = select i1 %cmp, i32 %1, i32 %mul
  %cmp2 = icmp slt i32 %0, %cond
  %cond6 = select i1 %cmp2, i32 %0, i32 %cond
  store i32 %cond6, i32* @pid_max, align 4
  %2 = load i32, i32* @pid_max_min, align 4
  %call7 = call fastcc i32 @cpumask_weight() #11
  %mul8 = shl i32 %call7, 3
  %cmp10 = icmp sgt i32 %2, %mul8
  %cond14 = select i1 %cmp10, i32 %2, i32 %mul8
  store i32 %cond14, i32* @pid_max_min, align 4
  %3 = load i32, i32* @pid_max, align 4
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef %3, i32 noundef %cond14) #15
  call fastcc void @idr_init() #11
  %call19 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef 112, i32 noundef 8, i32 noundef 270336, void (i8*)* noundef null) #12
  store %struct.kmem_cache* %call19, %struct.kmem_cache** getelementptr inbounds (%struct.pid_namespace, %struct.pid_namespace* @init_pid_ns, i64 0, i32 4), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #12
  ret i32 %call4.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @idr_init() unnamed_addr #9 {
entry:
  call fastcc void @idr_init_base() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pidfd_getfd(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_pidfd_getfd(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pidfd_getfd(i64 noundef %pidfd, i64 noundef %fd, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pidfd to i32
  %conv1 = trunc i64 %fd to i32
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_pidfd_getfd(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #11
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #12
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #13, !srcloc !19
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !8

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !20
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
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
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #13, !srcloc !21
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #13, !srcloc !22
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #11
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !23

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #13, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #13, !srcloc !25
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #11
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @pidmap_lock to i8*), i8 0) #13, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #13, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  call fastcc void @do_raw_spin_lock() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.spinlock* @pidmap_lock to i8*), i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pidmap_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #11
  call fastcc void @arch_local_irq_enable() #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #13, !srcloc !31
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #16, !srcloc !32
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_rcu(%struct.hlist_node* noundef %n) unnamed_addr #4 {
entry:
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #11
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** inttoptr (i64 -2401263026318606046 to %struct.hlist_node**), %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #4 {
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
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #12
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !23

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !8

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #12
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #13, !srcloc !34
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  call void @rcu_read_unlock_strict() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #2 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #3 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pidfd_open(i32 noundef %pid, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i32 %flags, -2049
  %tobool.not = icmp ne i32 %and, 0
  %cmp = icmp slt i32 %pid, 1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.end2

if.end2:                                          ; preds = %entry
  %call = call %struct.pid* @find_get_pid(i32 noundef %pid) #11
  %tobool3.not = icmp eq %struct.pid* %call, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end2
  %call6 = call i32 @pidfd_create(%struct.pid* noundef nonnull %call, i32 noundef %flags) #11
  call void @put_pid(%struct.pid* noundef nonnull %call) #11
  %conv = sext i32 %call6 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry, %if.end5
  %retval.0 = phi i64 [ %conv, %if.end5 ], [ -22, %entry ], [ -3, %if.end2 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @idr_init_base() unnamed_addr #9 {
entry:
  call fastcc void @xa_init_flags() #11
  store i32 0, i32* getelementptr inbounds (%struct.pid_namespace, %struct.pid_namespace* @init_pid_ns, i64 0, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.pid_namespace, %struct.pid_namespace* @init_pid_ns, i64 0, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @xa_init_flags() unnamed_addr #9 {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.pid_namespace, %struct.pid_namespace* @init_pid_ns, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  store i32 33554436, i32* getelementptr inbounds (%struct.pid_namespace, %struct.pid_namespace* @init_pid_ns, i64 0, i32 0, i32 0, i32 1), align 4
  store i8* null, i8** getelementptr inbounds (%struct.pid_namespace, %struct.pid_namespace* @init_pid_ns, i64 0, i32 0, i32 0, i32 2), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pidfd_getfd(i32 noundef %pidfd, i32 noundef %fd, i32 noundef %flags) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc [2 x i64] @fdget(i32 noundef %pidfd) #11
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool1.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %call5 = call %struct.pid* @pidfd_pid(%struct.file* noundef nonnull %0) #12
  %1 = bitcast %struct.pid* %call5 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %1) #11
  br i1 %call6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  %call8 = call fastcc i64 @PTR_ERR(i8* noundef %1) #11
  %conv = trunc i64 %call8 to i32
  br label %if.end10

if.else:                                          ; preds = %if.end3
  %call9 = call fastcc i32 @pidfd_getfd(%struct.pid* noundef %call5, i32 noundef %fd) #11
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %ret.0 = phi i32 [ %conv, %if.then7 ], [ %call9, %if.else ]
  call fastcc void @fdput([2 x i64] %call) #11
  %conv11 = sext i32 %ret.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i64 [ %conv11, %if.end10 ], [ -22, %entry ], [ -9, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pidfd_getfd(%struct.pid* noundef %pid, i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call %struct.task_struct* @get_pid_task(%struct.pid* noundef %pid, i32 noundef 0) #11
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc %struct.file* @__pidfd_fget(%struct.task_struct* noundef nonnull %call, i32 noundef %fd) #11
  call fastcc void @put_task_struct(%struct.task_struct* noundef nonnull %call) #11
  %0 = bitcast %struct.file* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #11
  br i1 %call2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %0) #11
  %conv = trunc i64 %call4 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @receive_fd(%struct.file* noundef %call1, i32 noundef 524288) #12
  call void @fput(%struct.file* noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %if.then3
  %retval.0 = phi i32 [ %conv, %if.then3 ], [ %call6, %if.end5 ], [ -3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @__pidfd_fget(%struct.task_struct* noundef %task, i32 noundef %fd) unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 55
  %call = call i32 @down_read_killable(%struct.rw_semaphore* noundef %exec_update_lock) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i1 @ptrace_may_access(%struct.task_struct* noundef %task, i32 noundef 18) #12
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call %struct.file* @fget_task(%struct.task_struct* noundef %task, i32 noundef %fd) #12
  br label %if.end6

if.else:                                          ; preds = %if.end
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -1) #11
  %1 = bitcast i8* %call5 to %struct.file*
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %file.0 = phi %struct.file* [ %call4, %if.then3 ], [ %1, %if.else ]
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock8 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 55
  call void @up_read(%struct.rw_semaphore* noundef %exec_update_lock8) #12
  %tobool9.not = icmp eq %struct.file* %file.0, null
  br i1 %tobool9.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end6
  %3 = bitcast %struct.file* %file.0 to i8*
  br label %cleanup

cond.false:                                       ; preds = %if.end6
  %call10 = call fastcc i8* @ERR_PTR(i64 noundef -9) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %cond.false, %if.then
  %retval.0.in = phi i8* [ %call1, %if.then ], [ %3, %cond.true ], [ %call10, %cond.false ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.file*
  ret %struct.file* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #11
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @receive_fd(%struct.file* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ptrace_may_access(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @fget_task(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(%struct.task_struct* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind readonly }

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
!9 = !{i64 2157558193}
!10 = !{i64 2149537989}
!11 = !{i64 2152654305}
!12 = !{i64 1366564}
!13 = !{i64 2150868972}
!14 = !{i64 2157563794}
!15 = !{i64 2157570984}
!16 = !{i64 2150848186}
!17 = !{i64 2150855043}
!18 = !{i64 2150836334}
!19 = !{i64 2150232471}
!20 = !{i64 2147981090, i64 2147981764, i64 2147981794, i64 2147981826, i64 2147981860, i64 2147981896, i64 2147981921}
!21 = !{i64 2149103816, i64 2149103863, i64 2149103869, i64 2149103906, i64 2149103924, i64 2149105235, i64 2149105283, i64 2149105331, i64 2149105394, i64 2149105443, i64 2149104002, i64 2149104027, i64 2149104053, i64 2149104059, i64 2149104901, i64 2149104941, i64 2149104959, i64 2149104991, i64 2149105019, i64 2149105073, i64 2149105093, i64 2149105190, i64 2149104082, i64 2149104096, i64 2149104102, i64 2149104152, i64 2149104198, i64 2149104231}
!22 = !{i64 2149105995, i64 2149106042, i64 2149106048, i64 2149106085, i64 2149106103, i64 2149107046, i64 2149107094, i64 2149107142, i64 2149107205, i64 2149107254, i64 2149106181, i64 2149106206, i64 2149106232, i64 2149106238, i64 2149106275, i64 2149106281, i64 2149106331, i64 2149106377, i64 2149106410}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2149098113, i64 2149098160, i64 2149098166, i64 2149098203, i64 2149098221, i64 2149099562, i64 2149099610, i64 2149099658, i64 2149099721, i64 2149099770, i64 2149098299, i64 2149098324, i64 2149098350, i64 2149098356, i64 2149099228, i64 2149099268, i64 2149099286, i64 2149099318, i64 2149099346, i64 2149099400, i64 2149099420, i64 2149099517, i64 2149098379, i64 2149098393, i64 2149098399, i64 2149098449, i64 2149098495, i64 2149098528}
!25 = !{i64 2148063267, i64 2148063300, i64 2148063353, i64 2148063412, i64 2148063446, i64 2148063501, i64 2148063530, i64 2148063550}
!26 = !{i64 2149563832}
!27 = !{i64 2149352501}
!28 = !{i64 2149109829, i64 2149109876, i64 2149109882, i64 2149109919, i64 2149109937, i64 2149111248, i64 2149111296, i64 2149111344, i64 2149111407, i64 2149111456, i64 2149110015, i64 2149110040, i64 2149110066, i64 2149110072, i64 2149110914, i64 2149110954, i64 2149110972, i64 2149111004, i64 2149111032, i64 2149111086, i64 2149111106, i64 2149111203, i64 2149110095, i64 2149110109, i64 2149110115, i64 2149110165, i64 2149110211, i64 2149110244}
!29 = !{i64 2149542282}
!30 = !{i64 2149567135}
!31 = !{i64 2149088657, i64 2149088704, i64 2149088710, i64 2149088747, i64 2149088765, i64 2149090105, i64 2149090153, i64 2149090201, i64 2149090264, i64 2149090313, i64 2149088843, i64 2149088868, i64 2149088894, i64 2149088900, i64 2149089771, i64 2149089811, i64 2149089829, i64 2149089861, i64 2149089889, i64 2149089943, i64 2149089963, i64 2149090060, i64 2149088923, i64 2149088937, i64 2149088943, i64 2149088993, i64 2149089039, i64 2149089072}
!32 = !{i64 2149126135, i64 2149126182, i64 2149126188, i64 2149126225, i64 2149126243, i64 2149127170, i64 2149127218, i64 2149127266, i64 2149127329, i64 2149127378, i64 2149126321, i64 2149126346, i64 2149126372, i64 2149126378, i64 2149126415, i64 2149126421, i64 2149126471, i64 2149126517, i64 2149126550}
!33 = !{i64 2150018420}
!34 = !{i64 2147969308, i64 2147969972, i64 2147970002, i64 2147970034, i64 2147970068, i64 2147970103, i64 2147970128}
!35 = !{i64 2150018637}
