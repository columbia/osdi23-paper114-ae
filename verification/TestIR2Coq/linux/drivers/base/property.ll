; ModuleID = 'drivers/base/property.c'
source_filename = "drivers/base/property.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
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
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.82, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.82 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
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
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.67, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.page = type { i64, %union.anon.2, %union.anon.81, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.81 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.83, i32, i32, %struct.net_device_ops*, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.ethtool_ops*, %struct.header_ops*, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, [40 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, %struct.refcount_struct, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, i8*, i32, %union.anon.131, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.83 = type { %struct.list_head, %struct.list_head }
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.if_settings*)*, i32 (%struct.net_device*, %struct.ifreq*, i8*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, %struct.net_device* (%struct.net_device*, %struct.sock*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, %struct.net_device* (%struct.net_device*, %struct.xdp_buff*)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)*, i32 (%struct.net_device_path_ctx*, %struct.net_device_path*)* }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.47, i32, i32, i32, i16, i16, %union.anon.49, %union.anon.50, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.42 }
%union.anon.42 = type { %struct.net_device* }
%union.anon.43 = type { %struct.sock* }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i64, void (%struct.sk_buff*)* }
%union.anon.47 = type { i32 }
%union.anon.49 = type { i32 }
%union.anon.50 = type { i16 }
%struct.ifreq = type { %union.anon.84, %union.anon.85 }
%union.anon.84 = type { [16 x i8] }
%union.anon.85 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.if_settings = type { i32, i32, %union.anon.86 }
%union.anon.86 = type { %struct.raw_hdlc_proto* }
%struct.raw_hdlc_proto = type { i16, i16 }
%struct.neigh_parms = type opaque
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.nlattr = type { i16, i16 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.netlink_ext_ack = type { i8*, %struct.nlattr*, %struct.nla_policy*, [20 x i8], i8 }
%struct.nla_policy = type opaque
%struct.neighbour = type opaque
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.87 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.87 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.netdev_bpf = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, %struct.xdp_rxq_info*, %struct.xdp_txq_info*, i32 }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, i32, [36 x i8] }
%struct.xdp_txq_info = type { %struct.net_device* }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.net_device_path_ctx = type { %struct.net_device*, i8*, i32, [2 x %struct.anon.123] }
%struct.anon.123 = type { i16, i16 }
%struct.net_device_path = type { i32, %struct.net_device*, %union.anon.124 }
%union.anon.124 = type { %struct.anon.126, [4 x i8] }
%struct.anon.126 = type { i32, i16, i16 }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ops = type { i8, i32, void (%struct.net_device*, %struct.ethtool_drvinfo*)*, i32 (%struct.net_device*)*, void (%struct.net_device*, %struct.ethtool_regs*, i8*)*, void (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ethtool_link_ext_state_info*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_coalesce*, %struct.kernel_ethtool_coalesce*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.ethtool_coalesce*, %struct.kernel_ethtool_coalesce*, %struct.netlink_ext_ack*)*, void (%struct.net_device*, %struct.ethtool_ringparam*)*, i32 (%struct.net_device*, %struct.ethtool_ringparam*)*, void (%struct.net_device*, %struct.ethtool_pause_stats*)*, void (%struct.net_device*, %struct.ethtool_pauseparam*)*, i32 (%struct.net_device*, %struct.ethtool_pauseparam*)*, void (%struct.net_device*, %struct.ethtool_test*, i64*)*, void (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.ethtool_stats*, i64*)*, i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)*, i32 (%struct.net_device*, %struct.ethtool_rxnfc*)*, i32 (%struct.net_device*, %struct.ethtool_flash*)*, i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32*, i8*, i8*)*, i32 (%struct.net_device*, i32*, i8*, i8)*, i32 (%struct.net_device*, i32*, i8*, i8*, i32)*, i32 (%struct.net_device*, i32*, i8*, i8, i32*, i1)*, void (%struct.net_device*, %struct.ethtool_channels*)*, i32 (%struct.net_device*, %struct.ethtool_channels*)*, i32 (%struct.net_device*, %struct.ethtool_dump*)*, i32 (%struct.net_device*, %struct.ethtool_dump*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_dump*)*, i32 (%struct.net_device*, %struct.ethtool_ts_info*)*, i32 (%struct.net_device*, %struct.ethtool_modinfo*)*, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_eee*)*, i32 (%struct.net_device*, %struct.ethtool_eee*)*, i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)*, i32 (%struct.net_device*, i32, %struct.ethtool_coalesce*)*, i32 (%struct.net_device*, i32, %struct.ethtool_coalesce*)*, i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)*, i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)*, void (%struct.net_device*, %struct.ethtool_fec_stats*)*, i32 (%struct.net_device*, %struct.ethtool_fecparam*)*, i32 (%struct.net_device*, %struct.ethtool_fecparam*)*, void (%struct.net_device*, %struct.ethtool_stats*, i64*)*, i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)*, i32 (%struct.net_device*, %struct.ethtool_module_eeprom*, %struct.netlink_ext_ack*)*, void (%struct.net_device*, %struct.ethtool_eth_phy_stats*)*, void (%struct.net_device*, %struct.ethtool_eth_mac_stats*)*, void (%struct.net_device*, %struct.ethtool_eth_ctrl_stats*)*, void (%struct.net_device*, %struct.ethtool_rmon_stats*, %struct.ethtool_rmon_hist_range**)* }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_link_ext_state_info = type { i32, %union.anon.128 }
%union.anon.128 = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_ethtool_coalesce = type { i8, i8 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pause_stats = type { i64, i64 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.129, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.129 = type { i32 }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.130, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.130 = type { [2 x i64], [2 x i64], [2 x i64] }
%struct.ethtool_fec_stats = type { %struct.ethtool_fec_stat, %struct.ethtool_fec_stat, %struct.ethtool_fec_stat }
%struct.ethtool_fec_stat = type { i64, [8 x i64] }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.ethtool_stats = type { i32, i32, [0 x i64] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x i8*] }
%struct.ethtool_module_eeprom = type { i32, i32, i8, i8, i8, i8* }
%struct.ethtool_eth_phy_stats = type { i64 }
%struct.ethtool_eth_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_eth_ctrl_stats = type { i64, i64, i64 }
%struct.ethtool_rmon_stats = type { i64, i64, i64, i64, [10 x i64], [10 x i64] }
%struct.ethtool_rmon_hist_range = type { i16, i16 }
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)*, i1 (i8*, i32)*, i16 (%struct.sk_buff*)* }
%struct.hh_cache = type { i32, %struct.seqlock_t, [4 x i64] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.in_device = type opaque
%struct.inet6_dev = type opaque
%struct.wireless_dev = type opaque
%struct.wpan_dev = type opaque
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, %struct.kobject, %struct.net_device*, [56 x i8] }
%struct.bpf_prog = type opaque
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i64, i64, %struct.net_device*, [16 x i8], %struct.spinlock, i32, i64, i64, [40 x i8] }
%struct.Qdisc = type opaque
%struct.xdp_dev_bulk_queue = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.possible_net_t = type {}
%union.anon.131 = type { %struct.pcpu_lstats* }
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { %struct.local64_t }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.u64_stats_sync = type {}
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.rtnl_link_ops = type opaque
%struct.netdev_tc_txq = type { i16, i16 }
%struct.phy_device = type { %struct.mdio_device, %struct.phy_driver*, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [2 x i64], [2 x i64], [2 x i64], [2 x i64], i32, i32, i8*, %struct.phy_package_shared*, %struct.sk_buff*, i8*, %struct.nlattr*, %struct.delayed_work, %struct.mutex, i8, %struct.sfp_bus*, %struct.phylink*, %struct.net_device*, %struct.mii_timestamper*, i8, i8, void (%struct.phy_device*, i1)*, void (%struct.net_device*)* }
%struct.mdio_device = type { %struct.device, %struct.mii_bus*, [32 x i8], i32 (%struct.device*, %struct.device_driver*)*, void (%struct.mdio_device*)*, void (%struct.mdio_device*)*, i32, i32, %struct.gpio_desc*, %struct.reset_control*, i32, i32 }
%struct.mii_bus = type { %struct.module*, i8*, [61 x i8], i8*, i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i16)*, i32 (%struct.mii_bus*)*, [32 x %struct.mdio_bus_stats], %struct.mutex, %struct.device*, i32, %struct.device, [32 x %struct.mdio_device*], i32, i32, [32 x i32], i32, i32, %struct.gpio_desc*, i32, %struct.mutex, [32 x %struct.phy_package_shared*] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.gpio_desc = type opaque
%struct.reset_control = type opaque
%struct.phy_driver = type { %struct.mdio_driver_common, i32, i8*, i32, i64*, i32, i8*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)*, void (%struct.phy_device*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*, %struct.ethtool_wolinfo*)*, void (%struct.phy_device*, %struct.ethtool_wolinfo*)*, void (%struct.phy_device*)*, i32 (%struct.phy_device*, i32, i16)*, i32 (%struct.phy_device*, i32, i16, i16)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*, i32)*, i32 (%struct.phy_device*, %struct.ethtool_modinfo*)*, i32 (%struct.phy_device*, %struct.ethtool_eeprom*, i8*)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*, %struct.phy_tdr_config*)*, i32 (%struct.phy_device*, i8*)*, i32 (%struct.phy_device*)*, void (%struct.phy_device*, i8*)*, void (%struct.phy_device*, %struct.ethtool_stats*, i64*)*, i32 (%struct.phy_device*, %struct.ethtool_tunable*, i8*)*, i32 (%struct.phy_device*, %struct.ethtool_tunable*, i8*)*, i32 (%struct.phy_device*, i1)*, i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)* }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.phy_tdr_config = type { i32, i32, i32, i8 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.phy_package_shared = type { i32, %struct.refcount_struct, i64, i64, i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.phylink = type opaque
%struct.mii_timestamper = type { i1 (%struct.mii_timestamper*, %struct.sk_buff*, i32)*, void (%struct.mii_timestamper*, %struct.sk_buff*, i32)*, i32 (%struct.mii_timestamper*, %struct.ifreq*)*, void (%struct.mii_timestamper*, %struct.phy_device*)*, i32 (%struct.mii_timestamper*, %struct.ethtool_ts_info*)*, %struct.device* }
%struct.sfp_bus = type opaque
%struct.udp_tunnel_nic_info = type opaque
%struct.udp_tunnel_nic = type opaque
%struct.bpf_xdp_entity = type { %struct.bpf_prog*, %struct.bpf_xdp_link* }
%struct.bpf_xdp_link = type opaque
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
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.38, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.38 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.39 }
%union.anon.39 = type { [4 x i32] }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type opaque
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.51 }
%union.anon.51 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
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
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.52, %union.anon.53, i32 }
%struct.request_queue = type opaque
%union.anon.52 = type { %struct.list_head }
%union.anon.53 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.54 }
%struct.anon.54 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.58 }
%struct.anon.58 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.66, i32, [12 x i8] }
%union.anon.66 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.67 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.68, %struct.qspinlock }
%union.anon.68 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.70, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.70 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34, [48 x i8] }
%struct.anon.34 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.132, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.133, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.134, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.135, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.132 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.133 = type { %struct.callback_head }
%union.anon.134 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.73 }
%union.anon.73 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.74, %union.anon.75 }
%union.anon.74 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.75 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.135 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.77 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.77 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.37 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.136 }
%union.anon.136 = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"phy-mode\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"phy-connection-type\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@switch.table.phy_modes = private unnamed_addr constant [30 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0)], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #0 {
entry:
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %tobool.not = icmp eq %struct.device_node* %0, null
  br i1 %tobool.not, label %cond.false4, label %cond.true

