; ModuleID = 'kernel/signal.c'
source_filename = "kernel/signal.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.37, %struct.qspinlock }
%union.anon.37 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.anon.85 = type { i8, i8 }
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28, [48 x i8] }
%struct.anon.28 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.29, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.79, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.84, i32, i8* }
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
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.82 = type { %struct.callback_head }
%union.anon.83 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.33 }
%union.anon.33 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.34, %union.anon.35 }
%union.anon.34 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.35 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.39 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.39 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.84 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.55 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
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
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.76, %struct.anon.77, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.76 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.77 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.75, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.75 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.reclaim_state = type opaque
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
%struct.rseq = type { i32, i32, %union.anon.78, i32, [12 x i8] }
%union.anon.78 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.79 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.80, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.80 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, %struct.ucounts* }
%struct.multiprocess_signals = type { %struct.sigset_t, %struct.hlist_node }
%struct.anon.67 = type { i8*, i32, i32 }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.siginfo = type { %union.anon.86 }
%union.anon.86 = type { %struct.anon.87, [80 x i8] }
%struct.anon.87 = type { i32, i32, i32, %union.__sifields }
%struct.__kernel_timespec = type { i64, i64 }
%struct.sigaltstack = type { i8*, i32, i64 }

@__setup_str_setup_print_fatal_signals = internal constant [21 x i8] c"print-fatal-signals=\00", section ".init.rodata", align 1
@__setup_setup_print_fatal_signals = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__setup_str_setup_print_fatal_signals, i32 0, i32 0), i32 (i8*)* @setup_print_fatal_signals, i32 0 }, section ".init.setup", align 8
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@print_fatal_signals = dso_local global i32 0, section ".data..read_mostly", align 4
@sig_sicodes = internal unnamed_addr constant [32 x %struct.anon.85] [%struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 { i8 11, i8 3 }, %struct.anon.85 { i8 6, i8 3 }, %struct.anon.85 zeroinitializer, %struct.anon.85 { i8 5, i8 3 }, %struct.anon.85 { i8 15, i8 3 }, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 { i8 9, i8 3 }, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 { i8 6, i8 9 }, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 zeroinitializer, %struct.anon.85 { i8 6, i8 2 }, %struct.anon.85 zeroinitializer, %struct.anon.85 { i8 2, i8 11 }], align 1
@.str = private unnamed_addr constant [9 x i8] c"sigqueue\00", align 1
@sigqueue_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@print_dropped_signal.ratelimit_state = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.print_dropped_signal = private unnamed_addr constant [21 x i8] c"print_dropped_signal\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\016%s/%d: reached RLIMIT_SIGPENDING, dropped signal %d\0A\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\016potentially unexpected fatal signal %d.\0A\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_setup_print_fatal_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @recalc_sigpending_and_wake(%struct.task_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @recalc_sigpending_tsk(%struct.task_struct* noundef %t) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @signal_wake_up(%struct.task_struct* noundef %t, i1 noundef false) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @recalc_sigpending_tsk(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 43
  %0 = load i64, i64* %jobctl, align 8
  %and = and i64 %0, 10092544
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 92, i32 1
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 89
  %call = call fastcc i1 @has_pending_signals(%struct.sigset_t* noundef %signal, %struct.sigset_t* noundef %blocked) #17
  br i1 %call, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %signal2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal2, align 8
  %signal3 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 6, i32 1
  %call5 = call fastcc i1 @has_pending_signals(%struct.sigset_t* noundef %signal3, %struct.sigset_t* noundef %blocked) #17
  br i1 %call5, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  call fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %t) #17
  br label %return

return:                                           ; preds = %lor.lhs.false1, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false1 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @signal_wake_up(%struct.task_struct* noundef %t, i1 noundef %resume) unnamed_addr #0 {
entry:
  %cond = select i1 %resume, i32 256, i32 0
  call void @signal_wake_up_state(%struct.task_struct* noundef %t, i32 noundef %cond) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @recalc_sigpending() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i1 @recalc_sigpending_tsk(%struct.task_struct* noundef %1) #17
  br i1 %call1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #0 {
entry:
  %0 = zext i32 %flag to i64
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef %0, i64* noundef %flags) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @calculate_sigpending() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %1) #17
  call void @recalc_sigpending() #17
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i5 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i5) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef 0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @next_signal(%struct.sigpending* nocapture noundef readonly %pending, %struct.sigset_t* nocapture noundef readonly %mask) local_unnamed_addr #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.sigpending, %struct.sigpending* %pending, i64 0, i32 1, i32 0, i64 0
  %arraydecay3 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %mask, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arraydecay, align 8
  %1 = load i64, i64* %arraydecay3, align 8
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %and4 = and i64 %and, 1073743064
  %tobool5.not = icmp eq i64 %and4, 0
  %spec.select = select i1 %tobool5.not, i64 %and, i64 %and4
  %2 = call i64 @llvm.cttz.i64(i64 %spec.select, i1 false) #20, !range !8
  %3 = trunc i64 %2 to i32
  %conv = add nuw nsw i32 %3, 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @task_set_jobctl_pending(%struct.task_struct* noundef %task, i64 noundef %mask) local_unnamed_addr #0 {
entry:
  %and = and i64 %mask, -4128768
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body7, label %do.body3, !prof !9

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 287; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !10
  unreachable

do.body7:                                         ; preds = %entry
  %0 = and i64 %mask, 3801088
  %1 = icmp eq i64 %0, 2097152
  br i1 %1, label %do.body22, label %do.end27, !prof !11

do.body22:                                        ; preds = %do.body7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 288; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !12
  unreachable

do.end27:                                         ; preds = %do.body7
  %call = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %task) #17
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %lor.end, label %return, !prof !9

lor.end:                                          ; preds = %do.end27
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 4
  %2 = load i32, i32* %flags, align 4
  %and29 = and i32 %2, 4
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end39, label %return, !prof !9

if.end39:                                         ; preds = %lor.end
  %and40 = and i64 %mask, 65535
  %tobool41.not = icmp eq i64 %and40, 0
  %jobctl45.phi.trans.insert = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 43
  %.pre = load i64, i64* %jobctl45.phi.trans.insert, align 8
  %and43 = and i64 %.pre, -65536
  %3 = select i1 %tobool41.not, i64 %.pre, i64 %and43
  %jobctl45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 43
  %or = or i64 %3, %mask
  store i64 %or, i64* %jobctl45, align 8
  br label %return

return:                                           ; preds = %do.end27, %lor.end, %if.end39
  %4 = phi i1 [ false, %lor.end ], [ true, %if.end39 ], [ false, %do.end27 ]
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #17
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @task_clear_jobctl_trapping(%struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 43
  %0 = load i64, i64* %jobctl, align 8
  %and = and i64 %0, 2097152
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %and4 = and i64 %0, -2097153
  store i64 %and4, i64* %jobctl, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %1 = bitcast i64* %jobctl to i8*
  call void @wake_up_bit(i8* noundef %1, i32 noundef 21) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @task_clear_jobctl_pending(%struct.task_struct* noundef %task, i64 noundef %mask) local_unnamed_addr #0 {
entry:
  %and = and i64 %mask, -1703937
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !9

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 338; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !14
  unreachable

do.end6:                                          ; preds = %entry
  %and7 = and i64 %mask, 131072
  %tobool8.not = icmp eq i64 %and7, 0
  %or = or i64 %mask, 327680
  %spec.select = select i1 %tobool8.not, i64 %mask, i64 %or
  %neg = xor i64 %spec.select, -1
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 43
  %0 = load i64, i64* %jobctl, align 8
  %and11 = and i64 %0, %neg
  store i64 %and11, i64* %jobctl, align 8
  %and13 = and i64 %and11, 1703936
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.end6
  call void @task_clear_jobctl_trapping(%struct.task_struct* noundef %task) #17
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.end6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @task_join_group_stop(%struct.task_struct* noundef %task) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 43
  %2 = load i64, i64* %jobctl, align 8
  %and = and i64 %2, 65535
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %group_stop_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 11
  %4 = load i32, i32* %group_stop_count, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %inc = add i32 %4, 1
  store i32 %inc, i32* %group_stop_count, align 8
  %or = or i64 %and, 262144
  br label %if.end6

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 12
  %5 = load i32, i32* %flags, align 4
  %and3 = and i32 %5, 1
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.else, %if.then
  %mask.0 = phi i64 [ %or, %if.then ], [ %and, %if.else ]
  %or7 = or i64 %mask.0, 131072
  %call8 = call i1 @task_set_jobctl_pending(%struct.task_struct* noundef %task, i64 noundef %or7) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @flush_sigqueue(%struct.sigpending* noundef %queue) local_unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.sigpending, %struct.sigpending* %queue, i64 0, i32 1
  call fastcc void @sigemptyset(%struct.sigset_t* noundef %signal) #17
  %list = getelementptr inbounds %struct.sigpending, %struct.sigpending* %queue, i64 0, i32 0
  %call8 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #17
  %tobool.not9 = icmp eq i32 %call8, 0
  br i1 %tobool.not9, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.sigpending* %queue to %struct.sigqueue**
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = load %struct.sigqueue*, %struct.sigqueue** %0, align 8
  %list2 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %1, i64 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %list2) #17
  call fastcc void @__sigqueue_free(%struct.sigqueue* noundef %1) #17
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @sigemptyset(%struct.sigset_t* nocapture noundef writeonly %set) unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  store i64 0, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #6 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sigqueue_free(%struct.sigqueue* noundef %q) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ucounts = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q, i64 0, i32 3
  %1 = load %struct.ucounts*, %struct.ucounts** %ucounts, align 8
  %tobool1.not = icmp eq %struct.ucounts* %1, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @dec_rlimit_put_ucounts(%struct.ucounts* noundef nonnull %1, i32 noundef 10) #19
  store %struct.ucounts* null, %struct.ucounts** %ucounts, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @sigqueue_cachep, align 8
  %3 = bitcast %struct.sigqueue* %q to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %2, i8* noundef %3) #19
  br label %return

return:                                           ; preds = %entry, %if.end5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @flush_signals(%struct.task_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  call fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %t) #17
  %pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 92
  call void @flush_sigqueue(%struct.sigpending* noundef %pending) #17
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 6
  call void @flush_sigqueue(%struct.sigpending* noundef %shared_pending) #17
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i12 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i12, i64 noundef %call2) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !15
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef 0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @flush_itimer_signals() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 92
  call fastcc void @__flush_itimer_signals(%struct.sigpending* noundef %pending) #17
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 6
  call fastcc void @__flush_itimer_signals(%struct.sigpending* noundef %shared_pending) #17
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i13 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i13, i64 noundef %call3) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__flush_itimer_signals(%struct.sigpending* noundef %pending) unnamed_addr #0 {
entry:
  %signal = alloca %struct.sigset_t, align 8
  %retain = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %signal to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %signal, i64 0, i32 0, i64 0, !annotation !16
  %2 = bitcast %struct.sigset_t* %retain to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  %3 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %retain, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %3, align 8, !annotation !16
  %signal1 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %pending, i64 0, i32 1
  %4 = getelementptr %struct.sigset_t, %struct.sigset_t* %signal1, i64 0, i32 0, i64 0
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %1, align 8
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %retain) #17
  %list = getelementptr inbounds %struct.sigpending, %struct.sigpending* %pending, i64 0, i32 0
  %6 = bitcast %struct.sigpending* %pending to %struct.sigqueue**
  %7 = load %struct.sigqueue*, %struct.sigqueue** %6, align 8
  %list1044 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %7, i64 0, i32 0
  %cmp.not45 = icmp eq %struct.list_head* %list1044, %list
  br i1 %cmp.not45, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end
  %list1048 = phi %struct.list_head* [ %list10, %if.end ], [ %list1044, %entry ]
  %q.046 = phi %struct.sigqueue* [ %n.047, %if.end ], [ %7, %entry ]
  %n.047.in = bitcast %struct.sigqueue* %q.046 to %struct.sigqueue**
  %n.047 = load %struct.sigqueue*, %struct.sigqueue** %n.047.in, align 8
  %si_signo = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.046, i64 0, i32 2, i32 0, i32 0
  %8 = load i32, i32* %si_signo, align 8
  %si_code = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.046, i64 0, i32 2, i32 0, i32 2
  %9 = load i32, i32* %si_code, align 8
  %cmp13.not = icmp eq i32 %9, -2
  br i1 %cmp13.not, label %if.else, label %if.then, !prof !11

if.then:                                          ; preds = %for.body
  call fastcc void @sigaddset(%struct.sigset_t* noundef nonnull %retain, i32 noundef %8) #17
  br label %if.end

if.else:                                          ; preds = %for.body
  call fastcc void @sigdelset(%struct.sigset_t* noundef nonnull %signal, i32 noundef %8) #17
  call fastcc void @list_del_init(%struct.list_head* noundef %list1048) #17
  call fastcc void @__sigqueue_free(%struct.sigqueue* noundef %q.046) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %list10 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %n.047, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list10, %list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  call fastcc void @sigorsets(%struct.sigset_t* noundef %signal1, %struct.sigset_t* noundef nonnull %signal, %struct.sigset_t* noundef nonnull %retain) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ignore_signals(%struct.task_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 88
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 3, i64 %indvars.iv, i32 0, i32 0
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %sa_handler, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call void @flush_signals(%struct.task_struct* noundef %t) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local void @flush_signal_handlers(%struct.task_struct* nocapture noundef readonly %t, i32 noundef %force_default) local_unnamed_addr #7 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %arrayidx = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 3, i64 0
  %tobool.not = icmp eq i32 %force_default, 0
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %ka.016 = phi %struct.k_sigaction* [ %arrayidx, %entry ], [ %incdec.ptr, %if.end ]
  %i.015 = phi i32 [ 64, %entry ], [ %dec, %if.end ]
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %sa_handler = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %ka.016, i64 0, i32 0, i32 0
  %1 = load void (i32)*, void (i32)** %sa_handler, align 8
  %cmp1.not = icmp eq void (i32)* %1, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %sa_handler3 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %ka.016, i64 0, i32 0, i32 0
  store void (i32)* null, void (i32)** %sa_handler3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %sa_flags = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %ka.016, i64 0, i32 0, i32 1
  store i64 0, i64* %sa_flags, align 8
  %sa_restorer = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %ka.016, i64 0, i32 0, i32 2
  store void ()* null, void ()** %sa_restorer, align 8
  %sa_mask = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %ka.016, i64 0, i32 0, i32 3
  call fastcc void @sigemptyset(%struct.sigset_t* noundef %sa_mask) #17
  %incdec.ptr = getelementptr %struct.k_sigaction, %struct.k_sigaction* %ka.016, i64 1
  %dec = add nsw i32 %i.015, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @unhandled_signal(%struct.task_struct* nocapture noundef readonly %tsk, i32 noundef %sig) local_unnamed_addr #8 {
entry:
  %call = call fastcc i32 @is_global_init(%struct.task_struct* noundef %tsk) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %sub = add i32 %sig, -1
  %idxprom = sext i32 %sub to i64
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 3, i64 %idxprom, i32 0, i32 0
  %1 = bitcast void (i32)** %sa_handler to i8**
  %2 = load i8*, i8** %1, align 8
  %switch = icmp ult i8* %2, inttoptr (i64 2 to i8*)
  br i1 %switch, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 5
  %3 = load i32, i32* %ptrace, align 8
  %tobool4.not = icmp eq i32 %3, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i1 [ %tobool4.not, %if.end3 ], [ true, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_global_init(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @task_tgid_nr(%struct.task_struct* noundef %tsk) #17
  %cmp = icmp eq i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dequeue_signal(%struct.task_struct* noundef %tsk, %struct.sigset_t* nocapture noundef readonly %mask, %struct.kernel_siginfo* noundef %info) local_unnamed_addr #0 {
entry:
  %resched_timer = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %resched_timer) #20
  store i8 0, i8* %resched_timer, align 4
  %pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 92
  %call = call fastcc i32 @__dequeue_signal(%struct.sigpending* noundef %pending, %struct.sigset_t* noundef %mask, %struct.kernel_siginfo* noundef %info, i8* noundef nonnull %resched_timer) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end16.thread

if.then:                                          ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 6
  %call1 = call fastcc i32 @__dequeue_signal(%struct.sigpending* noundef %shared_pending, %struct.sigset_t* noundef %mask, %struct.kernel_siginfo* noundef %info, i8* noundef nonnull %resched_timer) #17
  %cmp = icmp eq i32 %call1, 14
  br i1 %cmp, label %if.then4, label %if.end16, !prof !11

if.then4:                                         ; preds = %if.then
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %real_timer = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 16
  %call6 = call fastcc i1 @hrtimer_is_queued(%struct.hrtimer* noundef %real_timer) #17
  br i1 %call6, label %if.end16.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then4
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %it_real_incr = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 17
  %3 = load i64, i64* %it_real_incr, align 8
  %cmp8.not = icmp eq i64 %3, 0
  br i1 %cmp8.not, label %if.end16.thread, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %base = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 16, i32 3
  %4 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %4, i64 0, i32 6
  %5 = load i64 ()*, i64 ()** %get_time, align 16
  %call11 = call i64 %5() #19
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %it_real_incr13 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 17
  %7 = load i64, i64* %it_real_incr13, align 8
  %call14 = call i64 @hrtimer_forward(%struct.hrtimer* noundef %real_timer, i64 noundef %call11, i64 noundef %7) #19
  call fastcc void @hrtimer_restart(%struct.hrtimer* noundef %real_timer) #17
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %entry, %if.then10, %land.lhs.true, %if.then4
  %signr.0.ph = phi i32 [ 14, %if.then4 ], [ 14, %land.lhs.true ], [ 14, %if.then10 ], [ %call, %entry ]
  call void @recalc_sigpending() #17
  br label %if.end19

if.end16:                                         ; preds = %if.then
  call void @recalc_sigpending() #17
  %tobool17.not = icmp eq i32 %call1, 0
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end16.thread, %if.end16
  %signr.066 = phi i32 [ %signr.0.ph, %if.end16.thread ], [ %call1, %if.end16 ]
  %8 = add i32 %signr.066, -1
  %9 = icmp ult i32 %8, 31
  %sh_prom = zext i32 %8 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, 3932160
  %tobool25 = icmp ne i64 %and, 0
  %10 = select i1 %9, i1 %tobool25, i1 false
  br i1 %10, label %if.then33, label %if.end35, !prof !11

if.then33:                                        ; preds = %if.end19
  %11 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %12 = inttoptr i64 %11 to %struct.task_struct*
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i64 0, i32 43
  %13 = load i64, i64* %jobctl, align 8
  %or = or i64 %13, 65536
  store i64 %or, i64* %jobctl, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end19
  %14 = load i8, i8* %resched_timer, align 4, !range !17
  %tobool36.not = icmp eq i8 %14, 0
  br i1 %tobool36.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %if.end35
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %15 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %15, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #19
  call void @posixtimer_rearm(%struct.kernel_siginfo* noundef %info) #19
  %16 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i63 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %16, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i63) #19
  %_sys_private = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 3
  %17 = bitcast i64* %_sys_private to i32*
  store i32 0, i32* %17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then37, %if.end16
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %signr.066, %if.then37 ], [ %signr.066, %if.end35 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %resched_timer) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__dequeue_signal(%struct.sigpending* noundef %pending, %struct.sigset_t* nocapture noundef readonly %mask, %struct.kernel_siginfo* noundef %info, i8* nocapture noundef writeonly %resched_timer) unnamed_addr #0 {
entry:
  %call = call i32 @next_signal(%struct.sigpending* noundef %pending, %struct.sigset_t* noundef %mask) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @collect_signal(i32 noundef %call, %struct.sigpending* noundef %pending, %struct.kernel_siginfo* noundef %info, i8* noundef %resched_timer) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hrtimer_is_queued(%struct.hrtimer* noundef %timer) unnamed_addr #3 {
entry:
  %state = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 4
  %0 = load volatile i8, i8* %state, align 8
  %1 = and i8 %0, 1
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(%struct.hrtimer* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_restart(%struct.hrtimer* noundef %timer) unnamed_addr #0 {
entry:
  call fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @posixtimer_rearm(%struct.kernel_siginfo* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @signal_wake_up_state(%struct.task_struct* noundef %t, i32 noundef %state) local_unnamed_addr #0 {
entry:
  call fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %t) #17
  %or = or i32 %state, 1
  %call = call i32 @wake_up_state(%struct.task_struct* noundef %t, i32 noundef %or) #19
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @kick_process(%struct.task_struct* noundef %t) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kick_process(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @setup_print_fatal_signals(i8* noundef %str) #9 section ".init.text" {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %call = call i32 @get_option(i8** noundef nonnull %str.addr, i32* noundef nonnull @print_fatal_signals) #19
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__group_send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @send_signal(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %p, i32 noundef 1) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @send_signal(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %t, i32 noundef %type) unnamed_addr #0 {
entry:
  %magicptr = ptrtoint %struct.kernel_siginfo* %info to i64
  switch i64 %magicptr, label %if.else5 [
    i64 0, label %if.then
    i64 1, label %if.end35
  ]

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %t) #19
  %call2 = call fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef %1, %struct.pid_namespace* noundef %call1) #17
  %tobool.not = icmp eq i32 %call2, 0
  br label %if.end35

if.else5:                                         ; preds = %entry
  %call6 = call fastcc i1 @has_si_pid_and_uid(%struct.kernel_siginfo* noundef nonnull %info) #17
  br i1 %call6, label %if.then7, label %if.end35

if.then7:                                         ; preds = %if.else5
  call fastcc void @__rcu_read_lock() #19
  call fastcc void @__rcu_read_lock() #19
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 79
  %2 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 16
  %3 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  call fastcc void @rcu_read_unlock() #17
  %cmp14.not = icmp eq %struct.user_namespace* %3, @init_user_ns
  br i1 %cmp14.not, label %if.end, label %if.then15

if.then15:                                        ; preds = %if.then7
  %4 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %coerce.val.ii = zext i32 %5 to i64
  %call19 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #17
  store i32 %call19, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then7
  call fastcc void @rcu_read_unlock() #17
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  %6 = load i32, i32* %si_code, align 8
  %cmp23 = icmp eq i32 %6, 128
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %call26 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %t) #19
  %call27 = call fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef %8, %struct.pid_namespace* noundef %call26) #17
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  store i32 0, i32* %_pid, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.then29, %entry, %if.else5, %if.then
  %force.1.off0 = phi i1 [ %tobool.not, %if.then ], [ false, %if.else5 ], [ true, %entry ], [ %cmp23, %if.end ], [ true, %if.then29 ]
  %call37 = call fastcc i32 @__send_signal(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %t, i32 noundef %type, i1 noundef %force.1.off0) #17
  ret i32 %call37
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %p, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store i64 0, i64* %flags, align 8, !annotation !16
  %call = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %p, i64* noundef nonnull %flags) #17
  %tobool.not = icmp eq %struct.sighand_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @send_signal(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %p, i32 noundef %type) #17
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef %p, i64* noundef nonnull %flags) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call1, %if.then ], [ -3, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef %task, i64* nocapture noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef %task, i64* noundef %flags) #17
  ret %struct.sighand_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlock_task_sighand(%struct.task_struct* nocapture noundef readonly %task, i64* nocapture noundef readonly %flags) unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %1 = load i64, i64* %flags, align 8
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @force_sig_info(%struct.kernel_siginfo* noundef %info) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @force_sig_info_to_task(%struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %1, i1 noundef false) #17
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @force_sig_info_to_task(%struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %t, i1 noundef %sigdfl) unnamed_addr #0 {
entry:
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  %0 = load i32, i32* %si_signo, align 8
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 88
  %1 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %1, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %sub = add i32 %0, -1
  %idxprom = sext i32 %sub to i64
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 3, i64 %idxprom, i32 0, i32 0
  %3 = load void (i32)*, void (i32)** %sa_handler, align 8
  %cmp7 = icmp eq void (i32)* %3, inttoptr (i64 1 to void (i32)*)
  %blocked9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 89
  %call10 = call fastcc i32 @sigismember(%struct.sigset_t* noundef %blocked9, i32 noundef %0) #17
  %tobool = icmp ne i32 %call10, 0
  %or.cond = select i1 %tobool, i1 true, i1 %cmp7
  %brmerge = or i1 %or.cond, %sigdfl
  br i1 %brmerge, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  store void (i32)* null, void (i32)** %sa_handler, align 8
  br i1 %tobool, label %if.then18, label %land.lhs.true

if.then18:                                        ; preds = %if.then
  call fastcc void @sigdelset(%struct.sigset_t* noundef %blocked9, i32 noundef %0) #17
  call void @recalc_sigpending_and_wake(%struct.task_struct* noundef %t) #17
  %.pr.pre = load void (i32)*, void (i32)** %sa_handler, align 8
  br label %if.end20

if.end20:                                         ; preds = %entry, %if.then18
  %.pr = phi void (i32)* [ %3, %entry ], [ %.pr.pre, %if.then18 ]
  %cmp23 = icmp eq void (i32)* %.pr, null
  br i1 %cmp23, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.then, %if.end20
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 5
  %4 = load i32, i32* %ptrace, align 8
  %tobool25.not = icmp eq i32 %4, 0
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %land.lhs.true
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 87
  %5 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags27 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 12
  %6 = load i32, i32* %flags27, align 4
  %and = and i32 %6, -65
  store i32 %and, i32* %flags27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true, %if.end20
  %call29 = call fastcc i32 @send_signal(i32 noundef %0, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %t, i32 noundef 0) #17
  %7 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i53 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %7, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i53, i64 noundef %call2) #19
  ret i32 %call29
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @zap_other_threads(%struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %group_stop_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 11
  store i32 0, i32* %group_stop_count, align 8
  %call11 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p) #17
  %cmp.not12 = icmp eq %struct.task_struct* %call11, %p
  br i1 %cmp.not12, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %call14 = phi %struct.task_struct* [ %call, %while.cond.backedge ], [ %call11, %entry ]
  %count.013 = phi i32 [ %inc, %while.cond.backedge ], [ 0, %entry ]
  call void @task_clear_jobctl_pending(%struct.task_struct* noundef %call14, i64 noundef 1703936) #17
  %inc = add i32 %count.013, 1
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call14, i64 0, i32 39
  %1 = load i32, i32* %exit_state, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call14, i64 0, i32 92, i32 1
  call fastcc void @sigaddset(%struct.sigset_t* noundef %signal1, i32 noundef 9) #17
  call fastcc void @signal_wake_up(%struct.task_struct* noundef %call14, i1 noundef true) #17
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %while.body
  %call = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %call14) #17
  %cmp.not = icmp eq %struct.task_struct* %call, %p
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.cond.backedge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %0, i64 -69, i32 1
  %1 = bitcast %struct.list_head** %add.ptr to %struct.task_struct*
  ret %struct.task_struct* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigaddset(%struct.sigset_t* nocapture noundef %set, i32 noundef %_sig) unnamed_addr #10 {
