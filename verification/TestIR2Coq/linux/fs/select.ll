; ModuleID = 'fs/select.c'
source_filename = "fs/select.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timespec64 = type { i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.138, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.5, %union.anon.119, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.159, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.160, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.161, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.162, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.102, %struct.list_head, %struct.list_head, %union.anon.103 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.102 = type { %struct.list_head }
%union.anon.103 = type { %struct.hlist_node }
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
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.140, i32, i32, %struct.net_device_ops*, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.ethtool_ops*, %struct.header_ops*, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, [40 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, %struct.refcount_struct, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, i8*, i32, %union.anon.158, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.140 = type { %struct.list_head, %struct.list_head }
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.if_settings*)*, i32 (%struct.net_device*, %struct.ifreq*, i8*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, %struct.net_device* (%struct.net_device*, %struct.sock*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, %struct.net_device* (%struct.net_device*, %struct.xdp_buff*)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)*, i32 (%struct.net_device_path_ctx*, %struct.net_device_path*)* }
%struct.ifreq = type { %union.anon.141, %union.anon.142 }
%union.anon.141 = type { [16 x i8] }
%union.anon.142 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.if_settings = type { i32, i32, %union.anon.143 }
%union.anon.143 = type { %struct.raw_hdlc_proto* }
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
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.144 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.144 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.netdev_bpf = type { i32, %union.anon.145 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, %struct.xdp_rxq_info*, %struct.xdp_txq_info*, i32 }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, i32, [36 x i8] }
%struct.xdp_txq_info = type { %struct.net_device* }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.net_device_path_ctx = type { %struct.net_device*, i8*, i32, [2 x %struct.anon.149] }
%struct.anon.149 = type { i16, i16 }
%struct.net_device_path = type { i32, %struct.net_device*, %union.anon.150 }
%union.anon.150 = type { %struct.anon.152, [4 x i8] }
%struct.anon.152 = type { i32, i16, i16 }
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
%struct.in6_addr = type { %union.anon.85 }
%union.anon.85 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.ctl_table_header* }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ctl_table_header = type { %union.anon.81, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
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
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, %struct.net*, %struct.Qdisc*, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.154, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
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
%struct.ip_ra_chain = type { %struct.ip_ra_chain*, %struct.sock*, %union.anon.83, %struct.callback_head }
%union.anon.83 = type { void (%struct.sock*)* }
%struct.inet_peer_base = type { %struct.rb_root, %struct.seqlock_t, i32 }
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.84, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.84 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.kmem_cache = type opaque
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
%struct.anon.154 = type { %struct.tcf_chain*, %struct.list_head }
%struct.tcf_chain = type { %struct.mutex, %struct.tcf_proto*, %struct.list_head, %struct.tcf_block*, i32, i32, i32, i8, i8, %struct.tcf_proto_ops*, i8*, %struct.callback_head }
%struct.tcf_proto = type { %struct.tcf_proto*, i8*, i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i16, i32, i8*, %struct.tcf_proto_ops*, %struct.tcf_chain*, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.tcf_result = type { %union.anon.155 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i64, i32 }
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
%union.anon.158 = type { %struct.pcpu_lstats* }
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
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.sk_buff*)*, %struct.callback_head, [0 x i8] }
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
%struct.request_sock_ops = type { i32, i32, %struct.kmem_cache*, i8*, i32 (%struct.sock*, %struct.request_sock*)*, void (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)*, void (%struct.sock*, %struct.sk_buff*)*, void (%struct.request_sock*)*, void (%struct.request_sock*)* }
%struct.request_sock = type { %struct.sock_common, %struct.request_sock*, i16, i8, i8, i32, %struct.timer_list, %struct.request_sock_ops*, %struct.sock*, %struct.saved_syn*, i32, i32 }
%struct.saved_syn = type { i32, i32, i32, [0 x i8] }
%struct.timewait_sock_ops = type { %struct.kmem_cache*, i8*, i32, i32 (%struct.sock*, %struct.sock*, i8*)*, void (%struct.sock*)* }
%union.anon.41 = type { %struct.inet_hashinfo* }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.24, %struct.qspinlock }
%union.anon.24 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.socket = type { i32, i16, i64, %struct.file*, %struct.sock*, %struct.proto_ops*, [24 x i8], %struct.socket_wq }
%struct.proto_ops = type { i32, %struct.module*, i32 (%struct.socket*)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.socket*)*, i32 (%struct.socket*, %struct.socket*, i32, i1)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.file*, %struct.socket*, %struct.poll_table_struct*)*, i32 (%struct.socket*, i32, i64)*, i32 (%struct.socket*, i8*, i1, i1)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32, i32, [2 x i64], i32)*, i32 (%struct.socket*, i32, i32, i8*, i32*)*, void (%struct.seq_file*, %struct.socket*)*, i32 (%struct.socket*, %struct.msghdr*, i64)*, i32 (%struct.socket*, %struct.msghdr*, i64, i32)*, i32 (%struct.file*, %struct.socket*, %struct.vm_area_struct*)*, i64 (%struct.socket*, %struct.page*, i32, i64, i32)*, i64 (%struct.socket*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.sock*, i32)*, i32 (%struct.socket*)*, i32 (%struct.sock*, %struct.read_descriptor_t*, i32 (%struct.read_descriptor_t*, %struct.sk_buff*, i32, i64)*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, i32)* }
%struct.read_descriptor_t = type { i64, i64, %union.anon.91, i32 }
%union.anon.91 = type { i8* }
%struct.sock_cgroup_data = type {}
%struct.sock_reuseport = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.92, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.92 = type { %struct.kernfs_elem_dir }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.93, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.93 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.94, %union.anon.95, %union.anon.96, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.101, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.94 = type { %struct.hlist_node }
%union.anon.95 = type { %struct.rb_node }
%union.anon.96 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.101 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.98, %union.anon.99, i32 }
%union.anon.98 = type { %struct.list_head }
%union.anon.99 = type { %struct.hlist_node }
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
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%union.anon.159 = type { i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.160 = type { %struct.callback_head }
%union.anon.161 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.104 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.104 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.162 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.119 = type { %struct.atomic_t }
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
%struct.uid_gid_map = type { i32, %union.anon.79 }
%union.anon.79 = type { %struct.anon.80, [48 x i8] }
%struct.anon.80 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.120 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.90 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.90 = type { %struct.callback_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
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
%struct.kernel_siginfo = type { %struct.anon.125 }
%struct.anon.125 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.137, i32, [12 x i8] }
%union.anon.137 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.138 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.139, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.139 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.poll_wqueues = type { %struct.poll_table_struct, %struct.poll_table_page*, %struct.task_struct*, i32, i32, i32, [8 x %struct.poll_table_entry] }
%struct.poll_table_page = type { %struct.poll_table_page*, %struct.poll_table_entry*, [0 x %struct.poll_table_entry] }
%struct.poll_table_entry = type { %struct.file*, i32, %struct.wait_queue_entry, %struct.wait_queue_head* }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.__kernel_fd_set = type { [16 x i64] }
%struct.fd_set_bits = type { i64*, i64*, i64*, i64*, i64*, i64* }
%struct.pt_regs = type { %union.anon.163, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.163 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.__kernel_old_timeval = type { i64, i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.pollfd = type { i32, i16, i16 }
%struct.old_timeval32 = type { i32, i32 }
%struct.sigset_argpack = type { %struct.sigset_t*, i64 }
%struct.poll_list = type { %struct.poll_list*, i32, [0 x %struct.pollfd] }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @select_estimate_accuracy(%struct.timespec64* nocapture noundef readonly %tv) local_unnamed_addr #0 {
entry:
  %now = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %now to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call1 = call fastcc i32 @rt_task(%struct.task_struct* noundef %2) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @ktime_get_ts64(%struct.timespec64* noundef nonnull %now) #17
  %.elt = getelementptr %struct.timespec64, %struct.timespec64* %tv, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %3 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %4 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tv, i64 0, i32 1
  %.unpack16 = load i64, i64* %4, align 8
  %5 = insertvalue [2 x i64] %3, i64 %.unpack16, 1
  %.fca.0.gep = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 0
  %.fca.0.load = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %6 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 1
  %.fca.1.load = load i64, i64* %6, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  %call2 = call fastcc [2 x i64] @timespec64_sub([2 x i64] %5, [2 x i64] %.fca.1.insert) #16
  %call2.fca.0.extract = extractvalue [2 x i64] %call2, 0
  %call2.fca.1.extract = extractvalue [2 x i64] %call2, 1
  store i64 %call2.fca.0.extract, i64* %.fca.0.gep, align 8
  store i64 %call2.fca.1.extract, i64* %6, align 8
  %call3 = call fastcc i64 @__estimate_accuracy(%struct.timespec64* noundef nonnull %now) #16
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 131
  %7 = load i64, i64* %timer_slack_ns, align 64
  %cmp = icmp ult i64 %call3, %7
  %spec.select = select i1 %cmp, i64 %7, i64 %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rt_task(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 15
  %0 = load i32, i32* %prio, align 4
  %call = call fastcc i32 @rt_prio(i32 noundef %0) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(%struct.timespec64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @timespec64_sub([2 x i64] %lhs.coerce, [2 x i64] %rhs.coerce) unnamed_addr #0 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %lhs.coerce.fca.0.extract = extractvalue [2 x i64] %lhs.coerce, 0
  %lhs.coerce.fca.1.extract = extractvalue [2 x i64] %lhs.coerce, 1
  %rhs.coerce.fca.0.extract = extractvalue [2 x i64] %rhs.coerce, 0
  %rhs.coerce.fca.1.extract = extractvalue [2 x i64] %rhs.coerce, 1
  %0 = bitcast %struct.timespec64* %retval to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %sub = sub i64 %lhs.coerce.fca.0.extract, %rhs.coerce.fca.0.extract
  %sub3 = sub i64 %lhs.coerce.fca.1.extract, %rhs.coerce.fca.1.extract
  call void @set_normalized_timespec64(%struct.timespec64* noundef nonnull %retval, i64 noundef %sub, i64 noundef %sub3) #17
  %.fca.0.gep = getelementptr inbounds %struct.timespec64, %struct.timespec64* %retval, i64 0, i32 0
  %.fca.0.load = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %retval, i64 0, i32 1
  %.fca.1.load = load i64, i64* %1, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__estimate_accuracy(%struct.timespec64* nocapture noundef readonly %tv) unnamed_addr #5 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tv, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call1 = call fastcc i32 @task_nice(%struct.task_struct* noundef %2) #16
  %cmp2 = icmp sgt i32 %call1, 0
  %spec.select = select i1 %cmp2, i64 200, i64 1000
  %div6.rhs.trunc = trunc i64 %spec.select to i32
  %div632 = udiv i32 1000000000, %div6.rhs.trunc
  %div733 = udiv i32 100000000, %div632
  %div7.zext = zext i32 %div733 to i64
  %cmp8 = icmp ugt i64 %0, %div7.zext
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %div6.zext = zext i32 %div632 to i64
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %tv, i64 0, i32 1
  %3 = load i64, i64* %tv_nsec, align 8
  %div13 = sdiv i64 %3, %spec.select
  %mul = mul i64 %0, %div6.zext
  %add = add i64 %div13, %mul
  %4 = icmp slt i64 %add, 100000000
  %.add = select i1 %4, i64 %add, i64 100000000
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 100000000, %if.end ], [ %.add, %if.end11 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid writeonly
define dso_local void @poll_initwait(%struct.poll_wqueues* nocapture noundef writeonly %pwq) local_unnamed_addr #6 {
entry:
  %pt = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %pwq, i64 0, i32 0
  call fastcc void @init_poll_funcptr(%struct.poll_table_struct* noundef %pt) #16
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %polling_task = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %pwq, i64 0, i32 2
  store %struct.task_struct* %1, %struct.task_struct** %polling_task, align 8
  %triggered = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %pwq, i64 0, i32 3
  store i32 0, i32* %triggered, align 8
  %error = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %pwq, i64 0, i32 4
  store i32 0, i32* %error, align 4
  %table = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %pwq, i64 0, i32 1
  store %struct.poll_table_page* null, %struct.poll_table_page** %table, align 8
  %inline_index = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %pwq, i64 0, i32 5
  store i32 0, i32* %inline_index, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_poll_funcptr(%struct.poll_table_struct* nocapture noundef writeonly %pt) unnamed_addr #7 {
entry:
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %pt, i64 0, i32 0
  store void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* @__pollwait, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %_key = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %pt, i64 0, i32 1
  store i32 -1, i32* %_key, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @__pollwait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait_address, %struct.poll_table_struct* noundef %p) #0 {
entry:
  %0 = bitcast %struct.poll_table_struct* %p to %struct.poll_wqueues*
  %call = call fastcc %struct.poll_table_entry* @poll_get_entry(%struct.poll_wqueues* noundef %0) #16
  %tobool.not = icmp eq %struct.poll_table_entry* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.file* @get_file(%struct.file* noundef %filp) #16
  %filp3 = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %call, i64 0, i32 0
  store %struct.file* %filp, %struct.file** %filp3, align 8
  %wait_address4 = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %call, i64 0, i32 3
  store %struct.wait_queue_head* %wait_address, %struct.wait_queue_head** %wait_address4, align 8
  %_key = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 0, i32 1
  %1 = load i32, i32* %_key, align 8
  %key = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %call, i64 0, i32 1
  store i32 %1, i32* %key, align 8
  %wait = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %call, i64 0, i32 2
  call fastcc void @init_waitqueue_func_entry(%struct.wait_queue_entry* noundef %wait) #16
  %private = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %call, i64 0, i32 2, i32 1
  %2 = bitcast i8** %private to %struct.poll_table_struct**
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %2, align 8
  call void @add_wait_queue(%struct.wait_queue_head* noundef %wait_address, %struct.wait_queue_entry* noundef %wait) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @poll_freewait(%struct.poll_wqueues* noundef %pwq) local_unnamed_addr #0 {
entry:
  %table = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %pwq, i64 0, i32 1
  %0 = load %struct.poll_table_page*, %struct.poll_table_page** %table, align 8
  %inline_index = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %pwq, i64 0, i32 5
  %1 = load i32, i32* %inline_index, align 8
  %cmp19 = icmp sgt i32 %1, 0
  br i1 %cmp19, label %for.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body, %entry
  %tobool.not21 = icmp eq %struct.poll_table_page* %0, null
  br i1 %tobool.not21, label %while.end, label %while.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr = getelementptr %struct.poll_wqueues, %struct.poll_wqueues* %pwq, i64 0, i32 6, i64 %indvars.iv
  call fastcc void @free_poll_entry(%struct.poll_table_entry* noundef %add.ptr) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, i32* %inline_index, align 8
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %while.cond.preheader

while.body:                                       ; preds = %while.cond.preheader, %do.end
  %p.022 = phi %struct.poll_table_page* [ %5, %do.end ], [ %0, %while.cond.preheader ]
  %entry2 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %p.022, i64 0, i32 1
  %4 = load %struct.poll_table_entry*, %struct.poll_table_entry** %entry2, align 8
  %arraydecay3 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %p.022, i64 0, i32 2, i64 0
  br label %do.body

do.body:                                          ; preds = %do.body, %while.body
  %entry1.0 = phi %struct.poll_table_entry* [ %4, %while.body ], [ %incdec.ptr, %do.body ]
  %incdec.ptr = getelementptr %struct.poll_table_entry, %struct.poll_table_entry* %entry1.0, i64 -1
  call fastcc void @free_poll_entry(%struct.poll_table_entry* noundef %incdec.ptr) #16
  %cmp4 = icmp ugt %struct.poll_table_entry* %incdec.ptr, %arraydecay3
  br i1 %cmp4, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %next = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %p.022, i64 0, i32 0
  %5 = load %struct.poll_table_page*, %struct.poll_table_page** %next, align 8
  %6 = ptrtoint %struct.poll_table_page* %p.022 to i64
  call void @free_pages(i64 noundef %6, i32 noundef 0) #17
  %tobool.not = icmp eq %struct.poll_table_page* %5, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %do.end, %while.cond.preheader
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_poll_entry(%struct.poll_table_entry* noundef %entry1) unnamed_addr #0 {
entry:
  %wait_address = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %entry1, i64 0, i32 3
  %0 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address, align 8
  %wait = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %entry1, i64 0, i32 2
  call void @remove_wait_queue(%struct.wait_queue_head* noundef %0, %struct.wait_queue_entry* noundef %wait) #17
  %filp = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %entry1, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %filp, align 8
  call void @fput(%struct.file* noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @poll_select_set_timeout(%struct.timespec64* noundef %to, i64 noundef %sec, i64 noundef %nsec) local_unnamed_addr #0 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  store i64 %sec, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 %nsec, i64* %tv_nsec, align 8
  %call = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef nonnull %ts) #16
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = or i64 %nsec, %sec
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %tv_nsec3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %to, i64 0, i32 1
  store i64 0, i64* %tv_nsec3, align 8
  %tv_sec4 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %to, i64 0, i32 0
  store i64 0, i64* %tv_sec4, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @ktime_get_ts64(%struct.timespec64* noundef %to) #17
  %.elt = getelementptr %struct.timespec64, %struct.timespec64* %to, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %to, i64 0, i32 1
  %.unpack17 = load i64, i64* %3, align 8
  %4 = insertvalue [2 x i64] %2, i64 %.unpack17, 1
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %sec, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %nsec, 1
  %call5 = call [2 x i64] @timespec64_add_safe([2 x i64] %4, [2 x i64] %.fca.1.insert) #17
  %call5.fca.0.extract = extractvalue [2 x i64] %call5, 0
  %call5.fca.1.extract = extractvalue [2 x i64] %call5, 1
  store i64 %call5.fca.0.extract, i64* %.elt, align 8
  store i64 %call5.fca.1.extract, i64* %3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.else, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.else ], [ 0, %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #3 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @timespec64_add_safe([2 x i64], [2 x i64]) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @core_sys_select(i32 noundef %n, %struct.__kernel_fd_set* noundef %inp, %struct.__kernel_fd_set* noundef %outp, %struct.__kernel_fd_set* noundef %exp, %struct.timespec64* noundef %end_time) local_unnamed_addr #0 {
entry:
  %fds = alloca %struct.fd_set_bits, align 8
  %stack_fds = alloca [32 x i64], align 8
  %0 = bitcast %struct.fd_set_bits* %fds to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #14
  %1 = bitcast [32 x i64]* %stack_fds to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %1, i8 0, i64 256, i1 false), !annotation !7
  %cmp = icmp slt i32 %n, 0
  br i1 %cmp, label %out_nofds, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__rcu_read_lock() #17
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 84
  %4 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %4, i64 0, i32 3
  %5 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds6 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %5, i64 0, i32 0
  %6 = load i32, i32* %max_fds6, align 8
  call fastcc void @rcu_read_unlock() #16
  %cmp7 = icmp slt i32 %6, %n
  %spec.select = select i1 %cmp7, i32 %6, i32 %n
  %conv = sext i32 %spec.select to i64
  %sub = add nsw i64 %conv, 63
  %7 = lshr i64 %sub, 3
  %mul = and i64 %7, 2305843009213693944
  %cmp10 = icmp ugt i64 %mul, 42
  br i1 %cmp10, label %if.end16, label %if.end21

if.end16:                                         ; preds = %if.end
  %mul17 = mul nuw i64 %mul, 6
  %call18 = call fastcc i8* @kvmalloc(i64 noundef %mul17) #16
  %tobool.not = icmp eq i8* %call18, null
  br i1 %tobool.not, label %out_nofds, label %if.end21

if.end21:                                         ; preds = %if.end16, %if.end
  %bits.0 = phi i8* [ %call18, %if.end16 ], [ %1, %if.end ]
  %8 = bitcast %struct.fd_set_bits* %fds to i8**
  store i8* %bits.0, i8** %8, align 8
  %add.ptr = getelementptr i8, i8* %bits.0, i64 %mul
  %out = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 1
  %9 = bitcast i64** %out to i8**
  store i8* %add.ptr, i8** %9, align 8
  %mul22 = shl nuw nsw i64 %mul, 1
  %add.ptr23 = getelementptr i8, i8* %bits.0, i64 %mul22
  %ex = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 2
  %10 = bitcast i64** %ex to i8**
  store i8* %add.ptr23, i8** %10, align 8
  %mul24 = mul nuw nsw i64 %mul, 3
  %add.ptr25 = getelementptr i8, i8* %bits.0, i64 %mul24
  %res_in = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 3
  %11 = bitcast i64** %res_in to i8**
  store i8* %add.ptr25, i8** %11, align 8
  %mul26 = shl nuw nsw i64 %mul, 2
  %add.ptr27 = getelementptr i8, i8* %bits.0, i64 %mul26
  %res_out = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 4
  %12 = bitcast i64** %res_out to i8**
  store i8* %add.ptr27, i8** %12, align 8
  %mul28 = mul nuw i64 %mul, 5
  %add.ptr29 = getelementptr i8, i8* %bits.0, i64 %mul28
  %res_ex = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 5
  %13 = bitcast i64** %res_ex to i8**
  store i8* %add.ptr29, i8** %13, align 8
  %14 = bitcast %struct.__kernel_fd_set* %inp to i8*
  %15 = bitcast i8* %bits.0 to i64*
  %call32 = call fastcc i32 @get_fd_set(i64 noundef %conv, i8* noundef %14, i64* noundef %15) #16
  %tobool33.not = icmp eq i32 %call32, 0
  %16 = bitcast i8* %add.ptr23 to i64*
  %17 = bitcast i8* %add.ptr25 to i64*
  %18 = bitcast i8* %add.ptr27 to i64*
  %19 = bitcast i8* %add.ptr29 to i64*
  br i1 %tobool33.not, label %lor.lhs.false, label %out80

lor.lhs.false:                                    ; preds = %if.end21
  %20 = bitcast i8* %add.ptr to i64*
  %21 = bitcast %struct.__kernel_fd_set* %outp to i8*
  %call36 = call fastcc i32 @get_fd_set(i64 noundef %conv, i8* noundef %21, i64* noundef %20) #16
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %out80

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %22 = bitcast %struct.__kernel_fd_set* %exp to i8*
  %call41 = call fastcc i32 @get_fd_set(i64 noundef %conv, i8* noundef %22, i64* noundef %16) #16
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %out80

if.end44:                                         ; preds = %lor.lhs.false38
  call fastcc void @zero_fd_set(i64 noundef %conv, i64* noundef %17) #16
  call fastcc void @zero_fd_set(i64 noundef %conv, i64* noundef %18) #16
  call fastcc void @zero_fd_set(i64 noundef %conv, i64* noundef %19) #16
  %call51 = call fastcc i32 @do_select(i32 noundef %spec.select, %struct.fd_set_bits* noundef nonnull %fds, %struct.timespec64* noundef %end_time) #16
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %out80, label %if.end55

if.end55:                                         ; preds = %if.end44
  %tobool56.not = icmp eq i32 %call51, 0
  br i1 %tobool56.not, label %if.then57, label %if.end63

if.then57:                                        ; preds = %if.end55
  %call59 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %3) #16
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end63, label %out80

if.end63:                                         ; preds = %if.then57, %if.end55
  %call66 = call fastcc i64 @set_fd_set(i64 noundef %conv, i8* noundef %14, i64* noundef %17) #16
  %tobool67.not = icmp eq i64 %call66, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %if.then78

lor.lhs.false68:                                  ; preds = %if.end63
  %call71 = call fastcc i64 @set_fd_set(i64 noundef %conv, i8* noundef %21, i64* noundef %18) #16
  %tobool72.not = icmp eq i64 %call71, 0
  br i1 %tobool72.not, label %lor.lhs.false73, label %if.then78

lor.lhs.false73:                                  ; preds = %lor.lhs.false68
  %call76 = call fastcc i64 @set_fd_set(i64 noundef %conv, i8* noundef %22, i64* noundef %19) #16
  %tobool77.not = icmp eq i64 %call76, 0
  br i1 %tobool77.not, label %out80, label %if.then78

if.then78:                                        ; preds = %lor.lhs.false73, %lor.lhs.false68, %if.end63
  br label %out80

out80:                                            ; preds = %lor.lhs.false73, %if.then78, %if.then57, %if.end44, %if.end21, %lor.lhs.false, %lor.lhs.false38
  %ret.1 = phi i32 [ %call32, %if.end21 ], [ %call36, %lor.lhs.false ], [ %call41, %lor.lhs.false38 ], [ %call51, %if.end44 ], [ -14, %if.then78 ], [ %call51, %lor.lhs.false73 ], [ -514, %if.then57 ]
  %cmp82.not = icmp eq i8* %bits.0, %1
  br i1 %cmp82.not, label %out_nofds, label %if.then84

if.then84:                                        ; preds = %out80
  call void @kvfree(i8* noundef nonnull %bits.0) #17
  br label %out_nofds

out_nofds:                                        ; preds = %out80, %if.then84, %if.end16, %entry
  %ret.2 = phi i32 [ -22, %entry ], [ %ret.1, %if.then84 ], [ %ret.1, %out80 ], [ -12, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #14
  ret i32 %ret.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef 3264, i32 noundef -1) #17
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_fd_set(i64 noundef %nr, i8* noundef %ufdset, i64* noundef %fdset) unnamed_addr #0 {
entry:
  %sub = add i64 %nr, 63
  %0 = lshr i64 %sub, 3
  %mul = and i64 %0, 2305843009213693944
  %tobool.not = icmp eq i8* %ufdset, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp11.i.i = icmp ugt i64 %mul, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !9

check_copy_size.exit.i:                           ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  br label %return

if.then.i:                                        ; preds = %if.then
  %1 = bitcast i64* %fdset to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %1, i8* noundef nonnull %ufdset, i64 noundef %mul) #17
  %phi.cmp = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast i64* %fdset to i8*
  %call2 = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef %mul) #17
  br label %return