cond.true:                                        ; preds = %entry
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %0, i64 0, i32 3
  br label %cond.end6

cond.false4:                                      ; preds = %entry
  %fwnode5 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode5, align 8
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false4, %cond.true
  %cond7 = phi %struct.fwnode_handle* [ %fwnode, %cond.true ], [ %1, %cond.false4 ]
  ret %struct.fwnode_handle* %cond7
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @device_property_present(%struct.device* nocapture noundef readonly %dev, i8* noundef %propname) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call i1 @fwnode_property_present(%struct.fwnode_handle* noundef %call, i8* noundef %propname) #7
  ret i1 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @fwnode_property_present(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %land.lhs.true11, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %land.lhs.true11, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %property_present = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 4
  %1 = load i1 (%struct.fwnode_handle*, i8*)*, i1 (%struct.fwnode_handle*, i8*)** %property_present, align 8
  %tobool4.not = icmp eq i1 (%struct.fwnode_handle*, i8*)* %1, null
  br i1 %tobool4.not, label %land.lhs.true11, label %cond.end

cond.end:                                         ; preds = %land.lhs.true2
  %call = call i1 %1(%struct.fwnode_handle* noundef nonnull %fwnode, i8* noundef %propname) #8
  br i1 %call, label %if.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %entry, %land.lhs.true, %land.lhs.true2, %cond.end
  %2 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call12 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %2) #7
  br i1 %call12, label %if.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %3 = bitcast %struct.fwnode_handle* %fwnode to i8**
  %4 = load i8*, i8** %3, align 8
  %call14 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %4) #7
  %5 = bitcast i8* %4 to %struct.fwnode_handle*
  %tobool16.not = icmp eq i8* %4, null
  %or.cond = or i1 %call14, %tobool16.not
  br i1 %or.cond, label %if.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %ops19 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %ops19 to %struct.fwnode_operations**
  %7 = load %struct.fwnode_operations*, %struct.fwnode_operations** %6, align 8
  %tobool20.not = icmp eq %struct.fwnode_operations* %7, null
  br i1 %tobool20.not, label %if.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %property_present24 = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %7, i64 0, i32 4
  %8 = load i1 (%struct.fwnode_handle*, i8*)*, i1 (%struct.fwnode_handle*, i8*)** %property_present24, align 8
  %tobool25.not = icmp eq i1 (%struct.fwnode_handle*, i8*)* %8, null
  br i1 %tobool25.not, label %if.end, label %cond.true26

cond.true26:                                      ; preds = %land.lhs.true21
  %call31 = call i1 %8(%struct.fwnode_handle* noundef nonnull %5, i8* noundef %propname) #8
  br label %if.end