entry:
  %sub = add i32 %_sig, -1
  %conv3 = zext i32 %sub to i64
  %shl = shl nuw i64 1, %conv3
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %or = or i64 %0, %shl
  store i64 %or, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.sighand_struct* @__lock_task_sighand(%struct.task_struct* noundef %tsk, i64* nocapture noundef %flags) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #19
  %sighand1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %0 = load volatile %struct.sighand_struct*, %struct.sighand_struct** %sighand1, align 16
  %cmp45 = icmp eq %struct.sighand_struct* %0, null
  br i1 %cmp45, label %for.end, label %do.body8, !prof !11

do.body8:                                         ; preds = %entry, %if.end33
  %1 = phi %struct.sighand_struct* [ %3, %if.end33 ], [ %0, %entry ]
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %1, i64 0, i32 0, i32 0, i32 0
  %call12 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  store i64 %call12, i64* %flags, align 8
  %2 = load volatile %struct.sighand_struct*, %struct.sighand_struct** %sighand1, align 16
  %cmp23 = icmp eq %struct.sighand_struct* %1, %2
  br i1 %cmp23, label %for.end, label %if.end33, !prof !9

if.end33:                                         ; preds = %do.body8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call12) #19
  %3 = load volatile %struct.sighand_struct*, %struct.sighand_struct** %sighand1, align 16
  %cmp = icmp eq %struct.sighand_struct* %3, null
  br i1 %cmp, label %for.end, label %do.body8, !prof !11

for.end:                                          ; preds = %if.end33, %do.body8, %entry
  %.lcssa = phi %struct.sighand_struct* [ null, %entry ], [ %1, %do.body8 ], [ null, %if.end33 ]
  call fastcc void @rcu_read_unlock() #17
  ret %struct.sighand_struct* %.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @group_send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %p, i32 noundef %type) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #19
  %call = call fastcc i32 @check_kill_permission(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %p) #17
  call fastcc void @rcu_read_unlock() #17
  %tobool = icmp eq i32 %call, 0
  %tobool1 = icmp ne i32 %sig, 0
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @do_send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %p, i32 noundef %type) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_kill_permission(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %conv = sext i32 %sig to i64
  %call = call fastcc i32 @valid_signal(i64 noundef %conv) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @si_fromuser(%struct.kernel_siginfo* noundef %info) #17
  br i1 %call1, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call9 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %1, %struct.task_struct* noundef %t) #17
  br i1 %call9, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %call10 = call fastcc i1 @kill_ok_by_cred(%struct.task_struct* noundef %t) #17
  br i1 %call10, label %if.end19, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %cond = icmp eq i32 %sig, 18
  br i1 %cond, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %if.then11
  %call12 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %t) #17
  %tobool13.not = icmp eq %struct.pid* %call12, null
  br i1 %tobool13.not, label %if.end19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %call15 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %1) #17
  %cmp = icmp eq %struct.pid* %call12, %call15
  br i1 %cmp, label %if.end19, label %cleanup

if.end19:                                         ; preds = %lor.lhs.false, %sw.bb, %land.lhs.true, %if.end3
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %lor.lhs.false, %if.end, %entry, %if.end19
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry ], [ 0, %if.end ], [ -1, %lor.lhs.false ], [ -1, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kill_pgrp_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.pid* noundef %pgrp) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.pid* %pgrp, null
  br i1 %cmp.not, label %do.end32.thread, label %if.then

if.then:                                          ; preds = %entry
  %first = getelementptr %struct.pid, %struct.pid* %pgrp, i64 0, i32 3, i64 2, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -67, i32 1
  %tobool9.not6266 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool9.not62 = or i1 %tobool.not, %tobool9.not6266
  br i1 %tobool9.not62, label %do.end32.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %1 = bitcast %struct.hlist_node*** %add.ptr to %struct.task_struct*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %p.064 = phi %struct.task_struct* [ %spec.select61, %for.body ], [ %1, %for.body.preheader ]
  %success.063 = phi i32 [ %or, %for.body ], [ 0, %for.body.preheader ]
  %call = call i32 @group_send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef nonnull %p.064, i32 noundef 2) #17
  %tobool10.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool10.not to i32
  %or = or i32 %success.063, %lnot.ext
  %next = getelementptr %struct.task_struct, %struct.task_struct* %p.064, i64 0, i32 60, i64 2, i32 0
  %2 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool20.not = icmp eq %struct.hlist_node* %2, null
  %add.ptr27 = getelementptr %struct.hlist_node, %struct.hlist_node* %2, i64 -67, i32 1
  %3 = bitcast %struct.hlist_node*** %add.ptr27 to %struct.task_struct*
  %spec.select61 = select i1 %tobool20.not, %struct.task_struct* null, %struct.task_struct* %3
  %tobool9.not = icmp eq %struct.task_struct* %spec.select61, null
  br i1 %tobool9.not, label %do.end32, label %for.body

do.end32:                                         ; preds = %for.body
  %phi.cmp = icmp eq i32 %or, 0
  br i1 %phi.cmp, label %do.end32.thread, label %4

do.end32.thread:                                  ; preds = %if.then, %entry, %do.end32
  %retval1.160 = phi i32 [ %call, %do.end32 ], [ -3, %entry ], [ -3, %if.then ]
  br label %4

4:                                                ; preds = %do.end32, %do.end32.thread
  %5 = phi i32 [ %retval1.160, %do.end32.thread ], [ 0, %do.end32 ]
  ret i32 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kill_pid_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.pid* noundef %pid) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  call fastcc void @__rcu_read_lock() #19
  %call = call %struct.task_struct* @pid_task(%struct.pid* noundef %pid, i32 noundef 0) #19
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %for.cond
  call fastcc void @rcu_read_unlock() #17
  br label %if.then5

if.end:                                           ; preds = %for.cond
  %call1 = call i32 @group_send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef nonnull %call, i32 noundef 1) #17
  call fastcc void @rcu_read_unlock() #17
  %cmp.not = icmp eq i32 %call1, -3
  br i1 %cmp.not, label %for.cond, label %if.then5, !prof !11

if.then5:                                         ; preds = %if.end, %if.end.thread
  %error.114 = phi i32 [ -3, %if.end.thread ], [ %call1, %if.end ]
  ret i32 %error.114
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @pid_task(%struct.pid* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kill_pid_usb_asyncio(i32 noundef %sig, i32 noundef %errno, i64 %addr.coerce, %struct.pid* noundef %pid, %struct.cred* nocapture noundef readonly %cred) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %flags = alloca i64, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  %1 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store i64 0, i64* %flags, align 8, !annotation !16
  %conv = sext i32 %sig to i64
  %call = call fastcc i32 @valid_signal(i64 noundef %conv) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %coerce.val.ip = inttoptr i64 %addr.coerce to i8*
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 %errno, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 -4, i32* %si_code, align 8
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  %addr.sroa.0.0..sroa_idx = bitcast i32* %_pid to i8**
  store i8* %coerce.val.ip, i8** %addr.sroa.0.0..sroa_idx, align 8
  call fastcc void @__rcu_read_lock() #19
  %call1 = call %struct.task_struct* @pid_task(%struct.pid* noundef %pid, i32 noundef 0) #19
  %tobool2.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool2.not, label %out_unlock, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i1 @kill_as_cred_perm(%struct.cred* noundef %cred, %struct.task_struct* noundef nonnull %call1) #17
  br i1 %call5, label %if.end7, label %out_unlock

if.end7:                                          ; preds = %if.end4
  %tobool12.not = icmp eq i32 %sig, 0
  br i1 %tobool12.not, label %out_unlock, label %if.then13

if.then13:                                        ; preds = %if.end7
  %call14 = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef nonnull %call1, i64* noundef nonnull %flags) #17
  %tobool15.not = icmp eq %struct.sighand_struct* %call14, null
  br i1 %tobool15.not, label %out_unlock, label %if.then16

if.then16:                                        ; preds = %if.then13
  %call17 = call fastcc i32 @__send_signal(i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %info, %struct.task_struct* noundef nonnull %call1, i32 noundef 1, i1 noundef false) #17
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef nonnull %call1, i64* noundef nonnull %flags) #17
  br label %out_unlock

out_unlock:                                       ; preds = %if.then13, %if.end4, %if.end, %if.then16, %if.end7
  %ret.0 = phi i32 [ %call17, %if.then16 ], [ 0, %if.end7 ], [ -3, %if.end ], [ -1, %if.end4 ], [ -3, %if.then13 ]
  call fastcc void @rcu_read_unlock() #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @valid_signal(i64 noundef %sig) unnamed_addr #12 {
entry:
  %cmp = icmp ult i64 %sig, 65
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 48) #19
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @kill_as_cred_perm(%struct.cred* nocapture noundef readonly %cred, %struct.task_struct* noundef %target) unnamed_addr #3 {
entry:
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %target, i64 0, i32 79
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 5, i32 0
  %1 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %1 to i64
  %coerce.dive5 = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 3, i32 0
  %2 = load i32, i32* %coerce.dive5, align 4
  %coerce.val.ii6 = zext i32 %2 to i64
  %call = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii6) #17
  br i1 %call, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %coerce.dive10 = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 1, i32 0
  %3 = load i32, i32* %coerce.dive10, align 4
  %coerce.val.ii11 = zext i32 %3 to i64
  %call12 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii11) #17
  br i1 %call12, label %lor.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %coerce.dive16 = getelementptr inbounds %struct.cred, %struct.cred* %cred, i64 0, i32 1, i32 0
  %4 = load i32, i32* %coerce.dive16, align 4
  %coerce.val.ii17 = zext i32 %4 to i64
  %call20 = call fastcc i1 @uid_eq(i64 %coerce.val.ii17, i64 %coerce.val.ii6) #17
  br i1 %call20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false13
  %call27 = call fastcc i1 @uid_eq(i64 %coerce.val.ii17, i64 %coerce.val.ii11) #17
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false13, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false13 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %call27, %lor.rhs ]
  ret i1 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__send_signal(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %t, i32 noundef %type, i1 noundef %force) unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %counter.i.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %1 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !11

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 1079; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !18
  unreachable

do.end9:                                          ; preds = %entry
  %call11 = call fastcc i1 @prepare_signal(i32 noundef %sig, %struct.task_struct* noundef %t, i1 noundef %force) #17
  br i1 %call11, label %if.end13, label %ret139

if.end13:                                         ; preds = %do.end9
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end13
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  %pending15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 92
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sigpending* [ %shared_pending, %cond.true ], [ %pending15, %cond.false ]
  %call16 = call fastcc i1 @legacy_queue(%struct.sigpending* noundef %cond, i32 noundef %sig) #17
  br i1 %call16, label %ret139, label %if.end18

if.end18:                                         ; preds = %cond.end
  %cmp19 = icmp eq i32 %sig, 9
  br i1 %cmp19, label %out_set, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 4
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 2097152
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end23, label %out_set

if.end23:                                         ; preds = %lor.lhs.false
  %cmp24 = icmp slt i32 %sig, 32
  br i1 %cmp24, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.end23
  %call27 = call fastcc i32 @is_si_special(%struct.kernel_siginfo* noundef %info) #17
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.rhs, label %if.end31

lor.rhs:                                          ; preds = %if.then26
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  %4 = load i32, i32* %si_code, align 8
  %5 = xor i32 %4, -1
  %.lobit.not = lshr i32 %5, 31
  br label %if.end31

if.end31:                                         ; preds = %if.end23, %if.then26, %lor.rhs
  %override_rlimit.0 = phi i32 [ 1, %if.then26 ], [ %.lobit.not, %lor.rhs ], [ 0, %if.end23 ]
  %call32 = call fastcc %struct.sigqueue* @__sigqueue_alloc(i32 noundef %sig, %struct.task_struct* noundef %t, i32 noundef 2592, i32 noundef %override_rlimit.0, i32 noundef 0) #17
  %tobool33.not = icmp eq %struct.sigqueue* %call32, null
  br i1 %tobool33.not, label %if.else79, label %if.then34

if.then34:                                        ; preds = %if.end31
  %list = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 0
  %list35 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %cond, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %list35) #17
  %6 = ptrtoint %struct.kernel_siginfo* %info to i64
  switch i64 %6, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb62
  ]

sw.bb:                                            ; preds = %if.then34
  %info36 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef %info36) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info36, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code40 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2, i32 0, i32 2
  store i32 0, i32* %si_code40, align 8
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %call42 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %t) #19
  %call43 = call fastcc i32 @task_tgid_nr_ns(%struct.task_struct* noundef %8, %struct.pid_namespace* noundef %call42) #17
  %_pid = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2, i32 0, i32 3, i32 0, i32 0
  store i32 %call43, i32* %_pid, align 8
  call fastcc void @__rcu_read_lock() #19
  call fastcc void @__rcu_read_lock() #19
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 79
  %9 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  call fastcc void @rcu_read_unlock() #17
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i64 0, i32 80
  %10 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %10, i64 0, i32 1, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call58 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #17
  %11 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2, i32 0, i32 3, i32 0, i32 1
  store i32 %call58, i32* %11, align 4
  call fastcc void @rcu_read_unlock() #17
  br label %out_set

sw.bb62:                                          ; preds = %if.then34
  %info63 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef %info63) #17
  %si_signo65 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info63, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo65, align 8
  %si_errno67 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2, i32 0, i32 1
  store i32 0, i32* %si_errno67, align 4
  %si_code69 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2, i32 0, i32 2
  store i32 128, i32* %si_code69, align 8
  %_pid73 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2, i32 0, i32 3, i32 0, i32 0
  store i32 0, i32* %_pid73, align 8
  %12 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2, i32 0, i32 3, i32 0, i32 1
  store i32 0, i32* %12, align 4
  br label %out_set

sw.default:                                       ; preds = %if.then34
  %info78 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %call32, i64 0, i32 2
  call fastcc void @copy_siginfo(%struct.kernel_siginfo* noundef %info78, %struct.kernel_siginfo* noundef %info) #17
  br label %out_set

if.else79:                                        ; preds = %if.end31
  %call80 = call fastcc i32 @is_si_special(%struct.kernel_siginfo* noundef %info) #17
  %tobool81 = icmp eq i32 %call80, 0
  %cmp82 = icmp sgt i32 %sig, 31
  %or.cond = and i1 %cmp82, %tobool81
  br i1 %or.cond, label %land.lhs.true84, label %out_set

land.lhs.true84:                                  ; preds = %if.else79
  %si_code85 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  %13 = load i32, i32* %si_code85, align 8
  %cmp86.not = icmp eq i32 %13, 0
  br i1 %cmp86.not, label %out_set, label %ret139

out_set:                                          ; preds = %if.else79, %land.lhs.true84, %sw.default, %sw.bb62, %sw.bb, %if.end18, %lor.lhs.false
  call fastcc void @signalfd_notify(%struct.task_struct* noundef %t) #17
  %signal92 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %cond, i64 0, i32 1
  call fastcc void @sigaddset(%struct.sigset_t* noundef %signal92, i32 noundef %sig) #17
  %cmp93 = icmp ugt i32 %type, 1
  br i1 %cmp93, label %if.then95, label %if.end138

if.then95:                                        ; preds = %out_set
  %signal96 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 87
  %14 = load %struct.signal_struct*, %struct.signal_struct** %signal96, align 8
  %first = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %14, i64 0, i32 7, i32 0
  %15 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool98.not = icmp eq %struct.hlist_node* %15, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %15, i64 -1, i32 1
  %tobool107.not217219 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool107.not217 = or i1 %tobool98.not, %tobool107.not217219
  br i1 %tobool107.not217, label %if.end138, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then95
  %16 = bitcast %struct.hlist_node*** %add.ptr to %struct.multiprocess_signals*
  %cmp110 = icmp eq i32 %sig, 18
  %17 = add i32 %sig, -1
  %18 = icmp ugt i32 %17, 30
  %sh_prom = zext i32 %17 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and120 = and i64 %shl, 3932160
  %tobool121.not = icmp eq i64 %and120, 0
  %brmerge = select i1 %18, i1 true, i1 %tobool121.not
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end124
  %delayed.0218 = phi %struct.multiprocess_signals* [ %16, %for.body.lr.ph ], [ %spec.select216, %if.end124 ]
  %signal109 = getelementptr inbounds %struct.multiprocess_signals, %struct.multiprocess_signals* %delayed.0218, i64 0, i32 0
  br i1 %cmp110, label %if.then112, label %if.else113

if.then112:                                       ; preds = %for.body
  call fastcc void @sigdelsetmask(%struct.sigset_t* noundef %signal109, i64 noundef 3932160) #17
  br label %if.end124

if.else113:                                       ; preds = %for.body
  br i1 %brmerge, label %if.end124, label %if.then122

if.then122:                                       ; preds = %if.else113
  call fastcc void @sigdelset(%struct.sigset_t* noundef %signal109, i32 noundef 18) #17
  br label %if.end124

if.end124:                                        ; preds = %if.else113, %if.then122, %if.then112
  call fastcc void @sigaddset(%struct.sigset_t* noundef %signal109, i32 noundef %sig) #17
  %next = getelementptr inbounds %struct.multiprocess_signals, %struct.multiprocess_signals* %delayed.0218, i64 0, i32 1, i32 0
  %19 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool127.not = icmp eq %struct.hlist_node* %19, null
  %add.ptr134 = getelementptr %struct.hlist_node, %struct.hlist_node* %19, i64 -1, i32 1
  %20 = bitcast %struct.hlist_node*** %add.ptr134 to %struct.multiprocess_signals*
  %spec.select216 = select i1 %tobool127.not, %struct.multiprocess_signals* null, %struct.multiprocess_signals* %20
  %tobool107.not = icmp eq %struct.multiprocess_signals* %spec.select216, null
  br i1 %tobool107.not, label %if.end138, label %for.body

if.end138:                                        ; preds = %if.end124, %if.then95, %out_set
  call fastcc void @complete_signal(i32 noundef %sig, %struct.task_struct* noundef %t, i32 noundef %type) #17
  br label %ret139

ret139:                                           ; preds = %land.lhs.true84, %cond.end, %do.end9, %if.end138
  %ret.0 = phi i32 [ 0, %cond.end ], [ 0, %if.end138 ], [ 0, %do.end9 ], [ -11, %land.lhs.true84 ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %p) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %sig to i64
  %call = call fastcc i32 @valid_signal(i64 noundef %conv) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @do_send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %p, i32 noundef 0) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @send_sig(i32 noundef %sig, %struct.task_struct* noundef %p, i32 noundef %priv) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %priv, 0
  %cond = select i1 %tobool.not, %struct.kernel_siginfo* null, %struct.kernel_siginfo* inttoptr (i64 1 to %struct.kernel_siginfo*)
  %call = call i32 @send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %cond, %struct.task_struct* noundef %p) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @force_sig(i32 noundef %sig) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 128, i32* %si_code, align 8
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  store i32 0, i32* %_pid, align 8
  %1 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  store i32 0, i32* %1, align 4
  %call = call i32 @force_sig_info(%struct.kernel_siginfo* noundef nonnull %info) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @force_sigsegv(i32 noundef %sig) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %cmp = icmp eq i32 %sig, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 3, i64 10, i32 0, i32 0
  store void (i32)* null, void (i32)** %sa_handler, align 8
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i15 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i15, i64 noundef %call4) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @force_sig(i32 noundef 11) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @force_sig_fault_to_task(i32 noundef %sig, i32 noundef %code, i8* noundef %addr, %struct.task_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 %code, i32* %si_code, align 8
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %addr, i8** %_addr, align 8
  %call = call fastcc i32 @force_sig_info_to_task(%struct.kernel_siginfo* noundef nonnull %info, %struct.task_struct* noundef %t, i1 noundef false) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @force_sig_fault(i32 noundef %sig, i32 noundef %code, i8* noundef %addr) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call i32 @force_sig_fault_to_task(i32 noundef %sig, i32 noundef %code, i8* noundef %addr, %struct.task_struct* noundef %1) #17
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @send_sig_fault(i32 noundef %sig, i32 noundef %code, i8* noundef %addr, %struct.task_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 %code, i32* %si_code, align 8
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %addr, i8** %_addr, align 8
  %call = call i32 @send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %info, %struct.task_struct* noundef %t) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @force_sig_mceerr(i32 noundef %code, i8* noundef %addr, i16 noundef %lsb) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  %1 = and i32 %code, -2
  %.not = icmp eq i32 %1, 4
  br i1 %.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 1720; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 7, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 %code, i32* %si_code, align 8
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %addr, i8** %_addr, align 8
  %2 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 2
  %_addr_lsb = bitcast i32* %2 to i16*
  store i16 %lsb, i16* %_addr_lsb, align 8
  %call = call i32 @force_sig_info(%struct.kernel_siginfo* noundef nonnull %info) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @send_sig_mceerr(i32 noundef %code, i8* noundef %addr, i16 noundef %lsb, %struct.task_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  %1 = and i32 %code, -2
  %.not = icmp eq i32 %1, 4
  br i1 %.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 1734; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 7, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 %code, i32* %si_code, align 8
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %addr, i8** %_addr, align 8
  %2 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 2
  %_addr_lsb = bitcast i32* %2 to i16*
  store i16 %lsb, i16* %_addr_lsb, align 8
  %call = call i32 @send_sig_info(i32 noundef 7, %struct.kernel_siginfo* noundef nonnull %info, %struct.task_struct* noundef %t) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @force_sig_bnderr(i8* noundef %addr, i8* noundef %lower, i8* noundef %upper) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 11, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 3, i32* %si_code, align 8
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %addr, i8** %_addr, align 8
  %1 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 2
  %_lower = getelementptr inbounds i32, i32* %1, i64 2
  %2 = bitcast i32* %_lower to i8**
  store i8* %lower, i8** %2, align 8
  %_upper = getelementptr inbounds i32, i32* %1, i64 4
  %3 = bitcast i32* %_upper to i8**
  store i8* %upper, i8** %3, align 8
  %call = call i32 @force_sig_info(%struct.kernel_siginfo* noundef nonnull %info) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @force_sig_pkuerr(i8* noundef %addr, i32 noundef %pkey) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 11, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 4, i32* %si_code, align 8
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %addr, i8** %_addr, align 8
  %1 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 2
  %2 = getelementptr inbounds i32, i32* %1, i64 2
  store i32 %pkey, i32* %2, align 8
  %call = call i32 @force_sig_info(%struct.kernel_siginfo* noundef nonnull %info) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @force_sig_perf(i8* noundef %addr, i32 noundef %type, i64 noundef %sig_data) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 5, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 6, i32* %si_code, align 8
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %addr, i8** %_addr, align 8
  %1 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 2
  %_data = bitcast i32* %1 to i64*
  store i64 %sig_data, i64* %_data, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 2
  store i32 %type, i32* %2, align 8
  %call = call i32 @force_sig_info(%struct.kernel_siginfo* noundef nonnull %info) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @force_sig_seccomp(i32 noundef %syscall, i32 noundef %reason, i1 noundef %force_coredump) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 31, i32* %si_signo, align 8
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 1, i32* %si_code, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %2) #17
  %pc = getelementptr i8, i8* %call1, i64 16304
  %3 = bitcast i8* %pc to i64*
  %4 = load i64, i64* %3, align 8
  %5 = inttoptr i64 %4 to i8*
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_sigsys = bitcast %union.__sifields* %_sifields to %struct.anon.67*
  %_call_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %5, i8** %_call_addr, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 %reason, i32* %si_errno, align 4
  %_arch = getelementptr inbounds %struct.anon.67, %struct.anon.67* %_sigsys, i64 0, i32 2
  store i32 -1073741641, i32* %_arch, align 4
  %6 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 2
  store i32 %syscall, i32* %6, align 8
  %call10 = call fastcc i32 @force_sig_info_to_task(%struct.kernel_siginfo* noundef nonnull %info, %struct.task_struct* noundef %2, i1 noundef %force_coredump) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #8 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @force_sig_ptrace_errno_trap(i32 noundef %errno, i8* noundef %addr) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 5, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 %errno, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 4, i32* %si_code, align 8
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %addr, i8** %_addr, align 8
  %call = call i32 @force_sig_info(%struct.kernel_siginfo* noundef nonnull %info) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @force_sig_fault_trapno(i32 noundef %sig, i32 noundef %code, i8* noundef %addr, i32 noundef %trapno) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 %code, i32* %si_code, align 8
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %addr, i8** %_addr, align 8
  %1 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 2
  store i32 %trapno, i32* %1, align 8
  %call = call i32 @force_sig_info(%struct.kernel_siginfo* noundef nonnull %info) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @send_sig_fault_trapno(i32 noundef %sig, i32 noundef %code, i8* noundef %addr, i32 noundef %trapno, %struct.task_struct* noundef %t) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 %code, i32* %si_code, align 8
  %_sifields = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  store i8* %addr, i8** %_addr, align 8
  %1 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 2
  store i32 %trapno, i32* %1, align 8
  %call = call i32 @send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %info, %struct.task_struct* noundef %t) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kill_pgrp(%struct.pid* noundef %pid, i32 noundef %sig, i32 noundef %priv) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_read_lock() #17
  %tobool.not = icmp eq i32 %priv, 0
  %cond = select i1 %tobool.not, %struct.kernel_siginfo* null, %struct.kernel_siginfo* inttoptr (i64 1 to %struct.kernel_siginfo*)
  %call = call i32 @__kill_pgrp_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %cond, %struct.pid* noundef %pid) #17
  call fastcc void @__raw_read_unlock() #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !21
  call fastcc void @queued_read_lock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_read_unlock() #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kill_pid(%struct.pid* noundef %pid, i32 noundef %sig, i32 noundef %priv) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %priv, 0
  %cond = select i1 %tobool.not, %struct.kernel_siginfo* null, %struct.kernel_siginfo* inttoptr (i64 1 to %struct.kernel_siginfo*)
  %call = call i32 @kill_pid_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %cond, %struct.pid* noundef %pid) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.sigqueue* @sigqueue_alloc() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc %struct.sigqueue* @__sigqueue_alloc(i32 noundef -1, %struct.task_struct* noundef %1, i32 noundef 3264, i32 noundef 0, i32 noundef 1) #17
  ret %struct.sigqueue* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sigqueue* @__sigqueue_alloc(i32 noundef %sig, %struct.task_struct* noundef %t, i32 noundef %gfp_flags, i32 noundef %override_rlimit, i32 noundef %sigqueue_flags) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #19
  call fastcc void @__rcu_read_lock() #19
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 79
  %0 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %ucounts5 = getelementptr inbounds %struct.cred, %struct.cred* %0, i64 0, i32 17
  %1 = load %struct.ucounts*, %struct.ucounts** %ucounts5, align 8
  call fastcc void @rcu_read_unlock() #17
  %call = call i64 @inc_rlimit_get_ucounts(%struct.ucounts* noundef %1, i32 noundef 10) #19
  call fastcc void @rcu_read_unlock() #17
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool7.not = icmp eq i32 %override_rlimit, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end13