return:                                           ; preds = %if.then.i, %check_copy_size.exit.i, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %phi.sel, %if.then.i ], [ -14, %check_copy_size.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_fd_set(i64 noundef %nr, i64* noundef %fdset) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %fdset to i8*
  %sub = add i64 %nr, 63
  %1 = lshr i64 %sub, 3
  %mul = and i64 %1, 2305843009213693944
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef %mul) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_select(i32 noundef %n, %struct.fd_set_bits* nocapture noundef readonly %fds, %struct.timespec64* noundef readonly %end_time) unnamed_addr #0 {
entry:
  %expire = alloca i64, align 8
  %table = alloca %struct.poll_wqueues, align 8
  %0 = bitcast i64* %expire to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %expire, align 8, !annotation !7
  %1 = bitcast %struct.poll_wqueues* %table to i8*
  call void @llvm.lifetime.start.p0i8(i64 560, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(560) %1, i8 0, i64 560, i1 false), !annotation !7
  call fastcc void @__rcu_read_lock() #17
  %conv = sext i32 %n to i64
  %call2 = call fastcc i32 @max_select_fd(i64 noundef %conv, %struct.fd_set_bits* noundef %fds) #16
  call fastcc void @rcu_read_unlock() #16
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %cleanup161, label %if.end