if.end:                                           ; preds = %cond.true26, %land.lhs.true21, %land.lhs.true17, %land.lhs.true13, %land.lhs.true11, %cond.end
  %ret.0.in = phi i1 [ false, %land.lhs.true11 ], [ false, %land.lhs.true13 ], [ true, %cond.end ], [ %call31, %cond.true26 ], [ false, %land.lhs.true21 ], [ false, %land.lhs.true17 ]
  ret i1 %ret.0.in
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_property_read_u8_array(%struct.device* nocapture noundef readonly %dev, i8* noundef %propname, i8* noundef %val, i64 noundef %nval) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call i32 @fwnode_property_read_u8_array(%struct.fwnode_handle* noundef %call, i8* noundef %propname, i8* noundef %val, i64 noundef %nval) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_property_read_u8_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i8* noundef %val, i64 noundef %nval) local_unnamed_addr #2 {
entry:
  %call = call fastcc i32 @fwnode_property_read_int_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i32 noundef 1, i8* noundef %val, i64 noundef %nval) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_property_read_u16_array(%struct.device* nocapture noundef readonly %dev, i8* noundef %propname, i16* noundef %val, i64 noundef %nval) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call i32 @fwnode_property_read_u16_array(%struct.fwnode_handle* noundef %call, i8* noundef %propname, i16* noundef %val, i64 noundef %nval) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_property_read_u16_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i16* noundef %val, i64 noundef %nval) local_unnamed_addr #2 {
entry:
  %0 = bitcast i16* %val to i8*
  %call = call fastcc i32 @fwnode_property_read_int_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i32 noundef 2, i8* noundef %0, i64 noundef %nval) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_property_read_u32_array(%struct.device* nocapture noundef readonly %dev, i8* noundef %propname, i32* noundef %val, i64 noundef %nval) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* noundef %call, i8* noundef %propname, i32* noundef %val, i64 noundef %nval) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i32* noundef %val, i64 noundef %nval) local_unnamed_addr #2 {
entry:
  %0 = bitcast i32* %val to i8*
  %call = call fastcc i32 @fwnode_property_read_int_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i32 noundef 4, i8* noundef %0, i64 noundef %nval) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_property_read_u64_array(%struct.device* nocapture noundef readonly %dev, i8* noundef %propname, i64* noundef %val, i64 noundef %nval) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call i32 @fwnode_property_read_u64_array(%struct.fwnode_handle* noundef %call, i8* noundef %propname, i64* noundef %val, i64 noundef %nval) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_property_read_u64_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i64* noundef %val, i64 noundef %nval) local_unnamed_addr #2 {
entry:
  %0 = bitcast i64* %val to i8*
  %call = call fastcc i32 @fwnode_property_read_int_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i32 noundef 8, i8* noundef %0, i64 noundef %nval) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_property_read_string_array(%struct.device* nocapture noundef readonly %dev, i8* noundef %propname, i8** noundef %val, i64 noundef %nval) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call i32 @fwnode_property_read_string_array(%struct.fwnode_handle* noundef %call, i8* noundef %propname, i8** noundef %val, i64 noundef %nval) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_property_read_string_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i8** noundef %val, i64 noundef %nval) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %land.lhs.true12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool2.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool2.not, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %property_read_string_array = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 6
  %1 = load i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)** %property_read_string_array, align 8
  %tobool5.not = icmp eq i32 (%struct.fwnode_handle*, i8*, i8**, i64)* %1, null
  br i1 %tobool5.not, label %if.end, label %cond.end10

cond.end10:                                       ; preds = %land.lhs.true3
  %call = call i32 %1(%struct.fwnode_handle* noundef nonnull %fwnode, i8* noundef %propname, i8** noundef %val, i64 noundef %nval) #8
  %cmp = icmp eq i32 %call, -22
  br i1 %cmp, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %entry, %cond.end10
  %2 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call13 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %2) #7
  br i1 %call13, label %if.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %3 = bitcast %struct.fwnode_handle* %fwnode to i8**
  %4 = load i8*, i8** %3, align 8
  %call15 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %4) #7
  %5 = bitcast i8* %4 to %struct.fwnode_handle*
  %tobool17.not = icmp eq i8* %4, null
  %or.cond = or i1 %call15, %tobool17.not
  br i1 %or.cond, label %if.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true14
  %ops23 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %ops23 to %struct.fwnode_operations**
  %7 = load %struct.fwnode_operations*, %struct.fwnode_operations** %6, align 8
  %tobool24.not = icmp eq %struct.fwnode_operations* %7, null
  br i1 %tobool24.not, label %if.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %property_read_string_array28 = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %7, i64 0, i32 6
  %8 = load i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)** %property_read_string_array28, align 8
  %tobool29.not = icmp eq i32 (%struct.fwnode_handle*, i8*, i8**, i64)* %8, null
  br i1 %tobool29.not, label %if.end, label %cond.true30

cond.true30:                                      ; preds = %land.lhs.true25
  %call35 = call i32 %8(%struct.fwnode_handle* noundef nonnull %5, i8* noundef %propname, i8** noundef %val, i64 noundef %nval) #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true3, %land.lhs.true21, %land.lhs.true25, %cond.true30, %land.lhs.true14, %land.lhs.true12, %cond.end10
  %ret.0 = phi i32 [ -22, %land.lhs.true12 ], [ -22, %land.lhs.true14 ], [ %call, %cond.end10 ], [ %call35, %cond.true30 ], [ -6, %land.lhs.true25 ], [ -6, %land.lhs.true21 ], [ -6, %land.lhs.true3 ], [ -6, %land.lhs.true ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_property_read_string(%struct.device* nocapture noundef readonly %dev, i8* noundef %propname, i8** noundef %val) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* noundef %call, i8* noundef %propname, i8** noundef %val) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i8** noundef %val) local_unnamed_addr #2 {
entry:
  %call = call i32 @fwnode_property_read_string_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i8** noundef %val, i64 noundef 1) #7
  %cmp = icmp slt i32 %call, 0
  %cond = select i1 %cmp, i32 %call, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_property_match_string(%struct.device* nocapture noundef readonly %dev, i8* noundef %propname, i8* noundef %string) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call i32 @fwnode_property_match_string(%struct.fwnode_handle* noundef %call, i8* noundef %propname, i8* noundef %string) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_property_match_string(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i8* noundef %string) local_unnamed_addr #2 {
entry:
  %call = call i32 @fwnode_property_read_string_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i8** noundef null, i64 noundef 0) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %conv36 = zext i32 %call to i64
  %call4 = call fastcc i8* @kcalloc(i64 noundef %conv36) #7
  %0 = bitcast i8* %call4 to i8**
  %tobool.not = icmp eq i8* %call4, null
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call8 = call i32 @fwnode_property_read_string_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i8** noundef nonnull %0, i64 noundef %conv36) #7
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %out, label %if.end12

if.end12:                                         ; preds = %if.end6
  %call14 = call i32 @match_string(i8** noundef nonnull %0, i64 noundef %conv36, i8* noundef %string) #8
  %cmp15 = icmp slt i32 %call14, 0
  %spec.store.select = select i1 %cmp15, i32 -61, i32 %call14
  br label %out