lor.lhs.false:                                    ; preds = %if.end
  %call8 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %t) #17
  %cmp.not = icmp ugt i64 %call, %call8
  br i1 %cmp.not, label %if.end13.thread, label %if.end13, !prof !11

if.end13.thread:                                  ; preds = %lor.lhs.false
  call fastcc void @print_dropped_signal(i32 noundef %sig) #17
  br label %if.then23

if.end13:                                         ; preds = %if.end, %lor.lhs.false
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @sigqueue_cachep, align 8
  %call12 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef %gfp_flags) #19
  %cmp14 = icmp eq i8* %call12, null
  br i1 %cmp14, label %if.then23, label %if.else24, !prof !11

if.then23:                                        ; preds = %if.end13.thread, %if.end13
  call void @dec_rlimit_put_ucounts(%struct.ucounts* noundef %1, i32 noundef 10) #19
  br label %cleanup

if.else24:                                        ; preds = %if.end13
  %3 = bitcast i8* %call12 to %struct.sigqueue*
  %list = bitcast i8* %call12 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %list) #17
  %flags = getelementptr inbounds i8, i8* %call12, i64 16
  %4 = bitcast i8* %flags to i32*
  store i32 %sigqueue_flags, i32* %4, align 8
  %ucounts25 = getelementptr inbounds i8, i8* %call12, i64 72
  %5 = bitcast i8* %ucounts25 to %struct.ucounts**
  store %struct.ucounts* %1, %struct.ucounts** %5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.else24, %entry
  %retval.0 = phi %struct.sigqueue* [ null, %entry ], [ %3, %if.else24 ], [ null, %if.then23 ]
  ret %struct.sigqueue* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sigqueue_free(%struct.sigqueue* noundef %q) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %flags1 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q, i64 0, i32 1
  %1 = load i32, i32* %flags1, align 8
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5, label %do.body12, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 1895; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !23
  unreachable

do.body12:                                        ; preds = %entry
  %2 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 88
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  %call15 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %4 = load i32, i32* %flags1, align 8
  %and21 = and i32 %4, -2
  store i32 %and21, i32* %flags1, align 8
  %list = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q, i64 0, i32 0
  %call22 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #17
  %tobool23.not = icmp eq i32 %call22, 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call15) #19
  %tobool26.not37 = icmp eq %struct.sigqueue* %q, null
  %tobool26.not = or i1 %tobool26.not37, %tobool23.not
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %do.body12
  call fastcc void @__sigqueue_free(%struct.sigqueue* noundef nonnull %q) #17
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.body12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @send_sigqueue(%struct.sigqueue* noundef %q, %struct.pid* noundef %pid, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %si_signo = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q, i64 0, i32 2, i32 0, i32 0
  %0 = load i32, i32* %si_signo, align 8
  %1 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store i64 0, i64* %flags, align 8, !annotation !16
  %flags1 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q, i64 0, i32 1
  %2 = load i32, i32* %flags1, align 8
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !11

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 1923; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !24
  unreachable

do.end10:                                         ; preds = %entry
  call fastcc void @__rcu_read_lock() #19
  %call = call %struct.task_struct* @pid_task(%struct.pid* noundef %pid, i32 noundef %type) #19
  %tobool11.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool11.not, label %ret73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end10
  %call12 = call fastcc %struct.sighand_struct* @lock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #17
  %tobool13.not = icmp eq %struct.sighand_struct* %call12, null
  br i1 %tobool13.not, label %ret73, label %if.end22, !prof !11

if.end22:                                         ; preds = %lor.lhs.false
  %call23 = call fastcc i1 @prepare_signal(i32 noundef %0, %struct.task_struct* noundef nonnull %call, i1 noundef false) #17
  br i1 %call23, label %if.end25, label %out

if.end25:                                         ; preds = %if.end22
  %list = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q, i64 0, i32 0
  %call26 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #17
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body38, label %if.end59, !prof !11

do.body38:                                        ; preds = %if.end25
  %si_code = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q, i64 0, i32 2, i32 0, i32 2
  %3 = load i32, i32* %si_code, align 8
  %cmp.not = icmp eq i32 %3, -2
  br i1 %cmp.not, label %do.end57, label %do.body49, !prof !9

do.body49:                                        ; preds = %do.body38
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 1942; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !25
  unreachable

do.end57:                                         ; preds = %do.body38
  %4 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q, i64 0, i32 2, i32 0, i32 3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %4, align 4
  br label %out

if.end59:                                         ; preds = %if.end25
  %6 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q, i64 0, i32 2, i32 0, i32 3, i32 0, i32 1
  store i32 0, i32* %6, align 4
  call fastcc void @signalfd_notify(%struct.task_struct* noundef nonnull %call) #17
  %cmp64.not = icmp eq i32 %type, 0
  br i1 %cmp64.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end59
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 87
  %7 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %if.end59
  %pending66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call, i64 0, i32 92
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sigpending* [ %shared_pending, %cond.true ], [ %pending66, %cond.false ]
  %list68 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %cond, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %list68) #17
  %signal69 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %cond, i64 0, i32 1
  call fastcc void @sigaddset(%struct.sigset_t* noundef %signal69, i32 noundef %0) #17
  call fastcc void @complete_signal(i32 noundef %0, %struct.task_struct* noundef nonnull %call, i32 noundef %type) #17
  br label %out

out:                                              ; preds = %if.end22, %cond.end, %do.end57
  %ret.0 = phi i32 [ 0, %do.end57 ], [ 0, %cond.end ], [ 1, %if.end22 ]
  call fastcc void @unlock_task_sighand(%struct.task_struct* noundef nonnull %call, i64* noundef nonnull %flags) #17
  br label %ret73

ret73:                                            ; preds = %do.end10, %lor.lhs.false, %out
  %ret.1 = phi i32 [ %ret.0, %out ], [ -1, %lor.lhs.false ], [ -1, %do.end10 ]
  call fastcc void @rcu_read_unlock() #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @prepare_signal(i32 noundef %sig, %struct.task_struct* nocapture noundef readonly %p, i1 noundef %force) unnamed_addr #0 {
entry:
  %flush = alloca %struct.sigset_t, align 8
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %1 = bitcast %struct.sigset_t* %flush to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  %2 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %flush, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %2, align 8, !annotation !16
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 12
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 12
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i32 %3, 4
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end95

if.then5:                                         ; preds = %if.then
  %cmp = icmp eq i32 %sig, 9
  br label %cleanup

if.else:                                          ; preds = %entry
  %4 = add i32 %sig, -1
  %5 = icmp ult i32 %4, 31
  br i1 %5, label %land.lhs.true8, label %if.end95

land.lhs.true8:                                   ; preds = %if.else
  %sh_prom = zext i32 %4 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and9 = and i64 %shl, 3932160
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.else32, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  call fastcc void @siginitset(%struct.sigset_t* noundef nonnull %flush, i64 noundef 131072) #17
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 6
  call fastcc void @flush_sigqueue_mask(%struct.sigset_t* noundef nonnull %flush, %struct.sigpending* noundef %shared_pending) #17
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %next = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 3, i32 0
  %.pn139145 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %t.0.in146 = getelementptr %struct.list_head, %struct.list_head* %.pn139145, i64 -70, i32 1
  %thread_node147 = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in146, i64 139
  %7 = bitcast %struct.list_head** %thread_node147 to %struct.list_head*
  %thread_head18148 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 3
  %cmp19.not149 = icmp eq %struct.list_head* %thread_head18148, %7
  br i1 %cmp19.not149, label %if.end95, label %for.body

for.body:                                         ; preds = %if.then11, %for.body
  %thread_node151 = phi %struct.list_head** [ %thread_node, %for.body ], [ %thread_node147, %if.then11 ]
  %8 = phi %struct.list_head* [ %.pn139, %for.body ], [ %.pn139145, %if.then11 ]
  %9 = getelementptr %struct.list_head, %struct.list_head* %8, i64 -70, i32 1
  %pending = getelementptr inbounds %struct.list_head*, %struct.list_head** %9, i64 182
  %10 = bitcast %struct.list_head** %pending to %struct.sigpending*
  call fastcc void @flush_sigqueue_mask(%struct.sigset_t* noundef nonnull %flush, %struct.sigpending* noundef %10) #17
  %.pn139 = load volatile %struct.list_head*, %struct.list_head** %thread_node151, align 8
  %t.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn139, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in, i64 139
  %11 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %12 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %thread_head18 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 3
  %cmp19.not = icmp eq %struct.list_head* %thread_head18, %11
  br i1 %cmp19.not, label %if.end95, label %for.body

if.else32:                                        ; preds = %land.lhs.true8
  %cmp33 = icmp eq i32 %sig, 18
  br i1 %cmp33, label %if.then34, label %if.end95

if.then34:                                        ; preds = %if.else32
  call fastcc void @siginitset(%struct.sigset_t* noundef nonnull %flush, i64 noundef 3932160) #17
  %shared_pending35 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 6
  call fastcc void @flush_sigqueue_mask(%struct.sigset_t* noundef nonnull %flush, %struct.sigpending* noundef %shared_pending35) #17
  %13 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %next43 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %13, i64 0, i32 3, i32 0
  %.pn152 = load volatile %struct.list_head*, %struct.list_head** %next43, align 8
  %t.1.in153 = getelementptr %struct.list_head, %struct.list_head* %.pn152, i64 -70, i32 1
  %thread_node50155 = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.1.in153, i64 139
  %14 = bitcast %struct.list_head** %thread_node50155 to %struct.list_head*
  %thread_head52156 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %13, i64 0, i32 3
  %cmp53.not157 = icmp eq %struct.list_head* %thread_head52156, %14
  br i1 %cmp53.not157, label %for.end77, label %for.body54

for.body54:                                       ; preds = %if.then34, %for.inc64
  %thread_node50160 = phi %struct.list_head** [ %thread_node50, %for.inc64 ], [ %thread_node50155, %if.then34 ]
  %t.1.in158 = phi %struct.list_head** [ %t.1.in, %for.inc64 ], [ %t.1.in153, %if.then34 ]
  %t.1159 = bitcast %struct.list_head** %t.1.in158 to %struct.task_struct*
  %pending55 = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.1.in158, i64 182
  %15 = bitcast %struct.list_head** %pending55 to %struct.sigpending*
  call fastcc void @flush_sigqueue_mask(%struct.sigset_t* noundef nonnull %flush, %struct.sigpending* noundef %15) #17
  call void @task_clear_jobctl_pending(%struct.task_struct* noundef %t.1159, i64 noundef 131072) #17
  %ptrace = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.1.in158, i64 5
  %16 = bitcast %struct.list_head** %ptrace to i32*
  %17 = load i32, i32* %16, align 8
  %and56 = and i32 %17, 65536
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then61, label %if.else62, !prof !9

if.then61:                                        ; preds = %for.body54
  %call = call i32 @wake_up_state(%struct.task_struct* noundef %t.1159, i32 noundef 4) #19
  br label %for.inc64

if.else62:                                        ; preds = %for.body54
  call fastcc void @ptrace_trap_notify(%struct.task_struct* noundef %t.1159) #17
  br label %for.inc64

for.inc64:                                        ; preds = %if.then61, %if.else62
  %.pn = load volatile %struct.list_head*, %struct.list_head** %thread_node50160, align 8
  %t.1.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node50 = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.1.in, i64 139
  %18 = bitcast %struct.list_head** %thread_node50 to %struct.list_head*
  %19 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %thread_head52 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %19, i64 0, i32 3
  %cmp53.not = icmp eq %struct.list_head* %thread_head52, %18
  br i1 %cmp53.not, label %for.end77, label %for.body54

for.end77:                                        ; preds = %for.inc64, %if.then34
  %20 = load i32, i32* %flags, align 4
  %and79 = and i32 %20, 1
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end87, label %if.then89

if.end87:                                         ; preds = %for.end77
  %group_stop_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 11
  %21 = load i32, i32* %group_stop_count, align 8
  %tobool83.not = icmp eq i32 %21, 0
  br i1 %tobool83.not, label %if.end95, label %if.then89

if.then89:                                        ; preds = %for.end77, %if.end87
  %why.0144 = phi i32 [ 18, %if.end87 ], [ 34, %for.end77 ]
  call fastcc void @signal_set_stop_flags(%struct.signal_struct* noundef %0, i32 noundef %why.0144) #17
  %group_stop_count91 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 11
  store i32 0, i32* %group_stop_count91, align 8
  %group_exit_code = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 8
  store i32 0, i32* %group_exit_code, align 8
  br label %if.end95

if.end95:                                         ; preds = %for.body, %if.then11, %if.else, %if.end87, %if.then89, %if.else32, %if.then
  %call97 = call fastcc i1 @sig_ignored(%struct.task_struct* noundef %p, i32 noundef %sig, i1 noundef %force) #17
  %lnot98 = xor i1 %call97, true
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.then5
  %retval.0 = phi i1 [ %lnot98, %if.end95 ], [ %cmp, %if.then5 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @signalfd_notify(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #0 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 2
  %call = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %signalfd_wqh) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %1 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %signalfd_wqh4 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %1, i64 0, i32 2
  call void @__wake_up(%struct.wait_queue_head* noundef %signalfd_wqh4, i32 noundef 3, i32 noundef 1, i8* noundef null) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @complete_signal(i32 noundef %sig, %struct.task_struct* noundef %p, i32 noundef %type) unnamed_addr #0 {
entry:
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %call = call fastcc i1 @wants_signal(i32 noundef %sig, %struct.task_struct* noundef %p) #17
  br i1 %call, label %if.end12, label %if.else

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call2 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %p) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else4, label %cleanup

if.else4:                                         ; preds = %lor.lhs.false
  %curr_target = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 5
  %1 = load %struct.task_struct*, %struct.task_struct** %curr_target, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else4
  %t.0 = phi %struct.task_struct* [ %1, %if.else4 ], [ %call6, %while.body ]
  %call5 = call fastcc i1 @wants_signal(i32 noundef %sig, %struct.task_struct* noundef %t.0) #17
  br i1 %call5, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call6 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %t.0) #17
  %2 = load %struct.task_struct*, %struct.task_struct** %curr_target, align 8
  %cmp8 = icmp eq %struct.task_struct* %call6, %2
  br i1 %cmp8, label %cleanup, label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.task_struct* %t.0, %struct.task_struct** %curr_target, align 8
  br label %if.end12

if.end12:                                         ; preds = %entry, %while.end
  %t.1 = phi %struct.task_struct* [ %t.0, %while.end ], [ %p, %entry ]
  %3 = add i32 %sig, -1
  %4 = icmp ult i32 %3, 31
  br i1 %4, label %land.lhs.true15, label %land.lhs.true17

land.lhs.true15:                                  ; preds = %if.end12
  %sh_prom = zext i32 %3 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and = and i64 %shl, 142540800
  %tobool16.not = icmp eq i64 %and, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.end46

land.lhs.true17:                                  ; preds = %land.lhs.true15, %if.end12
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 88
  %5 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %idxprom = sext i32 %3 to i64
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %5, i64 0, i32 3, i64 %idxprom, i32 0, i32 0
  %6 = load void (i32)*, void (i32)** %sa_handler, align 8
  %cmp19 = icmp eq void (i32)* %6, null
  br i1 %cmp19, label %land.lhs.true20, label %if.end46

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 12
  %7 = load i32, i32* %flags, align 4
  %and21 = and i32 %7, 4
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %if.end46

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %real_blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t.1, i64 0, i32 90
  %call24 = call fastcc i32 @sigismember(%struct.sigset_t* noundef %real_blocked, i32 noundef %sig) #17
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %if.end46

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %cmp27 = icmp eq i32 %sig, 9
  br i1 %cmp27, label %if.then30, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %land.lhs.true26
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 5
  %8 = load i32, i32* %ptrace, align 8
  %tobool29.not = icmp eq i32 %8, 0
  br i1 %tobool29.not, label %if.then30, label %if.end46

if.then30:                                        ; preds = %lor.lhs.false28, %land.lhs.true26
  br i1 %4, label %land.lhs.true34, label %if.then40

land.lhs.true34:                                  ; preds = %if.then30
  %sh_prom36 = zext i32 %3 to i64
  %shl37 = shl nuw nsw i64 1, %sh_prom36
  %and38 = and i64 %shl37, 1098908924
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end46

if.then40:                                        ; preds = %land.lhs.true34, %if.then30
  store i32 4, i32* %flags, align 4
  %group_exit_code = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 8
  store i32 %sig, i32* %group_exit_code, align 8
  %group_stop_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 11
  store i32 0, i32* %group_stop_count, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then40
  %t.2 = phi %struct.task_struct* [ %p, %if.then40 ], [ %call43, %do.body ]
  call void @task_clear_jobctl_pending(%struct.task_struct* noundef %t.2, i64 noundef 1703936) #17
  %signal42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t.2, i64 0, i32 92, i32 1
  call fastcc void @sigaddset(%struct.sigset_t* noundef %signal42, i32 noundef 9) #17
  call fastcc void @signal_wake_up(%struct.task_struct* noundef %t.2, i1 noundef true) #17
  %call43 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %t.2) #17
  %cmp44.not = icmp eq %struct.task_struct* %call43, %p
  br i1 %cmp44.not, label %cleanup, label %do.body

if.end46:                                         ; preds = %land.lhs.true34, %lor.lhs.false28, %land.lhs.true23, %land.lhs.true20, %land.lhs.true17, %land.lhs.true15
  %cmp47 = icmp eq i32 %sig, 9
  call fastcc void @signal_wake_up(%struct.task_struct* noundef %t.1, i1 noundef %cmp47) #17
  br label %cleanup

cleanup:                                          ; preds = %while.body, %do.body, %if.else, %lor.lhs.false, %if.end46
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @do_notify_parent(%struct.task_struct* noundef %tsk, i32 noundef %sig) local_unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  %1 = bitcast i64* %utime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store i64 0, i64* %utime, align 8, !annotation !16
  %2 = bitcast i64* %stime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  store i64 0, i64* %stime, align 8, !annotation !16
  %cmp = icmp eq i32 %sig, -1
  br i1 %cmp, label %do.body2, label %do.end11, !prof !11

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 1987; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !26
  unreachable

do.end11:                                         ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 1
  %3 = load volatile i32, i32* %__state, align 16
  %and = and i32 %3, 12
  %cmp12.not = icmp eq i32 %and, 0
  br i1 %cmp12.not, label %do.body31, label %do.body22, !prof !9

do.body22:                                        ; preds = %do.end11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 1990; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !27
  unreachable

do.body31:                                        ; preds = %do.end11
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 5
  %4 = load i32, i32* %ptrace, align 8
  %tobool32.not = icmp eq i32 %4, 0
  br i1 %tobool32.not, label %land.rhs, label %do.end54

land.rhs:                                         ; preds = %do.body31
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 56
  %5 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  %cmp33.not = icmp eq %struct.task_struct* %5, %tsk
  br i1 %cmp33.not, label %lor.rhs, label %do.body46

lor.rhs:                                          ; preds = %land.rhs
  %call = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %tsk) #17
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %do.body46, label %do.end54, !prof !11

do.body46:                                        ; preds = %land.rhs, %lor.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 1993; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !28
  unreachable

do.end54:                                         ; preds = %do.body31, %lor.rhs
  call fastcc void @do_notify_pidfd(%struct.task_struct* noundef %tsk) #17
  %cmp55.not = icmp eq i32 %sig, 17
  br i1 %cmp55.not, label %if.end66, label %if.then57

if.then57:                                        ; preds = %do.end54
  %parent_exec_id = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 99
  %6 = load i64, i64* %parent_exec_id, align 8
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 53
  %7 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %self_exec_id = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 100
  %8 = load volatile i64, i64* %self_exec_id, align 16
  %cmp62.not = icmp eq i64 %6, %8
  %spec.select = select i1 %cmp62.not, i32 %sig, i32 17
  br label %if.end66

if.end66:                                         ; preds = %if.then57, %do.end54
  %sig.addr.0 = phi i32 [ 17, %do.end54 ], [ %spec.select, %if.then57 ]
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %sig.addr.0, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  call fastcc void @__rcu_read_lock() #19
  %parent67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 53
  %9 = load %struct.task_struct*, %struct.task_struct** %parent67, align 16
  %call68 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %9) #19
  %call69 = call fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef %tsk, %struct.pid_namespace* noundef %call68) #17
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  store i32 %call69, i32* %_pid, align 8
  call fastcc void @__rcu_read_lock() #19
  %10 = load %struct.task_struct*, %struct.task_struct** %parent67, align 16
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i64 0, i32 79
  %11 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  call fastcc void @rcu_read_unlock() #17
  call fastcc void @__rcu_read_lock() #19
  %real_cred86 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 79
  %12 = load volatile %struct.cred*, %struct.cred** %real_cred86, align 64
  %___val80.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %12, i64 0, i32 1, i32 0
  %___val80.sroa.0.0.copyload = load i32, i32* %___val80.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #17
  %coerce.val.ii = zext i32 %___val80.sroa.0.0.copyload to i64
  %call91 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #17
  %13 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  store i32 %call91, i32* %13, align 4
  call fastcc void @rcu_read_unlock() #17
  call fastcc void @task_cputime(%struct.task_struct* noundef %tsk, i64* noundef nonnull %utime, i64* noundef nonnull %stime) #17
  %14 = load i64, i64* %utime, align 8
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %15 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %utime94 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %15, i64 0, i32 26
  %16 = load i64, i64* %utime94, align 8
  %add = add i64 %16, %14
  %call95 = call i64 @nsec_to_clock_t(i64 noundef %add) #19
  %_utime = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 3
  store i64 %call95, i64* %_utime, align 8
  %17 = load i64, i64* %stime, align 8
  %18 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %stime98 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %18, i64 0, i32 27
  %19 = load i64, i64* %stime98, align 8
  %add99 = add i64 %19, %17
  %call100 = call i64 @nsec_to_clock_t(i64 noundef %add99) #19
  %_stime = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 4
  store i64 %call100, i64* %_stime, align 8
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 40
  %20 = load i32, i32* %exit_code, align 8
  %and103 = and i32 %20, 127
  %_status = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 2
  store i32 %and103, i32* %_status, align 8
  %and107 = and i32 %20, 128
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.else, label %if.then109

if.then109:                                       ; preds = %if.end66
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 3, i32* %si_code, align 8
  br label %if.end122

if.else:                                          ; preds = %if.end66
  %tobool112.not = icmp eq i32 %and103, 0
  %si_code116 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  br i1 %tobool112.not, label %if.else115, label %if.then113

if.then113:                                       ; preds = %if.else
  store i32 2, i32* %si_code116, align 8
  br label %if.end122

if.else115:                                       ; preds = %if.else
  store i32 1, i32* %si_code116, align 8
  %shr = ashr i32 %20, 8
  store i32 %shr, i32* %_status, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.then113, %if.else115, %if.then109
  %21 = load %struct.task_struct*, %struct.task_struct** %parent67, align 16
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i64 0, i32 88
  %22 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %22, i64 0, i32 0, i32 0, i32 0
  %call130 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %23 = load i32, i32* %ptrace, align 8
  %tobool136 = icmp eq i32 %23, 0
  %cmp137 = icmp eq i32 %sig.addr.0, 17
  %or.cond = and i1 %cmp137, %tobool136
  br i1 %or.cond, label %land.lhs.true139, label %if.end156

land.lhs.true139:                                 ; preds = %if.end122
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %22, i64 0, i32 3, i64 16, i32 0, i32 0
  %24 = load void (i32)*, void (i32)** %sa_handler, align 8
  %cmp140 = icmp eq void (i32)* %24, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp140, label %if.then147, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true139
  %sa_flags = getelementptr %struct.sighand_struct, %struct.sighand_struct* %22, i64 0, i32 3, i64 16, i32 0, i32 1
  %25 = load i64, i64* %sa_flags, align 8
  %and145 = and i64 %25, 2
  %tobool146.not = icmp eq i64 %and145, 0
  br i1 %tobool146.not, label %if.end156, label %if.then147

if.then147:                                       ; preds = %lor.lhs.false, %land.lhs.true139
  %spec.select211 = phi i32 [ 17, %lor.lhs.false ], [ 0, %land.lhs.true139 ]
  br label %if.end156

if.end156:                                        ; preds = %if.then147, %lor.lhs.false, %if.end122
  %autoreap.0.off0 = phi i1 [ false, %lor.lhs.false ], [ false, %if.end122 ], [ true, %if.then147 ]
  %sig.addr.1 = phi i32 [ 17, %lor.lhs.false ], [ %sig.addr.0, %if.end122 ], [ %spec.select211, %if.then147 ]
  %conv157 = sext i32 %sig.addr.1 to i64
  %call158 = call fastcc i32 @valid_signal(i64 noundef %conv157) #17
  %tobool159 = icmp ne i32 %call158, 0
  %tobool161 = icmp ne i32 %sig.addr.1, 0
  %or.cond169 = and i1 %tobool161, %tobool159
  br i1 %or.cond169, label %if.then162, label %if.end165

if.then162:                                       ; preds = %if.end156
  %26 = load %struct.task_struct*, %struct.task_struct** %parent67, align 16
  %call164 = call fastcc i32 @__send_signal(i32 noundef %sig.addr.1, %struct.kernel_siginfo* noundef nonnull %info, %struct.task_struct* noundef %26, i32 noundef 1, i1 noundef false) #17
  br label %if.end165