if.end:                                           ; preds = %entry
  call void @poll_initwait(%struct.poll_wqueues* noundef nonnull %table) #16
  %pt = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %table, i64 0, i32 0
  %tobool4.not = icmp eq %struct.timespec64* %end_time, null
  br i1 %tobool4.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  %tobool5.not = icmp eq i64 %2, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %if.then13

land.lhs.true6:                                   ; preds = %land.lhs.true
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 1
  %3 = load i64, i64* %tv_nsec, align 8
  %tobool7.not = icmp eq i64 %3, 0
  br i1 %tobool7.not, label %if.then8, label %if.then13

if.then8:                                         ; preds = %land.lhs.true6
  %_qproc = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %table, i64 0, i32 0, i32 0
  store void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* null, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true, %land.lhs.true6
  %call14 = call i64 @select_estimate_accuracy(%struct.timespec64* noundef nonnull %end_time) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end, %if.then13
  %timed_out.0280 = phi i32 [ 0, %if.then13 ], [ 0, %if.end ], [ 1, %if.then8 ]
  %slack.0 = phi i64 [ %call14, %if.then13 ], [ 0, %if.end ], [ 0, %if.then8 ]
  %error = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %table, i64 0, i32 4
  %in = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 0
  %out = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 1
  %ex = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 2
  %res_in = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 3
  %res_out = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 4
  %res_ex = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 5
  %cmp17312.not = icmp eq i32 %call2, 0
  %_qproc55 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %table, i64 0, i32 0, i32 0
  %.elt = getelementptr %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 0
  %4 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cleanup151, %if.end15
  %timed_out.1 = phi i32 [ %timed_out.0280, %if.end15 ], [ %spec.select, %cleanup151 ]
  %to.0 = phi i64* [ null, %if.end15 ], [ %to.1, %cleanup151 ]
  br i1 %cmp17312.not, label %for.end114, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond
  %5 = load i64*, i64** %res_ex, align 8
  %6 = load i64*, i64** %res_out, align 8
  %7 = load i64*, i64** %res_in, align 8
  %8 = load i64*, i64** %ex, align 8
  %9 = load i64*, i64** %out, align 8
  %10 = load i64*, i64** %in, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup98
  %exp.0326 = phi i64* [ %incdec.ptr26, %cleanup98 ], [ %8, %for.body.preheader ]
  %outp.0325 = phi i64* [ %incdec.ptr25, %cleanup98 ], [ %9, %for.body.preheader ]
  %inp.0324 = phi i64* [ %incdec.ptr, %cleanup98 ], [ %10, %for.body.preheader ]
  %rexp.0321 = phi i64* [ %incdec.ptr113, %cleanup98 ], [ %5, %for.body.preheader ]
  %routp.0318 = phi i64* [ %incdec.ptr112, %cleanup98 ], [ %6, %for.body.preheader ]
  %rinp.0315 = phi i64* [ %incdec.ptr111, %cleanup98 ], [ %7, %for.body.preheader ]
  %i.0314 = phi i32 [ %i.2, %cleanup98 ], [ 0, %for.body.preheader ]
  %retval1.1313 = phi i32 [ %retval1.9, %cleanup98 ], [ 0, %for.body.preheader ]
  %incdec.ptr = getelementptr i64, i64* %inp.0324, i64 1
  %11 = load i64, i64* %inp.0324, align 8
  %incdec.ptr25 = getelementptr i64, i64* %outp.0325, i64 1
  %12 = load i64, i64* %outp.0325, align 8
  %incdec.ptr26 = getelementptr i64, i64* %exp.0326, i64 1
  %13 = load i64, i64* %exp.0326, align 8
  %or = or i64 %12, %11
  %or27 = or i64 %or, %13
  %cmp28 = icmp eq i64 %or27, 0
  br i1 %cmp28, label %if.then30, label %for.body35.preheader

for.body35.preheader:                             ; preds = %for.body
  %smax = call i32 @llvm.smax.i32(i32 %call2, i32 %i.0314)
  %14 = sub i32 %smax, %i.0314
  %wide.trip.count = zext i32 %14 to i64
  br label %for.body35

if.then30:                                        ; preds = %for.body
  %add = add i32 %i.0314, 64
  br label %cleanup98

for.body35:                                       ; preds = %for.body35.preheader, %for.inc
  %res_ex24.0311 = phi i64 [ %res_ex24.3.ph, %for.inc ], [ 0, %for.body35.preheader ]
  %res_out23.0310 = phi i64 [ %res_out23.3.ph, %for.inc ], [ 0, %for.body35.preheader ]
  %res_in22.0309 = phi i64 [ %res_in22.3.ph, %for.inc ], [ 0, %for.body35.preheader ]
  %j.0308 = phi i64 [ %inc85, %for.inc ], [ 0, %for.body35.preheader ]
  %bit.0306 = phi i64 [ %shl, %for.inc ], [ 1, %for.body35.preheader ]
  %i.1304 = phi i32 [ %inc86, %for.inc ], [ %i.0314, %for.body35.preheader ]
  %retval1.2303 = phi i32 [ %retval1.7.ph, %for.inc ], [ %retval1.1313, %for.body35.preheader ]
  %exitcond.not = icmp eq i64 %j.0308, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %if.end39

if.end39:                                         ; preds = %for.body35
  %and = and i64 %bit.0306, %or27
  %tobool40.not = icmp eq i64 %and, 0
  br i1 %tobool40.not, label %for.inc, label %if.end42

if.end42:                                         ; preds = %if.end39
  %call43 = call fastcc [2 x i64] @fdget(i32 noundef %i.1304) #16
  %call43.fca.0.extract = extractvalue [2 x i64] %call43, 0
  %tobool44.not = icmp eq i64 %call43.fca.0.extract, 0
  br i1 %tobool44.not, label %for.inc, label %if.then45

if.then45:                                        ; preds = %if.end42
  %15 = inttoptr i64 %call43.fca.0.extract to %struct.file*
  call fastcc void @wait_key_set(%struct.poll_table_struct* noundef nonnull %pt, i64 noundef %11, i64 noundef %12, i64 noundef %bit.0306) #16
  %call47 = call fastcc i32 @vfs_poll(%struct.file* noundef nonnull %15, %struct.poll_table_struct* noundef nonnull %pt) #16
  call fastcc void @fdput([2 x i64] %call43) #16
  %and48 = and i32 %call47, 217
  %tobool49.not = icmp eq i32 %and48, 0
  %and51 = and i64 %bit.0306, %11
  %tobool52.not = icmp eq i64 %and51, 0
  %or.cond273 = select i1 %tobool49.not, i1 true, i1 %tobool52.not
  %not.or.cond273 = xor i1 %or.cond273, true
  %inc = zext i1 %not.or.cond273 to i32
  %retval1.3 = add i32 %retval1.2303, %inc
  %or54 = select i1 %or.cond273, i64 0, i64 %bit.0306
  %res_in22.1 = or i64 %res_in22.0309, %or54
  %and57 = and i32 %call47, 780
  %tobool58.not = icmp eq i32 %and57, 0
  %and60 = and i64 %bit.0306, %12
  %tobool61.not = icmp eq i64 %and60, 0
  %or.cond274 = select i1 %tobool58.not, i1 true, i1 %tobool61.not
  %not.or.cond274 = xor i1 %or.cond274, true
  %inc64 = zext i1 %not.or.cond274 to i32
  %retval1.4 = add i32 %retval1.3, %inc64
  %or63 = select i1 %or.cond274, i64 0, i64 %bit.0306
  %res_out23.1 = or i64 %res_out23.0310, %or63
  %.demorgan = and i1 %or.cond273, %or.cond274
  %and67 = and i32 %call47, 2
  %tobool68.not = icmp eq i32 %and67, 0
  %and70 = and i64 %bit.0306, %13
  %tobool71.not = icmp eq i64 %and70, 0
  %or.cond275 = select i1 %tobool68.not, i1 true, i1 %tobool71.not
  %not.or.cond275 = xor i1 %or.cond275, true
  %inc74 = zext i1 %not.or.cond275 to i32
  %retval1.7.ph.ph = add i32 %retval1.4, %inc74
  %or73 = select i1 %or.cond275, i64 0, i64 %bit.0306
  %res_ex24.3.ph.ph = or i64 %res_ex24.0311, %or73
  %.demorgan332 = and i1 %.demorgan, %or.cond275
  br i1 %.demorgan332, label %for.inc, label %16

16:                                               ; preds = %if.then45
  store void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* null, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc55, align 8
  br label %for.inc

for.inc:                                          ; preds = %16, %if.then45, %if.end39, %if.end42
  %retval1.7.ph = phi i32 [ %retval1.2303, %if.end42 ], [ %retval1.2303, %if.end39 ], [ %retval1.7.ph.ph, %if.then45 ], [ %retval1.7.ph.ph, %16 ]
  %res_in22.3.ph = phi i64 [ %res_in22.0309, %if.end42 ], [ %res_in22.0309, %if.end39 ], [ %res_in22.1, %if.then45 ], [ %res_in22.1, %16 ]
  %res_out23.3.ph = phi i64 [ %res_out23.0310, %if.end42 ], [ %res_out23.0310, %if.end39 ], [ %res_out23.1, %if.then45 ], [ %res_out23.1, %16 ]
  %res_ex24.3.ph = phi i64 [ %res_ex24.0311, %if.end42 ], [ %res_ex24.0311, %if.end39 ], [ %res_ex24.3.ph.ph, %if.then45 ], [ %res_ex24.3.ph.ph, %16 ]
  %inc85 = add nuw nsw i64 %j.0308, 1
  %inc86 = add nsw i32 %i.1304, 1
  %shl = shl i64 %bit.0306, 1
  %exitcond331.not = icmp eq i64 %inc85, 64
  br i1 %exitcond331.not, label %for.end, label %for.body35

for.end:                                          ; preds = %for.body35, %for.inc
  %retval1.2.lcssa = phi i32 [ %retval1.2303, %for.body35 ], [ %retval1.7.ph, %for.inc ]
  %i.1.lcssa = phi i32 [ %i.1304, %for.body35 ], [ %inc86, %for.inc ]
  %res_in22.0.lcssa = phi i64 [ %res_in22.0309, %for.body35 ], [ %res_in22.3.ph, %for.inc ]
  %res_out23.0.lcssa = phi i64 [ %res_out23.0310, %for.body35 ], [ %res_out23.3.ph, %for.inc ]
  %res_ex24.0.lcssa = phi i64 [ %res_ex24.0311, %for.body35 ], [ %res_ex24.3.ph, %for.inc ]
  %tobool87.not = icmp eq i64 %res_in22.0.lcssa, 0
  br i1 %tobool87.not, label %if.end89, label %if.then88