out:                                              ; preds = %if.end6, %if.end12
  %ret.0 = phi i32 [ %call8, %if.end6 ], [ %spec.store.select, %if.end12 ]
  call void @kfree(i8* noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %out
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry ], [ -61, %if.end ], [ -12, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fwnode_property_read_int_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %propname, i32 noundef %elem_size, i8* noundef %val, i64 noundef %nval) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %land.lhs.true12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool2.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool2.not, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %property_read_int_array = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 5
  %1 = load i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)** %property_read_int_array, align 8
  %tobool5.not = icmp eq i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)* %1, null
  br i1 %tobool5.not, label %if.end, label %cond.end10

cond.end10:                                       ; preds = %land.lhs.true3
  %call = call i32 %1(%struct.fwnode_handle* noundef nonnull %fwnode, i8* noundef %propname, i32 noundef %elem_size, i8* noundef %val, i64 noundef %nval) #8
  %cmp = icmp eq i32 %call, -22
  br i1 %cmp, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %entry, %cond.end10
  %2 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call13 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %2) #7
  br i1 %call13, label %if.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %3 = bitcast %struct.fwnode_handle* %fwnode to i8**
  %4 = load i8*, i8** %3, align 8
  %call15 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %4) #7
  %5 = bitcast i8* %4 to %struct.fwnode_handle*
  %tobool17.not = icmp eq i8* %4, null
  %or.cond = or i1 %call15, %tobool17.not
  br i1 %or.cond, label %if.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true14
  %ops23 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %ops23 to %struct.fwnode_operations**
  %7 = load %struct.fwnode_operations*, %struct.fwnode_operations** %6, align 8
  %tobool24.not = icmp eq %struct.fwnode_operations* %7, null
  br i1 %tobool24.not, label %if.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %property_read_int_array28 = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %7, i64 0, i32 5
  %8 = load i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)** %property_read_int_array28, align 8
  %tobool29.not = icmp eq i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)* %8, null
  br i1 %tobool29.not, label %if.end, label %cond.true30

cond.true30:                                      ; preds = %land.lhs.true25
  %call35 = call i32 %8(%struct.fwnode_handle* noundef nonnull %5, i8* noundef %propname, i32 noundef %elem_size, i8* noundef %val, i64 noundef %nval) #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true3, %land.lhs.true21, %land.lhs.true25, %cond.true30, %land.lhs.true14, %land.lhs.true12, %cond.end10
  %ret.0 = phi i32 [ -22, %land.lhs.true12 ], [ -22, %land.lhs.true14 ], [ %call, %cond.end10 ], [ %call35, %cond.true30 ], [ -6, %land.lhs.true25 ], [ -6, %land.lhs.true21 ], [ -6, %land.lhs.true3 ], [ -6, %land.lhs.true ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #2 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #7
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(i8** noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_property_get_reference_args(%struct.fwnode_handle* noundef %fwnode, i8* noundef %prop, i8* noundef %nargs_prop, i32 noundef %nargs, i32 noundef %index, %struct.fwnode_reference_args* noundef %args) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %cond.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool2.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool2.not, label %cond.end10, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %get_reference_args = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 12
  %1 = load i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)** %get_reference_args, align 8
  %tobool5.not = icmp eq i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)* %1, null
  br i1 %tobool5.not, label %cond.end10, label %cond.true6

cond.true6:                                       ; preds = %land.lhs.true3
  %call = call i32 %1(%struct.fwnode_handle* noundef nonnull %fwnode, i8* noundef %prop, i8* noundef %nargs_prop, i32 noundef %nargs, i32 noundef %index, %struct.fwnode_reference_args* noundef %args) #8
  br label %cond.end10

cond.end10:                                       ; preds = %entry, %cond.true6, %land.lhs.true3, %land.lhs.true
  %cond11 = phi i32 [ %call, %cond.true6 ], [ -6, %land.lhs.true3 ], [ -6, %land.lhs.true ], [ -22, %entry ]
  ret i32 %cond11
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_find_reference(%struct.fwnode_handle* noundef %fwnode, i8* noundef %name, i32 noundef %index) local_unnamed_addr #2 {
entry:
  %args = alloca %struct.fwnode_reference_args, align 8
  %0 = bitcast %struct.fwnode_reference_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call = call i32 @fwnode_property_get_reference_args(%struct.fwnode_handle* noundef %fwnode, i8* noundef %name, i8* noundef null, i32 noundef 0, i32 noundef %index, %struct.fwnode_reference_args* noundef nonnull %args) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = bitcast %struct.fwnode_reference_args* %args to i8**
  %2 = load i8*, i8** %1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call1, %cond.true ], [ %2, %cond.false ]
  %3 = bitcast i8* %cond to %struct.fwnode_handle*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #9
  ret %struct.fwnode_handle* %3
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_remove_properties(%struct.device* noundef %dev) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %tobool.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %secondary = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %call, i64 0, i32 0
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %secondary, align 8
  %call1 = call i1 @is_software_node(%struct.fwnode_handle* noundef %0) #8
  br i1 %call1, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %secondary, align 8
  call void @fwnode_remove_software_node(%struct.fwnode_handle* noundef %1) #8
  call void @set_secondary_fwnode(%struct.device* noundef %dev, %struct.fwnode_handle* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_software_node(%struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_remove_software_node(%struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_secondary_fwnode(%struct.device* noundef, %struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_add_properties(%struct.device* noundef %dev, %struct.property_entry* noundef %properties) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @fwnode_create_software_node(%struct.property_entry* noundef %properties, %struct.fwnode_handle* noundef null) #8
  %0 = bitcast %struct.fwnode_handle* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #7
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #7
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @set_secondary_fwnode(%struct.device* noundef %dev, %struct.fwnode_handle* noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fwnode_handle* @fwnode_create_software_node(%struct.property_entry* noundef, %struct.fwnode_handle* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fwnode_get_name(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %cond.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %get_name = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 7
  %1 = load i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)** %get_name, align 8
  %tobool4.not = icmp eq i8* (%struct.fwnode_handle*)* %1, null
  br i1 %tobool4.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %call = call i8* %1(%struct.fwnode_handle* noundef nonnull %fwnode) #8
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true2, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fwnode_get_name_prefix(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %cond.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %get_name_prefix = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 8
  %1 = load i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)** %get_name_prefix, align 8
  %tobool4.not = icmp eq i8* (%struct.fwnode_handle*)* %1, null
  br i1 %tobool4.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %call = call i8* %1(%struct.fwnode_handle* noundef nonnull %fwnode) #8
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true2, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %cond.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %get_parent = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 9
  %1 = load %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)** %get_parent, align 8
  %tobool4.not = icmp eq %struct.fwnode_handle* (%struct.fwnode_handle*)* %1, null
  br i1 %tobool4.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %call = call %struct.fwnode_handle* %1(%struct.fwnode_handle* noundef nonnull %fwnode) #8
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true2, %cond.true
  %cond = phi %struct.fwnode_handle* [ %call, %cond.true ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.fwnode_handle* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* noundef %fwnode) #7
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %fwnode) #7
  ret %struct.fwnode_handle* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fwnode_handle_put(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %do.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %do.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %put = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 1
  %1 = load void (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)** %put, align 8
  %tobool4.not = icmp eq void (%struct.fwnode_handle*)* %1, null
  br i1 %tobool4.not, label %do.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  call void %1(%struct.fwnode_handle* noundef nonnull %fwnode) #8
  br label %do.end

do.end:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true2, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @fwnode_get_next_parent_dev(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* noundef %fwnode) #7
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %fwnode.addr.0 = phi %struct.fwnode_handle* [ %fwnode, %entry ], [ %call1, %if.end ]
  %call1 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* noundef %fwnode.addr.0) #7
  %tobool.not = icmp eq %struct.fwnode_handle* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %do.body
  %dev2 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %call1, i64 0, i32 2
  %0 = load %struct.device*, %struct.device** %dev2, align 8
  %call3 = call %struct.device* @get_device(%struct.device* noundef %0) #8
  %tobool4.not = icmp eq %struct.device* %call3, null
  br i1 %tobool4.not, label %do.body, label %do.end

do.end:                                           ; preds = %if.end
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %do.end
  %retval.0 = phi %struct.device* [ %call3, %do.end ], [ null, %do.body ]
  ret %struct.device* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %return, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %get = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 0
  %1 = load %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)** %get, align 8
  %tobool4.not = icmp eq %struct.fwnode_handle* (%struct.fwnode_handle*)* %1, null
  br i1 %tobool4.not, label %return, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %call = call %struct.fwnode_handle* %1(%struct.fwnode_handle* noundef nonnull %fwnode) #8
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true2, %cond.true
  %retval.0 = phi %struct.fwnode_handle* [ %call, %cond.true ], [ %fwnode, %land.lhs.true2 ], [ %fwnode, %land.lhs.true ], [ null, %entry ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_count_parents(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* noundef %fwnode) #7
  %tobool.not6 = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not6, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %count.08 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %__fwnode.07 = phi %struct.fwnode_handle* [ %call1, %for.body ], [ %call, %entry ]
  %call1 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* noundef nonnull %__fwnode.07) #7
  %inc = add i32 %count.08, 1
  %tobool.not = icmp eq %struct.fwnode_handle* %call1, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  ret i32 %count.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_get_nth_parent(%struct.fwnode_handle* noundef %fwnode, i32 noundef %depth) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* noundef %fwnode) #7
  %cmp7 = icmp ne i32 %depth, 0
  %tobool8 = icmp ne %struct.fwnode_handle* %fwnode, null
  %0 = and i1 %cmp7, %tobool8
  br i1 %0, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.010 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %fwnode.addr.09 = phi %struct.fwnode_handle* [ %call1, %for.body ], [ %fwnode, %entry ]
  %call1 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* noundef nonnull %fwnode.addr.09) #7
  %inc = add nuw i32 %i.010, 1
  %cmp = icmp ult i32 %inc, %depth
  %tobool = icmp ne %struct.fwnode_handle* %call1, null
  %1 = select i1 %cmp, i1 %tobool, i1 false
  br i1 %1, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %fwnode.addr.0.lcssa = phi %struct.fwnode_handle* [ %fwnode, %entry ], [ %call1, %for.body ]
  ret %struct.fwnode_handle* %fwnode.addr.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @fwnode_is_ancestor_of(%struct.fwnode_handle* noundef readnone %test_ancestor, %struct.fwnode_handle* noundef %test_child) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %test_ancestor, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* noundef %test_child) #7
  %tobool1.not11 = icmp eq %struct.fwnode_handle* %test_child, null
  br i1 %tobool1.not11, label %return, label %while.body