if.end165:                                        ; preds = %if.then162, %if.end156
  %27 = load %struct.task_struct*, %struct.task_struct** %parent67, align 16
  call void @__wake_up_parent(%struct.task_struct* noundef %tsk, %struct.task_struct* noundef %27) #19
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call130) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i1 %autoreap.0.off0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @thread_group_empty(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %thread_group = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %thread_group) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_notify_pidfd(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #0 {
entry:
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 39
  %0 = load i32, i32* %exit_state, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 1967; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %task) #17
  %wait_pidfd = getelementptr inbounds %struct.pid, %struct.pid* %call, i64 0, i32 5
  call void @__wake_up(%struct.wait_queue_head* noundef %wait_pidfd, i32 noundef 3, i32 noundef 0, i8* noundef null) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef %tsk, %struct.pid_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef %ns) #19
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @from_kuid_munged(i64 %kuid.coerce) unnamed_addr #8 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #17
  %cmp = icmp eq i32 %call, -1
  %0 = load i32, i32* @overflowuid, align 4
  %spec.select = select i1 %cmp, i32 %0, i32 %call
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @task_cputime(%struct.task_struct* nocapture noundef readonly %t, i64* nocapture noundef writeonly %utime, i64* nocapture noundef writeonly %stime) unnamed_addr #10 {
entry:
  %utime1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 67
  %0 = load i64, i64* %utime1, align 8
  store i64 %0, i64* %utime, align 8
  %stime2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 68
  %1 = load i64, i64* %stime2, align 16
  store i64 %1, i64* %stime, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_parent(%struct.task_struct* noundef, %struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @ptrace_notify(i32 noundef %exit_code) local_unnamed_addr #0 {
entry:
  %and = and i32 %exit_code, -65409
  %cmp.not = icmp eq i32 %and, 5
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !9

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 2346; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !30
  unreachable

do.end5:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %task_works = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 96
  %2 = load %struct.callback_head*, %struct.callback_head** %task_works, align 32
  %tobool6.not = icmp eq %struct.callback_head* %2, null
  br i1 %tobool6.not, label %if.end15, label %if.then14, !prof !9

if.then14:                                        ; preds = %do.end5
  call void @task_work_run() #19
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.end5
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @ptrace_do_notify(i32 noundef 5, i32 noundef %exit_code, i32 noundef 4) #17
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i21 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i21) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_do_notify(i32 noundef %signr, i32 noundef %exit_code, i32 noundef %why) unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %signr, i32* %si_signo, align 8
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 %exit_code, i32* %si_code, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call1 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %2) #17
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  store i32 %call1, i32* %_pid, align 8
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 1, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call4 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #17
  %4 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  store i32 %call4, i32* %4, align 4
  call fastcc void @ptrace_stop(i32 noundef %exit_code, i32 noundef %why, i32 noundef 1, %struct.kernel_siginfo* noundef nonnull %info) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @get_signal(%struct.ksignal* noundef %ksig) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand1, align 16
  %signal3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal3, align 8
  %task_works = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 96
  %4 = load %struct.callback_head*, %struct.callback_head** %task_works, align 32
  %tobool.not = icmp eq %struct.callback_head* %4, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void @task_work_run() #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call8 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %5, i32 noundef 6) #17
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call fastcc void @tracehook_notify_signal() #17
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %call13 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %1) #17
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %relock.preheader

relock.preheader:                                 ; preds = %if.end11
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 12
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 56
  %si_signo = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 1, i32 0, i32 0
  %signal58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 92, i32 1
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 43
  %info113 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 1
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 5
  %si_signo222 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info113, i64 0, i32 0, i32 0
  %flags247 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  br label %relock

relock:                                           ; preds = %relock.backedge, %relock.preheader
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 48
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end53, label %if.then36, !prof !9

if.then36:                                        ; preds = %relock
  %and38 = and i32 %6, 32
  %tobool39.not = icmp eq i32 %and38, 0
  %. = select i1 %tobool39.not, i32 5, i32 6
  %and43 = and i32 %6, -49
  store i32 %and43, i32* %flags, align 4
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__raw_read_lock() #17
  call fastcc void @do_notify_parent_cldstop(%struct.task_struct* noundef %1, i1 noundef false, i32 noundef %.) #17
  %7 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  %call47 = call fastcc i32 @ptrace_reparented(%struct.task_struct* noundef %7) #17
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.then36
  call fastcc void @do_notify_parent_cldstop(%struct.task_struct* noundef %7, i1 noundef true, i32 noundef %.) #17
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then36
  call fastcc void @__raw_read_unlock() #17
  br label %relock.backedge

if.end53:                                         ; preds = %relock
  %call54 = call fastcc i32 @signal_group_exit(%struct.signal_struct* noundef %3) #17
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %for.cond.preheader, label %if.then56

for.cond.preheader:                               ; preds = %if.end273, %if.end53
  br label %for.cond

if.then56:                                        ; preds = %if.end53
  store i32 9, i32* %si_signo, align 8
  call fastcc void @sigdelset(%struct.sigset_t* noundef %signal58, i32 noundef 9) #17
  call void @recalc_sigpending() #17
  br label %fatal

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %8 = load i64, i64* %jobctl, align 8
  %and61 = and i64 %8, 131072
  %tobool62.not = icmp eq i64 %and61, 0
  br i1 %tobool62.not, label %if.end73, label %land.lhs.true, !prof !9

land.lhs.true:                                    ; preds = %for.cond
  %call70 = call fastcc i1 @do_signal_stop(i32 noundef 0) #17
  br i1 %call70, label %relock.backedge, label %land.lhs.true.if.end73_crit_edge

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load i64, i64* %jobctl, align 8
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true.if.end73_crit_edge, %for.cond
  %9 = phi i64 [ %.pre, %land.lhs.true.if.end73_crit_edge ], [ %8, %for.cond ]
  %and76 = and i64 %9, 9961472
  %tobool77.not = icmp eq i64 %and76, 0
  br i1 %tobool77.not, label %if.end100, label %if.then85, !prof !9

if.then85:                                        ; preds = %if.end73
  %and88 = and i64 %9, 1572864
  %tobool89.not = icmp eq i64 %and88, 0
  br i1 %tobool89.not, label %if.else92, label %if.then90

if.then90:                                        ; preds = %if.then85
  call fastcc void @do_jobctl_trap() #17
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %relock.backedge

relock.backedge:                                  ; preds = %land.lhs.true, %if.then213, %if.end220, %if.then90, %if.then97, %if.else92, %if.end52
  br label %relock

if.else92:                                        ; preds = %if.then85
  %and95 = and i64 %9, 8388608
  %tobool96.not = icmp eq i64 %and95, 0
  br i1 %tobool96.not, label %relock.backedge, label %if.then97

if.then97:                                        ; preds = %if.else92
  call fastcc void @do_freezer_trap() #17
  br label %relock.backedge

if.end100:                                        ; preds = %if.end73
  %call114 = call fastcc i32 @dequeue_synchronous_signal(%struct.kernel_siginfo* noundef %info113) #17
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end121, label %if.end124

if.end121:                                        ; preds = %if.end100
  %call120 = call i32 @dequeue_signal(%struct.task_struct* noundef %1, %struct.sigset_t* noundef %blocked, %struct.kernel_siginfo* noundef %info113) #17
  %tobool122.not = icmp eq i32 %call120, 0
  br i1 %tobool122.not, label %for.end, label %if.end124

if.end124:                                        ; preds = %if.end100, %if.end121
  %signr.0356 = phi i32 [ %call120, %if.end121 ], [ %call114, %if.end100 ]
  %10 = load i32, i32* %ptrace, align 8
  %tobool126.not = icmp eq i32 %10, 0
  br i1 %tobool126.not, label %if.end142, label %land.lhs.true134, !prof !9

land.lhs.true134:                                 ; preds = %if.end124
  %cmp.not = icmp eq i32 %signr.0356, 9
  br i1 %cmp.not, label %if.end142, label %if.then136

if.then136:                                       ; preds = %land.lhs.true134
  %call138 = call fastcc i32 @ptrace_signal(i32 noundef %signr.0356, %struct.kernel_siginfo* noundef %info113) #17
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %for.cond.backedge, label %if.end142

if.end142:                                        ; preds = %if.then136, %land.lhs.true134, %if.end124
  %signr.1 = phi i32 [ %call138, %if.then136 ], [ 9, %land.lhs.true134 ], [ %signr.0356, %if.end124 ]
  %sub = add i32 %signr.1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx144 = getelementptr %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 3, i64 %idxprom
  %sa_handler = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %arrayidx144, i64 0, i32 0, i32 0
  %11 = load void (i32)*, void (i32)** %sa_handler, align 8
  %magicptr = ptrtoint void (i32)* %11 to i64
  switch i64 %magicptr, label %if.then154 [
    i64 1, label %for.cond.backedge
    i64 0, label %if.end163
  ]

if.then154:                                       ; preds = %if.end142
  %12 = bitcast %struct.ksignal* %ksig to i8*
  %13 = bitcast %struct.k_sigaction* %arrayidx144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(32) %12, i8* noundef align 8 dereferenceable(32) %13, i64 32, i1 false)
  %sa_flags = getelementptr %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 3, i64 %idxprom, i32 0, i32 1
  %14 = load i64, i64* %sa_flags, align 8
  %and157 = and i64 %14, 2147483648
  %tobool158.not = icmp eq i64 %and157, 0
  br i1 %tobool158.not, label %for.end, label %if.then159

if.then159:                                       ; preds = %if.then154
  %sa_handler.le = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %arrayidx144, i64 0, i32 0, i32 0
  store void (i32)* null, void (i32)** %sa_handler.le, align 8
  br label %for.end

if.end163:                                        ; preds = %if.end142
  %15 = icmp ult i32 %sub, 31
  br i1 %15, label %land.lhs.true169, label %if.end174.thread

land.lhs.true169:                                 ; preds = %if.end163
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and171 = and i64 %shl, 138608640
  %tobool172.not = icmp eq i64 %and171, 0
  br i1 %tobool172.not, label %if.end174, label %for.cond.backedge

if.end174:                                        ; preds = %land.lhs.true169
  %16 = load i32, i32* %flags, align 4
  %and176 = and i32 %16, 64
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %land.lhs.true204, label %land.lhs.true191, !prof !9

if.end174.thread:                                 ; preds = %if.end163
  %17 = load i32, i32* %flags, align 4
  %and176357 = and i32 %17, 64
  %tobool177.not358 = icmp eq i32 %and176357, 0
  br i1 %tobool177.not358, label %fatal, label %for.cond.backedge, !prof !9

land.lhs.true191:                                 ; preds = %if.end174
  %and195 = and i64 %shl, 262400
  %tobool196.not = icmp eq i64 %and195, 0
  br i1 %tobool196.not, label %for.cond.backedge, label %land.lhs.true204

for.cond.backedge:                                ; preds = %land.lhs.true191, %if.end174.thread, %if.then136, %land.lhs.true169, %if.end220, %if.end142
  br label %for.cond

land.lhs.true204:                                 ; preds = %if.end174, %land.lhs.true191
  %and208 = and i64 %shl, 3932160
  %tobool209.not = icmp eq i64 %and208, 0
  br i1 %tobool209.not, label %fatal, label %if.then210

if.then210:                                       ; preds = %land.lhs.true204
  %cmp211.not = icmp eq i32 %signr.1, 19
  br i1 %cmp211.not, label %if.end220, label %if.then213

if.then213:                                       ; preds = %if.then210
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %call215 = call i32 @is_current_pgrp_orphaned() #19
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end218, label %relock.backedge

if.end218:                                        ; preds = %if.then213
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %if.end220

if.end220:                                        ; preds = %if.end218, %if.then210
  %18 = load i32, i32* %si_signo222, align 8
  %call223 = call fastcc i1 @do_signal_stop(i32 noundef %18) #17
  br i1 %call223, label %relock.backedge, label %for.cond.backedge, !prof !9

fatal:                                            ; preds = %if.end174.thread, %land.lhs.true204, %if.then56
  %signr.2 = phi i32 [ 9, %if.then56 ], [ %signr.1, %land.lhs.true204 ], [ %signr.1, %if.end174.thread ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %19 = load i32, i32* %flags247, align 4
  %or = or i32 %19, 1024
  store i32 %or, i32* %flags247, align 4
  %20 = add i32 %signr.2, -1
  %21 = icmp ult i32 %20, 31
  br i1 %21, label %land.lhs.true253, label %if.end267

land.lhs.true253:                                 ; preds = %fatal
  %sh_prom255 = zext i32 %20 to i64
  %shl256 = shl nuw nsw i64 1, %sh_prom255
  %and257 = and i64 %shl256, 1098908924
  %tobool258.not = icmp eq i64 %and257, 0
  br i1 %tobool258.not, label %if.end267, label %if.then259

if.then259:                                       ; preds = %land.lhs.true253
  %22 = load i32, i32* @print_fatal_signals, align 4
  %tobool260.not = icmp eq i32 %22, 0
  br i1 %tobool260.not, label %if.end264, label %if.then261

if.then261:                                       ; preds = %if.then259
  %23 = load i32, i32* %si_signo, align 8
  call fastcc void @print_fatal_signal(i32 noundef %23) #17
  br label %if.end264

if.end264:                                        ; preds = %if.then261, %if.then259
  call void @do_coredump(%struct.kernel_siginfo* noundef %info113) #19
  %.pre376 = load i32, i32* %flags247, align 4
  br label %if.end267

if.end267:                                        ; preds = %if.end264, %land.lhs.true253, %fatal
  %24 = phi i32 [ %.pre376, %if.end264 ], [ %or, %land.lhs.true253 ], [ %or, %fatal ]
  %and270 = and i32 %24, 16
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %if.end273, label %out

if.end273:                                        ; preds = %if.end267
  %25 = load i32, i32* %si_signo, align 8
  call void @do_group_exit(i32 noundef %25) #19
  br label %for.cond.preheader

for.end:                                          ; preds = %if.end121, %if.then154, %if.then159
  %signr.3 = phi i32 [ %signr.1, %if.then159 ], [ %signr.1, %if.then154 ], [ 0, %if.end121 ]
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %out

out:                                              ; preds = %if.end267, %for.end
  %signr.4 = phi i32 [ %signr.3, %for.end ], [ %signr.2, %if.end267 ]
  %sig = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 2
  store i32 %signr.4, i32* %sig, align 8
  %sa_flags279 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 0, i32 0, i32 1
  %26 = load i64, i64* %sa_flags279, align 8
  %and280 = and i64 %26, 2048
  %tobool281.not = icmp eq i64 %and280, 0
  br i1 %tobool281.not, label %if.then282, label %if.end283

if.then282:                                       ; preds = %out
  call fastcc void @hide_si_addr_tag_bits(%struct.ksignal* noundef %ksig) #17
  %.pre377 = load i32, i32* %sig, align 8
  br label %if.end283

if.end283:                                        ; preds = %if.then282, %out
  %27 = phi i32 [ %.pre377, %if.then282 ], [ %signr.4, %out ]
  %cmp285 = icmp sgt i32 %27, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end283
  %retval.0 = phi i1 [ %cmp285, %if.end283 ], [ false, %if.end11 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #3 {
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
define internal fastcc void @tracehook_notify_signal() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 6) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !31
  %task_works = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 96
  %3 = load %struct.callback_head*, %struct.callback_head** %task_works, align 32
  %tobool.not = icmp eq %struct.callback_head* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @task_work_run() #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #17
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_notify_parent_cldstop(%struct.task_struct* noundef %tsk, i1 noundef %for_ptracer, i32 noundef %why) unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  %1 = bitcast i64* %utime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  store i64 0, i64* %utime, align 8, !annotation !16
  %2 = bitcast i64* %stime to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  store i64 0, i64* %stime, align 8, !annotation !16
  br i1 %for_ptracer, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %parent1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 53
  br label %if.end

if.else:                                          ; preds = %entry
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 56
  %3 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 52
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %parent.0.in = phi %struct.task_struct** [ %parent1, %if.then ], [ %real_parent, %if.else ]
  %tsk.addr.0 = phi %struct.task_struct* [ %tsk, %if.then ], [ %3, %if.else ]
  %parent.0 = load %struct.task_struct*, %struct.task_struct** %parent.0.in, align 8
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 17, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  call fastcc void @__rcu_read_lock() #19
  %call = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %parent.0) #19
  %call2 = call fastcc i32 @task_pid_nr_ns(%struct.task_struct* noundef %tsk.addr.0, %struct.pid_namespace* noundef %call) #17
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  store i32 %call2, i32* %_pid, align 8
  call fastcc void @__rcu_read_lock() #19
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %parent.0, i64 0, i32 79
  %4 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  call fastcc void @rcu_read_unlock() #17
  call fastcc void @__rcu_read_lock() #19
  %real_cred14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk.addr.0, i64 0, i32 79
  %5 = load volatile %struct.cred*, %struct.cred** %real_cred14, align 64
  %___val8.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %5, i64 0, i32 1, i32 0
  %___val8.sroa.0.0.copyload = load i32, i32* %___val8.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #17
  %coerce.val.ii = zext i32 %___val8.sroa.0.0.copyload to i64
  %call19 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #17
  %6 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  store i32 %call19, i32* %6, align 4
  call fastcc void @rcu_read_unlock() #17
  call fastcc void @task_cputime(%struct.task_struct* noundef %tsk.addr.0, i64* noundef nonnull %utime, i64* noundef nonnull %stime) #17
  %7 = load i64, i64* %utime, align 8
  %call22 = call i64 @nsec_to_clock_t(i64 noundef %7) #19
  %_utime = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 3
  store i64 %call22, i64* %_utime, align 8
  %8 = load i64, i64* %stime, align 8
  %call24 = call i64 @nsec_to_clock_t(i64 noundef %8) #19
  %_stime = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 4
  store i64 %call24, i64* %_stime, align 8
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 %why, i32* %si_code, align 8
  switch i32 %why, label %do.body38 [
    i32 6, label %sw.epilog
    i32 5, label %sw.bb29
    i32 4, label %sw.bb33
  ]

sw.bb29:                                          ; preds = %if.end
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk.addr.0, i64 0, i32 87
  %9 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %group_exit_code = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i64 0, i32 8
  br label %sw.epilog.sink.split

sw.bb33:                                          ; preds = %if.end
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk.addr.0, i64 0, i32 40
  br label %sw.epilog.sink.split

do.body38:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 2133; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !32
  unreachable

sw.epilog.sink.split:                             ; preds = %sw.bb29, %sw.bb33
  %exit_code.sink = phi i32* [ %exit_code, %sw.bb33 ], [ %group_exit_code, %sw.bb29 ]
  %10 = load i32, i32* %exit_code.sink, align 8
  %and34 = and i32 %10, 127
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end
  %and34.sink = phi i32 [ 18, %if.end ], [ %and34, %sw.epilog.sink.split ]
  %_status37 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 2
  store i32 %and34.sink, i32* %_status37, align 8
  %sighand44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %parent.0, i64 0, i32 88
  %11 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand44, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %11, i64 0, i32 0, i32 0, i32 0
  %call49 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %11, i64 0, i32 3, i64 16, i32 0, i32 0
  %12 = load void (i32)*, void (i32)** %sa_handler, align 8
  %cmp54.not = icmp eq void (i32)* %12, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp54.not, label %if.end63, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %sa_flags = getelementptr %struct.sighand_struct, %struct.sighand_struct* %11, i64 0, i32 3, i64 16, i32 0, i32 1
  %13 = load i64, i64* %sa_flags, align 8
  %and59 = and i64 %13, 1
  %tobool60.not = icmp eq i64 %and59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end63

if.then61:                                        ; preds = %land.lhs.true
  %call62 = call i32 @__group_send_sig_info(i32 noundef 17, %struct.kernel_siginfo* noundef nonnull %info, %struct.task_struct* noundef %parent.0) #17
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %land.lhs.true, %sw.epilog
  call void @__wake_up_parent(%struct.task_struct* noundef %tsk.addr.0, %struct.task_struct* noundef %parent.0) #19
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call49) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @ptrace_reparented(%struct.task_struct* nocapture noundef readonly %child) unnamed_addr #8 {
entry:
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 52
  %0 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 53
  %1 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %call = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %0, %struct.task_struct* noundef %1) #17
  %lnot = xor i1 %call, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @signal_group_exit(%struct.signal_struct* nocapture noundef readonly %sig) unnamed_addr #8 {
entry:
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 12
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %group_exit_task = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 10
  %1 = load %struct.task_struct*, %struct.task_struct** %group_exit_task, align 8
  %cmp = icmp ne %struct.task_struct* %1, null
  %phi.cast = zext i1 %cmp to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigdelset(%struct.sigset_t* nocapture noundef %set, i32 noundef %_sig) unnamed_addr #10 {
entry:
  %sub = add i32 %_sig, -1
  %conv3 = zext i32 %sub to i64
  %shl = shl nuw i64 1, %conv3
  %neg = xor i64 %shl, -1
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %and = and i64 %0, %neg
  store i64 %and, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @do_signal_stop(i32 noundef %signr) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 43
  %3 = load i64, i64* %jobctl, align 8
  %and = and i64 %3, 131072
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end81

if.then:                                          ; preds = %entry
  %tobool3.not = icmp ult i32 %signr, 65536
  br i1 %tobool3.not, label %if.end, label %if.then11, !prof !9

if.then11:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 2387; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !33
  %.pre = load i64, i64* %jobctl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  %4 = phi i64 [ %.pre, %if.then11 ], [ %3, %if.then ]
  %and21 = and i64 %4, 65536
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %cleanup144, label %lor.lhs.false, !prof !11

lor.lhs.false:                                    ; preds = %if.end
  %call30 = call fastcc i32 @signal_group_exit(%struct.signal_struct* noundef %2) #17
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end40, label %cleanup144, !prof !9

if.end40:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 12
  %5 = load i32, i32* %flags, align 4
  %and41 = and i32 %5, 1
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  %group_exit_code = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 8
  store i32 %signr, i32* %group_exit_code, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %group_stop_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 11
  store i32 0, i32* %group_stop_count, align 8
  %6 = or i32 %signr, 393216
  %or = sext i32 %6 to i64
  %call47 = call i1 @task_set_jobctl_pending(%struct.task_struct* noundef %1, i64 noundef %or) #17
  br i1 %call47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end44
  %7 = load i32, i32* %group_stop_count, align 8
  %inc = add i32 %7, 1
  store i32 %inc, i32* %group_stop_count, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end44
  %call52168 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %1) #17
  %cmp.not169 = icmp eq %struct.task_struct* %call52168, %1
  br i1 %cmp.not169, label %if.end81, label %do.end

do.end:                                           ; preds = %if.end50, %if.end79
  %call52170 = phi %struct.task_struct* [ %call52, %if.end79 ], [ %call52168, %if.end50 ]
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call52170, i64 0, i32 1
  %8 = load volatile i32, i32* %__state, align 16
  %and56 = and i32 %8, 4
  %cmp57.not = icmp eq i32 %and56, 0
  br i1 %cmp57.not, label %land.lhs.true, label %if.end79

land.lhs.true:                                    ; preds = %do.end
  %call61 = call i1 @task_set_jobctl_pending(%struct.task_struct* noundef %call52170, i64 noundef %or) #17
  br i1 %call61, label %if.then63, label %if.end79

if.then63:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %group_stop_count, align 8
  %inc65 = add i32 %9, 1
  store i32 %inc65, i32* %group_stop_count, align 8
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call52170, i64 0, i32 5
  %10 = load i32, i32* %ptrace, align 8
  %and66 = and i32 %10, 65536
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then77, label %if.else, !prof !9

if.then77:                                        ; preds = %if.then63
  call fastcc void @signal_wake_up(%struct.task_struct* noundef %call52170, i1 noundef false) #17
  br label %if.end79

if.else:                                          ; preds = %if.then63
  call fastcc void @ptrace_trap_notify(%struct.task_struct* noundef %call52170) #17
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.else, %land.lhs.true, %do.end
  %call52 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %call52170) #17
  %cmp.not = icmp eq %struct.task_struct* %call52, %1
  br i1 %cmp.not, label %if.end81, label %do.end

if.end81:                                         ; preds = %if.end79, %if.end50, %entry
  %ptrace83 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 5
  %11 = load i32, i32* %ptrace83, align 8
  %tobool84.not = icmp eq i32 %11, 0
  br i1 %tobool84.not, label %if.then94, label %if.else141, !prof !9

if.then94:                                        ; preds = %if.end81
  %call96 = call fastcc i1 @task_participate_group_stop(%struct.task_struct* noundef %1) #17
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 102
  %call106 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #17
  %__state118 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 260, i32* %__state118, align 16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call106) #17
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %12 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %12, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  br i1 %call96, label %if.then137, label %if.end139

if.then137:                                       ; preds = %if.then94
  call fastcc void @__raw_read_lock() #17
  call fastcc void @do_notify_parent_cldstop(%struct.task_struct* noundef %1, i1 noundef false, i32 noundef 5) #17
  call fastcc void @__raw_read_unlock() #17
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %if.then94
  call void @schedule() #19
  br label %cleanup144

if.else141:                                       ; preds = %if.end81
  %call143 = call i1 @task_set_jobctl_pending(%struct.task_struct* noundef %1, i64 noundef 524288) #17
  br label %cleanup144

cleanup144:                                       ; preds = %if.end, %lor.lhs.false, %if.else141, %if.end139
  %retval.1 = phi i1 [ true, %if.end139 ], [ false, %if.else141 ], [ false, %lor.lhs.false ], [ false, %if.end ]
  ret i1 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_jobctl_trap() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 43
  %3 = load i64, i64* %jobctl, align 8
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 65535
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 5
  %5 = load i32, i32* %ptrace, align 8
  %and4 = and i32 %5, 65536
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %group_stop_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 11
  %6 = load i32, i32* %group_stop_count, align 8
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 12
  %7 = load i32, i32* %flags, align 4
  %and6 = and i32 %7, 1
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end20, label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then
  %tobool9.not = icmp eq i32 %conv, 0
  br i1 %tobool9.not, label %if.then19, label %if.end20, !prof !11

if.then19:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 2504; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !34
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true, %if.then19, %if.end
  %signr.069 = phi i32 [ 0, %if.then19 ], [ %conv, %if.end ], [ 5, %land.lhs.true ]
  %or = or i32 %signr.069, 32768
  call fastcc void @ptrace_do_notify(i32 noundef %signr.069, i32 noundef %or, i32 noundef 5) #17
  br label %if.end55

if.else:                                          ; preds = %entry
  %tobool29.not = icmp eq i32 %conv, 0
  br i1 %tobool29.not, label %if.then44, label %if.end45, !prof !11

if.then44:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 2508; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !35
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.else
  call fastcc void @ptrace_stop(i32 noundef %conv, i32 noundef 5, i32 noundef 0, %struct.kernel_siginfo* noundef null) #17
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 40
  store i32 0, i32* %exit_code, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end45, %if.end20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_freezer_trap() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 43
  %2 = load i64, i64* %jobctl, align 8
  %and = and i64 %2, 10092544
  %cmp.not = icmp eq i64 %and, 8388608
  br i1 %cmp.not, label %do.body6, label %if.then

if.then:                                          ; preds = %entry
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  br label %return

do.body6:                                         ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  %4 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %4, i32 noundef 0) #17
  %sighand13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %5 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand13, align 16
  %rlock.i15 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %5, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i15) #19
  call void @schedule() #19
  br label %return