if.then88:                                        ; preds = %for.end
  store i64 %res_in22.0.lcssa, i64* %rinp.0315, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %for.end
  %tobool90.not = icmp eq i64 %res_out23.0.lcssa, 0
  br i1 %tobool90.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.end89
  store i64 %res_out23.0.lcssa, i64* %routp.0318, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end89
  %tobool93.not = icmp eq i64 %res_ex24.0.lcssa, 0
  br i1 %tobool93.not, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.end92
  store i64 %res_ex24.0.lcssa, i64* %rexp.0321, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end92
  call fastcc void @_cond_resched() #16
  br label %cleanup98

cleanup98:                                        ; preds = %if.end95, %if.then30
  %retval1.9 = phi i32 [ %retval1.1313, %if.then30 ], [ %retval1.2.lcssa, %if.end95 ]
  %i.2 = phi i32 [ %add, %if.then30 ], [ %i.1.lcssa, %if.end95 ]
  %incdec.ptr111 = getelementptr i64, i64* %rinp.0315, i64 1
  %incdec.ptr112 = getelementptr i64, i64* %routp.0318, i64 1
  %incdec.ptr113 = getelementptr i64, i64* %rexp.0321, i64 1
  %cmp17 = icmp slt i32 %i.2, %call2
  br i1 %cmp17, label %for.body, label %for.end114

for.end114:                                       ; preds = %cleanup98, %for.cond
  %retval1.1.lcssa = phi i32 [ 0, %for.cond ], [ %retval1.9, %cleanup98 ]
  store void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* null, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc55, align 8
  %tobool116 = icmp ne i32 %retval1.1.lcssa, 0
  %tobool117 = icmp ne i32 %timed_out.1, 0
  %or.cond171 = select i1 %tobool116, i1 true, i1 %tobool117
  br i1 %or.cond171, label %for.end160, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %for.end114
  %17 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %18 = inttoptr i64 %17 to %struct.task_struct*
  %call120 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %18) #16
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %for.end160

if.end123:                                        ; preds = %lor.lhs.false118
  %19 = load i32, i32* %error, align 4
  %tobool124.not = icmp eq i32 %19, 0
  br i1 %tobool124.not, label %if.end140, label %for.end160

if.end140:                                        ; preds = %if.end123
  %tobool143 = icmp ne i64* %to.0, null
  %or.cond172 = or i1 %tobool4.not, %tobool143
  br i1 %or.cond172, label %cleanup151, label %if.then144

if.then144:                                       ; preds = %if.end140
  %.unpack = load i64, i64* %.elt, align 8
  %20 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.unpack272 = load i64, i64* %4, align 8
  %21 = insertvalue [2 x i64] %20, i64 %.unpack272, 1
  %call145 = call fastcc i64 @timespec64_to_ktime([2 x i64] %21) #16
  store i64 %call145, i64* %expire, align 8
  br label %cleanup151

cleanup151:                                       ; preds = %if.end140, %if.then144
  %to.1 = phi i64* [ %to.0, %if.end140 ], [ %expire, %if.then144 ]
  %call147 = call fastcc i32 @poll_schedule_timeout(%struct.poll_wqueues* noundef nonnull %table, i64* noundef %to.1, i64 noundef %slack.0) #16
  %tobool148.not = icmp eq i32 %call147, 0
  %spec.select = zext i1 %tobool148.not to i32
  br label %for.cond

for.end160:                                       ; preds = %lor.lhs.false118, %for.end114, %if.end123
  %retval1.10.ph = phi i32 [ %19, %if.end123 ], [ %retval1.1.lcssa, %for.end114 ], [ 0, %lor.lhs.false118 ]
  call void @poll_freewait(%struct.poll_wqueues* noundef nonnull %table) #16
  br label %cleanup161