while.body:                                       ; preds = %if.end, %if.end3
  %test_child.addr.012 = phi %struct.fwnode_handle* [ %call4, %if.end3 ], [ %test_child, %if.end ]
  %cmp = icmp eq %struct.fwnode_handle* %test_child.addr.012, %test_ancestor
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %while.body
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef nonnull %test_ancestor) #7
  br label %return

if.end3:                                          ; preds = %while.body
  %call4 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* noundef nonnull %test_child.addr.012) #7
  %tobool1.not = icmp eq %struct.fwnode_handle* %call4, null
  br i1 %tobool1.not, label %return, label %while.body

return:                                           ; preds = %if.end3, %if.end, %entry, %if.then2
  %retval.0 = phi i1 [ true, %if.then2 ], [ false, %entry ], [ false, %if.end ], [ false, %if.end3 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef %child) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %cond.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %get_next_child_node = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 10
  %1 = load %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)** %get_next_child_node, align 8
  %tobool4.not = icmp eq %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* %1, null
  br i1 %tobool4.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %call = call %struct.fwnode_handle* %1(%struct.fwnode_handle* noundef nonnull %fwnode, %struct.fwnode_handle* noundef %child) #8
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true2, %cond.true
  %cond = phi %struct.fwnode_handle* [ %call, %cond.true ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.fwnode_handle* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef %child) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry, %do.cond
  %next_child.0 = phi %struct.fwnode_handle* [ %call, %do.cond ], [ %child, %entry ]
  %call = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* noundef nonnull %fwnode, %struct.fwnode_handle* noundef %next_child.0) #7
  %tobool1.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool1.not, label %cleanup, label %do.cond

do.cond:                                          ; preds = %do.body
  %call4 = call i1 @fwnode_device_is_available(%struct.fwnode_handle* noundef nonnull %call) #7
  br i1 %call4, label %cleanup, label %do.body