return:                                           ; preds = %do.body6, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dequeue_synchronous_signal(%struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 92, i32 1
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %signal, i64 0, i32 0, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89, i32 0, i64 0
  %3 = load i64, i64* %arrayidx3, align 8
  %neg = xor i64 %3, -1
  %and = and i64 %2, 1073743064
  %and4 = and i64 %and, %neg
  %tobool.not = icmp eq i64 %and4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 92, i32 0
  %4 = bitcast %struct.list_head* %list to %struct.sigqueue**
  %q.091 = load %struct.sigqueue*, %struct.sigqueue** %4, align 8
  %list592 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.091, i64 0, i32 0
  %cmp.not93 = icmp eq %struct.list_head* %list592, %list
  br i1 %cmp.not93, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %list596 = phi %struct.list_head* [ %list5, %for.inc ], [ %list592, %if.end ]
  %q.094 = phi %struct.sigqueue* [ %q.0, %for.inc ], [ %q.091, %if.end ]
  %info7 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.094, i64 0, i32 2
  %si_code = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.094, i64 0, i32 2, i32 0, i32 2
  %5 = load i32, i32* %si_code, align 8
  %cmp8 = icmp sgt i32 %5, 0
  br i1 %cmp8, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info7, i64 0, i32 0, i32 0
  %6 = load i32, i32* %si_signo, align 8
  %sub = add i32 %6, -1
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  %and10 = and i64 %shl, 1073743064
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %for.inc, label %for.cond31

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %7 = bitcast %struct.sigqueue* %q.094 to %struct.sigqueue**
  %q.0 = load %struct.sigqueue*, %struct.sigqueue** %7, align 8
  %list5 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list5, %list
  br i1 %cmp.not, label %cleanup, label %for.body

for.cond31:                                       ; preds = %land.lhs.true, %for.body36
  %q.1.in.in = phi %struct.sigqueue* [ %q.1, %for.body36 ], [ %q.094, %land.lhs.true ]
  %q.1.in = bitcast %struct.sigqueue* %q.1.in.in to %struct.sigqueue**
  %q.1 = load %struct.sigqueue*, %struct.sigqueue** %q.1.in, align 8
  %list32 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.1, i64 0, i32 0
  %cmp34.not = icmp eq %struct.list_head* %list32, %list
  br i1 %cmp34.not, label %for.end53, label %for.body36

for.body36:                                       ; preds = %for.cond31
  %si_signo38 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.1, i64 0, i32 2, i32 0, i32 0
  %8 = load i32, i32* %si_signo38, align 8
  %cmp41 = icmp eq i32 %8, %6
  br i1 %cmp41, label %still_pending, label %for.cond31

for.end53:                                        ; preds = %for.cond31
  call fastcc void @sigdelset(%struct.sigset_t* noundef %signal, i32 noundef %6) #17
  call void @recalc_sigpending() #17
  br label %still_pending

still_pending:                                    ; preds = %for.body36, %for.end53
  call fastcc void @list_del_init(%struct.list_head* noundef %list596) #17
  call fastcc void @copy_siginfo(%struct.kernel_siginfo* noundef %info, %struct.kernel_siginfo* noundef %info7) #17
  call fastcc void @__sigqueue_free(%struct.sigqueue* noundef %q.094) #17
  %si_signo59 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  %9 = load i32, i32* %si_signo59, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end, %entry, %still_pending
  %retval.0 = phi i32 [ %9, %still_pending ], [ 0, %entry ], [ 0, %if.end ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ptrace_signal(i32 noundef %signr, %struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 43
  %2 = load i64, i64* %jobctl, align 8
  %or = or i64 %2, 65536
  store i64 %or, i64* %jobctl, align 8
  call fastcc void @ptrace_stop(i32 noundef %signr, i32 noundef 4, i32 noundef 0, %struct.kernel_siginfo* noundef %info) #17
  %exit_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 40
  %3 = load i32, i32* %exit_code, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %exit_code, align 8
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  %4 = load i32, i32* %si_signo, align 8
  %cmp4.not = icmp eq i32 %3, %4
  br i1 %cmp4.not, label %if.end19, label %if.then5

if.then5:                                         ; preds = %if.end
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef %info) #17
  store i32 %3, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 0, i32* %si_code, align 8
  call fastcc void @__rcu_read_lock() #19
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 53
  %5 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %call8 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %5) #17
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  store i32 %call8, i32* %_pid, align 8
  call fastcc void @__rcu_read_lock() #19
  %6 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i64 0, i32 79
  %7 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %___val.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %7, i64 0, i32 1, i32 0
  %___val.sroa.0.0.copyload = load i32, i32* %___val.sroa.0.0..sroa_idx, align 4
  call fastcc void @rcu_read_unlock() #17
  %coerce.val.ii = zext i32 %___val.sroa.0.0.copyload to i64
  %call16 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #17
  %8 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  store i32 %call16, i32* %8, align 4
  call fastcc void @rcu_read_unlock() #17
  br label %if.end19

if.end19:                                         ; preds = %if.then5, %if.end
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89
  %call21 = call fastcc i32 @sigismember(%struct.sigset_t* noundef %blocked, i32 noundef %3) #17
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %return, label %if.then22

if.then22:                                        ; preds = %if.end19
  %call24 = call fastcc i32 @send_signal(i32 noundef %3, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %1, i32 noundef 0) #17
  br label %return

return:                                           ; preds = %if.end19, %if.then22, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then22 ], [ %3, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_current_pgrp_orphaned() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_fatal_signal(i32 noundef %signr) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %1) #17
  %add.ptr2 = getelementptr i8, i8* %call1, i64 16048
  %2 = bitcast i8* %add.ptr2 to %struct.pt_regs*
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 noundef %signr) #21
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  call void @show_regs(%struct.pt_regs* noundef %2) #19
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_coredump(%struct.kernel_siginfo* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_group_exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @hide_si_addr_tag_bits(%struct.ksignal* nocapture noundef %ksig) unnamed_addr #10 {
entry:
  %sig = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 2
  %0 = load i32, i32* %sig, align 8
  %si_code = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 1, i32 0, i32 2
  %1 = load i32, i32* %si_code, align 8
  %call = call i32 @siginfo_layout(i32 noundef %0, i32 noundef %1) #17
  %call.off = add i32 %call, -3
  %switch = icmp ult i32 %call.off, 6
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %_sifields = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 1, i32 0, i32 3
  %_addr = bitcast %union.__sifields* %_sifields to i8**
  %2 = load i8*, i8** %_addr, align 8
  %conv = sext i32 %0 to i64
  %conv5 = sext i32 %1 to i64
  %call6 = call fastcc i8* @arch_untagged_si_addr(i8* noundef %2, i64 noundef %conv, i64 noundef %conv5) #17
  store i8* %call6, i8** %_addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @signal_setup_done(i32 noundef %failed, %struct.ksignal* nocapture noundef readonly %ksig, i32 noundef %stepping) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %failed, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sig = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 2
  %0 = load i32, i32* %sig, align 8
  call void @force_sigsegv(i32 noundef %0) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @signal_delivered(%struct.ksignal* noundef %ksig, i32 noundef %stepping) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @signal_delivered(%struct.ksignal* nocapture noundef readonly %ksig, i32 noundef %stepping) unnamed_addr #0 {
entry:
  %blocked = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %blocked to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %blocked, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %1, align 8, !annotation !16
  call fastcc void @clear_restore_sigmask() #17
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %blocked1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 89
  %sa_mask = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 0, i32 0, i32 3
  call fastcc void @sigorsets(%struct.sigset_t* noundef nonnull %blocked, %struct.sigset_t* noundef %blocked1, %struct.sigset_t* noundef %sa_mask) #17
  %sa_flags = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 0, i32 0, i32 1
  %4 = load i64, i64* %sa_flags, align 8
  %and = and i64 %4, 1073741824
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sig = getelementptr inbounds %struct.ksignal, %struct.ksignal* %ksig, i64 0, i32 2
  %5 = load i32, i32* %sig, align 8
  call fastcc void @sigaddset(%struct.sigset_t* noundef nonnull %blocked, i32 noundef %5) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @set_current_blocked(%struct.sigset_t* noundef nonnull %blocked) #17
  %sas_ss_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 95
  %6 = load i32, i32* %sas_ss_flags, align 8
  %tobool6.not = icmp sgt i32 %6, -1
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  call fastcc void @sas_ss_reset(%struct.task_struct* noundef %3) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  call fastcc void @tracehook_signal_handler(i32 noundef %stepping) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exit_signals(%struct.task_struct* noundef %tsk) local_unnamed_addr #0 {
entry:
  %unblocked = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %unblocked to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %unblocked, i64 0, i32 0, i64 0, !annotation !16
  %call = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %tsk) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %call1 = call fastcc i32 @signal_group_exit(%struct.signal_struct* noundef %2) #17
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 4
  %3 = load i32, i32* %flags, align 4
  %or = or i32 %3, 4
  store i32 %or, i32* %flags, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %flags3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 4
  %5 = load i32, i32* %flags3, align 4
  %or4 = or i32 %5, 4
  store i32 %or4, i32* %flags3, align 4
  %call5 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %tsk) #17
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %out.thread, label %if.end8

if.end8:                                          ; preds = %if.end
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 89, i32 0, i64 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %1, align 8
  call fastcc void @signotset(%struct.sigset_t* noundef nonnull %unblocked) #17
  call fastcc void @retarget_shared_pending(%struct.task_struct* noundef %tsk, %struct.sigset_t* noundef nonnull %unblocked) #17
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 43
  %8 = load i64, i64* %jobctl, align 8
  %and = and i64 %8, 131072
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %out.thread, label %out, !prof !9

out.thread:                                       ; preds = %if.end8, %if.end
  %9 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i4650 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %9, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i4650) #19
  br label %cleanup

out:                                              ; preds = %if.end8
  %call12 = call fastcc i1 @task_participate_group_stop(%struct.task_struct* noundef %tsk) #17
  %10 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i46 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %10, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i46) #19
  br i1 %call12, label %if.then26, label %cleanup, !prof !11

if.then26:                                        ; preds = %out
  call fastcc void @__raw_read_lock() #17
  call fastcc void @do_notify_parent_cldstop(%struct.task_struct* noundef %tsk, i1 noundef false, i32 noundef 5) #17
  call fastcc void @__raw_read_unlock() #17
  br label %cleanup

cleanup:                                          ; preds = %out.thread, %out, %if.then26, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @signotset(%struct.sigset_t* nocapture noundef %set) unnamed_addr #10 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %neg = xor i64 %0, -1
  store i64 %neg, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @retarget_shared_pending(%struct.task_struct* noundef %tsk, %struct.sigset_t* nocapture noundef readonly %which) unnamed_addr #0 {
entry:
  %retarget = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %retarget to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %retarget, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %1, align 8, !annotation !16
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %signal1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 6, i32 1
  call fastcc void @sigandsets(%struct.sigset_t* noundef nonnull %retarget, %struct.sigset_t* noundef %signal1, %struct.sigset_t* noundef %which) #17
  %call = call fastcc i32 @sigisemptyset(%struct.sigset_t* noundef nonnull %retarget) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call227 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %tsk) #17
  %cmp.not28 = icmp eq %struct.task_struct* %call227, %tsk
  br i1 %cmp.not28, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %call229 = phi %struct.task_struct* [ %call2, %while.cond.backedge ], [ %call227, %while.cond.preheader ]
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call229, i64 0, i32 4
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 4
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body, %if.end5, %if.end13
  %call2 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %call229) #17
  %cmp.not = icmp eq %struct.task_struct* %call2, %tsk
  br i1 %cmp.not, label %cleanup, label %while.body

if.end5:                                          ; preds = %while.body
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call229, i64 0, i32 89
  %call6 = call fastcc i1 @has_pending_signals(%struct.sigset_t* noundef nonnull %retarget, %struct.sigset_t* noundef %blocked) #17
  br i1 %call6, label %if.end8, label %while.cond.backedge

if.end8:                                          ; preds = %if.end5
  call fastcc void @sigandsets(%struct.sigset_t* noundef nonnull %retarget, %struct.sigset_t* noundef nonnull %retarget, %struct.sigset_t* noundef %blocked) #17
  %call10 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %call229) #17
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  call fastcc void @signal_wake_up(%struct.task_struct* noundef %call229, i1 noundef false) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8
  %call14 = call fastcc i32 @sigisemptyset(%struct.sigset_t* noundef nonnull %retarget) #17
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %while.cond.backedge, label %cleanup

cleanup:                                          ; preds = %if.end13, %while.cond.backedge, %while.cond.preheader, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @task_participate_group_stop(%struct.task_struct* noundef %task) unnamed_addr #0 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 43
  %1 = load i64, i64* %jobctl, align 8
  %and = and i64 %1, 262144
  %tobool.not = icmp eq i64 %and, 0
  %and2 = and i64 %1, 131072
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 370; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @task_clear_jobctl_pending(%struct.task_struct* noundef %task, i64 noundef 131072) #17
  br i1 %tobool.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end
  %group_stop_count = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 11
  %2 = load i32, i32* %group_stop_count, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then36, label %if.then47, !prof !11

if.then36:                                        ; preds = %if.end21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 377; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !39
  %.pr = load i32, i32* %group_stop_count, align 8
  br label %if.end49

if.then47:                                        ; preds = %if.end21
  %dec = add i32 %2, -1
  store i32 %dec, i32* %group_stop_count, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then36, %if.then47
  %3 = phi i32 [ %.pr, %if.then36 ], [ %dec, %if.then47 ]
  %tobool51.not = icmp eq i32 %3, 0
  br i1 %tobool51.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end49
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 12
  %4 = load i32, i32* %flags, align 4
  %and52 = and i32 %4, 1
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then54, label %cleanup

if.then54:                                        ; preds = %land.lhs.true
  call fastcc void @signal_set_stop_flags(%struct.signal_struct* noundef %0, i32 noundef 1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %land.lhs.true, %if.end, %if.then54
  %retval.0 = phi i1 [ true, %if.then54 ], [ false, %if.end ], [ false, %land.lhs.true ], [ false, %if.end49 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_restart_syscall(%struct.pt_regs* nocapture noundef readnone %__unused) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %restart_block = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 49
  %fn = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 49, i32 1
  %2 = load i64 (%struct.restart_block*)*, i64 (%struct.restart_block*)** %fn, align 8
  %call1 = call i64 %2(%struct.restart_block* noundef %restart_block) #19
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @do_no_restart_syscall(%struct.restart_block* nocapture noundef readnone %param) local_unnamed_addr #12 {
entry:
  ret i64 -4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_current_blocked(%struct.sigset_t* nocapture noundef %newset) local_unnamed_addr #0 {
entry:
  call fastcc void @sigdelsetmask(%struct.sigset_t* noundef %newset, i64 noundef 262400) #17
  call void @__set_current_blocked(%struct.sigset_t* noundef %newset) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigdelsetmask(%struct.sigset_t* nocapture noundef %set, i64 noundef %mask) unnamed_addr #10 {
entry:
  %neg = xor i64 %mask, -1
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %and = and i64 %0, %neg
  store i64 %and, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__set_current_blocked(%struct.sigset_t* nocapture noundef readonly %newset) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89
  %call1 = call fastcc i32 @sigequalsets(%struct.sigset_t* noundef %blocked, %struct.sigset_t* noundef %newset) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__set_task_blocked(%struct.task_struct* noundef %1, %struct.sigset_t* noundef %newset) #17
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i9 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i9) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigequalsets(%struct.sigset_t* nocapture noundef readonly %set1, %struct.sigset_t* nocapture noundef readonly %set2) unnamed_addr #8 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set1, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set2, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx2, align 8
  %cmp = icmp eq i64 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__set_task_blocked(%struct.task_struct* noundef %tsk, %struct.sigset_t* nocapture noundef readonly %newset) unnamed_addr #0 {
entry:
  %newblocked = alloca %struct.sigset_t, align 8
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %tsk) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %tsk) #17
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %0 = bitcast %struct.sigset_t* %newblocked to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %newblocked, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %1, align 8, !annotation !16
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 89
  call fastcc void @sigandnsets(%struct.sigset_t* noundef nonnull %newblocked, %struct.sigset_t* noundef %newset, %struct.sigset_t* noundef %blocked) #17
  call fastcc void @retarget_shared_pending(%struct.task_struct* noundef %tsk, %struct.sigset_t* noundef nonnull %newblocked) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = getelementptr %struct.sigset_t, %struct.sigset_t* %newset, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 89, i32 0, i64 0
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* %5, align 8
  call void @recalc_sigpending() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sigprocmask(i32 noundef %how, %struct.sigset_t* nocapture noundef readonly %set, %struct.sigset_t* noundef writeonly %oldset) local_unnamed_addr #0 {
entry:
  %newset = alloca %struct.sigset_t, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = bitcast %struct.sigset_t* %newset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  %3 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %newset, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %3, align 8, !annotation !16
  %tobool.not = icmp eq %struct.sigset_t* %oldset, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89, i32 0, i64 0
  %5 = getelementptr %struct.sigset_t, %struct.sigset_t* %oldset, i64 0, i32 0, i64 0
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  switch i32 %how, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %blocked1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89
  call fastcc void @sigorsets(%struct.sigset_t* noundef nonnull %newset, %struct.sigset_t* noundef %blocked1, %struct.sigset_t* noundef %set) #17
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %blocked3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89
  call fastcc void @sigandnsets(%struct.sigset_t* noundef nonnull %newset, %struct.sigset_t* noundef %blocked3, %struct.sigset_t* noundef %set) #17
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %7 = getelementptr %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb
  call void @__set_current_blocked(%struct.sigset_t* noundef nonnull %newset) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigorsets(%struct.sigset_t* nocapture noundef writeonly %r, %struct.sigset_t* nocapture noundef readonly %a, %struct.sigset_t* nocapture noundef readonly %b) unnamed_addr #10 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %a, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %b, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx2, align 8
  %or = or i64 %1, %0
  %arrayidx4 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %r, i64 0, i32 0, i64 0
  store i64 %or, i64* %arrayidx4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigandnsets(%struct.sigset_t* nocapture noundef writeonly %r, %struct.sigset_t* nocapture noundef readonly %a, %struct.sigset_t* nocapture noundef readonly %b) unnamed_addr #10 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %a, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %b, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx2, align 8
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  %arrayidx4 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %r, i64 0, i32 0, i64 0
  store i64 %and, i64* %arrayidx4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_user_sigmask(%struct.sigset_t* noundef %umask, i64 noundef %sigsetsize) local_unnamed_addr #0 {