cleanup161:                                       ; preds = %entry, %for.end160
  %retval.0 = phi i32 [ %retval1.10.ph, %for.end160 ], [ %call2, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 560, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !11

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @set_fd_set(i64 noundef %nr, i8* noundef %ufdset, i64* noundef %fdset) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %ufdset, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i64* %fdset to i8*
  %sub = add i64 %nr, 63
  %1 = lshr i64 %sub, 3
  %mul = and i64 %1, 2305843009213693944
  %call2.i = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %ufdset) #17
  %call3.i = call i64 @__arch_copy_to_user(i8* noundef %call2.i, i8* noundef %0, i64 noundef %mul) #17
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %call3.i, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_select(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %call = call fastcc i64 @__se_sys_select(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_select(i64 noundef %n, i64 noundef %inp, i64 noundef %outp, i64 noundef %exp, i64 noundef %tvp) unnamed_addr #0 {
entry:
  %conv = trunc i64 %n to i32
  %0 = inttoptr i64 %inp to %struct.__kernel_fd_set*
  %1 = inttoptr i64 %outp to %struct.__kernel_fd_set*
  %2 = inttoptr i64 %exp to %struct.__kernel_fd_set*
  %3 = inttoptr i64 %tvp to %struct.__kernel_old_timeval*
  %call = call fastcc i64 @__do_sys_select(i32 noundef %conv, %struct.__kernel_fd_set* noundef %0, %struct.__kernel_fd_set* noundef %1, %struct.__kernel_fd_set* noundef %2, %struct.__kernel_old_timeval* noundef %3) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pselect6(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %arrayidx11 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx11, align 8
  %call = call fastcc i64 @__se_sys_pselect6(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pselect6(i64 noundef %n, i64 noundef %inp, i64 noundef %outp, i64 noundef %exp, i64 noundef %tsp, i64 noundef %sig) unnamed_addr #0 {
entry:
  %conv = trunc i64 %n to i32
  %0 = inttoptr i64 %inp to %struct.__kernel_fd_set*
  %1 = inttoptr i64 %outp to %struct.__kernel_fd_set*
  %2 = inttoptr i64 %exp to %struct.__kernel_fd_set*
  %3 = inttoptr i64 %tsp to %struct.__kernel_timespec*
  %4 = inttoptr i64 %sig to i8*
  %call = call fastcc i64 @__do_sys_pselect6(i32 noundef %conv, %struct.__kernel_fd_set* noundef %0, %struct.__kernel_fd_set* noundef %1, %struct.__kernel_fd_set* noundef %2, %struct.__kernel_timespec* noundef %3, i8* noundef %4) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_poll(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_poll(i64 noundef %0, i64 noundef %1, i64 noundef %2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_poll(i64 noundef %ufds, i64 noundef %nfds, i64 noundef %timeout_msecs) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %ufds to %struct.pollfd*
  %conv = trunc i64 %nfds to i32
  %conv1 = trunc i64 %timeout_msecs to i32
  %call = call fastcc i64 @__do_sys_poll(%struct.pollfd* noundef %0, i32 noundef %conv, i32 noundef %conv1) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_ppoll(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %call = call fastcc i64 @__se_sys_ppoll(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_ppoll(i64 noundef %ufds, i64 noundef %nfds, i64 noundef %tsp, i64 noundef %sigmask, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %ufds to %struct.pollfd*
  %conv = trunc i64 %nfds to i32
  %1 = inttoptr i64 %tsp to %struct.__kernel_timespec*
  %2 = inttoptr i64 %sigmask to %struct.sigset_t*
  %call = call fastcc i64 @__do_sys_ppoll(%struct.pollfd* noundef %0, i32 noundef %conv, %struct.__kernel_timespec* noundef %1, %struct.sigset_t* noundef %2, i64 noundef %sigsetsize) #16
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rt_prio(i32 noundef %prio) unnamed_addr #9 {
entry:
  %cmp = icmp slt i32 %prio, 100
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(%struct.timespec64* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_nice(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #3 {
entry:
  %static_prio = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 16
  %0 = load i32, i32* %static_prio, align 8
  %sub = add i32 %0, -120
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.poll_table_entry* @poll_get_entry(%struct.poll_wqueues* noundef %p) unnamed_addr #0 {
entry:
  %table1 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %p, i64 0, i32 1
  %0 = load %struct.poll_table_page*, %struct.poll_table_page** %table1, align 8
  %inline_index = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %p, i64 0, i32 5
  %1 = load i32, i32* %inline_index, align 8
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv36 = zext i32 %1 to i64
  %inc = add nuw nsw i32 %1, 1
  store i32 %inc, i32* %inline_index, align 8
  %add.ptr = getelementptr %struct.poll_wqueues, %struct.poll_wqueues* %p, i64 0, i32 6, i64 %conv36
  br label %cleanup17

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.poll_table_page* %0, null
  br i1 %tobool.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %entry4 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %0, i64 0, i32 1
  %2 = load %struct.poll_table_entry*, %struct.poll_table_entry** %entry4, align 8
  %add.ptr5 = getelementptr %struct.poll_table_entry, %struct.poll_table_entry* %2, i64 1
  %3 = ptrtoint %struct.poll_table_entry* %add.ptr5 to i64
  %4 = ptrtoint %struct.poll_table_page* %0 to i64
  %add = add i64 %4, 4096
  %cmp6 = icmp ult i64 %add, %3
  br i1 %cmp6, label %if.then8, label %if.end15

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %call = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #17
  %5 = inttoptr i64 %call to %struct.poll_table_page*
  %tobool9.not = icmp eq i64 %call, 0
  br i1 %tobool9.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then8
  %error = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %p, i64 0, i32 4
  store i32 -12, i32* %error, align 4
  br label %cleanup17

cleanup:                                          ; preds = %if.then8
  %arraydecay12 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %5, i64 0, i32 2, i64 0
  %entry13 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %5, i64 0, i32 1
  store %struct.poll_table_entry* %arraydecay12, %struct.poll_table_entry** %entry13, align 8
  %next = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %5, i64 0, i32 0
  store %struct.poll_table_page* %0, %struct.poll_table_page** %next, align 8
  store %struct.poll_table_page* %5, %struct.poll_table_page** %table1, align 8
  %.pre = load %struct.poll_table_entry*, %struct.poll_table_entry** %entry13, align 8
  br label %if.end15

if.end15:                                         ; preds = %cleanup, %lor.lhs.false
  %6 = phi %struct.poll_table_entry* [ %.pre, %cleanup ], [ %2, %lor.lhs.false ]
  %table.1 = phi %struct.poll_table_page* [ %5, %cleanup ], [ %0, %lor.lhs.false ]
  %entry16 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %table.1, i64 0, i32 1
  %incdec.ptr = getelementptr %struct.poll_table_entry, %struct.poll_table_entry* %6, i64 1
  store %struct.poll_table_entry* %incdec.ptr, %struct.poll_table_entry** %entry16, align 8
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup.thread, %if.end15, %if.then
  %retval.1 = phi %struct.poll_table_entry* [ %add.ptr, %if.then ], [ %6, %if.end15 ], [ null, %cleanup.thread ]
  ret %struct.poll_table_entry* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @get_file(%struct.file* noundef returned %f) unnamed_addr #0 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %f_count) #17
  ret %struct.file* %f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_waitqueue_func_entry(%struct.wait_queue_entry* nocapture noundef writeonly %wq_entry) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 0
  store i32 0, i32* %flags, align 8
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 1
  store i8* null, i8** %private, align 8
  %func1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @pollwake, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pollwake(%struct.wait_queue_entry* nocapture noundef readonly %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #0 {
entry:
  %tobool.not = icmp eq i8* %key, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint i8* %key to i64
  %conv = trunc i64 %0 to i32
  %key2 = getelementptr %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 -1, i32 3, i32 1
  %1 = bitcast %struct.list_head** %key2 to i32*
  %2 = load i32, i32* %1, align 8
  %and = and i32 %2, %conv
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call fastcc i32 @__pollwake(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #16
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #14, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__pollwake(%struct.wait_queue_entry* nocapture noundef readonly %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) unnamed_addr #0 {
entry:
  %dummy_wait = alloca %struct.wait_queue_entry, align 8
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %0 = bitcast i8** %private to %struct.poll_wqueues**
  %1 = load %struct.poll_wqueues*, %struct.poll_wqueues** %0, align 8
  %2 = bitcast %struct.wait_queue_entry* %dummy_wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #14
  %private1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %dummy_wait, i64 0, i32 1
  %polling_task = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %1, i64 0, i32 2
  %3 = bitcast %struct.task_struct** %polling_task to i8**
  %4 = bitcast %struct.wait_queue_entry* %dummy_wait to i64*
  store i64 0, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %private1, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %dummy_wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @default_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %next = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %dummy_wait, i64 0, i32 3, i32 0
  store %struct.list_head* null, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %dummy_wait, i64 0, i32 3, i32 1
  store %struct.list_head* null, %struct.list_head** %prev, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !13
  %triggered = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %1, i64 0, i32 3
  store i32 1, i32* %triggered, align 8
  %call = call i32 @default_wake_function(%struct.wait_queue_entry* noundef nonnull %dummy_wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  call void @rcu_read_unlock_strict() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #16
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !9

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #16
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !11

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #14, !srcloc !16
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #14, !srcloc !17
  call void asm sideeffect "hint #20", "~{memory}"() #14, !srcloc !18
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @max_select_fd(i64 noundef %n, %struct.fd_set_bits* nocapture noundef readonly %fds) unnamed_addr #0 {
entry:
  %and = and i64 %n, 63
  %div = lshr i64 %n, 6
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 3
  %3 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %open_fds6 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %3, i64 0, i32 3
  %4 = load i64*, i64** %open_fds6, align 8
  %add.ptr = getelementptr i64, i64* %4, i64 %div
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  %shl = shl nsw i64 -1, %and
  %neg = xor i64 %shl, -1
  %in = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 0
  %5 = load i64*, i64** %in, align 8
  %add.ptr7 = getelementptr i64, i64* %5, i64 %div
  %6 = load i64, i64* %add.ptr7, align 8
  %out = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 1
  %7 = load i64*, i64** %out, align 8
  %add.ptr8 = getelementptr i64, i64* %7, i64 %div
  %8 = load i64, i64* %add.ptr8, align 8
  %or = or i64 %8, %6
  %ex = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 2
  %9 = load i64*, i64** %ex, align 8
  %add.ptr9 = getelementptr i64, i64* %9, i64 %div
  %10 = load i64, i64* %add.ptr9, align 8
  %or10 = or i64 %or, %10
  %and11 = and i64 %or10, %neg
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %while.cond.preheader, label %if.then13

if.then13:                                        ; preds = %if.then
  %11 = load i64, i64* %add.ptr, align 8
  %neg14 = xor i64 %11, -1
  %and15 = and i64 %and11, %neg14
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %get_max, label %cleanup

while.cond.preheader:                             ; preds = %entry, %if.then, %do.end43
  %max.0.ph = phi i32 [ %conv44, %do.end43 ], [ 0, %if.then ], [ 0, %entry ]
  %open_fds.0.ph = phi i64* [ %open_fds.1, %do.end43 ], [ %add.ptr, %if.then ], [ %add.ptr, %entry ]
  %n.addr.0.ph = phi i64 [ %n.addr.1, %do.end43 ], [ %div, %if.then ], [ %div, %entry ]
  %tobool20.not82 = icmp eq i64 %n.addr.0.ph, 0
  br i1 %tobool20.not82, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %in21 = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 0
  %12 = load i64*, i64** %in21, align 8
  %out23 = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 1
  %13 = load i64*, i64** %out23, align 8
  %ex26 = getelementptr inbounds %struct.fd_set_bits, %struct.fd_set_bits* %fds, i64 0, i32 2
  %14 = load i64*, i64** %ex26, align 8
  %tobool37.not = icmp eq i32 %max.0.ph, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %n.addr.084 = phi i64 [ %n.addr.0.ph, %while.body.lr.ph ], [ %dec, %while.cond.backedge ]
  %open_fds.083 = phi i64* [ %open_fds.0.ph, %while.body.lr.ph ], [ %incdec.ptr, %while.cond.backedge ]
  %incdec.ptr = getelementptr i64, i64* %open_fds.083, i64 -1
  %dec = add i64 %n.addr.084, -1
  %add.ptr22 = getelementptr i64, i64* %12, i64 %dec
  %15 = load i64, i64* %add.ptr22, align 8
  %add.ptr24 = getelementptr i64, i64* %13, i64 %dec
  %16 = load i64, i64* %add.ptr24, align 8
  %or25 = or i64 %16, %15
  %add.ptr27 = getelementptr i64, i64* %14, i64 %dec
  %17 = load i64, i64* %add.ptr27, align 8
  %or28 = or i64 %or25, %17
  %tobool29.not = icmp eq i64 %or28, 0
  br i1 %tobool29.not, label %while.cond.backedge, label %if.end31

while.cond.backedge:                              ; preds = %while.body, %if.end36
  %tobool20.not = icmp eq i64 %dec, 0
  br i1 %tobool20.not, label %cleanup, label %while.body

if.end31:                                         ; preds = %while.body
  %18 = load i64, i64* %incdec.ptr, align 8
  %neg32 = xor i64 %18, -1
  %and33 = and i64 %or28, %neg32
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.end36, label %cleanup

if.end36:                                         ; preds = %if.end31
  br i1 %tobool37.not, label %get_max, label %while.cond.backedge

get_max:                                          ; preds = %if.end36, %if.then13
  %set.0 = phi i64 [ %and11, %if.then13 ], [ %or28, %if.end36 ]
  %open_fds.1 = phi i64* [ %add.ptr, %if.then13 ], [ %incdec.ptr, %if.end36 ]
  %n.addr.1 = phi i64 [ %div, %if.then13 ], [ %dec, %if.end36 ]
  br label %do.body40

do.body40:                                        ; preds = %do.body40, %get_max
  %max.2 = phi i32 [ 0, %get_max ], [ %inc, %do.body40 ]
  %set.1 = phi i64 [ %set.0, %get_max ], [ %shr, %do.body40 ]
  %inc = add nuw nsw i32 %max.2, 1
  %shr = lshr i64 %set.1, 1
  %tobool42.not = icmp ult i64 %set.1, 2
  br i1 %tobool42.not, label %do.end43, label %do.body40

do.end43:                                         ; preds = %do.body40
  %n.addr.1.tr = trunc i64 %n.addr.1 to i32
  %19 = shl i32 %n.addr.1.tr, 6
  %conv44 = add i32 %inc, %19
  br label %while.cond.preheader

cleanup:                                          ; preds = %if.end31, %while.cond.backedge, %while.cond.preheader, %if.then13
  %retval.0 = phi i32 [ -9, %if.then13 ], [ %max.0.ph, %while.cond.preheader ], [ -9, %if.end31 ], [ %max.0.ph, %while.cond.backedge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #17
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #16
  ret [2 x i64] %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @wait_key_set(%struct.poll_table_struct* nocapture noundef %wait, i64 noundef %in, i64 noundef %out, i64 noundef %bit) unnamed_addr #10 {
entry:
  %and = and i64 %bit, %in
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 219
  %and3 = and i64 %bit, %out
  %tobool4.not = icmp eq i64 %and3, 0
  %or7 = or i32 %spec.select, 780
  %spec.select1 = select i1 %tobool4.not, i32 %spec.select, i32 %or7
  %_key = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %wait, i64 0, i32 1
  store i32 %spec.select1, i32* %_key, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vfs_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %pt) unnamed_addr #0 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %poll = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 9
  %1 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %poll, align 8
  %tobool.not = icmp eq i32 (%struct.file*, %struct.poll_table_struct*)* %1, null
  br i1 %tobool.not, label %return, label %if.end, !prof !9

if.end:                                           ; preds = %entry
  %call = call i32 %1(%struct.file* noundef %file, %struct.poll_table_struct* noundef %pt) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 325, %entry ]
  ret i32 %retval.0
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
  call void @fput(%struct.file* noundef %0) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #9 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @poll_schedule_timeout(%struct.poll_wqueues* noundef %pwq, i64* noundef %expires, i64 noundef %slack) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  %triggered = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %pwq, i64 0, i32 3
  %2 = load i32, i32* %triggered, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %do.body25

if.then:                                          ; preds = %entry
  %call16 = call i32 @schedule_hrtimeout_range(i64* noundef %expires, i64 noundef %slack, i32 noundef 0) #17
  br label %do.body25

do.body25:                                        ; preds = %entry, %if.then
  %rc.0 = phi i32 [ -4, %entry ], [ %call16, %if.then ]
  store volatile i32 0, i32* %__state, align 16
  store volatile i32 0, i32* %triggered, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #9 {
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
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #8 {
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
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #9 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !9
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #8 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #16
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #16
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #16
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #9 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_select(i32 noundef %n, %struct.__kernel_fd_set* noundef %inp, %struct.__kernel_fd_set* noundef %outp, %struct.__kernel_fd_set* noundef %exp, %struct.__kernel_old_timeval* noundef %tvp) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @kern_select(i32 noundef %n, %struct.__kernel_fd_set* noundef %inp, %struct.__kernel_fd_set* noundef %outp, %struct.__kernel_fd_set* noundef %exp, %struct.__kernel_old_timeval* noundef %tvp) #16
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kern_select(i32 noundef %n, %struct.__kernel_fd_set* noundef %inp, %struct.__kernel_fd_set* noundef %outp, %struct.__kernel_fd_set* noundef %exp, %struct.__kernel_old_timeval* noundef %tvp) unnamed_addr #0 {
entry:
  %end_time = alloca %struct.timespec64, align 8
  %tv = alloca %struct.__kernel_old_timeval, align 8
  %0 = bitcast %struct.timespec64* %end_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %1 = bitcast %struct.__kernel_old_timeval* %tv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.__kernel_old_timeval* %tvp, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.__kernel_old_timeval* %tvp to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef nonnull %2, i64 noundef 16) #17
  %tobool1.not = icmp eq i64 %call2.i, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %tv_sec = getelementptr inbounds %struct.__kernel_old_timeval, %struct.__kernel_old_timeval* %tv, i64 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %tv_usec = getelementptr inbounds %struct.__kernel_old_timeval, %struct.__kernel_old_timeval* %tv, i64 0, i32 1
  %4 = load i64, i64* %tv_usec, align 8
  %.frozen = freeze i64 %4
  %div = sdiv i64 %.frozen, 1000000
  %add = add i64 %div, %3
  %5 = mul i64 %div, 1000000
  %rem.decomposed = sub i64 %.frozen, %5
  %mul = mul nsw i64 %rem.decomposed, 1000
  %call4 = call i32 @poll_select_set_timeout(%struct.timespec64* noundef nonnull %end_time, i64 noundef %add, i64 noundef %mul) #16
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %entry, %if.end
  %to.0 = phi %struct.timespec64* [ %end_time, %if.end ], [ null, %entry ]
  %.pre-phi = bitcast %struct.__kernel_old_timeval* %tvp to i8*
  %call9 = call i32 @core_sys_select(i32 noundef %n, %struct.__kernel_fd_set* noundef %inp, %struct.__kernel_fd_set* noundef %outp, %struct.__kernel_fd_set* noundef %exp, %struct.timespec64* noundef %to.0) #16
  %call10 = call fastcc i32 @poll_select_finish(%struct.timespec64* noundef nonnull %end_time, i8* noundef %.pre-phi, i32 noundef 0, i32 noundef %call9) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %if.end8
  %retval.0 = phi i32 [ %call10, %if.end8 ], [ -14, %if.then ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @poll_select_finish(%struct.timespec64* nocapture noundef readonly %end_time, i8* noundef %p, i32 noundef %pt_type, i32 noundef %ret) unnamed_addr #0 {
entry:
  %rts = alloca %struct.timespec64, align 8
  %rtv = alloca %struct.__kernel_old_timeval, align 8
  %rtv23 = alloca i64, align 8, !annotation !7
  %tmpcast = bitcast i64* %rtv23 to %struct.old_timeval32*, !annotation !7
  %0 = bitcast %struct.timespec64* %rts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %cmp = icmp eq i32 %ret, -514
  call fastcc void @restore_saved_sigmask_unless(i1 noundef %cmp) #16
  %tobool.not = icmp eq i8* %p, null
  br i1 %tobool.not, label %cleanup54, label %if.end

if.end:                                           ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %personality = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 44
  %3 = load i32, i32* %personality, align 16
  %and = and i32 %3, 67108864
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %sticky

if.end3:                                          ; preds = %if.end
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 0
  %4 = load i64, i64* %tv_sec, align 8
  %tobool4.not = icmp eq i64 %4, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 1
  %5 = load i64, i64* %tv_nsec, align 8
  %tobool5.not = icmp eq i64 %5, 0
  br i1 %tobool5.not, label %cleanup54, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end3
  call void @ktime_get_ts64(%struct.timespec64* noundef nonnull %rts) #17
  %.unpack = load i64, i64* %tv_sec, align 8
  %6 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %7 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 1
  %.unpack75 = load i64, i64* %7, align 8
  %8 = insertvalue [2 x i64] %6, i64 %.unpack75, 1
  %.fca.0.gep = getelementptr inbounds %struct.timespec64, %struct.timespec64* %rts, i64 0, i32 0
  %.fca.0.load = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %9 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %rts, i64 0, i32 1
  %.fca.1.load = load i64, i64* %9, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  %call8 = call fastcc [2 x i64] @timespec64_sub([2 x i64] %8, [2 x i64] %.fca.1.insert) #16
  %call8.fca.0.extract = extractvalue [2 x i64] %call8, 0
  %call8.fca.1.extract = extractvalue [2 x i64] %call8, 1
  store i64 %call8.fca.0.extract, i64* %.fca.0.gep, align 8
  store i64 %call8.fca.1.extract, i64* %9, align 8
  %cmp10 = icmp slt i64 %call8.fca.0.extract, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  store i64 0, i64* %9, align 8
  store i64 0, i64* %.fca.0.gep, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7
  %10 = phi i64 [ 0, %if.then11 ], [ %call8.fca.1.extract, %if.end7 ]
  %11 = phi i64 [ 0, %if.then11 ], [ %call8.fca.0.extract, %if.end7 ]
  switch i32 %pt_type, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb37
  ]

sw.bb:                                            ; preds = %if.end14
  %12 = bitcast %struct.__kernel_old_timeval* %rtv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #14
  %tv_sec16 = getelementptr inbounds %struct.__kernel_old_timeval, %struct.__kernel_old_timeval* %rtv, i64 0, i32 0
  store i64 %11, i64* %tv_sec16, align 8
  %div = sdiv i64 %10, 1000
  %tv_usec = getelementptr inbounds %struct.__kernel_old_timeval, %struct.__kernel_old_timeval* %rtv, i64 0, i32 1
  store i64 %div, i64* %tv_usec, align 8
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef nonnull %p, i8* noundef nonnull %12, i64 noundef 16) #17
  %tobool19.not = icmp eq i64 %call2.i, 0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #14
  br i1 %tobool19.not, label %cleanup54, label %sticky

sw.bb22:                                          ; preds = %if.end14
  %13 = bitcast i64* %rtv23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #14
  %conv = trunc i64 %11 to i32
  %tv_sec25 = bitcast i64* %rtv23 to i32*
  store i32 %conv, i32* %tv_sec25, align 8
  %div27 = sdiv i64 %10, 1000
  %conv28 = trunc i64 %div27 to i32
  %tv_usec29 = getelementptr inbounds %struct.old_timeval32, %struct.old_timeval32* %tmpcast, i64 0, i32 1
  store i32 %conv28, i32* %tv_usec29, align 4
  %call2.i76 = call fastcc i64 @_copy_to_user(i8* noundef nonnull %p, i8* noundef nonnull %13, i64 noundef 8) #17
  %tobool31.not = icmp eq i64 %call2.i76, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #14
  br i1 %tobool31.not, label %cleanup54, label %sticky

sw.bb37:                                          ; preds = %if.end14
  %14 = bitcast i8* %p to %struct.__kernel_timespec*
  %call38 = call i32 @put_timespec64(%struct.timespec64* noundef nonnull %rts, %struct.__kernel_timespec* noundef nonnull %14) #17
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup54, label %sticky

do.body:                                          ; preds = %if.end14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/select.c\22; .popsection; .long 14472b - 14470b; .short 353; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !21
  unreachable

sticky:                                           ; preds = %sw.bb, %sw.bb22, %sw.bb37, %if.end
  %spec.store.select = select i1 %cmp, i32 -4, i32 %ret
  br label %cleanup54

cleanup54:                                        ; preds = %sw.bb37, %land.lhs.true, %entry, %sw.bb, %sw.bb22, %sticky
  %retval.2 = phi i32 [ %spec.store.select, %sticky ], [ %ret, %sw.bb22 ], [ %ret, %sw.bb ], [ %ret, %entry ], [ %ret, %land.lhs.true ], [ %ret, %sw.bb37 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_saved_sigmask_unless(i1 noundef %interrupted) unnamed_addr #0 {
entry:
  br i1 %interrupted, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then11, label %if.end19, !prof !9

if.then11:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/sched/signal.h\22; .popsection; .long 14472b - 14470b; .short 515; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !22
  br label %if.end19

if.else:                                          ; preds = %entry
  call fastcc void @restore_saved_sigmask() #16
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.then11, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_saved_sigmask() unnamed_addr #0 {
entry:
  %call = call fastcc i1 @test_and_clear_restore_sigmask() #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %saved_sigmask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 91
  call void @__set_current_blocked(%struct.sigset_t* noundef %saved_sigmask) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_restore_sigmask() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1 = call fastcc i32 @test_and_clear_ti_thread_flag(%struct.thread_info* noundef %2) #16
  %tobool = icmp ne i32 %call1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(%struct.sigset_t* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_and_clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %call = call fastcc i1 @test_and_clear_bit(i64* noundef %flags) #16
  %conv1 = zext i1 %call to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1048576
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #17
  %2 = and i64 %call.i.i.i, 1048576
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
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1048576, i64* elementtype(i64) %counter) #14, !srcloc !23
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #16
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #16
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #17
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pselect6(i32 noundef %n, %struct.__kernel_fd_set* noundef %inp, %struct.__kernel_fd_set* noundef %outp, %struct.__kernel_fd_set* noundef %exp, %struct.__kernel_timespec* noundef %tsp, i8* noundef %sig) unnamed_addr #0 {
entry:
  %x = alloca %struct.sigset_argpack, align 8
  %0 = bitcast %struct.sigset_argpack* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %1 = bitcast i8* %sig to %struct.sigset_argpack*
  %call = call fastcc i32 @get_sigset_argpack(%struct.sigset_argpack* noundef nonnull %x, %struct.sigset_argpack* noundef %1) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.__kernel_timespec* %tsp to i8*
  %p = getelementptr inbounds %struct.sigset_argpack, %struct.sigset_argpack* %x, i64 0, i32 0
  %3 = load %struct.sigset_t*, %struct.sigset_t** %p, align 8
  %size = getelementptr inbounds %struct.sigset_argpack, %struct.sigset_argpack* %x, i64 0, i32 1
  %4 = load i64, i64* %size, align 8
  %call1 = call fastcc i64 @do_pselect(i32 noundef %n, %struct.__kernel_fd_set* noundef %inp, %struct.__kernel_fd_set* noundef %outp, %struct.__kernel_fd_set* noundef %exp, i8* noundef %2, %struct.sigset_t* noundef %3, i64 noundef %4) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_sigset_argpack(%struct.sigset_argpack* nocapture noundef writeonly %to, %struct.sigset_argpack* noundef %from) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.sigset_argpack* %from, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.sigset_argpack* %from to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef nonnull %0, i64 noundef 16) #16
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %return, label %do.body

do.body:                                          ; preds = %if.then
  %call4 = call fastcc i64 @__range_ok(i8* noundef nonnull %0, i64 noundef 8) #16
  %tobool5.not = icmp eq i64 %call4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.body
  %call7 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %0) #16
  %1 = bitcast i8* %call7 to %struct.sigset_t**
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(%struct.sigset_t** %1, i32 -14, i32 0) #14, !srcloc !24
  %asmresult = extractvalue { i32, i64 } %2, 0
  %asmresult11 = extractvalue { i32, i64 } %2, 1
  %3 = inttoptr i64 %asmresult11 to %struct.sigset_t*
  %p12 = getelementptr inbounds %struct.sigset_argpack, %struct.sigset_argpack* %to, i64 0, i32 0
  store %struct.sigset_t* %3, %struct.sigset_t** %p12, align 8
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %do.body27, label %do.end71, !prof !11

if.else:                                          ; preds = %do.body
  %p16 = getelementptr inbounds %struct.sigset_argpack, %struct.sigset_argpack* %to, i64 0, i32 0
  store %struct.sigset_t* null, %struct.sigset_t** %p16, align 8
  br label %do.end71

do.body27:                                        ; preds = %if.then6
  %size = getelementptr inbounds %struct.sigset_argpack, %struct.sigset_argpack* %from, i64 0, i32 1
  %4 = bitcast i64* %size to i8*
  %call31 = call fastcc i64 @__range_ok(i8* noundef %4, i64 noundef 8) #16
  %tobool32.not = icmp eq i64 %call31, 0
  br i1 %tobool32.not, label %if.else47, label %if.then33

if.then33:                                        ; preds = %do.body27
  %call34 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %4) #16
  %5 = bitcast i8* %call34 to i64*
  %6 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %5, i32 -14, i32 0) #14, !srcloc !25
  %asmresult39 = extractvalue { i32, i64 } %6, 0
  %asmresult40 = extractvalue { i32, i64 } %6, 1
  %size41 = getelementptr inbounds %struct.sigset_argpack, %struct.sigset_argpack* %to, i64 0, i32 1
  store i64 %asmresult40, i64* %size41, align 8
  %phi.cmp90 = icmp eq i32 %asmresult39, 0
  br i1 %phi.cmp90, label %return, label %do.end71, !prof !11

if.else47:                                        ; preds = %do.body27
  %size48 = getelementptr inbounds %struct.sigset_argpack, %struct.sigset_argpack* %to, i64 0, i32 1
  store i64 0, i64* %size48, align 8
  br label %do.end71

do.end71:                                         ; preds = %if.else47, %if.else, %if.then33, %if.then6
  br label %return

return:                                           ; preds = %entry, %if.then33, %if.then, %do.end71
  %retval.0 = phi i32 [ -14, %do.end71 ], [ -14, %if.then ], [ 0, %if.then33 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_pselect(i32 noundef %n, %struct.__kernel_fd_set* noundef %inp, %struct.__kernel_fd_set* noundef %outp, %struct.__kernel_fd_set* noundef %exp, i8* noundef %tsp, %struct.sigset_t* noundef %sigmask, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %end_time = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %1 = bitcast %struct.timespec64* %end_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq i8* %tsp, null
  br i1 %tobool.not, label %if.end15, label %sw.bb

sw.bb:                                            ; preds = %entry
  %2 = bitcast i8* %tsp to %struct.__kernel_timespec*
  %call = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %ts, %struct.__kernel_timespec* noundef nonnull %2) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %sw.epilog, label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %4 = load i64, i64* %tv_nsec, align 8
  %call11 = call i32 @poll_select_set_timeout(%struct.timespec64* noundef nonnull %end_time, i64 noundef %3, i64 noundef %4) #16
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %sw.epilog, %entry
  %to.0 = phi %struct.timespec64* [ %end_time, %sw.epilog ], [ null, %entry ]
  %call16 = call i32 @set_user_sigmask(%struct.sigset_t* noundef %sigmask, i64 noundef %sigsetsize) #17
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  %conv = sext i32 %call16 to i64
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = call i32 @core_sys_select(i32 noundef %n, %struct.__kernel_fd_set* noundef %inp, %struct.__kernel_fd_set* noundef %outp, %struct.__kernel_fd_set* noundef %exp, %struct.timespec64* noundef %to.0) #16
  %call21 = call fastcc i32 @poll_select_finish(%struct.timespec64* noundef nonnull %end_time, i8* noundef %tsp, i32 noundef 2, i32 noundef %call20) #16
  %conv22 = sext i32 %call21 to i64
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %if.end19, %if.then18
  %retval.0 = phi i64 [ %conv, %if.then18 ], [ %conv22, %if.end19 ], [ -14, %sw.bb ], [ -22, %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_user_sigmask(%struct.sigset_t* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_poll(%struct.pollfd* noundef %ufds, i32 noundef %nfds, i32 noundef %timeout_msecs) unnamed_addr #0 {
entry:
  %end_time = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %end_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %cmp = icmp sgt i32 %timeout_msecs, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %div4344 = udiv i32 %timeout_msecs, 1000
  %div43.zext = zext i32 %div4344 to i64
  %1 = mul i32 %div4344, 1000
  %rem4546.decomposed = sub i32 %timeout_msecs, %1
  %narrow = mul nuw nsw i32 %rem4546.decomposed, 1000000
  %mul = zext i32 %narrow to i64
  %call = call i32 @poll_select_set_timeout(%struct.timespec64* noundef nonnull %end_time, i64 noundef %div43.zext, i64 noundef %mul) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %to.0 = phi %struct.timespec64* [ %end_time, %if.then ], [ null, %entry ]
  %call2 = call fastcc i32 @do_sys_poll(%struct.pollfd* noundef %ufds, i32 noundef %nfds, %struct.timespec64* noundef %to.0) #16
  %cmp3 = icmp eq i32 %call2, -514
  br i1 %cmp3, label %if.then5, label %if.end24

if.then5:                                         ; preds = %if.end
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %restart_block7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49
  %4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49, i32 2
  %ufds8 = bitcast %union.anon.120* %4 to %struct.pollfd**
  store %struct.pollfd* %ufds, %struct.pollfd** %ufds8, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49, i32 2, i32 0, i32 1
  store i32 %nfds, i32* %5, align 8
  br i1 %cmp, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.then5
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 0
  %6 = load i64, i64* %tv_sec, align 8
  %tv_sec15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49, i32 2, i32 0, i32 3
  %7 = bitcast i32* %tv_sec15 to i64*
  store i64 %6, i64* %7, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 1
  %8 = load i64, i64* %tv_nsec, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49, i32 2, i32 0, i32 4
  store i64 %8, i64* %9, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then5, %if.then13
  %.sink = phi i32 [ 1, %if.then13 ], [ 0, %if.then5 ]
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 49, i32 2, i32 0, i32 2
  store i32 %.sink, i32* %10, align 4
  call fastcc void @set_restart_fn(%struct.restart_block* noundef %restart_block7) #16
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end
  %ret.0 = phi i32 [ -516, %if.end21 ], [ %call2, %if.end ]
  %conv25 = sext i32 %ret.0 to i64
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %conv25
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_sys_poll(%struct.pollfd* noundef %ufds, i32 noundef %nfds, %struct.timespec64* noundef %end_time) unnamed_addr #0 {
entry:
  %table = alloca %struct.poll_wqueues, align 8
  %stack_pps = alloca [32 x i64], align 8
  %0 = bitcast %struct.poll_wqueues* %table to i8*
  call void @llvm.lifetime.start.p0i8(i64 560, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(560) %0, i8 0, i64 560, i1 false), !annotation !7
  %1 = bitcast [32 x i64]* %stack_pps to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(256) %1, i8 0, i64 256, i1 false), !annotation !7
  %2 = bitcast [32 x i64]* %stack_pps to %struct.poll_list*
  %.sroa.gep178 = getelementptr inbounds [32 x i64], [32 x i64]* %stack_pps, i64 0, i64 1
  %3 = bitcast i64* %.sroa.gep178 to i32*
  %.sroa.gep = bitcast [32 x i64]* %stack_pps to %struct.poll_list**
  %conv = zext i32 %nfds to i64
  %call = call fastcc i64 @rlimit() #16
  %cmp = icmp ult i64 %call, %conv
  br i1 %cmp, label %cleanup90, label %if.end

if.end:                                           ; preds = %entry
  %.sroa.gep153 = getelementptr inbounds [32 x i64], [32 x i64]* %stack_pps, i64 0, i64 1
  %4 = bitcast i64* %.sroa.gep153 to i32*
  %cmp3 = icmp ult i32 %nfds, 30
  %add.ptr = getelementptr %struct.pollfd, %struct.pollfd* %ufds, i64 %conv
  %spec.select = select i1 %cmp3, i32 %nfds, i32 30
  br label %for.cond

for.cond:                                         ; preds = %if.end, %if.end20
  %todo.0 = phi i64 [ %sub, %if.end20 ], [ %conv, %if.end ]
  %walk.0 = phi %struct.poll_list* [ %9, %if.end20 ], [ %2, %if.end ]
  %len.0 = phi i32 [ %conv28, %if.end20 ], [ %spec.select, %if.end ]
  %walk.0.sroa.phi = phi %struct.poll_list** [ %.sroa.gep151, %if.end20 ], [ %.sroa.gep, %if.end ]
  %walk.0.sroa.phi152 = phi i32* [ %10, %if.end20 ], [ %4, %if.end ]
  store %struct.poll_list* null, %struct.poll_list** %walk.0.sroa.phi, align 8
  store i32 %len.0, i32* %walk.0.sroa.phi152, align 8
  %tobool.not = icmp eq i32 %len.0, 0
  br i1 %tobool.not, label %for.end, label %if.end7

if.end7:                                          ; preds = %for.cond
  %len10 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %walk.0, i64 0, i32 1
  %5 = load i32, i32* %len10, align 8
  %conv11 = sext i32 %5 to i64
  %mul = shl nsw i64 %conv11, 3
  %cmp11.i.i = icmp ugt i64 %mul, 2147483647
  br i1 %cmp11.i.i, label %copy_from_user.exit.thread, label %copy_from_user.exit, !prof !9

copy_from_user.exit.thread:                       ; preds = %if.end7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !10
  br label %out_fds

copy_from_user.exit:                              ; preds = %if.end7
  %idx.neg = sub i64 0, %todo.0
  %add.ptr9 = getelementptr %struct.pollfd, %struct.pollfd* %add.ptr, i64 %idx.neg
  %6 = bitcast %struct.pollfd* %add.ptr9 to i8*
  %arraydecay8 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %walk.0, i64 0, i32 2, i64 0
  %7 = bitcast %struct.pollfd* %arraydecay8 to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %7, i8* noundef %6, i64 noundef %mul) #17
  %tobool13.not = icmp eq i64 %call2.i, 0
  br i1 %tobool13.not, label %if.end15, label %out_fds

if.end15:                                         ; preds = %copy_from_user.exit
  %8 = load i32, i32* %len10, align 8
  %conv17 = sext i32 %8 to i64
  %sub = sub i64 %todo.0, %conv17
  %tobool18.not = icmp eq i64 %sub, 0
  br i1 %tobool18.not, label %for.end, label %if.end20

if.end20:                                         ; preds = %if.end15
  %cmp22 = icmp ult i64 %sub, 510
  %cond27 = select i1 %cmp22, i64 %sub, i64 510
  %conv28 = trunc i64 %cond27 to i32
  %call30 = call fastcc i64 @__ab_c_size(i64 noundef %cond27) #16
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %call30, i32 noundef 3264) #17
  %9 = bitcast i8* %call10.i to %struct.poll_list*
  %.sroa.gep154 = getelementptr inbounds i8, i8* %call10.i, i64 8
  %10 = bitcast i8* %.sroa.gep154 to i32*
  %.sroa.gep151 = bitcast i8* %call10.i to %struct.poll_list**
  %11 = bitcast %struct.poll_list* %walk.0 to i8**
  store i8* %call10.i, i8** %11, align 8
  %tobool33.not = icmp eq i8* %call10.i, null
  br i1 %tobool33.not, label %out_fds, label %for.cond

for.end:                                          ; preds = %if.end15, %for.cond
  call void @poll_initwait(%struct.poll_wqueues* noundef nonnull %table) #16
  %call36 = call fastcc i32 @do_poll(%struct.poll_list* noundef nonnull %2, %struct.poll_wqueues* noundef nonnull %table, %struct.timespec64* noundef %end_time) #16
  call void @poll_freewait(%struct.poll_wqueues* noundef nonnull %table) #16
  %12 = bitcast %struct.pollfd* %ufds to i8*
  %mul38 = shl nuw nsw i64 %conv, 3
  %call39 = call fastcc i64 @__range_ok(i8* noundef %12, i64 noundef %mul38) #16
  %tobool40.not = icmp eq i64 %call39, 0
  br i1 %tobool40.not, label %out_fds, label %for.body

for.body:                                         ; preds = %for.end, %for.inc78
  %ufds.addr.0169 = phi %struct.pollfd* [ %ufds.addr.1.lcssa, %for.inc78 ], [ %ufds, %for.end ]
  %walk.1168 = phi %struct.poll_list* [ %18, %for.inc78 ], [ %2, %for.end ]
  %walk.1168.sroa.phi176 = phi i32* [ %.sroa.gep177, %for.inc78 ], [ %3, %for.end ]
  %13 = load i32, i32* %walk.1168.sroa.phi176, align 8
  %tobool49.not164 = icmp eq i32 %13, 0
  br i1 %tobool49.not164, label %for.inc78, label %do.body.preheader

do.body.preheader:                                ; preds = %for.body
  %walk.1168.sroa.phi = getelementptr inbounds %struct.poll_list, %struct.poll_list* %walk.1168, i64 0, i32 2, i64 0
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %for.inc
  %ufds.addr.1167 = phi %struct.pollfd* [ %incdec.ptr75, %for.inc ], [ %ufds.addr.0169, %do.body.preheader ]
  %j.0166 = phi i32 [ %dec, %for.inc ], [ %13, %do.body.preheader ]
  %fds.0165 = phi %struct.pollfd* [ %incdec.ptr, %for.inc ], [ %walk.1168.sroa.phi, %do.body.preheader ]
  %revents = getelementptr inbounds %struct.pollfd, %struct.pollfd* %ufds.addr.1167, i64 0, i32 2
  %14 = bitcast i16* %revents to i8*
  %call52 = call fastcc i64 @__range_ok(i8* noundef %14, i64 noundef 2) #16
  %tobool53.not = icmp eq i64 %call52, 0
  br i1 %tobool53.not, label %out_fds, label %if.end63

if.end63:                                         ; preds = %do.body
  %call55 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %14) #16
  %15 = bitcast i8* %call55 to i16*
  %revents59 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %fds.0165, i64 0, i32 2
  %16 = load i16, i16* %revents59, align 2
  %17 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %16, i16* %15, i32 -14, i32 0) #14, !srcloc !26
  %tobool67.not = icmp eq i32 %17, 0
  br i1 %tobool67.not, label %for.inc, label %out_fds, !prof !11

for.inc:                                          ; preds = %if.end63
  %incdec.ptr = getelementptr %struct.pollfd, %struct.pollfd* %fds.0165, i64 1
  %incdec.ptr75 = getelementptr %struct.pollfd, %struct.pollfd* %ufds.addr.1167, i64 1
  %dec = add i32 %j.0166, -1
  %tobool49.not = icmp eq i32 %dec, 0
  br i1 %tobool49.not, label %for.inc78, label %do.body

for.inc78:                                        ; preds = %for.inc, %for.body
  %ufds.addr.1.lcssa = phi %struct.pollfd* [ %ufds.addr.0169, %for.body ], [ %incdec.ptr75, %for.inc ]
  %next79 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %walk.1168, i64 0, i32 0
  %18 = load %struct.poll_list*, %struct.poll_list** %next79, align 8
  %.sroa.gep177 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %18, i64 0, i32 1
  %tobool44.not = icmp eq %struct.poll_list* %18, null
  br i1 %tobool44.not, label %out_fds, label %for.body

out_fds:                                          ; preds = %if.end20, %copy_from_user.exit, %for.inc78, %do.body, %if.end63, %copy_from_user.exit.thread, %for.end
  %err.0 = phi i32 [ -14, %for.end ], [ -14, %copy_from_user.exit.thread ], [ -14, %if.end63 ], [ -14, %do.body ], [ %call36, %for.inc78 ], [ -12, %if.end20 ], [ -14, %copy_from_user.exit ]
  %19 = load %struct.poll_list*, %struct.poll_list** %.sroa.gep, align 8
  %tobool85.not170 = icmp eq %struct.poll_list* %19, null
  br i1 %tobool85.not170, label %cleanup90, label %while.body

while.body:                                       ; preds = %out_fds, %while.body
  %walk.2171 = phi %struct.poll_list* [ %20, %while.body ], [ %19, %out_fds ]
  %next86 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %walk.2171, i64 0, i32 0
  %20 = load %struct.poll_list*, %struct.poll_list** %next86, align 8
  %21 = bitcast %struct.poll_list* %walk.2171 to i8*
  call void @kfree(i8* noundef nonnull %21) #17
  %tobool85.not = icmp eq %struct.poll_list* %20, null
  br i1 %tobool85.not, label %cleanup90, label %while.body

cleanup90:                                        ; preds = %while.body, %out_fds, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %err.0, %out_fds ], [ %err.0, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 560, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_restart_fn(%struct.restart_block* nocapture noundef writeonly %restart) unnamed_addr #7 {
entry:
  %fn1 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart, i64 0, i32 1
  store i64 (%struct.restart_block*)* @do_restart_poll, i64 (%struct.restart_block*)** %fn1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @do_restart_poll(%struct.restart_block* nocapture noundef %restart_block) #0 {
entry:
  %end_time = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart_block, i64 0, i32 2
  %ufds1 = bitcast %union.anon.120* %0 to %struct.pollfd**
  %1 = load %struct.pollfd*, %struct.pollfd** %ufds1, align 8
  %2 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart_block, i64 0, i32 2, i32 0, i32 1
  %3 = load i32, i32* %2, align 8
  %4 = bitcast %struct.timespec64* %end_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !7
  %5 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart_block, i64 0, i32 2, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart_block, i64 0, i32 2, i32 0, i32 3
  %7 = bitcast i32* %tv_sec to i64*
  %8 = load i64, i64* %7, align 8
  %tv_sec6 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 0
  store i64 %8, i64* %tv_sec6, align 8
  %9 = getelementptr inbounds %struct.restart_block, %struct.restart_block* %restart_block, i64 0, i32 2, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %tv_nsec8 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 1
  store i64 %10, i64* %tv_nsec8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %to.0 = phi %struct.timespec64* [ %end_time, %if.then ], [ null, %entry ]
  %call = call fastcc i32 @do_sys_poll(%struct.pollfd* noundef %1, i32 noundef %3, %struct.timespec64* noundef %to.0) #16
  %cmp = icmp eq i32 %call, -514
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call fastcc void @set_restart_fn(%struct.restart_block* noundef %restart_block) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %ret.0 = phi i32 [ -516, %if.then9 ], [ %call, %if.end ]
  %conv12 = sext i32 %ret.0 to i64
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #14
  ret i64 %conv12
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #16
  ret i64 %call1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ab_c_size(i64 noundef %a) unnamed_addr #11 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %2, i64 16)
  %retval.0 = select i1 %1, i64 -1, i64 %spec.select
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_poll(%struct.poll_list* noundef %list, %struct.poll_wqueues* noundef %wait, %struct.timespec64* noundef readonly %end_time) unnamed_addr #0 {
entry:
  %expire = alloca i64, align 8
  %pt1 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %wait, i64 0, i32 0
  %0 = bitcast i64* %expire to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i64 0, i64* %expire, align 8, !annotation !7
  %tobool2.not = icmp eq %struct.timespec64* %end_time, null
  br i1 %tobool2.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %tobool3.not = icmp eq i64 %1, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %if.then9

land.lhs.true4:                                   ; preds = %land.lhs.true
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %tobool5.not = icmp eq i64 %2, 0
  br i1 %tobool5.not, label %if.then, label %if.then9

if.then:                                          ; preds = %land.lhs.true4
  %_qproc = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %wait, i64 0, i32 0, i32 0
  store void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* null, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true, %land.lhs.true4
  %call10 = call i64 @select_estimate_accuracy(%struct.timespec64* noundef nonnull %end_time) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then, %entry, %if.then9
  %timed_out.0109 = phi i32 [ 0, %if.then9 ], [ 0, %entry ], [ 1, %if.then ]
  %slack.0 = phi i64 [ %call10, %if.then9 ], [ 0, %entry ], [ 0, %if.then ]
  %_qproc23 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %wait, i64 0, i32 0, i32 0
  %cmp.not125 = icmp eq %struct.poll_list* %list, null
  %error = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %wait, i64 0, i32 4
  %.elt = getelementptr %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 0
  %3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %end_time, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end53, %if.end11
  %to.0 = phi i64* [ null, %if.end11 ], [ %to.1, %if.end53 ]
  %timed_out.1 = phi i32 [ %timed_out.0109, %if.end11 ], [ %spec.select105, %if.end53 ]
  br i1 %cmp.not125, label %for.end22.thread, label %for.body

for.end22.thread:                                 ; preds = %for.cond
  store void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* null, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc23, align 8
  br label %if.end31

for.body:                                         ; preds = %for.cond, %for.end
  %walk.0127 = phi %struct.poll_list* [ %5, %for.end ], [ %list, %for.cond ]
  %count.1126 = phi i32 [ %count.2.lcssa, %for.end ], [ 0, %for.cond ]
  %arraydecay = getelementptr inbounds %struct.poll_list, %struct.poll_list* %walk.0127, i64 0, i32 2, i64 0
  %len = getelementptr inbounds %struct.poll_list, %struct.poll_list* %walk.0127, i64 0, i32 1
  %4 = load i32, i32* %len, align 8
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr %struct.poll_list, %struct.poll_list* %walk.0127, i64 0, i32 2, i64 %idx.ext
  %cmp14.not122 = icmp eq %struct.pollfd* %arraydecay, %add.ptr
  br i1 %cmp14.not122, label %for.end, label %for.body15

for.body15:                                       ; preds = %for.body, %for.inc
  %pfd.0124 = phi %struct.pollfd* [ %incdec.ptr, %for.inc ], [ %arraydecay, %for.body ]
  %count.2123 = phi i32 [ %count.3, %for.inc ], [ %count.1126, %for.body ]
  %call16 = call fastcc i32 @do_pollfd(%struct.pollfd* noundef %pfd.0124, %struct.poll_table_struct* noundef %pt1) #16
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.inc, label %if.then18

if.then18:                                        ; preds = %for.body15
  %inc = add i32 %count.2123, 1
  store void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* null, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body15, %if.then18
  %count.3 = phi i32 [ %inc, %if.then18 ], [ %count.2123, %for.body15 ]
  %incdec.ptr = getelementptr %struct.pollfd, %struct.pollfd* %pfd.0124, i64 1
  %cmp14.not = icmp eq %struct.pollfd* %incdec.ptr, %add.ptr
  br i1 %cmp14.not, label %for.end, label %for.body15

for.end:                                          ; preds = %for.inc, %for.body
  %count.2.lcssa = phi i32 [ %count.1126, %for.body ], [ %count.3, %for.inc ]
  %next = getelementptr inbounds %struct.poll_list, %struct.poll_list* %walk.0127, i64 0, i32 0
  %5 = load %struct.poll_list*, %struct.poll_list** %next, align 8
  %cmp.not = icmp eq %struct.poll_list* %5, null
  br i1 %cmp.not, label %for.end22, label %for.body

for.end22:                                        ; preds = %for.end
  store void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* null, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc23, align 8
  %tobool24.not = icmp eq i32 %count.2.lcssa, 0
  br i1 %tobool24.not, label %if.end31, label %for.end59

if.end31:                                         ; preds = %for.end22.thread, %for.end22
  %6 = load i32, i32* %error, align 4
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #15, !srcloc !8
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %call27 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %8) #16
  %tobool28.not = icmp eq i32 %call27, 0
  %spec.select = select i1 %tobool28.not, i32 %6, i32 -514
  %tobool32 = icmp ne i32 %spec.select, 0
  %tobool33 = icmp ne i32 %timed_out.1, 0
  %or.cond68 = select i1 %tobool32, i1 true, i1 %tobool33
  br i1 %or.cond68, label %for.end59, label %if.end47

if.end47:                                         ; preds = %if.end31
  %tobool50 = icmp ne i64* %to.0, null
  %or.cond69 = or i1 %tobool2.not, %tobool50
  br i1 %or.cond69, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end47
  %.unpack = load i64, i64* %.elt, align 8
  %9 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.unpack104 = load i64, i64* %3, align 8
  %10 = insertvalue [2 x i64] %9, i64 %.unpack104, 1
  %call52 = call fastcc i64 @timespec64_to_ktime([2 x i64] %10) #16
  store i64 %call52, i64* %expire, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end47
  %to.1 = phi i64* [ %to.0, %if.end47 ], [ %expire, %if.then51 ]
  %call54 = call fastcc i32 @poll_schedule_timeout(%struct.poll_wqueues* noundef %wait, i64* noundef %to.1, i64 noundef %slack.0) #16
  %tobool55.not = icmp eq i32 %call54, 0
  %spec.select105 = zext i1 %tobool55.not to i32
  br label %for.cond

for.end59:                                        ; preds = %for.end22, %if.end31
  %count.4114.ph = phi i32 [ %spec.select, %if.end31 ], [ %count.2.lcssa, %for.end22 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %count.4114.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #8 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 7, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_pollfd(%struct.pollfd* nocapture noundef %pollfd, %struct.poll_table_struct* noundef %pwait) unnamed_addr #0 {
entry:
  %fd1 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %pollfd, i64 0, i32 0
  %0 = load i32, i32* %fd1, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc [2 x i64] @fdget(i32 noundef %0) #16
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %out, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %events = getelementptr inbounds %struct.pollfd, %struct.pollfd* %pollfd, i64 0, i32 1
  %2 = load i16, i16* %events, align 4
  %call4 = call fastcc i32 @demangle_poll(i16 noundef %2) #16
  %or5 = or i32 %call4, 24
  %_key = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %pwait, i64 0, i32 1
  store i32 %or5, i32* %_key, align 8
  %call8 = call fastcc i32 @vfs_poll(%struct.file* noundef nonnull %1, %struct.poll_table_struct* noundef %pwait) #16
  %and12 = and i32 %call8, %or5
  call fastcc void @fdput([2 x i64] %call) #16
  br label %out

out:                                              ; preds = %if.end, %entry, %if.end3
  %mask.0 = phi i32 [ 0, %entry ], [ %and12, %if.end3 ], [ 32, %if.end ]
  %call13 = call fastcc i16 @mangle_poll(i32 noundef %mask.0) #16
  %revents = getelementptr inbounds %struct.pollfd, %struct.pollfd* %pollfd, i64 0, i32 2
  store i16 %call13, i16* %revents, align 2
  ret i32 %mask.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @demangle_poll(i16 noundef %val) unnamed_addr #9 {
entry:
  %0 = and i16 %val, 10239
  %or43 = zext i16 %0 to i32
  ret i32 %or43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i16 @mangle_poll(i32 noundef %val) unnamed_addr #9 {
entry:
  %0 = trunc i32 %val to i16
  %conv45 = and i16 %0, 10239
  ret i16 %conv45
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_ppoll(%struct.pollfd* noundef %ufds, i32 noundef %nfds, %struct.__kernel_timespec* noundef %tsp, %struct.sigset_t* noundef %sigmask, i64 noundef %sigsetsize) unnamed_addr #0 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %end_time = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %1 = bitcast %struct.timespec64* %end_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.__kernel_timespec* %tsp, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %ts, %struct.__kernel_timespec* noundef nonnull %tsp) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %3 = load i64, i64* %tv_nsec, align 8
  %call3 = call i32 @poll_select_set_timeout(%struct.timespec64* noundef nonnull %end_time, i64 noundef %2, i64 noundef %3) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end, %entry
  %to.0 = phi %struct.timespec64* [ %end_time, %if.end ], [ null, %entry ]
  %call8 = call i32 @set_user_sigmask(%struct.sigset_t* noundef %sigmask, i64 noundef %sigsetsize) #17
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  %conv = sext i32 %call8 to i64
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call fastcc i32 @do_sys_poll(%struct.pollfd* noundef %ufds, i32 noundef %nfds, %struct.timespec64* noundef %to.0) #16
  %4 = bitcast %struct.__kernel_timespec* %tsp to i8*
  %call13 = call fastcc i32 @poll_select_finish(%struct.timespec64* noundef nonnull %end_time, i8* noundef %4, i32 noundef 2, i32 noundef %call12) #16
  %conv14 = sext i32 %call13 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %if.end11, %if.then10
  %retval.0 = phi i64 [ %conv, %if.then10 ], [ %conv14, %if.end11 ], [ -14, %if.then ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i64 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #13

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { noinline nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 1483296}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148997668}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2147795541, i64 2147796055, i64 2147796085, i64 2147796111, i64 2147796143, i64 2147796172}
!13 = !{i64 2157934514}
!14 = !{i64 2149410917}
!15 = !{i64 2149411134}
!16 = !{i64 3064526, i64 3064609, i64 3064833, i64 3065053, i64 3065076}
!17 = !{i64 3069228, i64 3069252}
!18 = !{i64 2150868686}
!19 = !{i64 2157941045}
!20 = !{i64 2157945424}
!21 = !{i64 2157946397}
!22 = !{i64 2151233006}
!23 = !{i64 2147835358, i64 2147836020, i64 2147836050, i64 2147836081, i64 2147836113, i64 2147836148, i64 2147836173}
!24 = !{i64 2157985908, i64 2157985948, i64 2157985965, i64 2157986000, i64 2157986022, i64 2157986048, i64 2157986071, i64 2157986089, i64 2157986104, i64 2157986145, i64 2157986167, i64 2157986213}
!25 = !{i64 2157995653, i64 2157995693, i64 2157995710, i64 2157995745, i64 2157995767, i64 2157995793, i64 2157995816, i64 2157995834, i64 2157995849, i64 2157995890, i64 2157995912, i64 2157995958}
!26 = !{i64 2158031062, i64 2158031106, i64 2158031123, i64 2158031157, i64 2158031179, i64 2158031205, i64 2158031223, i64 2158031238, i64 2158031279, i64 2158031301, i64 2158031347}