cleanup:                                          ; preds = %do.cond, %do.body, %entry
  %retval.0 = phi %struct.fwnode_handle* [ null, %entry ], [ %call, %do.cond ], [ null, %do.body ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @fwnode_device_is_available(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %return, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %device_is_available = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 2
  %1 = load i1 (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)** %device_is_available, align 8
  %tobool4.not = icmp eq i1 (%struct.fwnode_handle*)* %1, null
  br i1 %tobool4.not, label %return, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %call = call i1 %1(%struct.fwnode_handle* noundef nonnull %fwnode) #8
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true2, %cond.true
  %retval.0 = phi i1 [ %call, %cond.true ], [ true, %land.lhs.true2 ], [ true, %land.lhs.true ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @device_get_next_child_node(%struct.device* nocapture noundef readonly %dev, %struct.fwnode_handle* noundef %child) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* noundef %call, %struct.fwnode_handle* noundef %child) #7
  %tobool.not = icmp eq %struct.fwnode_handle* %call1, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool2.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %0 = bitcast %struct.fwnode_handle* %call to i8**
  %1 = load i8*, i8** %0, align 8
  %call3 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %1) #7
  br i1 %call3, label %cleanup, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %2 = bitcast i8* %1 to %struct.fwnode_handle*
  %call6 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* noundef %2, %struct.fwnode_handle* noundef %child) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then4, %entry
  %retval.0 = phi %struct.fwnode_handle* [ %call1, %entry ], [ null, %land.lhs.true ], [ %call6, %if.then4 ], [ null, %if.end ]
  ret %struct.fwnode_handle* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_get_named_child_node(%struct.fwnode_handle* noundef %fwnode, i8* noundef %childname) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %cond.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %get_named_child_node = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 11
  %1 = load %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)** %get_named_child_node, align 8
  %tobool4.not = icmp eq %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)* %1, null
  br i1 %tobool4.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %call = call %struct.fwnode_handle* %1(%struct.fwnode_handle* noundef nonnull %fwnode, i8* noundef %childname) #8
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true2, %cond.true
  %cond = phi %struct.fwnode_handle* [ %call, %cond.true ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.fwnode_handle* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @device_get_named_child_node(%struct.device* nocapture noundef readonly %dev, i8* noundef %childname) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call %struct.fwnode_handle* @fwnode_get_named_child_node(%struct.fwnode_handle* noundef %call, i8* noundef %childname) #7
  ret %struct.fwnode_handle* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_get_child_node_count(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @device_get_next_child_node(%struct.device* noundef %dev, %struct.fwnode_handle* noundef null) #7
  %tobool.not7 = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not7, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %count.09 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %child.08 = phi %struct.fwnode_handle* [ %call1, %for.body ], [ %call, %entry ]
  %inc = add i32 %count.09, 1
  %call1 = call %struct.fwnode_handle* @device_get_next_child_node(%struct.device* noundef %dev, %struct.fwnode_handle* noundef nonnull %child.08) #7
  %tobool.not = icmp eq %struct.fwnode_handle* %call1, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  ret i32 %count.0.lcssa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @device_dma_supported(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #0 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %call) #7
  ret i1 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #7
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %1 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %1, @of_fwnode_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_get_dma_attr(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %call) #7
  br i1 %call1, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %call, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %call4 = call i1 @of_dma_is_coherent(%struct.device_node* noundef %0) #8
  %spec.select = select i1 %call4, i32 2, i32 1
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.then
  %attr.0 = phi i32 [ %spec.select, %if.then ], [ 0, %entry ]
  ret i32 %attr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @of_dma_is_coherent(%struct.device_node* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_get_phy_mode(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %pm = alloca i8*, align 8
  %0 = bitcast i8** %pm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %pm, align 8, !annotation !7
  %call = call i32 @fwnode_property_read_string(%struct.fwnode_handle* noundef %fwnode, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** noundef nonnull %pm) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end, label %for.body.preheader

if.end:                                           ; preds = %entry
  %call1 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* noundef %fwnode, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** noundef nonnull %pm) #7
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry, %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.020 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %1 = load i8*, i8** %pm, align 8
  %call6 = call fastcc i8* @phy_modes(i32 noundef %i.020) #7
  %call7 = call i32 @strcasecmp(i8* noundef %1, i8* noundef %call6) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %for.body, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %for.inc ], [ %i.020, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @phy_modes(i32 noundef %interface) unnamed_addr #3 {
entry:
  %0 = icmp ult i32 %interface, 30
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %interface to i64
  %switch.gep = getelementptr inbounds [30 x i8*], [30 x i8*]* @switch.table.phy_modes, i64 0, i64 %1
  %switch.load = load i8*, i8** %switch.gep, align 8
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i8* [ %switch.load, %switch.lookup ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_get_phy_mode(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call i32 @fwnode_get_phy_mode(%struct.fwnode_handle* noundef %call) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fwnode_get_mac_address(%struct.fwnode_handle* noundef %fwnode, i8* noundef %addr, i32 noundef %alen) local_unnamed_addr #2 {
entry:
  %call = call fastcc i8* @fwnode_get_mac_addr(%struct.fwnode_handle* noundef %fwnode, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef %addr, i32 noundef %alen) #7
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @fwnode_get_mac_addr(%struct.fwnode_handle* noundef %fwnode, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %addr, i32 noundef %alen) #7
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i8* @fwnode_get_mac_addr(%struct.fwnode_handle* noundef %fwnode, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* noundef %addr, i32 noundef %alen) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i8* [ %call5, %if.end4 ], [ %call, %entry ], [ %call1, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @fwnode_get_mac_addr(%struct.fwnode_handle* noundef %fwnode, i8* noundef %name, i8* noundef %addr, i32 noundef %alen) unnamed_addr #2 {
entry:
  %conv = sext i32 %alen to i64
  %call = call i32 @fwnode_property_read_u8_array(%struct.fwnode_handle* noundef %fwnode, i8* noundef %name, i8* noundef %addr, i64 noundef %conv) #7
  %cmp = icmp eq i32 %call, 0
  %cmp2 = icmp eq i32 %alen, 6
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %entry
  %call5 = call fastcc i1 @is_valid_ether_addr(i8* noundef %addr) #7
  br i1 %call5, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true4, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true4, %if.end
  %retval.0 = phi i8* [ null, %if.end ], [ %addr, %land.lhs.true4 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @device_get_mac_address(%struct.device* nocapture noundef readonly %dev, i8* noundef %addr, i32 noundef %alen) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %call1 = call i8* @fwnode_get_mac_address(%struct.fwnode_handle* noundef %call, i8* noundef %addr, i32 noundef %alen) #7
  ret i8* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_irq_get(%struct.fwnode_handle* noundef %fwnode, i32 noundef %index) local_unnamed_addr #2 {
entry:
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #7
  br i1 %call, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %call3 = call i32 @of_irq_get(%struct.device_node* noundef %0, i32 noundef %index) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(%struct.device_node* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef %prev) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %prev, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.fwnode_handle* @fwnode_graph_get_port_parent(%struct.fwnode_handle* noundef nonnull %prev) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %parent.0 = phi %struct.fwnode_handle* [ %call, %if.then ], [ %fwnode, %entry ]
  %tobool1.not = icmp eq %struct.fwnode_handle* %parent.0, null
  br i1 %tobool1.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %parent.0, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool2.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool2.not, label %cond.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %graph_get_next_endpoint = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 13
  %1 = load %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)** %graph_get_next_endpoint, align 8
  %tobool5.not = icmp eq %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* %1, null
  br i1 %tobool5.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true3
  %call8 = call %struct.fwnode_handle* %1(%struct.fwnode_handle* noundef nonnull %parent.0, %struct.fwnode_handle* noundef %prev) #8
  br label %cond.end

cond.end:                                         ; preds = %if.end, %land.lhs.true, %land.lhs.true3, %cond.true
  %cond = phi %struct.fwnode_handle* [ %call8, %cond.true ], [ null, %land.lhs.true3 ], [ null, %land.lhs.true ], [ null, %if.end ]
  %2 = bitcast %struct.fwnode_handle* %cond to i8*
  %call9 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %2) #7
  br i1 %call9, label %land.lhs.true10, label %if.end17

land.lhs.true10:                                  ; preds = %cond.end
  %3 = bitcast %struct.fwnode_handle* %parent.0 to i8*
  %call11 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %3) #7
  br i1 %call11, label %if.end17, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %4 = bitcast %struct.fwnode_handle* %parent.0 to i8**
  %5 = load i8*, i8** %4, align 8
  %call13 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %5) #7
  br i1 %call13, label %if.end17, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  %6 = bitcast i8* %5 to %struct.fwnode_handle*
  %call16 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* noundef %6, %struct.fwnode_handle* noundef null) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true12, %land.lhs.true10, %cond.end
  %ep.0 = phi %struct.fwnode_handle* [ %cond, %land.lhs.true10 ], [ %cond, %land.lhs.true12 ], [ %call16, %if.then14 ], [ %cond, %cond.end ]
  ret %struct.fwnode_handle* %ep.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_graph_get_port_parent(%struct.fwnode_handle* noundef %endpoint) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* noundef %endpoint) #7
  %tobool.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %call, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %cond.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %graph_get_port_parent = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 15
  %1 = load %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)** %graph_get_port_parent, align 8
  %tobool4.not = icmp eq %struct.fwnode_handle* (%struct.fwnode_handle*)* %1, null
  br i1 %tobool4.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %call7 = call %struct.fwnode_handle* %1(%struct.fwnode_handle* noundef nonnull %call) #8
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true2, %cond.true
  %cond = phi %struct.fwnode_handle* [ %call7, %cond.true ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ]
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %call) #7
  ret %struct.fwnode_handle* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @fwnode_graph_get_remote_endpoint(%struct.fwnode_handle* noundef %fwnode) #7
  %call1 = call %struct.fwnode_handle* @fwnode_graph_get_port_parent(%struct.fwnode_handle* noundef %call) #7
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %call) #7
  ret %struct.fwnode_handle* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_endpoint(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool1.not, label %cond.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %graph_get_remote_endpoint = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 14
  %1 = load %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)** %graph_get_remote_endpoint, align 8
  %tobool4.not = icmp eq %struct.fwnode_handle* (%struct.fwnode_handle*)* %1, null
  br i1 %tobool4.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true2
  %call = call %struct.fwnode_handle* %1(%struct.fwnode_handle* noundef nonnull %fwnode) #8
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true2, %cond.true
  %cond = phi %struct.fwnode_handle* [ %call, %cond.true ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.fwnode_handle* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_port(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @fwnode_graph_get_remote_endpoint(%struct.fwnode_handle* noundef %fwnode) #7
  %call1 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* noundef %call) #7
  ret %struct.fwnode_handle* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_node(%struct.fwnode_handle* noundef %fwnode, i32 noundef %port_id, i32 noundef %endpoint_id) local_unnamed_addr #2 {
entry:
  %fwnode_ep = alloca %struct.fwnode_endpoint, align 8
  %call25 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef null) #7
  %tobool.not26 = icmp eq %struct.fwnode_handle* %call25, null
  br i1 %tobool.not26, label %cleanup13, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.fwnode_endpoint* %fwnode_ep to i8*
  %port = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %fwnode_ep, i64 0, i32 0
  %id = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %fwnode_ep, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %call27 = phi %struct.fwnode_handle* [ %call25, %while.body.lr.ph ], [ %call, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call1 = call i32 @fwnode_graph_parse_endpoint(%struct.fwnode_handle* noundef nonnull %call27, %struct.fwnode_endpoint* noundef nonnull %fwnode_ep) #7
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %while.body
  %1 = load i32, i32* %port, align 8
  %cmp2.not = icmp eq i32 %1, %port_id
  %2 = load i32, i32* %id, align 4
  %cmp3.not = icmp eq i32 %2, %endpoint_id
  %or.cond = select i1 %cmp2.not, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* noundef nonnull %call27) #7
  %tobool7.not = icmp eq %struct.fwnode_handle* %call6, null
  br i1 %tobool7.not, label %cleanup.thread, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = call i1 @fwnode_device_is_available(%struct.fwnode_handle* noundef nonnull %call6) #7
  %cond = select i1 %call10, %struct.fwnode_handle* %call6, %struct.fwnode_handle* null
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end9, %if.end5
  %retval.1.ph = phi %struct.fwnode_handle* [ null, %if.end5 ], [ %cond, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  br label %cleanup13

cleanup:                                          ; preds = %if.end, %while.body
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  %call = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef nonnull %call27) #7
  %tobool.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not, label %cleanup13, label %while.body