entry:
  %kmask = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %kmask to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %kmask, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %1, align 8, !annotation !16
  %tobool.not = icmp eq %struct.sigset_t* %umask, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq i64 %sigsetsize, 8
  br i1 %cmp.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = bitcast %struct.sigset_t* %umask to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 8) #19
  %tobool3.not = icmp eq i64 %call2.i, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end2
  call fastcc void @set_restore_sigmask() #17
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 89, i32 0, i64 0
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i64 0, i32 91, i32 0, i64 0
  %7 = load i64, i64* %5, align 8
  store i64 %7, i64* %6, align 8
  call void @set_current_blocked(%struct.sigset_t* noundef nonnull %kmask) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %entry ], [ -22, %if.end ], [ -14, %if.end2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_restore_sigmask() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 20) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rt_sigprocmask(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_rt_sigprocmask(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_rt_sigprocmask(i64 noundef %how, i64 noundef %nset, i64 noundef %oset, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %conv = trunc i64 %how to i32
  %0 = inttoptr i64 %nset to %struct.sigset_t*
  %1 = inttoptr i64 %oset to %struct.sigset_t*
  %call = call fastcc i64 @__do_sys_rt_sigprocmask(i32 noundef %conv, %struct.sigset_t* noundef %0, %struct.sigset_t* noundef %1, i64 noundef %sigsetsize) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rt_sigpending(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_rt_sigpending(i64 noundef %0, i64 noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_rt_sigpending(i64 noundef %uset, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %uset to %struct.sigset_t*
  %call = call fastcc i64 @__do_sys_rt_sigpending(%struct.sigset_t* noundef %0, i64 noundef %sigsetsize) #17
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @siginfo_layout(i32 noundef %sig, i32 noundef %si_code) local_unnamed_addr #12 {
entry:
  %0 = add i32 %si_code, -1
  %1 = icmp ult i32 %0, 127
  br i1 %1, label %if.then, label %if.else52

if.then:                                          ; preds = %entry
  %cmp2 = icmp ult i32 %sig, 32
  br i1 %cmp2, label %land.lhs.true4, label %if.else46

land.lhs.true4:                                   ; preds = %if.then
  %conv = zext i32 %sig to i64
  %limit = getelementptr [32 x %struct.anon.85], [32 x %struct.anon.85]* @sig_sicodes, i64 0, i64 %conv, i32 0
  %2 = load i8, i8* %limit, align 1
  %conv5 = zext i8 %2 to i32
  %cmp6.not = icmp ult i32 %conv5, %si_code
  br i1 %cmp6.not, label %if.else46, label %if.then8

if.then8:                                         ; preds = %land.lhs.true4
  %layout11 = getelementptr [32 x %struct.anon.85], [32 x %struct.anon.85]* @sig_sicodes, i64 0, i64 %conv, i32 1
  %3 = load i8, i8* %layout11, align 1
  %conv12 = zext i8 %3 to i32
  %cmp13 = icmp eq i32 %sig, 7
  %4 = and i32 %si_code, -2
  %5 = icmp eq i32 %4, 4
  %6 = and i1 %cmp13, %5
  br i1 %6, label %if.end67, label %if.else

if.else:                                          ; preds = %if.then8
  %cmp22 = icmp eq i32 %sig, 11
  %cmp25 = icmp eq i32 %si_code, 3
  %or.cond70 = and i1 %cmp22, %cmp25
  br i1 %or.cond70, label %if.end67, label %if.else28

if.else28:                                        ; preds = %if.else
  %cmp32 = icmp eq i32 %si_code, 4
  %or.cond71 = and i1 %cmp22, %cmp32
  br i1 %or.cond71, label %if.end67, label %if.else35

if.else35:                                        ; preds = %if.else28
  %cmp36 = icmp eq i32 %sig, 5
  %cmp39 = icmp eq i32 %si_code, 6
  %or.cond72 = and i1 %cmp36, %cmp39
  %spec.select = select i1 %or.cond72, i32 8, i32 %conv12
  br label %if.end67

if.else46:                                        ; preds = %land.lhs.true4, %if.then
  %cmp47 = icmp ult i32 %si_code, 7
  %spec.select91 = select i1 %cmp47, i32 2, i32 0
  br label %if.end67

if.else52:                                        ; preds = %entry
  switch i32 %si_code, label %if.else60 [
    i32 -2, label %if.end67
    i32 -5, label %if.then59
  ]

if.then59:                                        ; preds = %if.else52
  br label %if.end67

if.else60:                                        ; preds = %if.else52
  %cmp61 = icmp slt i32 %si_code, 0
  %spec.select92 = select i1 %cmp61, i32 10, i32 0
  br label %if.end67

if.end67:                                         ; preds = %if.else60, %if.else46, %if.else35, %if.else52, %if.else28, %if.else, %if.then8, %if.then59
  %layout.0 = phi i32 [ 2, %if.then59 ], [ 5, %if.then8 ], [ 6, %if.else ], [ 7, %if.else28 ], [ %spec.select, %if.else35 ], [ %spec.select91, %if.else46 ], [ 1, %if.else52 ], [ %spec.select92, %if.else60 ]
  ret i32 %layout.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @copy_siginfo_to_user(%struct.siginfo* noundef %to, %struct.kernel_siginfo* noundef %from) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.siginfo* %to to i8*
  %1 = bitcast %struct.kernel_siginfo* %from to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %0, i8* noundef %1, i64 noundef 48) #19
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @si_expansion(%struct.siginfo* noundef %to) #17
  %call2 = call fastcc i64 @__clear_user(i8* noundef %call) #17
  %tobool3.not = icmp eq i64 %call2, 0
  %. = select i1 %tobool3.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @si_expansion(%struct.siginfo* noundef readnone %info) unnamed_addr #12 {
entry:
  %0 = getelementptr %struct.siginfo, %struct.siginfo* %info, i64 0, i32 0, i32 1, i64 0
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__clear_user(i8* noundef %to) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef 80) #17
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #17
  %call3 = call i64 @__arch_clear_user(i8* noundef %call2, i64 noundef 80) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n.addr.0 = phi i64 [ %call3, %if.then ], [ 80, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @copy_siginfo_from_user(%struct.kernel_siginfo* noundef %to, %struct.siginfo* noundef %from) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.kernel_siginfo* %to to i8*
  %1 = bitcast %struct.siginfo* %from to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %0, i8* noundef %1, i64 noundef 48) #19
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @post_copy_siginfo_from_user(%struct.kernel_siginfo* noundef %to, %struct.siginfo* noundef %from) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -14, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @post_copy_siginfo_from_user(%struct.kernel_siginfo* nocapture noundef readonly %info, %struct.siginfo* noundef %from) unnamed_addr #0 {
entry:
  %buf = alloca [80 x i8], align 1
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  %0 = load i32, i32* %si_signo, align 8
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  %1 = load i32, i32* %si_code, align 8
  %call = call fastcc i1 @known_siginfo_layout(i32 noundef %0, i32 noundef %1) #17
  br i1 %call, label %return, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %call3 = call fastcc i8* @si_expansion(%struct.siginfo* noundef %from) #17
  %2 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(80) %2, i8 0, i64 80, i1 false), !annotation !16
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %2, i8* noundef %call3, i64 noundef 80) #19
  %tobool5.not = icmp eq i64 %call2.i, 0
  br i1 %tobool5.not, label %for.body, label %cleanup.thread

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond.not, label %cleanup, label %for.body

for.body:                                         ; preds = %if.then, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then ]
  %arrayidx = getelementptr [80 x i8], [80 x i8]* %buf, i64 0, i64 %indvars.iv
  %3 = load i8, i8* %arrayidx, align 1
  %cmp10.not = icmp eq i8 %3, 0
  br i1 %cmp10.not, label %for.cond, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body, %if.then
  %retval.0.ph = phi i32 [ -14, %if.then ], [ -7, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #20
  br label %return

cleanup:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #20
  br label %return

return:                                           ; preds = %entry, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ %retval.0.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %entry ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rt_sigtimedwait(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_rt_sigtimedwait(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_rt_sigtimedwait(i64 noundef %uthese, i64 noundef %uinfo, i64 noundef %uts, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %uthese to %struct.sigset_t*
  %1 = inttoptr i64 %uinfo to %struct.siginfo*
  %2 = inttoptr i64 %uts to %struct.__kernel_timespec*
  %call = call fastcc i64 @__do_sys_rt_sigtimedwait(%struct.sigset_t* noundef %0, %struct.siginfo* noundef %1, %struct.__kernel_timespec* noundef %2, i64 noundef %sigsetsize) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_kill(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_kill(i64 noundef %0, i64 noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_kill(i64 noundef %pid, i64 noundef %sig) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %conv1 = trunc i64 %sig to i32
  %call = call fastcc i64 @__do_sys_kill(i32 noundef %conv, i32 noundef %conv1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pidfd_send_signal(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_pidfd_send_signal(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pidfd_send_signal(i64 noundef %pidfd, i64 noundef %sig, i64 noundef %info, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pidfd to i32
  %conv1 = trunc i64 %sig to i32
  %0 = inttoptr i64 %info to %struct.siginfo*
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_pidfd_send_signal(i32 noundef %conv, i32 noundef %conv1, %struct.siginfo* noundef %0, i32 noundef %conv2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_tgkill(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_tgkill(i64 noundef %0, i64 noundef %1, i64 noundef %2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_tgkill(i64 noundef %tgid, i64 noundef %pid, i64 noundef %sig) unnamed_addr #0 {
entry:
  %conv = trunc i64 %tgid to i32
  %conv1 = trunc i64 %pid to i32
  %conv2 = trunc i64 %sig to i32
  %call = call fastcc i64 @__do_sys_tgkill(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_tkill(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_tkill(i64 noundef %0, i64 noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_tkill(i64 noundef %pid, i64 noundef %sig) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %conv1 = trunc i64 %sig to i32
  %call = call fastcc i64 @__do_sys_tkill(i32 noundef %conv, i32 noundef %conv1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rt_sigqueueinfo(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_rt_sigqueueinfo(i64 noundef %0, i64 noundef %1, i64 noundef %2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_rt_sigqueueinfo(i64 noundef %pid, i64 noundef %sig, i64 noundef %uinfo) unnamed_addr #0 {
entry:
  %conv = trunc i64 %pid to i32
  %conv1 = trunc i64 %sig to i32
  %0 = inttoptr i64 %uinfo to %struct.siginfo*
  %call = call fastcc i64 @__do_sys_rt_sigqueueinfo(i32 noundef %conv, i32 noundef %conv1, %struct.siginfo* noundef %0) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rt_tgsigqueueinfo(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_rt_tgsigqueueinfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_rt_tgsigqueueinfo(i64 noundef %tgid, i64 noundef %pid, i64 noundef %sig, i64 noundef %uinfo) unnamed_addr #0 {
entry:
  %conv = trunc i64 %tgid to i32
  %conv1 = trunc i64 %pid to i32
  %conv2 = trunc i64 %sig to i32
  %0 = inttoptr i64 %uinfo to %struct.siginfo*
  %call = call fastcc i64 @__do_sys_rt_tgsigqueueinfo(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, %struct.siginfo* noundef %0) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_sigaction(i32 noundef %sig, void (i32)* noundef %action) local_unnamed_addr #0 {
entry:
  %mask = alloca %struct.sigset_t, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %3 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %sub = add i32 %sig, -1
  %idxprom = sext i32 %sub to i64
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %3, i64 0, i32 3, i64 %idxprom, i32 0, i32 0
  store void (i32)* %action, void (i32)** %sa_handler, align 8
  %cmp = icmp eq void (i32)* %action, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.sigset_t* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #20
  %5 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %mask, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %5, align 8, !annotation !16
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %mask) #17
  call fastcc void @sigaddset(%struct.sigset_t* noundef nonnull %mask, i32 noundef %sig) #17
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 6
  call fastcc void @flush_sigqueue_mask(%struct.sigset_t* noundef nonnull %mask, %struct.sigpending* noundef %shared_pending) #17
  %pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 92
  call fastcc void @flush_sigqueue_mask(%struct.sigset_t* noundef nonnull %mask, %struct.sigpending* noundef %pending) #17
  call void @recalc_sigpending() #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i11 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %7, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i11) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_sigqueue_mask(%struct.sigset_t* nocapture noundef readonly %mask, %struct.sigpending* noundef %s) unnamed_addr #0 {
entry:
  %m = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %m, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %1, align 8, !annotation !16
  %signal = getelementptr inbounds %struct.sigpending, %struct.sigpending* %s, i64 0, i32 1
  call fastcc void @sigandsets(%struct.sigset_t* noundef nonnull %m, %struct.sigset_t* noundef %mask, %struct.sigset_t* noundef %signal) #17
  %call = call fastcc i32 @sigisemptyset(%struct.sigset_t* noundef nonnull %m) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @sigandnsets(%struct.sigset_t* noundef %signal, %struct.sigset_t* noundef %signal, %struct.sigset_t* noundef %mask) #17
  %list = getelementptr inbounds %struct.sigpending, %struct.sigpending* %s, i64 0, i32 0
  %2 = bitcast %struct.sigpending* %s to %struct.sigqueue**
  %3 = load %struct.sigqueue*, %struct.sigqueue** %2, align 8
  %list1146 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %3, i64 0, i32 0
  %cmp.not47 = icmp eq %struct.list_head* %list1146, %list
  br i1 %cmp.not47, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %list1150 = phi %struct.list_head* [ %list11, %for.inc ], [ %list1146, %if.end ]
  %q.048 = phi %struct.sigqueue* [ %n.049, %for.inc ], [ %3, %if.end ]
  %n.049.in = bitcast %struct.sigqueue* %q.048 to %struct.sigqueue**
  %n.049 = load %struct.sigqueue*, %struct.sigqueue** %n.049.in, align 8
  %si_signo = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.048, i64 0, i32 2, i32 0, i32 0
  %4 = load i32, i32* %si_signo, align 8
  %call13 = call fastcc i32 @sigismember(%struct.sigset_t* noundef %mask, i32 noundef %4) #17
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.inc, label %if.then15

if.then15:                                        ; preds = %for.body
  call fastcc void @list_del_init(%struct.list_head* noundef %list1150) #17
  call fastcc void @__sigqueue_free(%struct.sigqueue* noundef %q.048) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then15
  %list11 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %n.049, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list11, %list
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @sigaction_compat_abi(%struct.k_sigaction* noundef %act, %struct.k_sigaction* noundef %oact) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_sigaction(i32 noundef %sig, %struct.k_sigaction* noundef %act, %struct.k_sigaction* noundef %oact) local_unnamed_addr #0 {
entry:
  %mask = alloca %struct.sigset_t, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = bitcast %struct.sigset_t* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20
  %3 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %mask, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %3, align 8, !annotation !16
  %conv = sext i32 %sig to i64
  %call1 = call fastcc i32 @valid_signal(i64 noundef %conv) #17
  %tobool = icmp eq i32 %call1, 0
  %cmp = icmp slt i32 %sig, 1
  %or.cond = or i1 %cmp, %tobool
  br i1 %or.cond, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %entry
  %tobool4 = icmp ne %struct.k_sigaction* %act, null
  %cmp8 = icmp ult i32 %sig, 32
  %or.cond65 = and i1 %cmp8, %tobool4
  %sub = add nsw i32 %sig, -1
  %sh_prom = zext i32 %sub to i64
  br i1 %or.cond65, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %lor.lhs.false3
  %shl = shl nuw nsw i64 1, %sh_prom
  %and = and i64 %shl, 262400
  %tobool11.not = icmp eq i64 %and, 0
  br i1 %tobool11.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3, %land.lhs.true10
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %arrayidx = getelementptr %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 3, i64 %sh_prom
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %tobool14.not = icmp eq %struct.k_sigaction* %oact, null
  br i1 %tobool14.not, label %do.end, label %if.then15

if.then15:                                        ; preds = %if.end
  %5 = bitcast %struct.k_sigaction* %oact to i8*
  %6 = bitcast %struct.k_sigaction* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %5, i8* noundef align 8 dereferenceable(32) %6, i64 32, i1 false)
  br label %do.end

do.end:                                           ; preds = %if.end, %if.then15
  br i1 %tobool4, label %if.then18, label %if.end20

if.then18:                                        ; preds = %do.end
  %sa_flags = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %act, i64 0, i32 0, i32 1
  %7 = load i64, i64* %sa_flags, align 8
  %and19 = and i64 %7, 3690989575
  store i64 %and19, i64* %sa_flags, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.end
  br i1 %tobool14.not, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end20
  %sa_flags24 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %oact, i64 0, i32 0, i32 1
  %8 = load i64, i64* %sa_flags24, align 8
  %and25 = and i64 %8, 3690989575
  store i64 %and25, i64* %sa_flags24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end20
  call void @sigaction_compat_abi(%struct.k_sigaction* noundef %act, %struct.k_sigaction* noundef %oact) #17
  br i1 %tobool4, label %if.then28, label %if.end58

if.then28:                                        ; preds = %if.end26
  %sa_mask = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %act, i64 0, i32 0, i32 3
  call fastcc void @sigdelsetmask(%struct.sigset_t* noundef %sa_mask, i64 noundef 262400) #17
  %9 = bitcast %struct.k_sigaction* %arrayidx to i8*
  %10 = bitcast %struct.k_sigaction* %act to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %call30 = call fastcc i8* @sig_handler(%struct.task_struct* noundef %1, i32 noundef %sig) #17
  %call31 = call fastcc i1 @sig_handler_ignored(i8* noundef %call30, i32 noundef %sig) #17
  br i1 %call31, label %if.then32, label %if.end58

if.then32:                                        ; preds = %if.then28
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %mask) #17
  call fastcc void @sigaddset(%struct.sigset_t* noundef nonnull %mask, i32 noundef %sig) #17
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %11 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %shared_pending = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %11, i64 0, i32 6
  call fastcc void @flush_sigqueue_mask(%struct.sigset_t* noundef nonnull %mask, %struct.sigpending* noundef %shared_pending) #17
  %12 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %next = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 3, i32 0
  %.pn99 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %t.0.in100 = getelementptr %struct.list_head, %struct.list_head* %.pn99, i64 -70, i32 1
  %thread_node101 = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in100, i64 139
  %13 = bitcast %struct.list_head** %thread_node101 to %struct.list_head*
  %thread_head42102 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %12, i64 0, i32 3
  %cmp43.not103 = icmp eq %struct.list_head* %thread_head42102, %13
  br i1 %cmp43.not103, label %if.end58, label %for.body

for.body:                                         ; preds = %if.then32, %for.body
  %thread_node105 = phi %struct.list_head** [ %thread_node, %for.body ], [ %thread_node101, %if.then32 ]
  %14 = phi %struct.list_head* [ %.pn, %for.body ], [ %.pn99, %if.then32 ]
  %15 = getelementptr %struct.list_head, %struct.list_head* %14, i64 -70, i32 1
  %pending = getelementptr inbounds %struct.list_head*, %struct.list_head** %15, i64 182
  %16 = bitcast %struct.list_head** %pending to %struct.sigpending*
  call fastcc void @flush_sigqueue_mask(%struct.sigset_t* noundef nonnull %mask, %struct.sigpending* noundef %16) #17
  %.pn = load volatile %struct.list_head*, %struct.list_head** %thread_node105, align 8
  %t.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %t.0.in, i64 139
  %17 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %18 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %thread_head42 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %18, i64 0, i32 3
  %cmp43.not = icmp eq %struct.list_head* %thread_head42, %17
  br i1 %cmp43.not, label %if.end58, label %for.body

if.end58:                                         ; preds = %for.body, %if.then32, %if.then28, %if.end26
  %19 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i98 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %19, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i98) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true10, %if.end58
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -22, %land.lhs.true10 ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @sig_handler_ignored(i8* noundef %handler, i32 noundef %sig) unnamed_addr #12 {
entry:
  %magicptr = ptrtoint i8* %handler to i64
  switch i64 %magicptr, label %lor.end.fold.split [
    i64 1, label %lor.end
    i64 0, label %land.rhs
  ]

land.rhs:                                         ; preds = %entry
  %0 = add i32 %sig, -1
  %1 = icmp ult i32 %0, 31
  br i1 %1, label %land.rhs4, label %lor.end

land.rhs4:                                        ; preds = %land.rhs
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and = and i64 %shl, 138608640
  %tobool = icmp ne i64 %and, 0
  br label %lor.end

lor.end.fold.split:                               ; preds = %entry
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.end.fold.split, %land.rhs4, %land.rhs
  %2 = phi i1 [ true, %entry ], [ false, %land.rhs ], [ %tobool, %land.rhs4 ], [ false, %lor.end.fold.split ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @sig_handler(%struct.task_struct* nocapture noundef readonly %t, i32 noundef %sig) unnamed_addr #8 {
entry:
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 88
  %0 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %sub = add i32 %sig, -1
  %idxprom = sext i32 %sub to i64
  %sa_handler = getelementptr %struct.sighand_struct, %struct.sighand_struct* %0, i64 0, i32 3, i64 %idxprom, i32 0, i32 0
  %1 = bitcast void (i32)** %sa_handler to i8**
  %2 = load i8*, i8** %1, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_sigaltstack(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_sigaltstack(i64 noundef %0, i64 noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_sigaltstack(i64 noundef %uss, i64 noundef %uoss) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %uss to %struct.sigaltstack*
  %1 = inttoptr i64 %uoss to %struct.sigaltstack*
  %call = call fastcc i64 @__do_sys_sigaltstack(%struct.sigaltstack* noundef %0, %struct.sigaltstack* noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @restore_altstack(%struct.sigaltstack* noundef %uss) local_unnamed_addr #0 {
entry:
  %new = alloca %struct.sigaltstack, align 8
  %0 = bitcast %struct.sigaltstack* %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !16
  %1 = bitcast %struct.sigaltstack* %uss to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 24) #19
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call2 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %3) #17
  %add.ptr3 = getelementptr i8, i8* %call2, i64 16048
  %4 = bitcast i8* %add.ptr3 to %struct.pt_regs*
  %call4 = call fastcc i64 @user_stack_pointer(%struct.pt_regs* noundef %4) #17
  %5 = call fastcc i32 @do_sigaltstack(%struct.sigaltstack* noundef nonnull %new, %struct.sigaltstack* noundef null, i64 noundef %call4) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_sigaltstack(%struct.sigaltstack* noundef readonly %ss, %struct.sigaltstack* noundef %oss, i64 noundef %sp) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %tobool.not = icmp eq %struct.sigaltstack* %oss, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.sigaltstack* %oss to i8*
  %call1 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 24) #19
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 93
  %3 = load i64, i64* %sas_ss_sp, align 8
  %4 = inttoptr i64 %3 to i8*
  %ss_sp = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %oss, i64 0, i32 0
  store i8* %4, i8** %ss_sp, align 8
  %sas_ss_size = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 94
  %5 = load i64, i64* %sas_ss_size, align 16
  %ss_size = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %oss, i64 0, i32 2
  store i64 %5, i64* %ss_size, align 8
  %call2 = call fastcc i32 @sas_ss_flags(i64 noundef %sp) #17
  %sas_ss_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 95
  %6 = load i32, i32* %sas_ss_flags, align 8
  %and = and i32 %6, -2147483648
  %or = or i32 %and, %call2
  %ss_flags = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %oss, i64 0, i32 1
  store i32 %or, i32* %ss_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq %struct.sigaltstack* %ss, null
  br i1 %tobool4.not, label %cleanup55, label %if.then5

if.then5:                                         ; preds = %if.end
  %ss_sp7 = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %ss, i64 0, i32 0
  %7 = load i8*, i8** %ss_sp7, align 8
  %ss_size9 = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %ss, i64 0, i32 2
  %8 = load i64, i64* %ss_size9, align 8
  %ss_flags11 = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %ss, i64 0, i32 1
  %9 = load i32, i32* %ss_flags11, align 8
  %call12 = call fastcc i32 @on_sig_stack(i64 noundef %sp) #17
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end17, label %cleanup55, !prof !9

if.end17:                                         ; preds = %if.then5
  %and18 = and i32 %9, 2147483647
  %10 = icmp ugt i32 %and18, 2
  br i1 %10, label %cleanup55, label %if.end32, !prof !11

if.end32:                                         ; preds = %if.end17
  %cmp33 = icmp eq i32 %and18, 2
  br i1 %cmp33, label %cleanup, label %if.else

if.else:                                          ; preds = %if.end32
  %cmp36 = icmp ult i64 %8, 5120
  br i1 %cmp36, label %cleanup55, label %cleanup, !prof !11

cleanup:                                          ; preds = %if.else, %if.end32
  %ss_sp6.0 = phi i8* [ %7, %if.else ], [ null, %if.end32 ]
  %ss_size8.0 = phi i64 [ %8, %if.else ], [ 0, %if.end32 ]
  %11 = ptrtoint i8* %ss_sp6.0 to i64
  %sas_ss_sp48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 93
  store i64 %11, i64* %sas_ss_sp48, align 8
  %sas_ss_size49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 94
  store i64 %ss_size8.0, i64* %sas_ss_size49, align 16
  %sas_ss_flags50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 95
  store i32 %9, i32* %sas_ss_flags50, align 8
  br label %cleanup55

cleanup55:                                        ; preds = %if.else, %if.end17, %if.then5, %if.end, %cleanup
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.end ], [ -12, %if.else ], [ -22, %if.end17 ], [ -1, %if.then5 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @user_stack_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #8 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 31
  %cmp = icmp eq i64 %and, 16
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 13
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 1
  %retval.0.in = select i1 %cmp, i64* %arrayidx, i64* %2
  %retval.0 = load i64, i64* %retval.0.in, align 8
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__save_altstack(%struct.sigaltstack* noundef %uss, i64 noundef %sp) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = bitcast %struct.sigaltstack* %uss to i8*
  %call1 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 8) #17
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #17
  %3 = bitcast i8* %call2 to i8**
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 93
  %4 = load i64, i64* %sas_ss_sp, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8* %5, i8** %3, i32 -14, i32 0) #20, !srcloc !40
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %__pu_err.0 = phi i32 [ %6, %if.then ], [ -14, %entry ]
  %ss_flags = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %uss, i64 0, i32 1
  %7 = bitcast i32* %ss_flags to i8*
  %call14 = call fastcc i64 @__range_ok(i8* noundef %7, i64 noundef 4) #17
  %tobool15.not = icmp eq i64 %call14, 0
  br i1 %tobool15.not, label %if.end28, label %if.then16

if.then16:                                        ; preds = %if.end
  %call17 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %7) #17
  %8 = bitcast i8* %call17 to i32*
  %sas_ss_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 95
  %9 = load i32, i32* %sas_ss_flags, align 8
  %10 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %9, i32* %8, i32 -14, i32 0) #20, !srcloc !41
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then16
  %__pu_err11.0 = phi i32 [ %10, %if.then16 ], [ -14, %if.end ]
  %ss_size = getelementptr inbounds %struct.sigaltstack, %struct.sigaltstack* %uss, i64 0, i32 2
  %11 = bitcast i64* %ss_size to i8*
  %call35 = call fastcc i64 @__range_ok(i8* noundef %11, i64 noundef 8) #17
  %tobool36.not = icmp eq i64 %call35, 0
  br i1 %tobool36.not, label %if.end49, label %if.then37

if.then37:                                        ; preds = %if.end28
  %call38 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %11) #17
  %12 = bitcast i8* %call38 to i64*
  %sas_ss_size = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 94
  %13 = load i64, i64* %sas_ss_size, align 16
  %14 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %13, i64* %12, i32 -14, i32 0) #20, !srcloc !42
  br label %if.end49

if.end49:                                         ; preds = %if.end28, %if.then37
  %__pu_err32.0 = phi i32 [ %14, %if.then37 ], [ -14, %if.end28 ]
  %or = or i32 %__pu_err11.0, %__pu_err.0
  %or53 = or i32 %or, %__pu_err32.0
  ret i32 %or53
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #20, !srcloc !43
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #20, !srcloc !44
  call void asm sideeffect "hint #20", "~{memory}"() #20, !srcloc !45
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rt_sigaction(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_rt_sigaction(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_rt_sigaction(i64 noundef %sig, i64 noundef %act, i64 noundef %oact, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %conv = trunc i64 %sig to i32
  %0 = inttoptr i64 %act to %struct.sigaction*
  %1 = inttoptr i64 %oact to %struct.sigaction*
  %call = call fastcc i64 @__do_sys_rt_sigaction(i32 noundef %conv, %struct.sigaction* noundef %0, %struct.sigaction* noundef %1, i64 noundef %sigsetsize) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rt_sigsuspend(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_rt_sigsuspend(i64 noundef %0, i64 noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_rt_sigsuspend(i64 noundef %unewset, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %unewset to %struct.sigset_t*
  %call = call fastcc i64 @__do_sys_rt_sigsuspend(%struct.sigset_t* noundef %0, i64 noundef %sigsetsize) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i8* @arch_vma_name(%struct.vm_area_struct* noundef %vma) local_unnamed_addr #0 {
entry:
  ret i8* null
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @signals_init() local_unnamed_addr #9 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i32 noundef 8, i32 noundef 262144, void (i8*)* noundef null) #19
  store %struct.kmem_cache* %call, %struct.kmem_cache** @sigqueue_cachep, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @has_pending_signals(%struct.sigset_t* nocapture noundef readonly %signal, %struct.sigset_t* nocapture noundef readonly %blocked) unnamed_addr #8 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %signal, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %blocked, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx2, align 8
  %neg = xor i64 %1, -1
  %and = and i64 %0, %neg
  %cmp = icmp ne i64 %and, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #20, !srcloc !46
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !47
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #17
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #20, !srcloc !48
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #20, !srcloc !49
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #0 {
entry:
  %0 = zext i32 %flag to i64
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @set_bit(i64 noundef %0, i64* noundef %flags) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #12 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #20, !srcloc !50
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @arch_local_irq_enable() #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #20, !srcloc !52
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #20, !srcloc !53
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #8 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal, i32 noundef 9) #17
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set, i32 noundef %_sig) unnamed_addr #8 {
entry:
  %sub = add i32 %_sig, -1
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %conv4 = zext i32 %sub to i64
  %shr = lshr i64 %0, %conv4
  %1 = trunc i64 %shr to i32
  %conv2 = and i32 %1, 1
  ret i32 %conv2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #6 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #6 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_rlimit_put_ucounts(%struct.ucounts* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #17
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #19
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !9

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #19
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #20, !srcloc !54
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #20, !srcloc !55
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !56
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #20, !srcloc !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_tgid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #8 {
entry:
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 51
  %0 = load i32, i32* %tgid, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @collect_signal(i32 noundef %sig, %struct.sigpending* noundef %list, %struct.kernel_siginfo* noundef %info, i8* nocapture noundef writeonly %resched_timer) unnamed_addr #0 {
entry:
  %list1 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %list, i64 0, i32 0
  %0 = bitcast %struct.sigpending* %list to %struct.sigqueue**
  %q.055 = load %struct.sigqueue*, %struct.sigqueue** %0, align 8
  %list256 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.055, i64 0, i32 0
  %cmp.not57 = icmp eq %struct.list_head* %list256, %list1
  br i1 %cmp.not57, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %entry
  %signal63 = getelementptr inbounds %struct.sigpending, %struct.sigpending* %list, i64 0, i32 1
  call fastcc void @sigdelset(%struct.sigset_t* noundef %signal63, i32 noundef %sig) #17
  br label %if.else

for.body:                                         ; preds = %entry, %for.inc
  %q.059 = phi %struct.sigqueue* [ %q.0, %for.inc ], [ %q.055, %entry ]
  %first.058 = phi %struct.sigqueue* [ %first.1, %for.inc ], [ null, %entry ]
  %si_signo = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.059, i64 0, i32 2, i32 0, i32 0
  %1 = load i32, i32* %si_signo, align 8
  %cmp5 = icmp eq i32 %1, %sig
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %tobool.not = icmp eq %struct.sigqueue* %first.058, null
  br i1 %tobool.not, label %for.inc, label %still_pending

for.inc:                                          ; preds = %if.then, %for.body
  %first.1 = phi %struct.sigqueue* [ %first.058, %for.body ], [ %q.059, %if.then ]
  %2 = bitcast %struct.sigqueue* %q.059 to %struct.sigqueue**
  %q.0 = load %struct.sigqueue*, %struct.sigqueue** %2, align 8
  %list2 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %q.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list2, %list1
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %signal = getelementptr inbounds %struct.sigpending, %struct.sigpending* %list, i64 0, i32 1
  call fastcc void @sigdelset(%struct.sigset_t* noundef %signal, i32 noundef %sig) #17
  %tobool16.not = icmp eq %struct.sigqueue* %first.1, null
  br i1 %tobool16.not, label %if.else, label %still_pending

still_pending:                                    ; preds = %if.then, %for.end
  %first.054 = phi %struct.sigqueue* [ %first.1, %for.end ], [ %first.058, %if.then ]
  %list18 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %first.054, i64 0, i32 0
  call fastcc void @list_del_init(%struct.list_head* noundef %list18) #17
  %info19 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %first.054, i64 0, i32 2
  call fastcc void @copy_siginfo(%struct.kernel_siginfo* noundef %info, %struct.kernel_siginfo* noundef %info19) #17
  %flags = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %first.054, i64 0, i32 1
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 1
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %still_pending
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  %4 = load i32, i32* %si_code, align 8
  %cmp21 = icmp eq i32 %4, -2
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %_sys_private = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 3
  %5 = bitcast i64* %_sys_private to i32*
  %6 = load i32, i32* %5, align 8
  %tobool22 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %still_pending
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %still_pending ], [ %tobool22, %land.rhs ]
  %frombool = zext i1 %7 to i8
  store i8 %frombool, i8* %resched_timer, align 1
  call fastcc void @__sigqueue_free(%struct.sigqueue* noundef nonnull %first.054) #17
  br label %if.end28

if.else:                                          ; preds = %for.end.thread, %for.end
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef %info) #17
  %si_signo23 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo23, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code24 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 0, i32* %si_code24, align 8
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  store i32 0, i32* %_pid, align 8
  %8 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  store i32 0, i32* %8, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %land.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @copy_siginfo(%struct.kernel_siginfo* noundef %to, %struct.kernel_siginfo* noundef %from) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.kernel_siginfo* %to to i8*
  %1 = bitcast %struct.kernel_siginfo* %from to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 48) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start_expires(%struct.hrtimer* noundef %timer) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* noundef %timer) #17
  %call1 = call fastcc i64 @hrtimer_get_expires(%struct.hrtimer* noundef %timer) #17
  %sub = sub i64 %call1, %call
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef %call, i64 noundef %sub, i32 noundef 0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_softexpires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #8 {
entry:
  %_softexpires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 1
  %0 = load i64, i64* %_softexpires, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @hrtimer_get_expires(%struct.hrtimer* nocapture noundef readonly %timer) unnamed_addr #8 {
entry:
  %expires = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 0, i32 1
  %0 = load i64, i64* %expires, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !58
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !59
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(i8** noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @has_si_pid_and_uid(%struct.kernel_siginfo* nocapture noundef readonly %info) unnamed_addr #8 {
entry:
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  %0 = load i32, i32* %si_signo, align 8
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  %1 = load i32, i32* %si_code, align 8
  %call = call i32 @siginfo_layout(i32 noundef %0, i32 noundef %1) #17
  %2 = icmp ult i32 %call, 11
  %switch.cast = trunc i32 %call to i11
  %switch.downshift = lshr i11 -511, %switch.cast
  %3 = and i11 %switch.downshift, 1
  %switch.masked = icmp ne i11 %3, 0
  %ret.0.off0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %ret.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !60
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !61
  call void @rcu_read_unlock_strict() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @si_fromuser(%struct.kernel_siginfo* noundef readonly %info) unnamed_addr #8 {
entry:
  %cmp = icmp eq %struct.kernel_siginfo* %info, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call = call fastcc i32 @is_si_special(%struct.kernel_siginfo* noundef nonnull %info) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  %0 = load i32, i32* %si_code, align 8
  %cmp1 = icmp slt i32 %0, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ false, %lor.rhs ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @same_thread_group(%struct.task_struct* nocapture noundef readonly %p1, %struct.task_struct* nocapture noundef readonly %p2) unnamed_addr #8 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p1, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %signal1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p2, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal1, align 8
  %cmp = icmp eq %struct.signal_struct* %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @kill_ok_by_cred(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred1, align 8
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 79
  %3 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %coerce.dive = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 5, i32 0
  %4 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %4 to i64
  %coerce.dive10 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 3, i32 0
  %5 = load i32, i32* %coerce.dive10, align 4
  %coerce.val.ii11 = zext i32 %5 to i64
  %call12 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii11) #17
  br i1 %call12, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %coerce.dive16 = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 1, i32 0
  %6 = load i32, i32* %coerce.dive16, align 4
  %coerce.val.ii17 = zext i32 %6 to i64
  %call18 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii17) #17
  br i1 %call18, label %lor.end, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %coerce.dive22 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %7 = load i32, i32* %coerce.dive22, align 4
  %coerce.val.ii23 = zext i32 %7 to i64
  %call26 = call fastcc i1 @uid_eq(i64 %coerce.val.ii23, i64 %coerce.val.ii11) #17
  br i1 %call26, label %lor.end, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false19
  %call34 = call fastcc i1 @uid_eq(i64 %coerce.val.ii23, i64 %coerce.val.ii17) #17
  br i1 %call34, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false27
  %user_ns = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 16
  %8 = load %struct.user_namespace*, %struct.user_namespace** %user_ns, align 8
  %call35 = call i1 @ns_capable(%struct.user_namespace* noundef %8, i32 noundef 5) #19
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false27, %lor.lhs.false19, %lor.lhs.false, %entry
  %9 = phi i1 [ true, %lor.lhs.false27 ], [ true, %lor.lhs.false19 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %call35, %lor.rhs ]
  ret i1 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_session(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #8 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 3
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @is_si_special(%struct.kernel_siginfo* noundef readnone %info) unnamed_addr #12 {
entry:
  %cmp = icmp ule %struct.kernel_siginfo* %info, inttoptr (i64 1 to %struct.kernel_siginfo*)
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #12 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #17
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #17
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #12 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @legacy_queue(%struct.sigpending* nocapture noundef readonly %signals, i32 noundef %sig) unnamed_addr #8 {
entry:
  %cmp = icmp slt i32 %sig, 32
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %signal = getelementptr inbounds %struct.sigpending, %struct.sigpending* %signals, i64 0, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal, i32 noundef %sig) #17
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_tgid_nr_ns(%struct.task_struct* noundef %tsk, %struct.pid_namespace* noundef %ns) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 1, %struct.pid_namespace* noundef %ns) #19
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #19
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #20, !srcloc !62
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #20, !srcloc !63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @inc_rlimit_get_ucounts(%struct.ucounts* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 11, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_dropped_signal(i32 noundef %sig) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @print_fatal_signals, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @print_dropped_signal.ratelimit_state, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.print_dropped_signal, i64 0, i64 0)) #19
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %do.end

do.end:                                           ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 81, i64 0
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 50
  %3 = load i32, i32* %pid, align 32
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %3, i32 noundef %sig) #21
  br label %return

return:                                           ; preds = %if.end, %entry, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @siginitset(%struct.sigset_t* nocapture noundef writeonly %set, i64 noundef %mask) unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  store i64 %mask, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_trap_notify(%struct.task_struct* noundef %t) unnamed_addr #0 {
entry:
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %and = and i32 %0, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 883; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 88
  %1 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %counter.i.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %2 = load volatile i32, i32* %counter.i.i, align 4
  %tobool16.not = icmp eq i32 %2, 0
  br i1 %tobool16.not, label %do.body27, label %do.end31, !prof !11

do.body27:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/signal.c\22; .popsection; .long 14472b - 14470b; .short 884; .short 0; .popsection; 14471: brk 0x800", ""() #20, !srcloc !65
  unreachable

do.end31:                                         ; preds = %if.end
  %call32 = call i1 @task_set_jobctl_pending(%struct.task_struct* noundef %t, i64 noundef 1048576) #17
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 43
  %3 = load i64, i64* %jobctl, align 8
  %and33 = and i64 %3, 4194304
  %tobool34 = icmp ne i64 %and33, 0
  call fastcc void @ptrace_signal_wake_up(%struct.task_struct* noundef %t, i1 noundef %tobool34) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @signal_set_stop_flags(%struct.signal_struct* nocapture noundef %sig, i32 noundef %flags) unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 12
  %0 = load i32, i32* %flags1, align 4
  %and = and i32 %0, 12
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/sched/signal.h\22; .popsection; .long 14472b - 14470b; .short 262; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #20, !srcloc !66
  %.pre = load i32, i32* %flags1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %and17 = and i32 %1, -52
  %or = or i32 %and17, %flags
  store i32 %or, i32* %flags1, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sig_ignored(%struct.task_struct* nocapture noundef readonly %t, i32 noundef %sig, i1 noundef %force) unnamed_addr #8 {
entry:
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 89
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %blocked, i32 noundef %sig) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %real_blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 90
  %call1 = call fastcc i32 @sigismember(%struct.sigset_t* noundef %real_blocked, i32 noundef %sig) #17
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %tobool3 = icmp ne i32 %0, 0
  %cmp = icmp ne i32 %sig, 9
  %or.cond = and i1 %cmp, %tobool3
  br i1 %or.cond, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %call7 = call fastcc i1 @sig_task_ignored(%struct.task_struct* noundef %t, i32 noundef %sig, i1 noundef %force) #17
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false, %if.end5
  %retval.0 = phi i1 [ %call7, %if.end5 ], [ false, %lor.lhs.false ], [ false, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_signal_wake_up(%struct.task_struct* noundef %t, i1 noundef %resume) unnamed_addr #0 {
entry:
  %cond = select i1 %resume, i32 8, i32 0
  call void @signal_wake_up_state(%struct.task_struct* noundef %t, i32 noundef %cond) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sig_task_ignored(%struct.task_struct* nocapture noundef readonly %t, i32 noundef %sig, i1 noundef %force) unnamed_addr #8 {
entry:
  %call = call fastcc i8* @sig_handler(%struct.task_struct* noundef %t, i32 noundef %sig) #17
  %call1 = call fastcc i32 @is_global_init(%struct.task_struct* noundef %t) #17
  %tobool.not = icmp ne i32 %call1, 0
  %0 = add i32 %sig, -1
  %1 = icmp ult i32 %0, 31
  %or.cond = and i1 %1, %tobool.not
  br i1 %or.cond, label %land.rhs3, label %if.end

land.rhs3:                                        ; preds = %entry
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and = and i64 %shl, 262400
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.end, label %cleanup, !prof !9

if.end:                                           ; preds = %entry, %land.rhs3
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 12
  %3 = load i32, i32* %flags, align 4
  %and8 = and i32 %3, 64
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end36, label %land.lhs.true17, !prof !9

land.lhs.true17:                                  ; preds = %if.end
  %cmp18 = icmp eq i8* %call, null
  br i1 %cmp18, label %land.lhs.true20, label %if.end36

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %4 = and i1 %1, %force
  br i1 %4, label %land.lhs.true29, label %cleanup

land.lhs.true29:                                  ; preds = %land.lhs.true20
  %sh_prom31 = zext i32 %0 to i64
  %shl32 = shl nuw nsw i64 1, %sh_prom31
  %and33 = and i64 %shl32, 262400
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %land.lhs.true29, %land.lhs.true17, %if.end
  %flags37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 4
  %5 = load i32, i32* %flags37, align 4
  %and38 = and i32 %5, 2097152
  %tobool39 = icmp ne i32 %and38, 0
  %cmp41 = icmp eq i8* %call, inttoptr (i64 3 to i8*)
  %or.cond60 = select i1 %tobool39, i1 %cmp41, i1 false
  %lnot45 = xor i1 %force, true
  %6 = and i1 %or.cond60, %lnot45
  br i1 %6, label %cleanup, label %if.end56, !prof !11

if.end56:                                         ; preds = %if.end36
  %call57 = call fastcc i1 @sig_handler_ignored(i8* noundef %call, i32 noundef %sig) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %land.lhs.true20, %land.lhs.true29, %land.rhs3, %if.end56
  %retval.0 = phi i1 [ %call57, %if.end56 ], [ true, %land.rhs3 ], [ true, %land.lhs.true29 ], [ true, %land.lhs.true20 ], [ true, %if.end36 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #3 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #17
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #6 {
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @wants_signal(i32 noundef %sig, %struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 89
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %blocked, i32 noundef %sig) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 4
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %cmp = icmp eq i32 %sig, 9
  br i1 %cmp, label %return, label %do.end

do.end:                                           ; preds = %if.end3
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 1
  %1 = load volatile i32, i32* %__state, align 16
  %and6 = and i32 %1, 12
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %if.end9, label %return

if.end9:                                          ; preds = %do.end
  %call10 = call i32 @task_curr(%struct.task_struct* noundef %p) #19
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.rhs, label %return

lor.rhs:                                          ; preds = %if.end9
  %call12 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #17
  %tobool13.not = icmp eq i32 %call12, 0
  br label %return

return:                                           ; preds = %if.end9, %lor.rhs, %do.end, %if.end3, %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.end ], [ true, %if.end3 ], [ false, %do.end ], [ true, %if.end9 ], [ %tobool13.not, %lor.rhs ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_curr(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #8 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  ret %struct.pid* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #12 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_stop(i32 noundef %exit_code, i32 noundef %why, i32 noundef %clear_code, %struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pi_lock = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 102
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %pi_lock) #17
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 264, i32* %__state, align 16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %pi_lock, i64 noundef %call2) #17
  call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !67
  %last_siginfo = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 114
  store %struct.kernel_siginfo* %info, %struct.kernel_siginfo** %last_siginfo, align 32
  %exit_code30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 40
  store i32 %exit_code, i32* %exit_code30, align 8
  %cmp31 = icmp eq i32 %why, 5
  br i1 %cmp31, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 43
  %2 = load i64, i64* %jobctl, align 8
  %and = and i64 %2, 131072
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call35 = call fastcc i1 @task_participate_group_stop(%struct.task_struct* noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %gstop_done.0.off0 = phi i1 [ %call35, %if.then ], [ false, %land.lhs.true ], [ false, %entry ]
  call void @task_clear_jobctl_pending(%struct.task_struct* noundef %1, i64 noundef 524288) #17
  %tobool37.not = icmp eq %struct.kernel_siginfo* %info, null
  br i1 %tobool37.not, label %if.end43, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.end
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  %3 = load i32, i32* %si_code, align 8
  %shr.mask = and i32 %3, -256
  %cmp39 = icmp eq i32 %shr.mask, 32768
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %land.lhs.true38
  call void @task_clear_jobctl_pending(%struct.task_struct* noundef %1, i64 noundef 1048576) #17
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true38, %if.end
  call void @task_clear_jobctl_trapping(%struct.task_struct* noundef %1) #17
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  call fastcc void @__raw_read_lock() #17
  %call46 = call fastcc i1 @may_ptrace_stop() #17
  br i1 %call46, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end43
  call fastcc void @do_notify_parent_cldstop(%struct.task_struct* noundef %1, i1 noundef true, i32 noundef %why) #17
  br i1 %gstop_done.0.off0, label %land.lhs.true51, label %if.end57

land.lhs.true51:                                  ; preds = %if.then47
  %call53 = call fastcc i32 @ptrace_reparented(%struct.task_struct* noundef %1) #17
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end57, label %if.then55

if.then55:                                        ; preds = %land.lhs.true51
  call fastcc void @do_notify_parent_cldstop(%struct.task_struct* noundef %1, i1 noundef false, i32 noundef %why) #17
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %land.lhs.true51, %if.then47
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !68
  call fastcc void @__raw_read_unlock() #17
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !69
  call void @schedule() #19
  br label %if.end84

if.else:                                          ; preds = %if.end43
  br i1 %gstop_done.0.off0, label %if.then59, label %do.body70

if.then59:                                        ; preds = %if.else
  call fastcc void @do_notify_parent_cldstop(%struct.task_struct* noundef %1, i1 noundef false, i32 noundef %why) #17
  br label %do.body70

do.body70:                                        ; preds = %if.else, %if.then59
  store volatile i32 0, i32* %__state, align 16
  %tobool79.not = icmp eq i32 %clear_code, 0
  br i1 %tobool79.not, label %if.end83, label %if.then80

if.then80:                                        ; preds = %do.body70
  store i32 0, i32* %exit_code30, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %do.body70
  call fastcc void @__raw_read_unlock() #17
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end57
  %5 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i102 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %5, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i102) #19
  store %struct.kernel_siginfo* null, %struct.kernel_siginfo** %last_siginfo, align 32
  %jobctl91 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 43
  %6 = load i64, i64* %jobctl91, align 8
  %and92 = and i64 %6, -4194305
  store i64 %and92, i64* %jobctl91, align 8
  %call94 = call fastcc i1 @recalc_sigpending_tsk(%struct.task_struct* noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @may_ptrace_stop() unnamed_addr #16 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 5
  %2 = load i32, i32* %ptrace, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %return, label %if.end, !prof !11

if.end:                                           ; preds = %entry
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %core_state = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 44
  %4 = load %struct.core_state*, %struct.core_state** %core_state, align 8
  %tobool4.not = icmp eq %struct.core_state* %4, null
  br i1 %tobool4.not, label %if.end25, label %land.lhs.true, !prof !9

land.lhs.true:                                    ; preds = %if.end
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 53
  %5 = load %struct.task_struct*, %struct.task_struct** %parent, align 16
  %mm15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 35
  %6 = load %struct.mm_struct*, %struct.mm_struct** %mm15, align 8
  %cmp = icmp eq %struct.mm_struct* %3, %6
  br i1 %cmp, label %return, label %if.end25, !prof !11

if.end25:                                         ; preds = %land.lhs.true, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %if.end25
  %retval.0 = phi i1 [ true, %if.end25 ], [ false, %entry ], [ false, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #17
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(%struct.pt_regs* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @arch_untagged_si_addr(i8* noundef %addr, i64 noundef %sig, i64 noundef %si_code) unnamed_addr #12 {
entry:
  %cmp = icmp eq i64 %sig, 5
  %cmp1 = icmp eq i64 %si_code, 1
  %or.cond = and i1 %cmp, %cmp1
  %0 = ptrtoint i8* %addr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %retval.0 = select i1 %or.cond, i8* %addr, i8* %1
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_restore_sigmask() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %2, i32 noundef 20) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @sas_ss_reset(%struct.task_struct* nocapture noundef writeonly %p) unnamed_addr #5 {
entry:
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 93
  store i64 0, i64* %sas_ss_sp, align 8
  %sas_ss_size = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 94
  store i64 0, i64* %sas_ss_size, align 16
  %sas_ss_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 95
  store i32 2, i32* %sas_ss_flags, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tracehook_signal_handler(i32 noundef %stepping) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %stepping, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ptrace_notify(i32 noundef 5) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigandsets(%struct.sigset_t* nocapture noundef writeonly %r, %struct.sigset_t* nocapture noundef readonly %a, %struct.sigset_t* nocapture noundef readonly %b) unnamed_addr #10 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %a, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %b, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx2, align 8
  %and = and i64 %1, %0
  %arrayidx4 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %r, i64 0, i32 0, i64 0
  store i64 %and, i64* %arrayidx4, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigisemptyset(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #8 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %cmp = icmp eq i64 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #17
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #17
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !9

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #19
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_rt_sigprocmask(i32 noundef %how, %struct.sigset_t* noundef %nset, %struct.sigset_t* noundef %oset, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %old_set = alloca %struct.sigset_t, align 8
  %new_set = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %old_set to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = bitcast %struct.sigset_t* %new_set to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #20
  %2 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %new_set, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %2, align 8, !annotation !16
  %cmp.not = icmp eq i64 %sigsetsize, 8
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %old_set, i64 0, i32 0, i64 0, !annotation !16
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 89, i32 0, i64 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %tobool.not = icmp eq %struct.sigset_t* %nset, null
  br i1 %tobool.not, label %if.end10, label %if.then1

if.then1:                                         ; preds = %if.end
  %8 = bitcast %struct.sigset_t* %nset to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef nonnull %8, i64 noundef 8) #19
  %tobool3.not = icmp eq i64 %call2.i, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.then1
  call fastcc void @sigdelsetmask(%struct.sigset_t* noundef nonnull %new_set, i64 noundef 262400) #17
  %call6 = call i32 @sigprocmask(i32 noundef %how, %struct.sigset_t* noundef nonnull %new_set, %struct.sigset_t* noundef null) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  %conv = sext i32 %call6 to i64
  br label %cleanup

if.end10:                                         ; preds = %if.end5, %if.end
  %tobool11.not = icmp eq %struct.sigset_t* %oset, null
  br i1 %tobool11.not, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.end10
  %9 = bitcast %struct.sigset_t* %oset to i8*
  %call2.i24 = call fastcc i64 @_copy_to_user(i8* noundef nonnull %9, i8* noundef nonnull %0, i64 noundef 8) #19
  %tobool14.not = icmp eq i64 %call2.i24, 0
  br i1 %tobool14.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.then12, %if.end10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then1, %entry, %if.end17, %if.then8
  %retval.0 = phi i64 [ %conv, %if.then8 ], [ 0, %if.end17 ], [ -22, %entry ], [ -14, %if.then1 ], [ -14, %if.then12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_rt_sigpending(%struct.sigset_t* noundef %uset, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %set = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %set to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %1, align 8, !annotation !16
  %cmp = icmp ugt i64 %sigsetsize, 8
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @do_sigpending(%struct.sigset_t* noundef nonnull %set) #17
  %2 = bitcast %struct.sigset_t* %uset to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %2, i8* noundef nonnull %0, i64 noundef %sigsetsize) #19
  %tobool.not = icmp eq i64 %call2.i, 0
  %. = select i1 %tobool.not, i64 0, i64 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ -22, %entry ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_sigpending(%struct.sigset_t* nocapture noundef %set) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 92, i32 1
  %signal3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal3, align 8
  %signal4 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %3, i64 0, i32 6, i32 1
  call fastcc void @sigorsets(%struct.sigset_t* noundef %set, %struct.sigset_t* noundef %signal, %struct.sigset_t* noundef %signal4) #17
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i11 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i11) #19
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89
  call fastcc void @sigandsets(%struct.sigset_t* noundef %set, %struct.sigset_t* noundef %blocked, %struct.sigset_t* noundef %set) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #17
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #17
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #19
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_clear_user(i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @known_siginfo_layout(i32 noundef %sig, i32 noundef %si_code) unnamed_addr #12 {
entry:
  %cmp = icmp eq i32 %si_code, 128
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %si_code, 0
  br i1 %cmp1, label %if.then2, label %if.else16

if.then2:                                         ; preds = %if.else
  %0 = add i32 %sig, -1
  %1 = icmp ult i32 %0, 31
  br i1 %1, label %land.lhs.true5, label %if.else10

land.lhs.true5:                                   ; preds = %if.then2
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %and = and i64 %shl, 1342244056
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %land.lhs.true5
  %idxprom = zext i32 %sig to i64
  %limit = getelementptr [32 x %struct.anon.85], [32 x %struct.anon.85]* @sig_sicodes, i64 0, i64 %idxprom, i32 0
  %2 = load i8, i8* %limit, align 1
  %conv = zext i8 %2 to i32
  %cmp7.not = icmp ult i32 %conv, %si_code
  br i1 %cmp7.not, label %if.end27, label %return

if.else10:                                        ; preds = %land.lhs.true5, %if.then2
  %cmp11 = icmp ult i32 %si_code, 7
  br i1 %cmp11, label %return, label %if.end27

if.else16:                                        ; preds = %if.else
  %cmp17 = icmp sgt i32 %si_code, -8
  %cmp21 = icmp eq i32 %si_code, -60
  %or.cond = or i1 %cmp17, %cmp21
  br i1 %or.cond, label %return, label %if.end27

if.end27:                                         ; preds = %if.else16, %if.else10, %if.then6
  br label %return

return:                                           ; preds = %if.else16, %if.else10, %if.then6, %entry, %if.end27
  %retval.0 = phi i1 [ false, %if.end27 ], [ true, %entry ], [ true, %if.then6 ], [ true, %if.else10 ], [ true, %if.else16 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_rt_sigtimedwait(%struct.sigset_t* noundef %uthese, %struct.siginfo* noundef %uinfo, %struct.__kernel_timespec* noundef %uts, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %these = alloca %struct.sigset_t, align 8
  %ts = alloca %struct.timespec64, align 8
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.sigset_t* %these to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %these, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %1, align 8, !annotation !16
  %2 = bitcast %struct.timespec64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !16
  %3 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false), !annotation !16
  %cmp.not = icmp eq i64 %sigsetsize, 8
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %4 = bitcast %struct.sigset_t* %uthese to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %4, i64 noundef 8) #19
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %tobool3.not = icmp eq %struct.__kernel_timespec* %uts, null
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end2
  %call5 = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %ts, %struct.__kernel_timespec* noundef nonnull %uts) #19
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.then4, %if.end2
  %ts. = phi %struct.timespec64* [ %ts, %if.then4 ], [ null, %if.end2 ]
  %call11 = call fastcc i32 @do_sigtimedwait(%struct.sigset_t* noundef nonnull %these, %struct.kernel_siginfo* noundef nonnull %info, %struct.timespec64* noundef %ts.) #17
  %cmp12 = icmp sgt i32 %call11, 0
  %tobool13 = icmp ne %struct.siginfo* %uinfo, null
  %or.cond = and i1 %tobool13, %cmp12
  br i1 %or.cond, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end9
  %call15 = call i32 @copy_siginfo_to_user(%struct.siginfo* noundef nonnull %uinfo, %struct.kernel_siginfo* noundef nonnull %info) #17
  %tobool16.not = icmp eq i32 %call15, 0
  %spec.select = select i1 %tobool16.not, i32 %call11, i32 -14
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end9
  %ret.0 = phi i32 [ %call11, %if.end9 ], [ %spec.select, %if.then14 ]
  %conv = sext i32 %ret.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end, %entry, %if.end19
  %retval.0 = phi i64 [ %conv, %if.end19 ], [ -22, %entry ], [ -14, %if.end ], [ -14, %if.then4 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_sigtimedwait(%struct.sigset_t* nocapture noundef readonly %which, %struct.kernel_siginfo* noundef %info, %struct.timespec64* noundef readonly %ts) unnamed_addr #0 {
entry:
  %timeout = alloca i64, align 8
  %mask = alloca %struct.sigset_t, align 8
  %0 = bitcast i64* %timeout to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  store i64 9223372036854775807, i64* %timeout, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast %struct.sigset_t* %mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #20
  %4 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %mask, i64 0, i32 0, i64 0, !annotation !16
  %5 = getelementptr %struct.sigset_t, %struct.sigset_t* %which, i64 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %4, align 8
  %tobool.not = icmp eq %struct.timespec64* %ts, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef nonnull %ts) #17
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %.elt = getelementptr %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %7 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %8 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %.unpack67 = load i64, i64* %8, align 8
  %9 = insertvalue [2 x i64] %7, i64 %.unpack67, 1
  %call3 = call fastcc i64 @timespec64_to_ktime([2 x i64] %9) #17
  store i64 %call3, i64* %timeout, align 8
  %phi.cmp = icmp ne i64 %call3, 0
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %10 = phi i1 [ %phi.cmp, %if.end ], [ true, %entry ]
  %to.0 = phi i64* [ %timeout, %if.end ], [ null, %entry ]
  call fastcc void @sigdelsetmask(%struct.sigset_t* noundef nonnull %mask, i64 noundef 262400) #17
  call fastcc void @signotset(%struct.sigset_t* noundef nonnull %mask) #17
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 88
  %11 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %11, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #19
  %call5 = call i32 @dequeue_signal(%struct.task_struct* noundef %2, %struct.sigset_t* noundef nonnull %mask, %struct.kernel_siginfo* noundef %info) #17
  %tobool6 = icmp eq i32 %call5, 0
  %or.cond = select i1 %tobool6, i1 %10, i1 false
  br i1 %or.cond, label %if.then8, label %if.end32

if.then8:                                         ; preds = %if.end4
  %real_blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 90
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 89
  %12 = getelementptr %struct.sigset_t, %struct.sigset_t* %blocked, i64 0, i32 0, i64 0
  %13 = getelementptr %struct.sigset_t, %struct.sigset_t* %real_blocked, i64 0, i32 0, i64 0
  %14 = load i64, i64* %12, align 8
  store i64 %14, i64* %13, align 32
  call fastcc void @sigandsets(%struct.sigset_t* noundef %blocked, %struct.sigset_t* noundef %blocked, %struct.sigset_t* noundef nonnull %mask) #17
  call void @recalc_sigpending() #17
  %15 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i68 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %15, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i68) #19
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 131
  %16 = load i64, i64* %timer_slack_ns, align 64
  %call26 = call i32 @schedule_hrtimeout_range(i64* noundef %to.0, i64 noundef %16, i32 noundef 1) #19
  %17 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i69 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %17, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i69) #19
  call fastcc void @__set_task_blocked(%struct.task_struct* noundef %2, %struct.sigset_t* noundef %real_blocked) #17
  call fastcc void @sigemptyset(%struct.sigset_t* noundef %real_blocked) #17
  %call31 = call i32 @dequeue_signal(%struct.task_struct* noundef %2, %struct.sigset_t* noundef nonnull %mask, %struct.kernel_siginfo* noundef %info) #17
  br label %if.end32

if.end32:                                         ; preds = %if.then8, %if.end4
  %sig.0 = phi i32 [ %call31, %if.then8 ], [ %call5, %if.end4 ]
  %ret.0 = phi i32 [ %call26, %if.then8 ], [ 0, %if.end4 ]
  %18 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i70 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %18, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i70) #19
  %tobool35.not = icmp eq i32 %sig.0, 0
  br i1 %tobool35.not, label %if.end37, label %cleanup

if.end37:                                         ; preds = %if.end32
  %tobool38.not = icmp eq i32 %ret.0, 0
  %cond = select i1 %tobool38.not, i32 -11, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then, %if.end37
  %retval.0 = phi i32 [ %cond, %if.end37 ], [ -22, %if.then ], [ %sig.0, %if.end32 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #8 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %cmp1 = icmp ult i64 %1, 1000000000
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #12 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #17
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #12 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_kill(i32 noundef %pid, i32 noundef %sig) unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @prepare_kill_siginfo(i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %info) #17
  %call = call fastcc i32 @kill_something_info(i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %info, i32 noundef %pid) #17
  %conv = sext i32 %call to i64
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @prepare_kill_siginfo(i32 noundef %sig, %struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 0, i32* %si_code, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %1) #17
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  store i32 %call1, i32* %_pid, align 8
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 1, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call4 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #17
  %3 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  store i32 %call4, i32* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kill_something_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, i32 noundef %pid) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %pid, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @kill_proc_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, i32 noundef %pid) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %pid, -2147483648
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  call fastcc void @__raw_read_lock() #17
  switch i32 %pid, label %cond.true [
    i32 -1, label %for.cond.preheader
    i32 0, label %cond.false
  ]

for.cond.preheader:                               ; preds = %if.end3
  %0 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr52 = getelementptr %struct.list_head, %struct.list_head* %0, i64 -42, i32 1
  %cmp15.not53 = icmp eq %struct.list_head** %add.ptr52, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp15.not53, label %for.end.thread, label %for.body

cond.true:                                        ; preds = %if.end3
  %sub = sub nsw i32 0, %pid
  %call6 = call %struct.pid* @find_vpid(i32 noundef %sub) #19
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call8 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %2) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.pid* [ %call6, %cond.true ], [ %call8, %cond.false ]
  %call9 = call i32 @__kill_pgrp_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.pid* noundef %cond) #17
  br label %if.end31

for.body:                                         ; preds = %for.cond.preheader, %if.end25
  %.in = phi %struct.list_head** [ %add.ptr, %if.end25 ], [ %add.ptr52, %for.cond.preheader ]
  %count.055 = phi i32 [ %count.1, %if.end25 ], [ 0, %for.cond.preheader ]
  %retval10.054 = phi i32 [ %retval10.2, %if.end25 ], [ 0, %for.cond.preheader ]
  %3 = bitcast %struct.list_head** %.in to %struct.task_struct*
  %call16 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %3) #17
  %cmp17 = icmp sgt i32 %call16, 1
  br i1 %cmp17, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %for.body
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %call19 = call fastcc i1 @same_thread_group(%struct.task_struct* noundef %3, %struct.task_struct* noundef %5) #17
  br i1 %call19, label %if.end25, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  %call21 = call i32 @group_send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef %3, i32 noundef 4) #17
  %inc = add i32 %count.055, 1
  %cmp22.not = icmp eq i32 %call21, -1
  %spec.select = select i1 %cmp22.not, i32 %retval10.054, i32 %call21
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %land.lhs.true, %for.body
  %retval10.2 = phi i32 [ %retval10.054, %land.lhs.true ], [ %spec.select, %if.then20 ], [ %retval10.054, %for.body ]
  %count.1 = phi i32 [ %count.055, %land.lhs.true ], [ %inc, %if.then20 ], [ %count.055, %for.body ]
  %6 = getelementptr inbounds %struct.list_head*, %struct.list_head** %.in, i64 83
  %7 = load volatile %struct.list_head*, %struct.list_head** %6, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %7, i64 -42, i32 1
  %cmp15.not = icmp eq %struct.list_head** %add.ptr, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp15.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end25
  %tobool26.not = icmp eq i32 %count.1, 0
  br i1 %tobool26.not, label %for.end.thread, label %if.end31

for.end.thread:                                   ; preds = %for.cond.preheader, %for.end
  br label %if.end31

if.end31:                                         ; preds = %for.end.thread, %for.end, %cond.end
  %ret.0 = phi i32 [ %call9, %cond.end ], [ -3, %for.end.thread ], [ %retval10.2, %for.end ]
  call fastcc void @__raw_read_unlock() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end31, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %if.end31 ], [ -3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 1, %struct.pid_namespace* noundef null) #19
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kill_proc_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, i32 noundef %pid) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #19
  %call = call %struct.pid* @find_vpid(i32 noundef %pid) #19
  %call1 = call i32 @kill_pid_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.pid* noundef %call) #17
  call fastcc void @rcu_read_unlock() #17
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @find_vpid(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pgrp(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #8 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 2
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pidfd_send_signal(i32 noundef %pidfd, i32 noundef %sig, %struct.siginfo* noundef %info, i32 noundef %flags) unnamed_addr #0 {
entry:
  %kinfo = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %kinfo to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc [2 x i64] @fdget(i32 noundef %pidfd) #17
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool1.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %call5 = call fastcc %struct.pid* @pidfd_to_pid(%struct.file* noundef nonnull %1) #17
  %2 = bitcast %struct.pid* %call5 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %2) #17
  br i1 %call6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  %call8 = call fastcc i64 @PTR_ERR(i8* noundef %2) #17
  %conv = trunc i64 %call8 to i32
  br label %err

if.end9:                                          ; preds = %if.end3
  %call10 = call fastcc i1 @access_pidfd_pidns(%struct.pid* noundef %call5) #17
  br i1 %call10, label %if.end12, label %err

if.end12:                                         ; preds = %if.end9
  %tobool13.not = icmp eq %struct.siginfo* %info, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = call fastcc i32 @copy_siginfo_from_user_any(%struct.kernel_siginfo* noundef nonnull %kinfo, %struct.siginfo* noundef nonnull %info) #17
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %err, !prof !9

if.end21:                                         ; preds = %if.then14
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 0
  %3 = load i32, i32* %si_signo, align 8
  %cmp.not = icmp eq i32 %3, %sig
  br i1 %cmp.not, label %if.end31, label %err, !prof !9

if.end31:                                         ; preds = %if.end21
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %call33 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %5) #17
  %cmp34.not = icmp eq %struct.pid* %call33, %call5
  br i1 %cmp34.not, label %if.end43, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end31
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %kinfo, i64 0, i32 0, i32 2
  %6 = load i32, i32* %si_code, align 8
  %cmp36 = icmp sgt i32 %6, -1
  %cmp39 = icmp eq i32 %6, -6
  %or.cond = or i1 %cmp36, %cmp39
  br i1 %or.cond, label %err, label %if.end43

if.else:                                          ; preds = %if.end12
  call fastcc void @prepare_kill_siginfo(i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %kinfo) #17
  br label %if.end43

if.end43:                                         ; preds = %if.end31, %land.lhs.true, %if.else
  %call44 = call i32 @kill_pid_info(i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %kinfo, %struct.pid* noundef %call5) #17
  br label %err

err:                                              ; preds = %land.lhs.true, %if.end21, %if.then14, %if.end9, %if.end43, %if.then7
  %ret.0 = phi i32 [ %conv, %if.then7 ], [ %call15, %if.then14 ], [ -22, %if.end21 ], [ -1, %land.lhs.true ], [ %call44, %if.end43 ], [ -22, %if.end9 ]
  call fastcc void @fdput([2 x i64] %call) #17
  %conv45 = sext i32 %ret.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi i64 [ %conv45, %err ], [ -22, %entry ], [ -9, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #19
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #17
  ret [2 x i64] %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @pidfd_to_pid(%struct.file* noundef %file) unnamed_addr #0 {
entry:
  %call = call %struct.pid* @pidfd_pid(%struct.file* noundef %file) #19
  %0 = bitcast %struct.pid* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #17
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.pid* @tgid_pidfd_to_pid(%struct.file* noundef %file) #19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.pid* [ %call2, %if.end ], [ %call, %entry ]
  ret %struct.pid* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #12 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #12 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @access_pidfd_pidns(%struct.pid* noundef readonly %pid) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %1) #19
  %call2 = call fastcc %struct.pid_namespace* @ns_of_pid(%struct.pid* noundef %pid) #17
  %tobool.not10 = icmp eq %struct.pid_namespace* %call2, null
  %cmp11 = icmp eq %struct.pid_namespace* %call2, %call1
  %or.cond12 = select i1 %tobool.not10, i1 true, i1 %cmp11
  br i1 %or.cond12, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry, %if.end4
  %p.013 = phi %struct.pid_namespace* [ %2, %if.end4 ], [ %call2, %entry ]
  %parent = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %p.013, i64 0, i32 6
  %2 = load %struct.pid_namespace*, %struct.pid_namespace** %parent, align 8
  %tobool.not = icmp eq %struct.pid_namespace* %2, null
  %cmp = icmp eq %struct.pid_namespace* %2, %call1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.end4

cleanup:                                          ; preds = %if.end4, %entry
  %tobool.not.lcssa = phi i1 [ %tobool.not10, %entry ], [ %tobool.not, %if.end4 ]
  %3 = xor i1 %tobool.not.lcssa, true
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_siginfo_from_user_any(%struct.kernel_siginfo* noundef %kinfo, %struct.siginfo* noundef %info) unnamed_addr #0 {
entry:
  %call = call i32 @copy_siginfo_from_user(%struct.kernel_siginfo* noundef %kinfo, %struct.siginfo* noundef %info) #17
  ret i32 %call
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
  call void @fput(%struct.file* noundef %0) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #12 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @pidfd_pid(%struct.file* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @tgid_pidfd_to_pid(%struct.file* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid_namespace* @ns_of_pid(%struct.pid* noundef readonly %pid) unnamed_addr #8 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_tgkill(i32 noundef %tgid, i32 noundef %pid, i32 noundef %sig) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %pid, 1
  %cmp1 = icmp slt i32 %tgid, 1
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @do_tkill(i32 noundef %tgid, i32 noundef %pid, i32 noundef %sig) #17
  %conv = sext i32 %call to i64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_tkill(i32 noundef %tgid, i32 noundef %pid, i32 noundef %sig) unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  call fastcc void @clear_siginfo(%struct.kernel_siginfo* noundef nonnull %info) #17
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 0
  store i32 %sig, i32* %si_signo, align 8
  %si_errno = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 1
  store i32 0, i32* %si_errno, align 4
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  store i32 -6, i32* %si_code, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call1 = call fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef %2) #17
  %_pid = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 0
  store i32 %call1, i32* %_pid, align 8
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 1, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call4 = call fastcc i32 @from_kuid_munged(i64 %coerce.val.ii) #17
  %4 = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 3, i32 0, i32 1
  store i32 %call4, i32* %4, align 4
  %call7 = call fastcc i32 @do_send_specific(i32 noundef %tgid, i32 noundef %pid, i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %info) #17
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i32 %call7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_send_specific(i32 noundef %tgid, i32 noundef %pid, i32 noundef %sig, %struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #19
  %call = call %struct.task_struct* @find_task_by_vpid(i32 noundef %pid) #19
  %tobool.not = icmp eq %struct.task_struct* %call, null
  br i1 %tobool.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cmp = icmp slt i32 %tgid, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call1 = call fastcc i32 @task_tgid_vnr(%struct.task_struct* noundef nonnull %call) #17
  %cmp2 = icmp eq i32 %call1, %tgid
  br i1 %cmp2, label %if.then, label %if.end14

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call3 = call fastcc i32 @check_kill_permission(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef nonnull %call) #17
  %tobool4 = icmp eq i32 %call3, 0
  %tobool6 = icmp ne i32 %sig, 0
  %or.cond = and i1 %tobool6, %tobool4
  br i1 %or.cond, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.then
  %call8 = call i32 @do_send_sig_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, %struct.task_struct* noundef nonnull %call, i32 noundef 0) #17
  %cmp9 = icmp eq i32 %call8, -3
  br i1 %cmp9, label %if.then12, label %if.end14, !prof !11

if.then12:                                        ; preds = %if.then7
  br label %if.end14

if.end14:                                         ; preds = %if.then, %if.then12, %if.then7, %lor.lhs.false, %entry
  %error.0 = phi i32 [ 0, %if.then12 ], [ %call8, %if.then7 ], [ %call3, %if.then ], [ -3, %lor.lhs.false ], [ -3, %entry ]
  call fastcc void @rcu_read_unlock() #17
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @find_task_by_vpid(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_tkill(i32 noundef %pid, i32 noundef %sig) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %pid, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @do_tkill(i32 noundef 0, i32 noundef %pid, i32 noundef %sig) #17
  %conv = sext i32 %call to i64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_rt_sigqueueinfo(i32 noundef %pid, i32 noundef %sig, %struct.siginfo* noundef %uinfo) unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  %call = call fastcc i32 @__copy_siginfo_from_user(i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %info, %struct.siginfo* noundef %uinfo) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !9

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @do_rt_sigqueueinfo(i32 noundef %pid, i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %info) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0.in = phi i32 [ %call4, %if.end ], [ %call, %entry ]
  %retval.0 = sext i32 %retval.0.in to i64
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__copy_siginfo_from_user(i32 noundef %signo, %struct.kernel_siginfo* noundef %to, %struct.siginfo* noundef %from) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.kernel_siginfo* %to to i8*
  %1 = bitcast %struct.siginfo* %from to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %0, i8* noundef %1, i64 noundef 48) #19
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %si_signo = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %to, i64 0, i32 0, i32 0
  store i32 %signo, i32* %si_signo, align 8
  %call1 = call fastcc i32 @post_copy_siginfo_from_user(%struct.kernel_siginfo* noundef %to, %struct.siginfo* noundef %from) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -14, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_rt_sigqueueinfo(i32 noundef %pid, i32 noundef %sig, %struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  %0 = load i32, i32* %si_code, align 8
  %cmp = icmp sgt i32 %0, -1
  %cmp2 = icmp eq i32 %0, -6
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call3 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %2) #17
  %cmp4.not = icmp eq i32 %call3, %pid
  br i1 %cmp4.not, label %if.end, label %return

if.end:                                           ; preds = %entry, %land.lhs.true
  %call5 = call fastcc i32 @kill_proc_info(i32 noundef %sig, %struct.kernel_siginfo* noundef %info, i32 noundef %pid) #17
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ -1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_rt_tgsigqueueinfo(i32 noundef %tgid, i32 noundef %pid, i32 noundef %sig, %struct.siginfo* noundef %uinfo) unnamed_addr #0 {
entry:
  %info = alloca %struct.kernel_siginfo, align 8
  %0 = bitcast %struct.kernel_siginfo* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !16
  %call = call fastcc i32 @__copy_siginfo_from_user(i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %info, %struct.siginfo* noundef %uinfo) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !9

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @do_rt_tgsigqueueinfo(i32 noundef %tgid, i32 noundef %pid, i32 noundef %sig, %struct.kernel_siginfo* noundef nonnull %info) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0.in = phi i32 [ %call4, %if.end ], [ %call, %entry ]
  %retval.0 = sext i32 %retval.0.in to i64
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_rt_tgsigqueueinfo(i32 noundef %tgid, i32 noundef %pid, i32 noundef %sig, %struct.kernel_siginfo* noundef %info) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %pid, 1
  %cmp1 = icmp slt i32 %tgid, 1
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %si_code = getelementptr inbounds %struct.kernel_siginfo, %struct.kernel_siginfo* %info, i64 0, i32 0, i32 2
  %0 = load i32, i32* %si_code, align 8
  %cmp2 = icmp sgt i32 %0, -1
  %cmp5 = icmp eq i32 %0, -6
  %or.cond16 = or i1 %cmp2, %cmp5
  br i1 %or.cond16, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call6 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %2) #17
  %cmp7.not = icmp eq i32 %call6, %pid
  br i1 %cmp7.not, label %if.end9, label %return

if.end9:                                          ; preds = %if.end, %land.lhs.true
  %call10 = call fastcc i32 @do_send_specific(i32 noundef %tgid, i32 noundef %pid, i32 noundef %sig, %struct.kernel_siginfo* noundef %info) #17
  br label %return

return:                                           ; preds = %land.lhs.true, %entry, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ -22, %entry ], [ -1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_sigaltstack(%struct.sigaltstack* noundef %uss, %struct.sigaltstack* noundef %uoss) unnamed_addr #0 {
entry:
  %new = alloca %struct.sigaltstack, align 8
  %old = alloca %struct.sigaltstack, align 8
  %0 = bitcast %struct.sigaltstack* %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !16
  %1 = bitcast %struct.sigaltstack* %old to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !annotation !16
  %tobool.not = icmp eq %struct.sigaltstack* %uss, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = bitcast %struct.sigaltstack* %uss to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 24) #19
  %tobool1.not = icmp eq i64 %call2.i, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %new. = phi %struct.sigaltstack* [ %new, %land.lhs.true ], [ null, %entry ]
  %tobool3 = icmp ne %struct.sigaltstack* %uoss, null
  %cond7 = select i1 %tobool3, %struct.sigaltstack* %old, %struct.sigaltstack* null
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %call9 = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %4) #17
  %add.ptr10 = getelementptr i8, i8* %call9, i64 16048
  %5 = bitcast i8* %add.ptr10 to %struct.pt_regs*
  %call11 = call fastcc i64 @user_stack_pointer(%struct.pt_regs* noundef %5) #17
  %call12 = call fastcc i32 @do_sigaltstack(%struct.sigaltstack* noundef %new., %struct.sigaltstack* noundef %cond7, i64 noundef %call11) #17
  %tobool13 = icmp eq i32 %call12, 0
  %or.cond = and i1 %tobool3, %tobool13
  br i1 %or.cond, label %land.lhs.true16, label %if.end20