cleanup13:                                        ; preds = %cleanup, %entry, %cleanup.thread
  %retval.2 = phi %struct.fwnode_handle* [ %retval.1.ph, %cleanup.thread ], [ null, %entry ], [ null, %cleanup ]
  ret %struct.fwnode_handle* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_graph_parse_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_endpoint* noundef %endpoint) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.fwnode_endpoint* %endpoint to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 16) #8
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %cond.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %1 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool2.not = icmp eq %struct.fwnode_operations* %1, null
  br i1 %tobool2.not, label %cond.end11, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %graph_parse_endpoint = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %1, i64 0, i32 16
  %2 = load i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)** %graph_parse_endpoint, align 8
  %tobool5.not = icmp eq i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)* %2, null
  br i1 %tobool5.not, label %cond.end11, label %cond.true6

cond.true6:                                       ; preds = %land.lhs.true3
  %call9 = call i32 %2(%struct.fwnode_handle* noundef nonnull %fwnode, %struct.fwnode_endpoint* noundef %endpoint) #8
  br label %cond.end11

cond.end11:                                       ; preds = %entry, %cond.true6, %land.lhs.true3, %land.lhs.true
  %cond12 = phi i32 [ %call9, %cond.true6 ], [ -6, %land.lhs.true3 ], [ -6, %land.lhs.true ], [ -22, %entry ]
  ret i32 %cond12
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.fwnode_handle* @fwnode_graph_get_endpoint_by_id(%struct.fwnode_handle* noundef %fwnode, i32 noundef %port, i32 noundef %endpoint, i64 noundef %flags) local_unnamed_addr #2 {
entry:
  %fwnode_ep = alloca %struct.fwnode_endpoint, align 8
  %and = and i64 %flags, 1
  %tobool.not = icmp eq i64 %and, 0
  %and1 = and i64 %flags, 2
  %tobool2.not = icmp eq i64 %and1, 0
  %call67 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef null) #7
  %tobool4.not68 = icmp eq %struct.fwnode_handle* %call67, null
  br i1 %tobool4.not68, label %cleanup39, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast %struct.fwnode_endpoint* %fwnode_ep to i8*
  %port16 = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %fwnode_ep, i64 0, i32 0
  %id = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %fwnode_ep, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup35
  %call71 = phi %struct.fwnode_handle* [ %call67, %while.body.lr.ph ], [ %call, %cleanup35 ]
  %best_ep_id.070 = phi i32 [ 0, %while.body.lr.ph ], [ %best_ep_id.1, %cleanup35 ]
  %best_ep.069 = phi %struct.fwnode_handle* [ null, %while.body.lr.ph ], [ %best_ep.1, %cleanup35 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br i1 %tobool2.not, label %if.then, label %if.end12

if.then:                                          ; preds = %while.body
  %call6 = call %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* noundef nonnull %call71) #7
  %call7 = call i1 @fwnode_device_is_available(%struct.fwnode_handle* noundef %call6) #7
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %call6) #7
  br i1 %call7, label %if.end12, label %cleanup35

if.end12:                                         ; preds = %if.then, %while.body
  %call13 = call i32 @fwnode_graph_parse_endpoint(%struct.fwnode_handle* noundef nonnull %call71, %struct.fwnode_endpoint* noundef nonnull %fwnode_ep) #7
  %cmp = icmp sgt i32 %call13, -1
  %1 = load i32, i32* %port16, align 8
  %cmp17.not = icmp eq i32 %1, %port
  %or.cond59 = select i1 %cmp, i1 %cmp17.not, i1 false
  br i1 %or.cond59, label %if.end19, label %cleanup35

if.end19:                                         ; preds = %if.end12
  %2 = load i32, i32* %id, align 4
  %cmp20 = icmp eq i32 %2, %endpoint
  br i1 %cmp20, label %cleanup35.thread, label %if.end22

cleanup35.thread:                                 ; preds = %if.end19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  br label %cleanup39

if.end22:                                         ; preds = %if.end19
  %cmp27 = icmp ult i32 %2, %endpoint
  %or.cond60 = select i1 %tobool.not, i1 true, i1 %cmp27
  br i1 %or.cond60, label %cleanup35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end22
  %tobool28.not = icmp ne %struct.fwnode_handle* %best_ep.069, null
  %cmp30 = icmp ult i32 %best_ep_id.070, %2
  %or.cond = select i1 %tobool28.not, i1 %cmp30, i1 false
  br i1 %or.cond, label %cleanup35, label %if.end32

if.end32:                                         ; preds = %lor.lhs.false
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %best_ep.069) #7
  %call33 = call %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* noundef nonnull %call71) #7
  %3 = load i32, i32* %id, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %lor.lhs.false, %if.end22, %if.end12, %if.then, %if.end32
  %best_ep.1 = phi %struct.fwnode_handle* [ %call33, %if.end32 ], [ %best_ep.069, %if.then ], [ %best_ep.069, %if.end12 ], [ %best_ep.069, %if.end22 ], [ %best_ep.069, %lor.lhs.false ]
  %best_ep_id.1 = phi i32 [ %3, %if.end32 ], [ %best_ep_id.070, %if.then ], [ %best_ep_id.070, %if.end12 ], [ %best_ep_id.070, %if.end22 ], [ %best_ep_id.070, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  %call = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef nonnull %call71) #7
  %tobool4.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool4.not, label %cleanup39, label %while.body

cleanup39:                                        ; preds = %cleanup35, %entry, %cleanup35.thread
  %retval.2 = phi %struct.fwnode_handle* [ %call71, %cleanup35.thread ], [ null, %entry ], [ %best_ep.1, %cleanup35 ]
  ret %struct.fwnode_handle* %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @device_get_match_data(%struct.device* noundef %dev) local_unnamed_addr #2 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #7
  %tobool.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %call, i64 0, i32 1
  %0 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool2.not = icmp eq %struct.fwnode_operations* %0, null
  br i1 %tobool2.not, label %cond.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %device_get_match_data = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %0, i64 0, i32 3
  %1 = load i8* (%struct.fwnode_handle*, %struct.device*)*, i8* (%struct.fwnode_handle*, %struct.device*)** %device_get_match_data, align 8
  %tobool6.not = icmp eq i8* (%struct.fwnode_handle*, %struct.device*)* %1, null
  br i1 %tobool6.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true3
  %call11 = call i8* %1(%struct.fwnode_handle* noundef nonnull %call, %struct.device* noundef %dev) #8
  br label %cond.end

cond.end:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true3, %cond.true
  %cond = phi i8* [ %call11, %cond.true ], [ null, %land.lhs.true3 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @fwnode_connection_find_match(%struct.fwnode_handle* noundef %fwnode, i8* noundef %con_id, i8* noundef %data, i8* (%struct.fwnode_handle*, i8*, i8*)* noundef readonly %match) local_unnamed_addr #2 {
entry:
  %tobool = icmp ne %struct.fwnode_handle* %fwnode, null
  %tobool1 = icmp ne i8* (%struct.fwnode_handle*, i8*, i8*)* %match, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @fwnode_graph_devcon_match(%struct.fwnode_handle* noundef nonnull %fwnode, i8* noundef %con_id, i8* noundef %data, i8* (%struct.fwnode_handle*, i8*, i8*)* noundef nonnull %match) #7
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i8* @fwnode_devcon_match(%struct.fwnode_handle* noundef nonnull %fwnode, i8* noundef %con_id, i8* noundef %data, i8* (%struct.fwnode_handle*, i8*, i8*)* noundef nonnull %match) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i8* [ %call5, %if.end4 ], [ null, %entry ], [ %call, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @fwnode_graph_devcon_match(%struct.fwnode_handle* noundef %fwnode, i8* noundef %con_id, i8* noundef %data, i8* (%struct.fwnode_handle*, i8*, i8*)* nocapture noundef readonly %match) unnamed_addr #2 {
entry:
  %call18 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef null) #7
  %tobool.not19 = icmp eq %struct.fwnode_handle* %call18, null
  br i1 %tobool.not19, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.cond.backedge
  %call20 = phi %struct.fwnode_handle* [ %call, %for.cond.backedge ], [ %call18, %entry ]
  %call1 = call %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* noundef nonnull %call20) #7
  %call2 = call i1 @fwnode_device_is_available(%struct.fwnode_handle* noundef %call1) #7
  br i1 %call2, label %if.end, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %if.end
  %call = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef nonnull %call20) #7
  %tobool.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not, label %cleanup, label %for.body

if.end:                                           ; preds = %for.body
  %call3 = call i8* %match(%struct.fwnode_handle* noundef %call1, i8* noundef %con_id, i8* noundef %data) #8
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %call1) #7
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %for.cond.backedge, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef nonnull %call20) #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.backedge, %entry, %if.then5
  %retval.0 = phi i8* [ %call3, %if.then5 ], [ null, %entry ], [ null, %for.cond.backedge ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @fwnode_devcon_match(%struct.fwnode_handle* noundef %fwnode, i8* noundef %con_id, i8* noundef %data, i8* (%struct.fwnode_handle*, i8*, i8*)* nocapture noundef readonly %match) unnamed_addr #2 {
entry:
  %call14 = call %struct.fwnode_handle* @fwnode_find_reference(%struct.fwnode_handle* noundef %fwnode, i8* noundef %con_id, i32 noundef 0) #7
  %0 = bitcast %struct.fwnode_handle* %call14 to i8*
  %call115 = call fastcc i1 @IS_ERR(i8* noundef %0) #7
  br i1 %call115, label %cleanup, label %if.end

for.cond:                                         ; preds = %if.end
  %call = call %struct.fwnode_handle* @fwnode_find_reference(%struct.fwnode_handle* noundef %fwnode, i8* noundef %con_id, i32 noundef %inc) #7
  %1 = bitcast %struct.fwnode_handle* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #7
  br i1 %call1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry, %for.cond
  %call17 = phi %struct.fwnode_handle* [ %call, %for.cond ], [ %call14, %entry ]
  %i.016 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call2 = call i8* %match(%struct.fwnode_handle* noundef %call17, i8* noundef null, i8* noundef %data) #8
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %call17) #7
  %tobool.not = icmp eq i8* %call2, null
  %inc = add i32 %i.016, 1
  br i1 %tobool.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %for.cond ], [ %call2, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #2 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !8

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_valid_ether_addr(i8* nocapture noundef readonly %addr) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @is_multicast_ether_addr(i8* noundef %addr) #7
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i1 @is_zero_ether_addr(i8* noundef %addr) #7
  %lnot = xor i1 %call1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_multicast_ether_addr(i8* nocapture noundef readonly %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %addr to i32*
  %1 = load i32, i32* %0, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_zero_ether_addr(i8* nocapture noundef readonly %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %addr to i32*
  %1 = load i32, i32* %0, align 4
  %add.ptr = getelementptr i8, i8* %addr, i64 4
  %2 = bitcast i8* %add.ptr to i16*
  %3 = load i16, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %or = or i32 %1, %conv
  %cmp = icmp eq i32 %or, 0
  ret i1 %cmp
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", i32 1, i32 2000}