land.lhs.true16:                                  ; preds = %if.end
  %6 = bitcast %struct.sigaltstack* %uoss to i8*
  %call2.i29 = call fastcc i64 @_copy_to_user(i8* noundef nonnull %6, i8* noundef nonnull %1, i64 noundef 24) #19
  %tobool18.not = icmp eq i64 %call2.i29, 0
  %spec.select = select i1 %tobool18.not, i32 0, i32 -14
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true16, %if.end
  %err.0 = phi i32 [ %call12, %if.end ], [ %spec.select, %land.lhs.true16 ]
  %conv = sext i32 %err.0 to i64
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end20
  %retval.0 = phi i64 [ %conv, %if.end20 ], [ -14, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @sas_ss_flags(i64 noundef %sp) unnamed_addr #16 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sas_ss_size = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 94
  %2 = load i64, i64* %sas_ss_size, align 16
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @on_sig_stack(i64 noundef %sp) #17
  %tobool2.not = icmp ne i32 %call1, 0
  %cond = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ 2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @on_sig_stack(i64 noundef %sp) unnamed_addr #16 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sas_ss_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 95
  %2 = load i32, i32* %sas_ss_flags, align 8
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @__on_sig_stack(i64 noundef %sp) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @__on_sig_stack(i64 noundef %sp) unnamed_addr #16 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_rt_sigaction(i32 noundef %sig, %struct.sigaction* noundef %act, %struct.sigaction* noundef %oact, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %new_sa = alloca %struct.k_sigaction, align 8
  %old_sa = alloca %struct.k_sigaction, align 8
  %0 = bitcast %struct.k_sigaction* %new_sa to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !16
  %1 = bitcast %struct.k_sigaction* %old_sa to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #20
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !16
  %cmp.not = icmp eq i64 %sigsetsize, 8
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.sigaction* %act, null
  br i1 %tobool.not, label %if.end3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = bitcast %struct.sigaction* %act to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef nonnull %2, i64 noundef 32) #19
  %tobool1.not = icmp eq i64 %call2.i, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %new_sa. = phi %struct.k_sigaction* [ %new_sa, %land.lhs.true ], [ null, %if.end ]
  %tobool5.not = icmp eq %struct.sigaction* %oact, null
  %cond9 = select i1 %tobool5.not, %struct.k_sigaction* null, %struct.k_sigaction* %old_sa
  %call10 = call i32 @do_sigaction(i32 noundef %sig, %struct.k_sigaction* noundef %new_sa., %struct.k_sigaction* noundef %cond9) #17
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end3
  %conv = sext i32 %call10 to i64
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  br i1 %tobool5.not, label %if.end20, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end13
  %3 = bitcast %struct.sigaction* %oact to i8*
  %call2.i29 = call fastcc i64 @_copy_to_user(i8* noundef nonnull %3, i8* noundef nonnull %1, i64 noundef 32) #19
  %tobool18.not = icmp eq i64 %call2.i29, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %land.lhs.true15, %if.end13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true15, %land.lhs.true, %entry, %if.end20, %if.then12
  %retval.0 = phi i64 [ %conv, %if.then12 ], [ 0, %if.end20 ], [ -22, %entry ], [ -14, %land.lhs.true ], [ -14, %land.lhs.true15 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #20
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_rt_sigsuspend(%struct.sigset_t* noundef %unewset, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %newset = alloca %struct.sigset_t, align 8
  %0 = bitcast %struct.sigset_t* %newset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #20
  %1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %newset, i64 0, i32 0, i64 0, !annotation !16
  store i64 0, i64* %1, align 8, !annotation !16
  %cmp.not = icmp eq i64 %sigsetsize, 8
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.sigset_t* %unewset to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %2, i64 noundef 8) #19
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  call fastcc void @sigsuspend(%struct.sigset_t* noundef nonnull %newset) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i64 [ -514, %if.end2 ], [ -22, %entry ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #20
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sigsuspend(%struct.sigset_t* nocapture noundef %set) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 89, i32 0, i64 0
  %3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 91, i32 0, i64 0
  %4 = load i64, i64* %2, align 8
  store i64 %4, i64* %3, align 8
  call void @set_current_blocked(%struct.sigset_t* noundef %set) #17
  %call31 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #17
  %tobool.not2 = icmp eq i32 %call31, 0
  br i1 %tobool.not2, label %do.body8.lr.ph, label %while.end

do.body8.lr.ph:                                   ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  br label %do.body8

do.body8:                                         ; preds = %do.body8.lr.ph, %do.body8
  store volatile i32 1, i32* %__state, align 16
  call void @schedule() #19
  %call3 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #17
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body8, label %while.end

while.end:                                        ; preds = %do.body8, %entry
  call fastcc void @set_restore_sigmask() #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !9

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #14 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #16 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { nounwind }
attributes #21 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1391341}
!8 = !{i64 0, i64 65}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2155848977}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2155850689}
!13 = !{i64 2155851272}
!14 = !{i64 2155852612}
!15 = !{i64 2149562766}
!16 = !{!"auto-init"}
!17 = !{i8 0, i8 2}
!18 = !{i64 2155994279}
!19 = !{i64 2156066697}
!20 = !{i64 2156068353}
!21 = !{i64 2149626276}
!22 = !{i64 2149681230}
!23 = !{i64 2156071358}
!24 = !{i64 2156073125}
!25 = !{i64 2156074601}
!26 = !{i64 2156081767}
!27 = !{i64 2156087800}
!28 = !{i64 2156089282}
!29 = !{i64 2156076255}
!30 = !{i64 2156119588}
!31 = !{i64 2155616377}
!32 = !{i64 2156110363}
!33 = !{i64 2156121500}
!34 = !{i64 2156129729}
!35 = !{i64 2156131390}
!36 = !{i64 2156009714}
!37 = !{i64 2156009762}
!38 = !{i64 2155854657}
!39 = !{i64 2155856363}
!40 = !{i64 2156301163, i64 2156301201, i64 2156301218, i64 2156301252, i64 2156301274, i64 2156301300, i64 2156301318, i64 2156301476, i64 2156301517, i64 2156301539, i64 2156301585}
!41 = !{i64 2156304662, i64 2156304700, i64 2156304717, i64 2156304751, i64 2156304773, i64 2156304799, i64 2156304817, i64 2156304975, i64 2156305016, i64 2156305038, i64 2156305084}
!42 = !{i64 2156309102, i64 2156309140, i64 2156309157, i64 2156309191, i64 2156309213, i64 2156309239, i64 2156309257, i64 2156309415, i64 2156309456, i64 2156309478, i64 2156309524}
!43 = !{i64 3728852, i64 3728935, i64 3729159, i64 3729379, i64 3729402}
!44 = !{i64 3733554, i64 3733578}
!45 = !{i64 2151286338}
!46 = !{i64 2148085606, i64 2148086127, i64 2148086157, i64 2148086183, i64 2148086215, i64 2148086244}
!47 = !{i64 2149567059}
!48 = !{i64 2149122890, i64 2149122937, i64 2149122943, i64 2149122980, i64 2149122998, i64 2149124339, i64 2149124387, i64 2149124435, i64 2149124498, i64 2149124547, i64 2149123076, i64 2149123101, i64 2149123127, i64 2149123133, i64 2149124005, i64 2149124045, i64 2149124063, i64 2149124095, i64 2149124123, i64 2149124177, i64 2149124197, i64 2149124294, i64 2149123156, i64 2149123170, i64 2149123176, i64 2149123226, i64 2149123272, i64 2149123305}
!49 = !{i64 2148105879, i64 2148105912, i64 2148105965, i64 2148106024, i64 2148106058, i64 2148106113, i64 2148106142, i64 2148106162}
!50 = !{i64 2148075036, i64 2148075547, i64 2148075577, i64 2148075603, i64 2148075635, i64 2148075664}
!51 = !{i64 2149591912}
!52 = !{i64 2149377278}
!53 = !{i64 2149113434, i64 2149113481, i64 2149113487, i64 2149113524, i64 2149113542, i64 2149114882, i64 2149114930, i64 2149114978, i64 2149115041, i64 2149115090, i64 2149113620, i64 2149113645, i64 2149113671, i64 2149113677, i64 2149114548, i64 2149114588, i64 2149114606, i64 2149114638, i64 2149114666, i64 2149114720, i64 2149114740, i64 2149114837, i64 2149113700, i64 2149113714, i64 2149113720, i64 2149113770, i64 2149113816, i64 2149113849}
!54 = !{i64 2149128593, i64 2149128640, i64 2149128646, i64 2149128683, i64 2149128701, i64 2149130012, i64 2149130060, i64 2149130108, i64 2149130171, i64 2149130220, i64 2149128779, i64 2149128804, i64 2149128830, i64 2149128836, i64 2149129678, i64 2149129718, i64 2149129736, i64 2149129768, i64 2149129796, i64 2149129850, i64 2149129870, i64 2149129967, i64 2149128859, i64 2149128873, i64 2149128879, i64 2149128929, i64 2149128975, i64 2149129008}
!55 = !{i64 2149130772, i64 2149130819, i64 2149130825, i64 2149130862, i64 2149130880, i64 2149131823, i64 2149131871, i64 2149131919, i64 2149131982, i64 2149132031, i64 2149130958, i64 2149130983, i64 2149131009, i64 2149131015, i64 2149131052, i64 2149131058, i64 2149131108, i64 2149131154, i64 2149131187}
!56 = !{i64 2149588609}
!57 = !{i64 2149134606, i64 2149134653, i64 2149134659, i64 2149134696, i64 2149134714, i64 2149136025, i64 2149136073, i64 2149136121, i64 2149136184, i64 2149136233, i64 2149134792, i64 2149134817, i64 2149134843, i64 2149134849, i64 2149135691, i64 2149135731, i64 2149135749, i64 2149135781, i64 2149135809, i64 2149135863, i64 2149135883, i64 2149135980, i64 2149134872, i64 2149134886, i64 2149134892, i64 2149134942, i64 2149134988, i64 2149135021}
!58 = !{i64 2149585048}
!59 = !{i64 2149577767}
!60 = !{i64 2150043197}
!61 = !{i64 2150043414}
!62 = !{i64 2148008840, i64 2148009506, i64 2148009536, i64 2148009569, i64 2148009603, i64 2148009638, i64 2148009663}
!63 = !{i64 2148019588, i64 2148020254, i64 2148020284, i64 2148020316, i64 2148020350, i64 2148020386, i64 2148020411}
!64 = !{i64 2155904362}
!65 = !{i64 2155906096}
!66 = !{i64 2151455866}
!67 = !{i64 2156114911}
!68 = !{i64 2156115315}
!69 = !{i64 2156115440}
