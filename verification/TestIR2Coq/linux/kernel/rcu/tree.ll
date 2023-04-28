; ModuleID = 'kernel/rcu/tree.c'
source_filename = "kernel/rcu/tree.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_tree__592_4447_rcu_spawn_gp_kthreadearly:\09\09\09"
module asm ".long\09rcu_spawn_gp_kthread - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_tree__603_107_check_cpu_stall_initearly:\09\09\09"
module asm ".long\09check_cpu_stall_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_tree__691_993_rcu_sysrq_initearly:\09\09\09"
module asm ".long\09rcu_sysrq_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.rcu_data = type { i64, i64, %union.rcu_noqs, i8, i8, i8, i8, i8, %struct.rcu_node*, i64, i64, %struct.irq_work, i8, %struct.work_struct, %struct.rcu_segcblist, i64, i64, i64, i64, i32, i64, i64, %struct.atomic_t, i8, i8, i8, i8, %struct.callback_head, i32, %struct.task_struct*, i32, i8, i32, %struct.irq_work, i8, i64, i64, i16, i64, i16, i64, i32 }
%union.rcu_noqs = type { i16 }
%struct.rcu_node = type { %struct.raw_spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8, i8, i8, %struct.rcu_node*, %struct.list_head, %struct.list_head*, %struct.list_head*, %struct.list_head*, %struct.rt_mutex, i64, %struct.task_struct*, i32, i64, [8 x i8], %struct.raw_spinlock, [60 x i8], %struct.spinlock, i64, [4 x %struct.wait_queue_head], %struct.rcu_exp_work, i8, [39 x i8] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rcu_exp_work = type { i64, %struct.work_struct }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.75, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.1 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.3, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.3 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.4, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.5, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.4 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.5 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.6, %union.anon.56, %struct.atomic_t, [8 x i8] }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.80, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.32, %struct.list_head, %struct.list_head, %union.anon.33 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.13, i8* }
%union.anon.13 = type { i64 }
%struct.lockref = type { %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.17, i32 }
%union.anon.17 = type { %struct.kuid_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.18, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.18 = type { %struct.kernfs_elem_dir }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.19, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.19 = type {}
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
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.20, %union.anon.21, %union.anon.22, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.27, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.20 = type { %struct.hlist_node }
%union.anon.21 = type { %struct.rb_node }
%union.anon.22 = type { %struct.anon.26 }
%struct.anon.26 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.27 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.24, %union.anon.25, i32 }
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
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
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.78 = type { %struct.callback_head }
%union.anon.79 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.34 }
%union.anon.34 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.35, %union.anon.36 }
%union.anon.35 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.36 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.40 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.38, %struct.qspinlock }
%union.anon.38 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.40 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.80 = type { %struct.pipe_inode_info* }
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
%union.anon.56 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29, [48 x i8] }
%struct.anon.29 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.file = type { %union.anon.12, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.12 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.57 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.42 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.42 = type { %struct.callback_head }
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
%struct.rt_mutex_waiter = type { %struct.rb_node, %struct.rb_node, %struct.task_struct*, %struct.rt_mutex_base*, i32, i32, i64, %struct.ww_acquire_ctx* }
%struct.ww_acquire_ctx = type { %struct.task_struct*, i64, i32, i16, i16 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.62 }
%struct.anon.62 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.66 }
%struct.anon.66 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.74, i32, [12 x i8] }
%union.anon.74 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.75 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.76, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.76 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.irq_work = type { %struct.__call_single_node, void (%struct.irq_work*)* }
%struct.rcu_state = type { [17 x %struct.rcu_node], [3 x %struct.rcu_node*], i32, i32, [32 x i8], i8, i64, i64, %struct.task_struct*, %struct.swait_queue_head, i16, i16, i64, i64, %struct.mutex, %struct.atomic_t, %struct.completion, i64, %struct.mutex, %struct.mutex, i64, %struct.atomic_t, %struct.swait_queue_head, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8, [23 x i8], %struct.raw_spinlock, [60 x i8] }
%struct.kfree_rcu_cpu = type { %struct.callback_head*, [2 x %struct.kvfree_rcu_bulk_data*], [2 x %struct.kfree_rcu_cpu_work], %struct.raw_spinlock, %struct.delayed_work, i8, i8, i32, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.hrtimer, %struct.llist_head, i32 }
%struct.kvfree_rcu_bulk_data = type { i64, %struct.kvfree_rcu_bulk_data*, [0 x i8*] }
%struct.kfree_rcu_cpu_work = type { %struct.rcu_work, %struct.callback_head*, [2 x %struct.kvfree_rcu_bulk_data*], %struct.kfree_rcu_cpu* }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, %struct.workqueue_struct* }
%struct.llist_head = type { %struct.llist_node* }
%struct.kernel_stat = type { i64, [10 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.smp_hotplug_thread = type { %struct.task_struct**, %struct.list_head, i32 (i32)*, void (i32)*, void (i32)*, void (i32)*, void (i32, i1)*, void (i32)*, void (i32)*, i8, i8* }
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.notifier_block = type { {}*, %struct.notifier_block*, i32 }
%struct.anon.81 = type { i8, i8 }
%struct.anon = type { i32, i32 }
%struct.rcu_synchronize = type { %struct.callback_head, %struct.completion }
%struct.sched_param = type { i32 }
%struct.softirq_action = type { {}* }
%struct.swait_queue = type { %struct.task_struct*, %struct.list_head }
%struct.rcu_cblist = type { %struct.callback_head*, %struct.callback_head**, i64 }

@__param_str_dump_tree = internal constant [18 x i8] c"rcutree.dump_tree\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@dump_tree = internal global i8 0, align 4
@__param_dump_tree = internal constant %struct.kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__param_str_dump_tree, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @dump_tree } }, section "__param", align 8
@__UNIQUE_ID_dump_treetype435 = internal constant [29 x i8] c"tree.parmtype=dump_tree:bool\00", section ".modinfo", align 1
@__param_str_use_softirq = internal constant [20 x i8] c"rcutree.use_softirq\00", align 1
@use_softirq = internal global i8 1, align 4
@__param_use_softirq = internal constant %struct.kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__param_str_use_softirq, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @use_softirq } }, section "__param", align 8
@__UNIQUE_ID_use_softirqtype436 = internal constant [31 x i8] c"tree.parmtype=use_softirq:bool\00", section ".modinfo", align 1
@__param_str_rcu_fanout_exact = internal constant [25 x i8] c"rcutree.rcu_fanout_exact\00", align 1
@rcu_fanout_exact = internal global i8 0, align 4
@__param_rcu_fanout_exact = internal constant %struct.kernel_param { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__param_str_rcu_fanout_exact, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @rcu_fanout_exact } }, section "__param", align 8
@__UNIQUE_ID_rcu_fanout_exacttype437 = internal constant [36 x i8] c"tree.parmtype=rcu_fanout_exact:bool\00", section ".modinfo", align 1
@__param_str_rcu_fanout_leaf = internal constant [24 x i8] c"rcutree.rcu_fanout_leaf\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@rcu_fanout_leaf = internal global i32 16, align 4
@__param_rcu_fanout_leaf = internal constant %struct.kernel_param { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__param_str_rcu_fanout_leaf, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_fanout_leaf to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_fanout_leaftype438 = internal constant [34 x i8] c"tree.parmtype=rcu_fanout_leaf:int\00", section ".modinfo", align 1
@rcu_num_lvls = dso_local local_unnamed_addr global i32 2, section ".data..read_mostly", align 4
@num_rcu_lvl = dso_local local_unnamed_addr global [2 x i32] [i32 1, i32 16], align 4
@rcu_num_nodes = dso_local local_unnamed_addr global i32 17, section ".data..read_mostly", align 4
@__param_str_kthread_prio = internal constant [21 x i8] c"rcutree.kthread_prio\00", align 1
@kthread_prio = internal global i32 0, align 4
@__param_kthread_prio = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_kthread_prio, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @kthread_prio to i8*) } }, section "__param", align 8
@__UNIQUE_ID_kthread_priotype439 = internal constant [31 x i8] c"tree.parmtype=kthread_prio:int\00", section ".modinfo", align 1
@__param_str_gp_preinit_delay = internal constant [25 x i8] c"rcutree.gp_preinit_delay\00", align 1
@gp_preinit_delay = internal global i32 0, align 4
@__param_gp_preinit_delay = internal constant %struct.kernel_param { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__param_str_gp_preinit_delay, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @gp_preinit_delay to i8*) } }, section "__param", align 8
@__UNIQUE_ID_gp_preinit_delaytype440 = internal constant [35 x i8] c"tree.parmtype=gp_preinit_delay:int\00", section ".modinfo", align 1
@__param_str_gp_init_delay = internal constant [22 x i8] c"rcutree.gp_init_delay\00", align 1
@gp_init_delay = internal global i32 0, align 4
@__param_gp_init_delay = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_gp_init_delay, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @gp_init_delay to i8*) } }, section "__param", align 8
@__UNIQUE_ID_gp_init_delaytype441 = internal constant [32 x i8] c"tree.parmtype=gp_init_delay:int\00", section ".modinfo", align 1
@__param_str_gp_cleanup_delay = internal constant [25 x i8] c"rcutree.gp_cleanup_delay\00", align 1
@gp_cleanup_delay = internal global i32 0, align 4
@__param_gp_cleanup_delay = internal constant %struct.kernel_param { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__param_str_gp_cleanup_delay, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @gp_cleanup_delay to i8*) } }, section "__param", align 8
@__UNIQUE_ID_gp_cleanup_delaytype442 = internal constant [35 x i8] c"tree.parmtype=gp_cleanup_delay:int\00", section ".modinfo", align 1
@__param_str_rcu_min_cached_objs = internal constant [28 x i8] c"rcutree.rcu_min_cached_objs\00", align 1
@rcu_min_cached_objs = internal global i32 5, align 4
@__param_rcu_min_cached_objs = internal constant %struct.kernel_param { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__param_str_rcu_min_cached_objs, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_min_cached_objs to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_min_cached_objstype443 = internal constant [38 x i8] c"tree.parmtype=rcu_min_cached_objs:int\00", section ".modinfo", align 1
@__param_str_rcu_delay_page_cache_fill_msec = internal constant [39 x i8] c"rcutree.rcu_delay_page_cache_fill_msec\00", align 1
@rcu_delay_page_cache_fill_msec = internal global i32 5000, align 4
@__param_rcu_delay_page_cache_fill_msec = internal constant %struct.kernel_param { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__param_str_rcu_delay_page_cache_fill_msec, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_delay_page_cache_fill_msec to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_delay_page_cache_fill_msectype444 = internal constant [49 x i8] c"tree.parmtype=rcu_delay_page_cache_fill_msec:int\00", section ".modinfo", align 1
@rcu_data = internal global %struct.rcu_data { i64 0, i64 0, %union.rcu_noqs zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, %struct.rcu_node* null, i64 0, i64 0, %struct.irq_work zeroinitializer, i8 0, %struct.work_struct zeroinitializer, %struct.rcu_segcblist zeroinitializer, i64 0, i64 0, i64 0, i64 0, i32 0, i64 1, i64 4611686018427387904, %struct.atomic_t { i32 1 }, i8 0, i8 0, i8 0, i8 0, %struct.callback_head zeroinitializer, i32 0, %struct.task_struct* null, i32 0, i8 0, i32 0, %struct.irq_work zeroinitializer, i8 0, i64 0, i64 0, i16 0, i64 0, i16 0, i64 0, i32 0 }, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@__param_str_blimit = internal constant [15 x i8] c"rcutree.blimit\00", align 1
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 8
@blimit = internal global i64 10, align 8
@__param_blimit = internal constant %struct.kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_blimit, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_long, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @blimit to i8*) } }, section "__param", align 8
@__UNIQUE_ID_blimittype447 = internal constant [26 x i8] c"tree.parmtype=blimit:long\00", section ".modinfo", align 1
@__param_str_qhimark = internal constant [16 x i8] c"rcutree.qhimark\00", align 1
@qhimark = internal global i64 10000, align 8
@__param_qhimark = internal constant %struct.kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__param_str_qhimark, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_long, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @qhimark to i8*) } }, section "__param", align 8
@__UNIQUE_ID_qhimarktype448 = internal constant [27 x i8] c"tree.parmtype=qhimark:long\00", section ".modinfo", align 1
@__param_str_qlowmark = internal constant [17 x i8] c"rcutree.qlowmark\00", align 1
@qlowmark = internal global i64 100, align 8
@__param_qlowmark = internal constant %struct.kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__param_str_qlowmark, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_long, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @qlowmark to i8*) } }, section "__param", align 8
@__UNIQUE_ID_qlowmarktype449 = internal constant [28 x i8] c"tree.parmtype=qlowmark:long\00", section ".modinfo", align 1
@__param_str_qovld = internal constant [14 x i8] c"rcutree.qovld\00", align 1
@qovld = internal global i64 20000, align 8
@__param_qovld = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_qovld, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_long, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @qovld to i8*) } }, section "__param", align 8
@__UNIQUE_ID_qovldtype450 = internal constant [25 x i8] c"tree.parmtype=qovld:long\00", section ".modinfo", align 1
@__param_str_rcu_divisor = internal constant [20 x i8] c"rcutree.rcu_divisor\00", align 1
@rcu_divisor = internal global i32 7, align 4
@__param_rcu_divisor = internal constant %struct.kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__param_str_rcu_divisor, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_divisor to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_divisortype451 = internal constant [30 x i8] c"tree.parmtype=rcu_divisor:int\00", section ".modinfo", align 1
@__param_str_rcu_resched_ns = internal constant [23 x i8] c"rcutree.rcu_resched_ns\00", align 1
@rcu_resched_ns = internal global i64 3000000, align 8
@__param_rcu_resched_ns = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_rcu_resched_ns, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_long, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @rcu_resched_ns to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_resched_nstype452 = internal constant [34 x i8] c"tree.parmtype=rcu_resched_ns:long\00", section ".modinfo", align 1
@__param_str_jiffies_till_sched_qs = internal constant [30 x i8] c"rcutree.jiffies_till_sched_qs\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 8
@jiffies_till_sched_qs = internal global i64 -1, align 8
@__param_jiffies_till_sched_qs = internal constant %struct.kernel_param { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__param_str_jiffies_till_sched_qs, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @jiffies_till_sched_qs to i8*) } }, section "__param", align 8
@__UNIQUE_ID_jiffies_till_sched_qstype453 = internal constant [42 x i8] c"tree.parmtype=jiffies_till_sched_qs:ulong\00", section ".modinfo", align 1
@__param_str_jiffies_to_sched_qs = internal constant [28 x i8] c"rcutree.jiffies_to_sched_qs\00", align 1
@jiffies_to_sched_qs = internal global i64 0, align 8
@__param_jiffies_to_sched_qs = internal constant %struct.kernel_param { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__param_str_jiffies_to_sched_qs, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @jiffies_to_sched_qs to i8*) } }, section "__param", align 8
@__UNIQUE_ID_jiffies_to_sched_qstype454 = internal constant [40 x i8] c"tree.parmtype=jiffies_to_sched_qs:ulong\00", section ".modinfo", align 1
@__param_str_jiffies_till_first_fqs = internal constant [31 x i8] c"rcutree.jiffies_till_first_fqs\00", align 1
@first_fqs_jiffies_ops = internal constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_first_fqs_jiffies, i32 (i8*, %struct.kernel_param*)* @param_get_ulong, void (i8*)* null }, align 8
@jiffies_till_first_fqs = internal global i64 -1, align 8
@__param_jiffies_till_first_fqs = internal constant %struct.kernel_param { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__param_str_jiffies_till_first_fqs, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @first_fqs_jiffies_ops, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @jiffies_till_first_fqs to i8*) } }, section "__param", align 8
@__param_str_jiffies_till_next_fqs = internal constant [30 x i8] c"rcutree.jiffies_till_next_fqs\00", align 1
@next_fqs_jiffies_ops = internal constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_next_fqs_jiffies, i32 (i8*, %struct.kernel_param*)* @param_get_ulong, void (i8*)* null }, align 8
@jiffies_till_next_fqs = internal global i64 -1, align 8
@__param_jiffies_till_next_fqs = internal constant %struct.kernel_param { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__param_str_jiffies_till_next_fqs, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @next_fqs_jiffies_ops, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i64* @jiffies_till_next_fqs to i8*) } }, section "__param", align 8
@__param_str_rcu_kick_kthreads = internal constant [26 x i8] c"rcutree.rcu_kick_kthreads\00", align 1
@rcu_kick_kthreads = internal global i8 0, align 4
@__param_rcu_kick_kthreads = internal constant %struct.kernel_param { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__param_str_rcu_kick_kthreads, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon { i8* @rcu_kick_kthreads } }, section "__param", align 8
@__UNIQUE_ID_rcu_kick_kthreadstype461 = internal constant [37 x i8] c"tree.parmtype=rcu_kick_kthreads:bool\00", section ".modinfo", align 1
@rcu_state = internal global %struct.rcu_state { [17 x %struct.rcu_node] zeroinitializer, [3 x %struct.rcu_node*] [%struct.rcu_node* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i32 0, i32 0, i32 0), %struct.rcu_node* null, %struct.rcu_node* null], i32 0, i32 0, [32 x i8] undef, i8 0, i64 -1200, i64 0, %struct.task_struct* null, %struct.swait_queue_head zeroinitializer, i16 0, i16 0, i64 0, i64 0, %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rcu_state* @rcu_state to i8*), i64 8864) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rcu_state* @rcu_state to i8*), i64 8864) to %struct.list_head*) } }, %struct.atomic_t zeroinitializer, %struct.completion zeroinitializer, i64 0, %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rcu_state* @rcu_state to i8*), i64 8944) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rcu_state* @rcu_state to i8*), i64 8944) to %struct.list_head*) } }, %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rcu_state* @rcu_state to i8*), i64 8976) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rcu_state* @rcu_state to i8*), i64 8976) to %struct.list_head*) } }, i64 0, %struct.atomic_t zeroinitializer, %struct.swait_queue_head zeroinitializer, i32 0, i8 0, i8 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8 115, [23 x i8] undef, %struct.raw_spinlock zeroinitializer, [60 x i8] undef }, align 64
@rcu_scheduler_active = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@krc = internal global %struct.kfree_rcu_cpu zeroinitializer, section ".data..percpu", align 8
@__UNIQUE_ID___addressable_rcu_spawn_gp_kthread593 = internal global i8* bitcast (i32 ()* @rcu_spawn_gp_kthread to i8*), section ".discard.addressable", align 8
@rcu_init_geometry.old_nr_cpu_ids = internal unnamed_addr global i64 0, align 8
@rcu_init_geometry.initialized = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"\016rcu: Adjusting geometry for rcu_fanout_leaf=%d, nr_cpu_ids=%u\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c"rcu_gp\00", align 1
@rcu_gp_wq = dso_local local_unnamed_addr global %struct.workqueue_struct* null, align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"rcu_par_gp\00", align 1
@rcu_par_gp_wq = dso_local global %struct.workqueue_struct* null, align 8
@qovld_calc = internal unnamed_addr global i64 -1, align 8
@rcu_cpu_stall_timeout = external dso_local global i32, align 4
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@rcu_cpu_stall_suppress = external dso_local local_unnamed_addr global i32, align 4
@__UNIQUE_ID___addressable_check_cpu_stall_init604 = internal global i8* bitcast (i32 ()* @check_cpu_stall_init to i8*), section ".discard.addressable", align 8
@.str.21 = private unnamed_addr constant [220 x i8] c"\016rcu: %s: wait state: %s(%d) ->state: %#x ->rt_priority %u delta ->gp_start %lu ->gp_activity %lu ->gp_req_activity %lu ->gp_wake_time %lu ->gp_wake_seq %ld ->gp_seq %ld ->gp_seq_needed %ld ->gp_max %lu ->gp_flags %#x\0A\00", align 1
@.str.22 = private unnamed_addr constant [95 x i8] c"\016rcu: \09rcu_node %d:%d ->gp_seq %ld ->gp_seq_needed %ld ->qsmask %#lx %c%c%c%c ->n_boosts %ld\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c".b\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c".B\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c".E\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c".G\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"\016rcu: \09cpu %d ->gp_seq_needed %ld\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"\016rcu: RCU callbacks invoked since boot: %lu\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"\016rcu: %s: GP age %lu jiffies\0A\00", align 1
@__func__.rcu_fwd_progress_check = private unnamed_addr constant [23 x i8] c"rcu_fwd_progress_check\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\016rcu: %s: Last GP end %lu jiffies ago\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"\016rcu: %s: callbacks\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"\01c %d: %lu\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@__param_str_sysrq_rcu = internal constant [18 x i8] c"rcutree.sysrq_rcu\00", align 1
@sysrq_rcu = internal global i8 0, align 4
@__param_sysrq_rcu = internal constant %struct.kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__param_str_sysrq_rcu, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @sysrq_rcu } }, section "__param", align 8
@__UNIQUE_ID_sysrq_rcutype690 = internal constant [29 x i8] c"tree.parmtype=sysrq_rcu:bool\00", section ".modinfo", align 1
@__UNIQUE_ID___addressable_rcu_sysrq_init692 = internal global i8* bitcast (i32 ()* @rcu_sysrq_init to i8*), section ".discard.addressable", align 8
@sysctl_panic_on_rcu_stall = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@sysctl_max_rcu_stall_to_panic = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"rcu_sched\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@system_highpri_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@rcu_cpu_stall_ftrace_dump = external dso_local global i32, align 4
@check_cpu_stall.___rfd_beenhere = internal global %struct.atomic_t zeroinitializer, align 4
@check_cpu_stall.___rfd_beenhere.54 = internal global %struct.atomic_t zeroinitializer, align 4
@rcu_cpu_stall_suppress_at_boot = external dso_local local_unnamed_addr global i32, align 4
@rcu_stall_kick_kthreads.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"Kicking %s grace-period kthread\0A\00", align 1
@rcu_stall_kick_kthreads.___rfd_beenhere = internal global %struct.atomic_t zeroinitializer, align 4
@.str.57 = private unnamed_addr constant [44 x i8] c"\013rcu: INFO: %s self-detected stall on CPU\0A\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"\01c\09(t=%lu jiffies g=%ld q=%lu)\0A\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"GPs behind\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"ticks this GP\00", align 1
@.str.61 = private unnamed_addr constant [77 x i8] c"\013rcu: \09%d-%c%c%c%c: (%lu %s) idle=%03x/%ld/%#lx softirq=%u/%u fqs=%ld %s%s\0A\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"O.\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"o.\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"N.\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"!.\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c" (false positive?)\00", align 1
@.str.67 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.68 = private unnamed_addr constant [92 x i8] c"\013rcu: %s kthread timer wakeup didn't happen for %ld jiffies! g%ld f%#x %s(%d) ->state=%#x\0A\00", align 1
@.str.69 = private unnamed_addr constant [66 x i8] c"\013rcu: \09Possible timer handling issue on cpu=%d timer-softirq=%u\0A\00", align 1
@.str.70 = private unnamed_addr constant [82 x i8] c"\013rcu: %s kthread starved for %ld jiffies! g%ld f%#x %s(%d) ->state=%#x ->cpu=%d\0A\00", align 1
@.str.71 = private unnamed_addr constant [83 x i8] c"\013rcu: \09Unless %s kthread gets sufficient CPU time, OOM is now expected behavior.\0A\00", align 1
@.str.72 = private unnamed_addr constant [45 x i8] c"\013rcu: RCU grace-period kthread stack dump:\0A\00", align 1
@.str.73 = private unnamed_addr constant [51 x i8] c"\013rcu: RCU GP kthread last ran on offline CPU %d.\0A\00", align 1
@.str.74 = private unnamed_addr constant [50 x i8] c"\013rcu: Stack dump where RCU GP kthread last ran:\0A\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"\013rcu: Offline CPU %d blocking current GP.\0A\00", align 1
@panic_on_rcu_stall.cpu_stall = internal unnamed_addr global i32 0, align 4
@.str.76 = private unnamed_addr constant [11 x i8] c"RCU Stall\0A\00", align 1
@.str.78 = private unnamed_addr constant [48 x i8] c"\013rcu: INFO: %s detected stalls on CPUs/tasks:\0A\00", align 1
@.str.79 = private unnamed_addr constant [50 x i8] c"\01c\09(detected by %d, t=%ld jiffies, g=%ld, q=%lu)\0A\00", align 1
@.str.80 = private unnamed_addr constant [50 x i8] c"\013rcu: INFO: Stall ended before state dump start\0A\00", align 1
@.str.81 = private unnamed_addr constant [109 x i8] c"\013rcu: All QSes seen, last %s kthread activity %ld (%ld-%ld), jiffies_till_next_fqs=%ld, root ->qsmask %#lx\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.87 = private unnamed_addr constant [59 x i8] c"\011rcu: rcu_spawn_gp_kthread(): Limited prio to %d from %d\0A\00", align 1
@rcu_scheduler_fully_active = internal global i32 0, section ".data..read_mostly", align 4
@.str.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rcu_spawn_gp_kthread.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.89 = private unnamed_addr constant [72 x i8] c"%s: Could not start grace-period kthread, OOM is now expected behavior\0A\00", align 1
@__func__.rcu_spawn_gp_kthread = private unnamed_addr constant [21 x i8] c"rcu_spawn_gp_kthread\00", align 1
@.str.99 = private unnamed_addr constant [64 x i8] c"\016rcu: %s: grp: %d-%d level: %d ->gp_seq %ld ->completedqs %ld\0A\00", align 1
@__func__.rcu_implicit_dynticks_qs = private unnamed_addr constant [25 x i8] c"rcu_implicit_dynticks_qs\00", align 1
@.str.100 = private unnamed_addr constant [96 x i8] c"\016rcu: %s: %d:%d ->qsmask %#lx ->qsmaskinit %#lx ->qsmaskinitnext %#lx ->rcu_gp_init_mask %#lx\0A\00", align 1
@.str.101 = private unnamed_addr constant [51 x i8] c"\016rcu: %s %d: %c online: %ld(%d) offline: %ld(%d)\0A\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c".o\00", align 1
@rcu_spawn_core_kthreads.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_cpu_thread_spec = internal global %struct.smp_hotplug_thread { %struct.task_struct** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rcu_data* @rcu_data to i8*), i64 320) to %struct.task_struct**), %struct.list_head zeroinitializer, i32 (i32)* @rcu_cpu_kthread_should_run, void (i32)* @rcu_cpu_kthread, void (i32)* null, void (i32)* @rcu_cpu_kthread_setup, void (i32, i1)* null, void (i32)* @rcu_cpu_kthread_park, void (i32)* null, i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0) }, align 8
@.str.106 = private unnamed_addr constant [64 x i8] c"%s: Could not start rcuc kthread, OOM is now expected behavior\0A\00", align 1
@__func__.rcu_spawn_core_kthreads = private unnamed_addr constant [24 x i8] c"rcu_spawn_core_kthreads\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"rcuc/%u\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.115 = private unnamed_addr constant [75 x i8] c"\016rcu: RCU calculated value of scheduler-enlistment delay is %ld jiffies.\0A\00", align 1
@.str.116 = private unnamed_addr constant [67 x i8] c"\016rcu: Adjusting rcutree.rcu_delay_page_cache_fill_msec to %d ms.\0A\00", align 1
@kfree_rcu_shrinker = internal global %struct.shrinker { i64 (%struct.shrinker*, %struct.shrink_control*)* @kfree_rcu_shrink_count, i64 (%struct.shrinker*, %struct.shrink_control*)* @kfree_rcu_shrink_scan, i64 0, i32 2, i32 0, %struct.list_head zeroinitializer, %struct.atomic64_t* null }, align 8
@.str.117 = private unnamed_addr constant [49 x i8] c"\013rcu: Failed to register kfree_rcu() shrinker!\0A\00", align 1
@.str.122 = private unnamed_addr constant [40 x i8] c"rcu_init_one: rcu_num_lvls out of range\00", align 1
@rcu_init_one.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"&rnp->exp_wq[0]\00", align 1
@rcu_init_one.__key.124 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"&rnp->exp_wq[1]\00", align 1
@rcu_init_one.__key.126 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"&rnp->exp_wq[2]\00", align 1
@rcu_init_one.__key.128 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"&rnp->exp_wq[3]\00", align 1
@rcu_init_one.__key.130 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"&rcu_state.gp_wq\00", align 1
@rcu_init_one.__key.132 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.133 = private unnamed_addr constant [24 x i8] c"&rcu_state.expedited_wq\00", align 1
@.str.134 = private unnamed_addr constant [34 x i8] c"\016rcu: rcu_node tree layout dump\0A\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"\016rcu:  \00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"\01c%d:%d ^%d  \00", align 1
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 8
@rcu_panic_block = internal global { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 } { i32 (%struct.notifier_block*, i64, i8*)* @rcu_panic, %struct.notifier_block* null, i32 0 }, align 8
@.str.138 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@gp_state_names = internal unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.147, i32 0, i32 0)], align 8
@.str.139 = private unnamed_addr constant [12 x i8] c"RCU_GP_IDLE\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"RCU_GP_WAIT_GPS\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"RCU_GP_DONE_GPS\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"RCU_GP_ONOFF\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"RCU_GP_INIT\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"RCU_GP_WAIT_FQS\00", align 1
@.str.145 = private unnamed_addr constant [17 x i8] c"RCU_GP_DOING_FQS\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"RCU_GP_CLEANUP\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"RCU_GP_CLEANED\00", align 1
@.str.159 = private unnamed_addr constant [59 x i8] c"\013rcu: INFO: %s detected expedited stalls on CPUs/tasks: {\00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"\01c %d-%c%c%c\00", align 1
@.str.161 = private unnamed_addr constant [39 x i8] c"\01c } %lu jiffies s: %lu root: %#lx/%c\0A\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c".T\00", align 1
@.str.163 = private unnamed_addr constant [58 x i8] c"\013rcu: blocking rcu_node structures (internal RCU debug):\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c"\01c l=%u:%d-%d:%#lx/%c\00", align 1
@.str.166 = private unnamed_addr constant [41 x i8] c"\016rcu: Hierarchical RCU implementation.\0A\00", align 1
@.str.167 = private unnamed_addr constant [53 x i8] c"\016rcu: \09Hierarchical RCU autobalancing is disabled.\0A\00", align 1
@.str.168 = private unnamed_addr constant [52 x i8] c"\016rcu: \09Boot-time adjustment of leaf fanout to %d.\0A\00", align 1
@.str.169 = private unnamed_addr constant [64 x i8] c"\016rcu: \09RCU restricting CPUs from NR_CPUS=%d to nr_cpu_ids=%u.\0A\00", align 1
@.str.170 = private unnamed_addr constant [67 x i8] c"\016rcu: \09Boot-time adjustment of callback invocation limit to %ld.\0A\00", align 1
@.str.171 = private unnamed_addr constant [66 x i8] c"\016rcu: \09Boot-time adjustment of callback high-water mark to %ld.\0A\00", align 1
@.str.172 = private unnamed_addr constant [65 x i8] c"\016rcu: \09Boot-time adjustment of callback low-water mark to %ld.\0A\00", align 1
@.str.173 = private unnamed_addr constant [65 x i8] c"\016rcu: \09Boot-time adjustment of callback overload level to %ld.\0A\00", align 1
@.str.174 = private unnamed_addr constant [70 x i8] c"\016rcu: \09Boot-time adjustment of first FQS scan delay to %ld jiffies.\0A\00", align 1
@.str.175 = private unnamed_addr constant [75 x i8] c"\016rcu: \09Boot-time adjustment of subsequent FQS scan delay to %ld jiffies.\0A\00", align 1
@.str.176 = private unnamed_addr constant [76 x i8] c"\016rcu: \09Boot-time adjustment of scheduler-enlistment delay to %ld jiffies.\0A\00", align 1
@.str.177 = private unnamed_addr constant [49 x i8] c"\016rcu: \09Kick kthreads if too-long grace period.\0A\00", align 1
@.str.178 = private unnamed_addr constant [52 x i8] c"\016rcu: \09RCU debug GP pre-init slowdown %d jiffies.\0A\00", align 1
@.str.179 = private unnamed_addr constant [48 x i8] c"\016rcu: \09RCU debug GP init slowdown %d jiffies.\0A\00", align 1
@.str.180 = private unnamed_addr constant [56 x i8] c"\016rcu: \09RCU_SOFTIRQ processing moved to rcuc kthreads.\0A\00", align 1
@llvm.compiler.used = appending global [45 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_check_cpu_stall_init604 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_rcu_spawn_gp_kthread593 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_rcu_sysrq_init692 to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_blimittype447, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__UNIQUE_ID_dump_treetype435, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_gp_cleanup_delaytype442, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_gp_init_delaytype441, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_gp_preinit_delaytype440, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_jiffies_till_sched_qstype453, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_jiffies_to_sched_qstype454, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_kthread_priotype439, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_qhimarktype448, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_qlowmarktype449, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_qovldtype450, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_rcu_delay_page_cache_fill_msectype444, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__UNIQUE_ID_rcu_divisortype451, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_rcu_fanout_exacttype437, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_rcu_fanout_leaftype438, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_rcu_kick_kthreadstype461, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_rcu_min_cached_objstype443, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_rcu_resched_nstype452, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__UNIQUE_ID_sysrq_rcutype690, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_use_softirqtype436, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_blimit to i8*), i8* bitcast (%struct.kernel_param* @__param_dump_tree to i8*), i8* bitcast (%struct.kernel_param* @__param_gp_cleanup_delay to i8*), i8* bitcast (%struct.kernel_param* @__param_gp_init_delay to i8*), i8* bitcast (%struct.kernel_param* @__param_gp_preinit_delay to i8*), i8* bitcast (%struct.kernel_param* @__param_jiffies_till_first_fqs to i8*), i8* bitcast (%struct.kernel_param* @__param_jiffies_till_next_fqs to i8*), i8* bitcast (%struct.kernel_param* @__param_jiffies_till_sched_qs to i8*), i8* bitcast (%struct.kernel_param* @__param_jiffies_to_sched_qs to i8*), i8* bitcast (%struct.kernel_param* @__param_kthread_prio to i8*), i8* bitcast (%struct.kernel_param* @__param_qhimark to i8*), i8* bitcast (%struct.kernel_param* @__param_qlowmark to i8*), i8* bitcast (%struct.kernel_param* @__param_qovld to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_delay_page_cache_fill_msec to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_divisor to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_fanout_exact to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_fanout_leaf to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_kick_kthreads to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_min_cached_objs to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_resched_ns to i8*), i8* bitcast (%struct.kernel_param* @__param_sysrq_rcu to i8*), i8* bitcast (%struct.kernel_param* @__param_use_softirq to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @rcu_get_gp_kthreads_prio() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @kthread_prio, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_softirq_qs() local_unnamed_addr #1 {
entry:
  call fastcc void @rcu_qs() #24
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_qs() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i16* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 2, i32 0) to i64)
  %0 = inttoptr i64 %add to i16*
  %1 = load i16, i16* %0, align 2
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %add42 = add i64 %call, ptrtoint (%union.rcu_noqs* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 2) to i64)
  %2 = inttoptr i64 %add42 to i8*
  store i8 0, i8* %2, align 1
  %call61 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add62 = add i64 %call61, ptrtoint (i8* getelementptr (%struct.anon.81, %struct.anon.81* bitcast (%union.rcu_noqs* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 2) to %struct.anon.81*), i64 0, i32 1) to i64)
  %3 = inttoptr i64 %add62 to i8*
  %4 = load i8, i8* %3, align 1
  %tobool64.not = icmp eq i8 %4, 0
  br i1 %tobool64.not, label %return, label %if.end66

if.end66:                                         ; preds = %if.end
  store i8 0, i8* %3, align 1
  %call93 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add94 = add i64 %call93, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %5 = inttoptr i64 %add94 to %struct.rcu_data*
  call fastcc void @rcu_report_exp_rdp(%struct.rcu_data* noundef %5) #24
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end66
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @rcu_is_idle_cpu(i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %call = call fastcc i32 @rcu_dynticks_snap(%struct.rcu_data* noundef %1) #24
  %call2 = call fastcc i1 @rcu_dynticks_in_eqs(i32 noundef %call) #24
  ret i1 %call2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @rcu_dynticks_in_eqs(i32 noundef %snap) unnamed_addr #3 {
entry:
  %and = and i32 %snap, 1
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rcu_dynticks_snap(%struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !9
  %counter.i.i = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 22, i32 0
  %0 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %counter.i.i) #26, !srcloc !10
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @rcu_dynticks_zero_in_eqs(i32 noundef %cpu, i32* noundef %vp) local_unnamed_addr #1 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %counter.i = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 22, i32 0
  %2 = load volatile i32, i32* %counter.i, align 4
  call void asm sideeffect "dmb ishld", "~{memory}"() #26, !srcloc !11
  %3 = load volatile i32, i32* %vp, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %2, -2
  call void asm sideeffect "dmb ishld", "~{memory}"() #26, !srcloc !12
  %4 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp eq i32 %and, %4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_momentary_dyntick_idle() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 23) to i64)
  %0 = inttoptr i64 %add to i8*
  store i8 0, i8* %0, align 1
  %call12 = call fastcc i64 @rcu_dynticks_inc(i32 noundef 2) #24
  %and37 = and i64 %call12, 1
  %tobool.not = icmp eq i64 %and37, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 409; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #4 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #27, !srcloc !15
  ret i64 %2
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc i64 @rcu_dynticks_inc(i32 noundef %incby) unnamed_addr #5 section ".noinstr.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.atomic_t* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 22) to i64)
  %0 = inttoptr i64 %add to %struct.atomic_t*
  %call.i = call fastcc i32 @__ll_sc_atomic_add_return(i32 noundef %incby, %struct.atomic_t* noundef %0) #28
  %conv = sext i32 %call.i to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i64 @rcu_get_gp_seq() local_unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @rcu_exp_batches_completed() local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 20), align 32
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local void @rcutorture_get_gp_data(i32 noundef %test_type, i32* nocapture noundef writeonly %flags, i64* nocapture noundef writeonly %gp_seq) local_unnamed_addr #6 {
entry:
  %cond = icmp eq i32 %test_type, 0
  br i1 %cond, label %do.end, label %sw.epilog

do.end:                                           ; preds = %entry
  %0 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %conv = sext i16 %0 to i32
  store i32 %conv, i32* %flags, align 4
  %call = call fastcc i64 @rcu_seq_current(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  store i64 %call, i64* %gp_seq, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %do.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @rcu_seq_current(i64* noundef %sp) unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* %sp, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_idle_enter() local_unnamed_addr #1 {
entry:
  call fastcc void @rcu_eqs_enter() #24
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @rcu_eqs_enter() unnamed_addr #5 section ".noinstr.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %dynticks_nmi_nesting = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 21
  %1 = load i64, i64* %dynticks_nmi_nesting, align 8
  %cmp.not = icmp eq i64 %1, 4611686018427387904
  br i1 %cmp.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 613; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store volatile i64 0, i64* %dynticks_nmi_nesting, align 8
  %dynticks_nesting = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 20
  %2 = load i64, i64* %dynticks_nesting, align 8
  %cmp45.not = icmp eq i64 %2, 1
  br i1 %cmp45.not, label %do.end55, label %if.then47

if.then47:                                        ; preds = %if.end
  %dec = add i64 %2, -1
  store i64 %dec, i64* %dynticks_nesting, align 8
  br label %cleanup

do.end55:                                         ; preds = %if.end
  %counter.i = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 22, i32 0
  %3 = load volatile i32, i32* %counter.i, align 4
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  store volatile i64 0, i64* %dynticks_nesting, align 8
  call fastcc void @rcu_dynticks_eqs_enter() #24
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.then47
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @rcu_nmi_exit() local_unnamed_addr #5 section ".noinstr.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %dynticks_nmi_nesting = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 21
  %1 = load i64, i64* %dynticks_nmi_nesting, align 8
  %cmp = icmp slt i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 751; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call.i = call fastcc i64 @__kern_my_cpu_offset() #28
  %add.i = add i64 %call.i, ptrtoint (%struct.atomic_t* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 22) to i64)
  %2 = inttoptr i64 %add.i to %struct.atomic_t*
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %2, i64 0, i32 0
  %3 = load volatile i32, i32* %counter.i.i, align 4
  %and.i = and i32 %3, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then33, label %if.end34, !prof !13

if.then33:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 752; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !19
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end
  %4 = load i64, i64* %dynticks_nmi_nesting, align 8
  %cmp44.not = icmp eq i64 %4, 1
  %counter.i113 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 22, i32 0
  %5 = load volatile i32, i32* %counter.i113, align 4
  br i1 %cmp44.not, label %if.end65, label %if.then46

if.then46:                                        ; preds = %if.end34
  %sub56 = add i64 %4, -2
  store volatile i64 %sub56, i64* %dynticks_nmi_nesting, align 8
  br label %cleanup

if.end65:                                         ; preds = %if.end34
  store volatile i64 0, i64* %dynticks_nmi_nesting, align 8
  %call79 = call fastcc i32 @preempt_count() #24
  call fastcc void @rcu_dynticks_eqs_enter() #24
  %call88 = call fastcc i32 @preempt_count() #24
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then46
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.0* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @rcu_dynticks_eqs_enter() unnamed_addr #5 section ".noinstr.text" {
entry:
  %call = call fastcc i64 @rcu_dynticks_inc(i32 noundef 1) #24
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @rcu_irq_exit() local_unnamed_addr #5 section ".noinstr.text" {
entry:
  call void @rcu_nmi_exit() #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #24
  call void @rcu_irq_exit() #24
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #24
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #24
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #26, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_idle_exit() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #24
  call fastcc void @rcu_eqs_exit() #24
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #24
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @rcu_eqs_exit() unnamed_addr #5 section ".noinstr.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %dynticks_nesting = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 20
  %1 = load i64, i64* %dynticks_nesting, align 8
  %tobool15.not = icmp eq i64 %1, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %entry
  %inc = add i64 %1, 1
  store i64 %inc, i64* %dynticks_nesting, align 8
  br label %cleanup

if.end18:                                         ; preds = %entry
  call fastcc void @rcu_dynticks_eqs_exit() #24
  %counter.i = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 22, i32 0
  %2 = load volatile i32, i32* %counter.i, align 4
  store volatile i64 1, i64* %dynticks_nesting, align 8
  %dynticks_nmi_nesting = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 21
  %3 = load i64, i64* %dynticks_nmi_nesting, align 8
  %tobool55.not = icmp eq i64 %3, 0
  br i1 %tobool55.not, label %if.end69, label %if.then68, !prof !16

if.then68:                                        ; preds = %if.end18
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 879; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !21
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end18
  store volatile i64 4611686018427387904, i64* %dynticks_nmi_nesting, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then16
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @rcu_nmi_enter() local_unnamed_addr #5 section ".noinstr.text" {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %dynticks_nmi_nesting = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 21
  %1 = load i64, i64* %dynticks_nmi_nesting, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 998; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call.i = call fastcc i64 @__kern_my_cpu_offset() #28
  %add.i = add i64 %call.i, ptrtoint (%struct.atomic_t* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 22) to i64)
  %2 = inttoptr i64 %add.i to %struct.atomic_t*
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %2, i64 0, i32 0
  %3 = load volatile i32, i32* %counter.i.i, align 4
  %and.i = and i32 %3, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  %call18 = call fastcc i32 @preempt_count() #24
  br i1 %tobool.not.i, label %if.then17, label %if.end52

if.then17:                                        ; preds = %if.end
  call fastcc void @rcu_dynticks_eqs_exit() #24
  %call23 = call fastcc i32 @preempt_count() #24
  br label %if.end52

if.end52:                                         ; preds = %if.end, %if.then17
  %incby.0 = phi i64 [ 1, %if.then17 ], [ 2, %if.end ]
  %counter.i = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 22, i32 0
  %4 = load volatile i32, i32* %counter.i, align 4
  %5 = load i64, i64* %dynticks_nmi_nesting, align 8
  %add69 = add i64 %5, %incby.0
  store volatile i64 %add69, i64* %dynticks_nmi_nesting, align 8
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !23
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define internal fastcc void @rcu_dynticks_eqs_exit() unnamed_addr #5 section ".noinstr.text" {
entry:
  %call = call fastcc i64 @rcu_dynticks_inc(i32 noundef 1) #24
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid
define dso_local void @rcu_irq_enter() local_unnamed_addr #5 section ".noinstr.text" {
entry:
  call void @rcu_nmi_enter() #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #24
  call void @rcu_irq_enter() #24
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @rcu_is_watching() local_unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !24
  %call.i = call fastcc i64 @__kern_my_cpu_offset() #28
  %add.i = add i64 %call.i, ptrtoint (%struct.atomic_t* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 22) to i64)
  %0 = inttoptr i64 %add.i to %struct.atomic_t*
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %0, i64 0, i32 0
  %1 = load volatile i32, i32* %counter.i.i, align 4
  %and.i = and i32 %1, 1
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !25
  ret i1 %tobool.not.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_request_urgent_qs_task(%struct.task_struct* noundef %t) local_unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  %call = call fastcc i32 @task_cpu(%struct.task_struct* noundef %t) #24
  %call1 = call i32 @task_curr(%struct.task_struct* noundef %t) #28
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 24) to i64)
  %1 = inttoptr i64 %add to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %1, i8 1) #26, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_cpu(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %cpu = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 8
  %0 = load volatile i32, i32* %cpu, align 64
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_curr(%struct.task_struct* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @rcu_gp_set_torture_wait(i32 noundef %duration) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @rcutree_dying_cpu(i32 noundef %cpu) local_unnamed_addr #4 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @rcutree_dead_cpu(i32 noundef %cpu) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_sched_clock_irq(i32 noundef %user) local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i64* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 10) to i64)
  %0 = inttoptr i64 %add to i64*
  %1 = load i64, i64* %0, align 8
  %add9 = add i64 %1, 1
  store i64 %add9, i64* %0, align 8
  %call18 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add19 = add i64 %call18, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 24) to i64)
  %2 = inttoptr i64 %add19 to i8*
  %3 = call i8 asm sideeffect "ldarb ${0:w}, $1", "=r,*Q,~{memory}"(i8* elementtype(i8) %2) #26, !srcloc !28
  %4 = and i8 %3, 1
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end50, label %if.then

if.then:                                          ; preds = %entry
  %call26 = call fastcc i32 @rcu_is_cpu_rrupt_from_idle() #24
  %5 = or i32 %call26, %user
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %if.then29, label %if.end

if.then29:                                        ; preds = %if.then
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %7 = inttoptr i64 %6 to %struct.task_struct*
  call fastcc void @set_tsk_need_resched(%struct.task_struct* noundef %7) #24
  call fastcc void @set_preempt_need_resched() #24
  br label %if.end

if.end:                                           ; preds = %if.then29, %if.then
  %call44 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add45 = add i64 %call44, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 24) to i64)
  %8 = inttoptr i64 %add45 to i8*
  store i8 0, i8* %8, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.end, %entry
  call fastcc void @rcu_flavor_sched_clock_irq(i32 noundef %user) #24
  %call51 = call fastcc i32 @rcu_pending(i32 noundef %user) #24
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.end57, label %if.then53

if.then53:                                        ; preds = %if.end50
  call fastcc void @invoke_rcu_core() #24
  br label %do.end57

do.end57:                                         ; preds = %if.then53, %if.end50
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rcu_is_cpu_rrupt_from_idle() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i64* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 21) to i64)
  %0 = inttoptr i64 %add to i64*
  %1 = load i64, i64* %0, align 8
  %cmp = icmp sgt i64 %1, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %land.rhs, label %if.end29

land.rhs:                                         ; preds = %if.end
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %flags.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 4
  %4 = load i32, i32* %flags.i, align 4
  %and.i = and i32 %4, 2
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then28, label %if.end29, !prof !13

if.then28:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 447; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !29
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then28, %land.rhs
  %call52 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add53 = add i64 %call52, ptrtoint (i64* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 20) to i64)
  %5 = inttoptr i64 %add53 to i64*
  %6 = load i64, i64* %5, align 8
  %cmp55 = icmp eq i64 %6, 0
  %conv56 = zext i1 %cmp55 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end29
  %retval.0 = phi i32 [ %conv56, %if.end29 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_tsk_need_resched(%struct.task_struct* noundef %tsk) unnamed_addr #1 {
entry:
  call fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %tsk) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid writeonly
define internal fastcc void @set_preempt_need_resched() unnamed_addr #9 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %preempt = bitcast %union.anon.0* %2 to %struct.anon*
  %need_resched = getelementptr inbounds %struct.anon, %struct.anon* %preempt, i64 0, i32 1
  store i32 0, i32* %need_resched, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_flavor_sched_clock_irq(i32 noundef %user) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %user, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i32 @rcu_is_cpu_rrupt_from_idle() #24
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call fastcc void @rcu_qs() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rcu_pending(i32 noundef %user) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 8
  %1 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  call fastcc void @check_cpu_stall(%struct.rcu_data* noundef %0) #24
  %tobool6.not = icmp eq i32 %user, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end11

lor.lhs.false:                                    ; preds = %entry
  %call7 = call fastcc i32 @rcu_is_cpu_rrupt_from_idle() #24
  br label %if.end11

if.end11:                                         ; preds = %lor.lhs.false, %entry
  %call12 = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool13.not = icmp eq i32 %call12, 0
  %core_needs_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 3
  %2 = load i8, i8* %core_needs_qs, align 2, !range !30
  %tobool14.not = icmp eq i8 %2, 0
  br i1 %tobool14.not, label %if.end20, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end11
  %cpu_no_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 2
  %norm = bitcast %union.rcu_noqs* %cpu_no_qs to i8*
  %3 = load i8, i8* %norm, align 8
  %tobool16.not = icmp ne i8 %3, 0
  %brmerge = select i1 %tobool16.not, i1 true, i1 %tobool13.not
  br i1 %brmerge, label %if.end20, label %cleanup

if.end20:                                         ; preds = %land.lhs.true15, %if.end11
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 14
  %call23 = call i1 @rcu_segcblist_ready_cbs(%struct.rcu_segcblist* noundef %cblist) #28
  br i1 %call23, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end20
  br i1 %tobool13.not, label %land.lhs.true27, label %if.end36

land.lhs.true27:                                  ; preds = %if.end25
  %call29 = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %cblist) #24
  br i1 %call29, label %land.lhs.true30, label %if.end36

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %call34 = call fastcc i1 @rcu_segcblist_restempty(%struct.rcu_segcblist* noundef %cblist, i32 noundef 2) #24
  br i1 %call34, label %if.end36, label %cleanup

if.end36:                                         ; preds = %land.lhs.true30, %land.lhs.true27, %if.end25
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %1, i64 0, i32 1
  %call37 = call fastcc i64 @rcu_seq_current(i64* noundef %gp_seq) #24
  %gp_seq38 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 0
  %4 = load i64, i64* %gp_seq38, align 8
  %cmp.not = icmp eq i64 %call37, %4
  br i1 %cmp.not, label %do.end42, label %cleanup

do.end42:                                         ; preds = %if.end36
  %gpwrap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 5
  %5 = load volatile i8, i8* %gpwrap, align 4, !range !30
  %6 = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end36, %land.lhs.true30, %if.end20, %land.lhs.true15
  %retval.0 = phi i32 [ 1, %land.lhs.true15 ], [ 1, %if.end20 ], [ 1, %land.lhs.true30 ], [ 1, %if.end36 ], [ %6, %do.end42 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @invoke_rcu_core() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i1 @cpu_online(i32 noundef %1) #24
  br i1 %call2, label %if.end, label %if.end4

if.end:                                           ; preds = %entry
  %2 = load i8, i8* @use_softirq, align 4, !range !30
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @raise_softirq(i32 noundef 9) #28
  br label %if.end4

if.else:                                          ; preds = %if.end
  call fastcc void @invoke_rcu_core_kthread() #24
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.else, %if.then3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_force_quiescent_state() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.rcu_node** getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 8) to i64)
  %0 = inttoptr i64 %add to %struct.rcu_node**
  %rnp.0111 = load %struct.rcu_node*, %struct.rcu_node** %0, align 8
  %cmp.not112 = icmp eq %struct.rcu_node* %rnp.0111, null
  br i1 %cmp.not112, label %do.body22, label %do.end11

for.cond:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0114, i64 0, i32 20
  %rnp.0 = load %struct.rcu_node*, %struct.rcu_node** %parent, align 8
  %cmp.not = icmp eq %struct.rcu_node* %rnp.0, null
  br i1 %cmp.not, label %do.body22, label %do.end11

do.end11:                                         ; preds = %entry, %for.cond
  %rnp.0114 = phi %struct.rcu_node* [ %rnp.0, %for.cond ], [ %rnp.0111, %entry ]
  %rnp_old.0113 = phi %struct.rcu_node* [ %rnp.0114, %for.cond ], [ null, %entry ]
  %1 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %2 = and i16 %1, 2
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %do.end11
  %fqslock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0114, i64 0, i32 31
  %call13 = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %fqslock) #24
  %tobool14.not = icmp eq i32 %call13, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end11
  %3 = phi i1 [ true, %do.end11 ], [ %tobool14.not, %lor.rhs ]
  %cmp15.not = icmp eq %struct.rcu_node* %rnp_old.0113, null
  br i1 %cmp15.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.end
  %fqslock17 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp_old.0113, i64 0, i32 31
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %fqslock17) #24
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  br i1 %3, label %cleanup, label %for.cond

do.body22:                                        ; preds = %for.cond, %entry
  %rnp_old.0.lcssa = phi %struct.rcu_node* [ null, %entry ], [ %rnp.0114, %for.cond ]
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp_old.0.lcssa, i64 0, i32 0
  %call26 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %fqslock34 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp_old.0.lcssa, i64 0, i32 31
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %fqslock34) #24
  %4 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %5 = and i16 %4, 2
  %tobool41.not = icmp eq i16 %5, 0
  br i1 %tobool41.not, label %do.end66, label %do.body47

do.body47:                                        ; preds = %do.body22
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call26) #24
  br label %cleanup

do.end66:                                         ; preds = %do.body22
  %6 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %7 = or i16 %6, 2
  store volatile i16 %7, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call26) #24
  call fastcc void @rcu_gp_kthread_wake() #24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end66, %do.body47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !31
  %call = call fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !34
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #24
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_gp_kthread_wake() unnamed_addr #1 {
entry:
  %0 = load volatile %struct.task_struct*, %struct.task_struct** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 8), align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %0, %2
  br i1 %cmp, label %land.lhs.true, label %do.end10

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @preempt_count() #24
  %3 = and i32 %call1, 983040
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true2, label %do.end10

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = call fastcc i32 @preempt_count() #24
  %4 = and i32 %call3, 256
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %cleanup, label %do.end10

do.end10:                                         ; preds = %entry, %land.lhs.true, %land.lhs.true2
  %5 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %tobool12 = icmp ne i16 %5, 0
  %tobool14 = icmp ne %struct.task_struct* %0, null
  %or.cond = select i1 %tobool12, i1 %tobool14, i1 false
  br i1 %or.cond, label %do.body19, label %cleanup

do.body19:                                        ; preds = %do.end10
  %6 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %6, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 12), align 64
  %7 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  store volatile i64 %7, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 13), align 8
  call void @swake_up_one(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 9)) #28
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true2, %do.end10, %do.body19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @call_rcu(%struct.callback_head* noundef %head, void (%struct.callback_head*)* noundef %func) #1 {
entry:
  call fastcc void @__call_rcu(%struct.callback_head* noundef %head, void (%struct.callback_head*)* noundef %func) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__call_rcu(%struct.callback_head* noundef %head, void (%struct.callback_head*)* noundef %func) unnamed_addr #1 {
entry:
  %0 = ptrtoint %struct.callback_head* %head to i64
  %and = and i64 %0, 7
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2969; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %func35 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head, i64 0, i32 1
  store void (%struct.callback_head*)* %func, void (%struct.callback_head*)** %func35, align 8
  %next = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head, i64 0, i32 0
  store %struct.callback_head* null, %struct.callback_head** %next, align 8
  %call41 = call fastcc i64 @arch_local_irq_save() #24
  %call51 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call51, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 14
  %call52 = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %cblist) #24
  br i1 %call52, label %if.end119, label %if.then62, !prof !16

if.then62:                                        ; preds = %if.end
  %2 = load i32, i32* @rcu_scheduler_active, align 4
  %cmp64.not = icmp eq i32 %2, 0
  br i1 %cmp64.not, label %if.end79, label %if.then78, !prof !16

if.then78:                                        ; preds = %if.then62
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2993; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !37
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.then62
  %call89 = call i1 @rcu_is_watching() #24
  br i1 %call89, label %if.end105, label %if.then104, !prof !16

if.then104:                                       ; preds = %if.end79
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2994; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !38
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end79
  %call115 = call fastcc i1 @rcu_segcblist_empty(%struct.rcu_segcblist* noundef %cblist) #24
  br i1 %call115, label %if.then116, label %if.end119

if.then116:                                       ; preds = %if.end105
  call void @rcu_segcblist_init(%struct.rcu_segcblist* noundef %cblist) #28
  br label %if.end119

if.end119:                                        ; preds = %if.end105, %if.then116, %if.end
  call fastcc void @check_cb_ovld(%struct.rcu_data* noundef %1) #24
  call void @rcu_segcblist_enqueue(%struct.rcu_segcblist* noundef %cblist, %struct.callback_head* noundef %head) #28
  %call128 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  call fastcc void @__call_rcu_core(%struct.rcu_data* noundef %1, %struct.callback_head* noundef %head, i64 noundef %call41) #24
  call fastcc void @arch_local_irq_restore(i64 noundef %call41) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kvfree_call_rcu(%struct.callback_head* noundef %head, void (%struct.callback_head*)* noundef %func) local_unnamed_addr #1 {
entry:
  %flags = alloca i64, align 8
  %krcp = alloca %struct.kfree_rcu_cpu*, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  store i64 0, i64* %flags, align 8, !annotation !39
  %1 = bitcast %struct.kfree_rcu_cpu** %krcp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #26
  store %struct.kfree_rcu_cpu* null, %struct.kfree_rcu_cpu** %krcp, align 8, !annotation !39
  %tobool.not = icmp eq %struct.callback_head* %head, null
  %2 = bitcast %struct.callback_head* %head to i8*
  %3 = ptrtoint void (%struct.callback_head*)* %func to i64
  %idx.neg = sub i64 0, %3
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.neg
  %4 = bitcast void (%struct.callback_head*)* %func to i8*
  %ptr.0 = select i1 %tobool.not, i8* %4, i8* %add.ptr
  %call51 = call fastcc i1 @add_ptr_to_bulk_krc_lock(%struct.kfree_rcu_cpu** noundef nonnull %krcp, i64* noundef nonnull %flags, i8* noundef %ptr.0, i1 noundef %tobool.not) #24
  %.pre = load %struct.kfree_rcu_cpu*, %struct.kfree_rcu_cpu** %krcp, align 8
  br i1 %call51, label %do.body65, label %if.then53

if.then53:                                        ; preds = %entry
  call fastcc void @run_page_cache_worker(%struct.kfree_rcu_cpu* noundef %.pre) #24
  br i1 %tobool.not, label %if.then79, label %if.end56

if.end56:                                         ; preds = %if.then53
  %func57 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head, i64 0, i32 1
  store void (%struct.callback_head*)* %func, void (%struct.callback_head*)** %func57, align 8
  %head58 = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %.pre, i64 0, i32 0
  %5 = load %struct.callback_head*, %struct.callback_head** %head58, align 8
  %next = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head, i64 0, i32 0
  store %struct.callback_head* %5, %struct.callback_head** %next, align 8
  store %struct.callback_head* %head, %struct.callback_head** %head58, align 8
  br label %do.body65

do.body65:                                        ; preds = %entry, %if.end56
  %count = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %.pre, i64 0, i32 7
  %6 = load i32, i32* %count, align 4
  %add = add i32 %6, 1
  store volatile i32 %add, i32* %count, align 4
  %7 = load i32, i32* @rcu_scheduler_active, align 4
  %cmp71 = icmp eq i32 %7, 2
  br i1 %cmp71, label %land.lhs.true, label %unlock_return.thread

land.lhs.true:                                    ; preds = %do.body65
  %monitor_todo = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %.pre, i64 0, i32 5
  %8 = load i8, i8* %monitor_todo, align 8, !range !30
  %tobool73.not = icmp eq i8 %8, 0
  br i1 %tobool73.not, label %if.then74, label %unlock_return.thread

if.then74:                                        ; preds = %land.lhs.true
  store i8 1, i8* %monitor_todo, align 8
  %monitor_work = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %.pre, i64 0, i32 4
  call fastcc void @schedule_delayed_work(%struct.delayed_work* noundef %monitor_work) #24
  br label %unlock_return.thread

unlock_return.thread:                             ; preds = %land.lhs.true, %if.then74, %do.body65
  %9 = load i64, i64* %flags, align 8
  call fastcc void @krc_this_cpu_unlock(%struct.kfree_rcu_cpu* noundef %.pre, i64 noundef %9) #24
  br label %cleanup

if.then79:                                        ; preds = %if.then53
  %10 = load i64, i64* %flags, align 8
  call fastcc void @krc_this_cpu_unlock(%struct.kfree_rcu_cpu* noundef %.pre, i64 noundef %10) #24
  call void @synchronize_rcu() #24
  call void @kvfree(i8* noundef %ptr.0) #28
  br label %cleanup

cleanup:                                          ; preds = %unlock_return.thread, %if.then79
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @add_ptr_to_bulk_krc_lock(%struct.kfree_rcu_cpu** nocapture noundef %krcp, i64* nocapture noundef %flags, i8* noundef %ptr, i1 noundef %can_alloc) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.kfree_rcu_cpu* @krc_this_cpu_lock(i64* noundef %flags) #24
  store %struct.kfree_rcu_cpu* %call, %struct.kfree_rcu_cpu** %krcp, align 8
  %initialized = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %call, i64 0, i32 6
  %0 = load i8, i8* %initialized, align 1, !range !30
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !13

if.end:                                           ; preds = %entry
  %call4 = call i1 @is_vmalloc_addr(i8* noundef %ptr) #28
  %1 = load %struct.kfree_rcu_cpu*, %struct.kfree_rcu_cpu** %krcp, align 8
  %2 = zext i1 %call4 to i64
  %arrayidx = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %1, i64 0, i32 1, i64 %2
  %3 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %arrayidx, align 8
  %tobool9.not = icmp eq %struct.kvfree_rcu_bulk_data* %3, null
  br i1 %tobool9.not, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %nr_records = getelementptr inbounds %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %3, i64 0, i32 0
  %4 = load i64, i64* %nr_records, align 8
  %cmp = icmp eq i64 %4, 510
  br i1 %cmp, label %if.then14, label %if.end33

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  %call15 = call fastcc %struct.kvfree_rcu_bulk_data* @get_cached_bnode(%struct.kfree_rcu_cpu* noundef %1) #24
  %tobool16.not = icmp eq %struct.kvfree_rcu_bulk_data* %call15, null
  %5 = and i1 %tobool16.not, %can_alloc
  br i1 %5, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then14
  %6 = load %struct.kfree_rcu_cpu*, %struct.kfree_rcu_cpu** %krcp, align 8
  %7 = load i64, i64* %flags, align 8
  call fastcc void @krc_this_cpu_unlock(%struct.kfree_rcu_cpu* noundef %6, i64 noundef %7) #24
  %call20 = call i64 @__get_free_pages(i32 noundef 601280, i32 noundef 0) #28
  %8 = inttoptr i64 %call20 to %struct.kvfree_rcu_bulk_data*
  %call21 = call fastcc %struct.kfree_rcu_cpu* @krc_this_cpu_lock(i64* noundef %flags) #24
  store %struct.kfree_rcu_cpu* %call21, %struct.kfree_rcu_cpu** %krcp, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then19
  %bnode.0 = phi %struct.kvfree_rcu_bulk_data* [ %call15, %if.then14 ], [ %8, %if.then19 ]
  %tobool23.not = icmp eq %struct.kvfree_rcu_bulk_data* %bnode.0, null
  br i1 %tobool23.not, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end22
  %nr_records26 = getelementptr inbounds %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %bnode.0, i64 0, i32 0
  store i64 0, i64* %nr_records26, align 8
  %9 = load %struct.kfree_rcu_cpu*, %struct.kfree_rcu_cpu** %krcp, align 8
  %arrayidx29 = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %9, i64 0, i32 1, i64 %2
  %10 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %arrayidx29, align 8
  %next = getelementptr inbounds %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %bnode.0, i64 0, i32 1
  store %struct.kvfree_rcu_bulk_data* %10, %struct.kvfree_rcu_bulk_data** %next, align 8
  %11 = load %struct.kfree_rcu_cpu*, %struct.kfree_rcu_cpu** %krcp, align 8
  %arrayidx32 = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %11, i64 0, i32 1, i64 %2
  store %struct.kvfree_rcu_bulk_data* %bnode.0, %struct.kvfree_rcu_bulk_data** %arrayidx32, align 8
  %.pre = load %struct.kfree_rcu_cpu*, %struct.kfree_rcu_cpu** %krcp, align 8
  %arrayidx36.phi.trans.insert = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %.pre, i64 0, i32 1, i64 %2
  %.pre67 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %arrayidx36.phi.trans.insert, align 8
  %nr_records40.phi.trans.insert = getelementptr inbounds %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %.pre67, i64 0, i32 0
  %.pre68 = load i64, i64* %nr_records40.phi.trans.insert, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end25, %lor.lhs.false
  %12 = phi i64 [ %.pre68, %if.end25 ], [ %4, %lor.lhs.false ]
  %13 = phi %struct.kvfree_rcu_bulk_data* [ %.pre67, %if.end25 ], [ %3, %lor.lhs.false ]
  %nr_records40 = getelementptr inbounds %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %13, i64 0, i32 0
  %inc = add i64 %12, 1
  store i64 %inc, i64* %nr_records40, align 8
  %arrayidx41 = getelementptr %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %13, i64 0, i32 2, i64 %12
  store i8* %ptr, i8** %arrayidx41, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry, %if.end33
  %retval.0 = phi i1 [ true, %if.end33 ], [ false, %entry ], [ false, %if.end22 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @run_page_cache_worker(%struct.kfree_rcu_cpu* noundef %krcp) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @rcu_scheduler_active, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %work_in_progress = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 10
  %1 = bitcast %struct.atomic_t* %work_in_progress to i8*
  %call8.i.i = call fastcc i32 @__xchg_case_mb_32(i32 noundef 1, i8* noundef %1) #28
  %tobool.not = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %counter.i = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 9, i32 0
  %2 = load volatile i32, i32* %counter.i, align 4
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  %page_cache_work = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 8
  %4 = load i32, i32* @rcu_delay_page_cache_fill_msec, align 4
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %4) #28
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %3, %struct.delayed_work* noundef %page_cache_work, i64 noundef %call2.i) #24
  br label %if.end8

if.else:                                          ; preds = %if.then
  %hrtimer = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 11
  call void @hrtimer_init(%struct.hrtimer* noundef %hrtimer, i32 noundef 1, i32 noundef 1) #28
  %function = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 11, i32 2
  store i32 (%struct.hrtimer*)* @schedule_page_work_fn, i32 (%struct.hrtimer*)** %function, align 8
  call fastcc void @hrtimer_start(%struct.hrtimer* noundef %hrtimer) #24
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.else, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_delayed_work(%struct.delayed_work* noundef %dwork) unnamed_addr #1 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %0, %struct.delayed_work* noundef %dwork, i64 noundef 5) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @krc_this_cpu_unlock(%struct.kfree_rcu_cpu* noundef %krcp, i64 noundef %flags) unnamed_addr #1 {
entry:
  %lock = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 3
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @synchronize_rcu() local_unnamed_addr #1 {
entry:
  %__crcu_array = alloca [1 x void (%struct.callback_head*, void (%struct.callback_head*)*)*], align 8
  %__rs_array = alloca [1 x %struct.rcu_synchronize], align 8
  %call = call fastcc i32 @rcu_blocking_is_gp() #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.end6

if.end:                                           ; preds = %entry
  %call1 = call i1 @rcu_gp_is_expedited() #28
  br i1 %call1, label %if.then2, label %do.body3

if.then2:                                         ; preds = %if.end
  call void @synchronize_rcu_expedited() #24
  br label %if.end6

do.body3:                                         ; preds = %if.end
  %0 = bitcast [1 x void (%struct.callback_head*, void (%struct.callback_head*)*)*]* %__crcu_array to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  %1 = bitcast [1 x void (%struct.callback_head*, void (%struct.callback_head*)*)*]* %__crcu_array to i64*
  store i64 ptrtoint (void (%struct.callback_head*, void (%struct.callback_head*)*)* @call_rcu to i64), i64* %1, align 8
  %2 = bitcast [1 x %struct.rcu_synchronize]* %__rs_array to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %2) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false), !annotation !39
  %arraydecay = getelementptr inbounds [1 x void (%struct.callback_head*, void (%struct.callback_head*)*)*], [1 x void (%struct.callback_head*, void (%struct.callback_head*)*)*]* %__crcu_array, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [1 x %struct.rcu_synchronize], [1 x %struct.rcu_synchronize]* %__rs_array, i64 0, i64 0
  call void @__wait_rcu_gp(i1 noundef false, i32 noundef 1, void (%struct.callback_head*, void (%struct.callback_head*)*)** noundef nonnull %arraydecay, %struct.rcu_synchronize* noundef nonnull %arraydecay4) #28
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %2) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  br label %if.end6

if.end6:                                          ; preds = %entry, %do.body3, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @kfree_rcu_scheduler_running() local_unnamed_addr #10 section ".init.text" {
entry:
  %call53 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp54 = icmp ult i32 %call53, %0
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %cleanup
  %call55 = phi i32 [ %call, %cleanup ], [ %call53, %entry ]
  %idxprom = sext i32 %call55 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.kfree_rcu_cpu* @krc to i64)
  %2 = inttoptr i64 %add to %struct.kfree_rcu_cpu*
  %lock = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 3
  %call5 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %arrayidx8 = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 1, i64 0
  %3 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %arrayidx8, align 8
  %tobool.not = icmp eq %struct.kvfree_rcu_bulk_data* %3, null
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %arrayidx10 = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 1, i64 1
  %4 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %arrayidx10, align 8
  %tobool11.not = icmp eq %struct.kvfree_rcu_bulk_data* %4, null
  br i1 %tobool11.not, label %land.lhs.true12, label %lor.lhs.false

land.lhs.true12:                                  ; preds = %land.lhs.true
  %head = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 0
  %5 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  %tobool13.not = icmp eq %struct.callback_head* %5, null
  br i1 %tobool13.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true12, %land.lhs.true, %for.body
  %monitor_todo = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 5
  %6 = load i8, i8* %monitor_todo, align 8, !range !30
  %tobool14.not = icmp eq i8 %6, 0
  br i1 %tobool14.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i8 1, i8* %monitor_todo, align 8
  %monitor_work = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 4
  call fastcc void @schedule_delayed_work_on(i32 noundef %call55, %struct.delayed_work* noundef %monitor_work) #24
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %land.lhs.true12, %if.end
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call5) #24
  %call = call i32 @cpumask_next(i32 noundef %call55, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_delayed_work_on(i32 noundef %cpu, %struct.delayed_work* noundef %dwork) unnamed_addr #1 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  %call = call i1 @queue_delayed_work_on(i32 noundef %cpu, %struct.workqueue_struct* noundef %0, %struct.delayed_work* noundef %dwork, i64 noundef 5) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rcu_blocking_is_gp() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !40
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 3), align 4
  %cmp = icmp slt i32 %0, 2
  %conv = zext i1 %cmp to i32
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !41
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_gp_is_expedited() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @synchronize_rcu_expedited() local_unnamed_addr #1 {
entry:
  %rew = alloca %struct.rcu_exp_work, align 8
  %__crcu_array = alloca [1 x void (%struct.callback_head*, void (%struct.callback_head*)*)*], align 8
  %__rs_array = alloca [1 x %struct.rcu_synchronize], align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %0 = load i32, i32* @rcu_scheduler_active, align 4
  %cmp = icmp eq i32 %0, 1
  %1 = bitcast %struct.rcu_exp_work* %rew to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !39
  %call = call fastcc i32 @rcu_blocking_is_gp() #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup61

if.end:                                           ; preds = %entry
  %call1 = call i1 @rcu_gp_is_normal() #28
  br i1 %call1, label %do.body3, label %if.end7

do.body3:                                         ; preds = %if.end
  %2 = bitcast [1 x void (%struct.callback_head*, void (%struct.callback_head*)*)*]* %__crcu_array to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #26
  %3 = bitcast [1 x void (%struct.callback_head*, void (%struct.callback_head*)*)*]* %__crcu_array to i64*
  store i64 ptrtoint (void (%struct.callback_head*, void (%struct.callback_head*)*)* @call_rcu to i64), i64* %3, align 8
  %4 = bitcast [1 x %struct.rcu_synchronize]* %__rs_array to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false), !annotation !39
  %arraydecay = getelementptr inbounds [1 x void (%struct.callback_head*, void (%struct.callback_head*)*)*], [1 x void (%struct.callback_head*, void (%struct.callback_head*)*)*]* %__crcu_array, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [1 x %struct.rcu_synchronize], [1 x %struct.rcu_synchronize]* %__rs_array, i64 0, i64 0
  call void @__wait_rcu_gp(i1 noundef false, i32 noundef 1, void (%struct.callback_head*, void (%struct.callback_head*)*)** noundef nonnull %arraydecay, %struct.rcu_synchronize* noundef nonnull %arraydecay4) #28
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #26
  br label %cleanup61

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i64 @rcu_exp_gp_seq_snap() #24, !range !42
  %call9 = call fastcc i1 @exp_funnel_lock(i64 noundef %call8) #24
  br i1 %call9, label %cleanup61, label %if.end11

if.end11:                                         ; preds = %if.end7
  br i1 %cmp, label %if.then15, label %if.else, !prof !13

if.then15:                                        ; preds = %if.end11
  call fastcc void @rcu_exp_sel_wait_wake(i64 noundef %call8) #24
  br label %if.end25

if.else:                                          ; preds = %if.end11
  %rew_s = getelementptr inbounds %struct.rcu_exp_work, %struct.rcu_exp_work* %rew, i64 0, i32 0
  store i64 %call8, i64* %rew_s, align 8
  %rew_work = getelementptr inbounds %struct.rcu_exp_work, %struct.rcu_exp_work* %rew, i64 0, i32 1
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rcu_exp_work, %struct.rcu_exp_work* %rew, i64 0, i32 1, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry19 = getelementptr inbounds %struct.rcu_exp_work, %struct.rcu_exp_work* %rew, i64 0, i32 1, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry19) #24
  %func = getelementptr inbounds %struct.rcu_exp_work, %struct.rcu_exp_work* %rew, i64 0, i32 1, i32 2
  store void (%struct.work_struct*)* @wait_rcu_exp_gp, void (%struct.work_struct*)** %func, align 8
  %5 = load %struct.workqueue_struct*, %struct.workqueue_struct** @rcu_gp_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %5, %struct.work_struct* noundef %rew_work) #24
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then15
  %call34 = call fastcc i1 @sync_exp_work_done(i64 noundef %call8) #24
  br i1 %call34, label %do.end47, label %if.end36

if.end36:                                         ; preds = %if.end25
  %6 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !annotation !39
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #28
  %call37 = call fastcc i64 @rcu_seq_ctr(i64 noundef %call8) #24
  %and = and i64 %call37, 3
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 35, i64 %and
  %call3881 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %arrayidx, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #28
  %call3982 = call fastcc i1 @sync_exp_work_done(i64 noundef %call8) #24
  br i1 %call3982, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end36, %cleanup
  call void @schedule() #28
  %call38 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %arrayidx, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #28
  %call39 = call fastcc i1 @sync_exp_work_done(i64 noundef %call8) #24
  br i1 %call39, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end36
  call void @finish_wait(%struct.wait_queue_head* noundef %arrayidx, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #26
  br label %do.end47

do.end47:                                         ; preds = %if.end25, %for.end
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !43
  call void @mutex_unlock(%struct.mutex* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 18)) #28
  br label %cleanup61

cleanup61:                                        ; preds = %do.end47, %if.end7, %entry, %do.body3
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_rcu_gp(i1 noundef, i32 noundef, void (%struct.callback_head*, void (%struct.callback_head*)*)** noundef, %struct.rcu_synchronize* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @get_state_synchronize_rcu() local_unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !44
  %call = call fastcc i64 @rcu_seq_snap(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rcu_seq_snap(i64* noundef %sp) unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* %sp, align 8
  %add1 = add i64 %0, 7
  %and = and i64 %add1, -4
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !45
  ret i64 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @start_poll_synchronize_rcu() local_unnamed_addr #1 {
entry:
  %call = call i64 @get_state_synchronize_rcu() #24
  %call3 = call fastcc i64 @arch_local_irq_save() #24
  %call13 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call13, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 8
  %1 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %1, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #24
  %call20 = call fastcc i1 @rcu_start_this_gp(%struct.rcu_node* noundef %1, %struct.rcu_data* noundef %0, i64 noundef %call) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call3) #24
  br i1 %call20, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @rcu_gp_kthread_wake() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !46
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rcu_start_this_gp(%struct.rcu_node* noundef %rnp_start, %struct.rcu_data* noundef %rdp, i64 noundef %gp_seq_req) unnamed_addr #1 {
entry:
  call fastcc void @trace_rcu_this_gp(%struct.rcu_node* noundef %rnp_start) #24
  br label %for.cond

for.cond:                                         ; preds = %if.end43, %entry
  %rnp.0 = phi %struct.rcu_node* [ %rnp_start, %entry ], [ %2, %if.end43 ]
  %cmp.not = icmp eq %struct.rcu_node* %rnp.0, %rnp_start
  br i1 %cmp.not, label %if.end, label %do.body1

do.body1:                                         ; preds = %for.cond
  %lock2 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock2) #24
  br label %if.end

if.end:                                           ; preds = %do.body1, %for.cond
  %gp_seq_needed = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0, i64 0, i32 2
  %0 = load i64, i64* %gp_seq_needed, align 16
  %sub = sub i64 %0, %gp_seq_req
  %cmp8 = icmp sgt i64 %sub, -1
  br i1 %cmp8, label %unlock_out.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0, i64 0, i32 1
  %call = call fastcc i1 @rcu_seq_started(i64* noundef %gp_seq, i64 noundef %gp_seq_req) #24
  br i1 %call, label %unlock_out.sink.split, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  br i1 %cmp.not, label %do.body20, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %call12 = call fastcc i64 @rcu_seq_current(i64* noundef %gp_seq) #24
  %call13 = call fastcc i32 @rcu_seq_state(i64 noundef %call12) #24
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %do.body20, label %unlock_out.sink.split

do.body20:                                        ; preds = %lor.lhs.false9, %land.lhs.true
  store volatile i64 %gp_seq_req, i64* %gp_seq_needed, align 16
  %call27 = call fastcc i64 @rcu_seq_current(i64* noundef %gp_seq) #24
  %call28 = call fastcc i32 @rcu_seq_state(i64 noundef %call27) #24
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %unlock_out.sink.split

if.end31:                                         ; preds = %do.body20
  br i1 %cmp.not, label %if.end43, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.end31
  %parent = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0, i64 0, i32 20
  %1 = load %struct.rcu_node*, %struct.rcu_node** %parent, align 8
  %cmp34.not = icmp eq %struct.rcu_node* %1, null
  br i1 %cmp34.not, label %if.end43, label %do.end39

do.end39:                                         ; preds = %land.lhs.true33
  %lock40 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock40) #24
  br label %if.end43

if.end43:                                         ; preds = %do.end39, %land.lhs.true33, %if.end31
  %parent44 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0, i64 0, i32 20
  %2 = load %struct.rcu_node*, %struct.rcu_node** %parent44, align 8
  %tobool45.not = icmp eq %struct.rcu_node* %2, null
  br i1 %tobool45.not, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end43
  %call49 = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool50.not = icmp eq i32 %call49, 0
  call fastcc void @trace_rcu_this_gp(%struct.rcu_node* noundef %rnp.0) #24
  br i1 %tobool50.not, label %if.end52, label %unlock_out

if.end52:                                         ; preds = %for.end
  %3 = load i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %4 = or i16 %3, 1
  store volatile i16 %4, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %5 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %5, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 32), align 64
  %6 = load volatile %struct.task_struct*, %struct.task_struct** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 8), align 8
  %tobool75.not = icmp eq %struct.task_struct* %6, null
  br i1 %tobool75.not, label %unlock_out.sink.split, label %unlock_out

unlock_out.sink.split:                            ; preds = %do.body20, %if.end, %lor.lhs.false, %land.lhs.true, %if.end52
  %rnp.0.lcssa188.sink = phi %struct.rcu_node* [ %rnp.0, %if.end52 ], [ %rnp.0, %land.lhs.true ], [ %rnp.0, %lor.lhs.false ], [ %rnp.0, %if.end ], [ %rnp_start, %do.body20 ]
  call fastcc void @trace_rcu_this_gp(%struct.rcu_node* noundef %rnp.0.lcssa188.sink) #24
  br label %unlock_out

unlock_out:                                       ; preds = %unlock_out.sink.split, %for.end, %if.end52
  %ret.0.off0 = phi i1 [ true, %if.end52 ], [ false, %for.end ], [ false, %unlock_out.sink.split ]
  %7 = load i64, i64* %gp_seq_needed, align 16
  %sub81 = sub i64 %gp_seq_req, %7
  %cmp82 = icmp slt i64 %sub81, 0
  br i1 %cmp82, label %do.body89, label %if.end107

do.body89:                                        ; preds = %unlock_out
  %gp_seq_needed91 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp_start, i64 0, i32 2
  store volatile i64 %7, i64* %gp_seq_needed91, align 16
  %8 = load i64, i64* %gp_seq_needed, align 16
  %gp_seq_needed102 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 1
  store volatile i64 %8, i64* %gp_seq_needed102, align 8
  br label %if.end107

if.end107:                                        ; preds = %do.body89, %unlock_out
  br i1 %cmp.not, label %if.end118, label %do.end114

do.end114:                                        ; preds = %if.end107
  %lock115 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock115) #24
  br label %if.end118

if.end118:                                        ; preds = %do.end114, %if.end107
  ret i1 %ret.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @poll_state_synchronize_rcu(i64 noundef %oldstate) local_unnamed_addr #1 {
entry:
  %call = call fastcc i1 @rcu_seq_done(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), i64 noundef %oldstate) #24
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !47
  br label %return

return:                                           ; preds = %entry, %if.then
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_seq_done(i64* noundef %sp, i64 noundef %s) unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* %sp, align 8
  %sub = sub i64 %0, %s
  %cmp = icmp sgt i64 %sub, -1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cond_synchronize_rcu(i64 noundef %oldstate) local_unnamed_addr #1 {
entry:
  %call = call i1 @poll_state_synchronize_rcu(i64 noundef %oldstate) #24
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @synchronize_rcu() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_barrier() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @rcu_seq_snap(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 17)) #24, !range !42
  call fastcc void @rcu_barrier_trace() #24
  call void @mutex_lock(%struct.mutex* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 14)) #28
  %call1 = call fastcc i1 @rcu_seq_done(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 17), i64 noundef %call) #24
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @rcu_barrier_trace() #24
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !48
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @rcu_seq_start(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 17)) #24
  call fastcc void @rcu_barrier_trace() #24
  call fastcc void @init_completion() #24
  store volatile i32 2, i32* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 15, i32 0), align 16
  %call293 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp95 = icmp ult i32 %call293, %0
  br i1 %cmp95, label %do.body, label %for.end

do.body:                                          ; preds = %if.end, %for.cond.backedge
  %call296 = phi i32 [ %call2, %for.cond.backedge ], [ %call293, %if.end ]
  %conv397 = zext i32 %call296 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %conv397
  %1 = load i64, i64* %arrayidx, align 8
  %call8 = call fastcc i1 @cpu_online(i32 noundef %call296) #24
  br i1 %call8, label %if.end14, label %for.cond.backedge, !prof !16

if.end14:                                         ; preds = %do.body
  %add = add i64 %1, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %2 = inttoptr i64 %add to %struct.rcu_data*
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 14
  %call15 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  %tobool16.not = icmp eq i64 %call15, 0
  br i1 %tobool16.not, label %if.else, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end14
  %call19 = call fastcc i1 @cpu_online(i32 noundef %call296) #24
  br i1 %call19, label %if.then21, label %if.else

if.then21:                                        ; preds = %land.lhs.true17
  call fastcc void @rcu_barrier_trace() #24
  %3 = inttoptr i64 %conv397 to i8*
  %call24 = call i32 @smp_call_function_single(i32 noundef %call296, void (i8*)* noundef nonnull @rcu_barrier_func, i8* noundef %3, i32 noundef 1) #28
  br label %for.cond.backedge

if.else:                                          ; preds = %land.lhs.true17, %if.end14
  %call26 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  %tobool27.not = icmp eq i64 %call26, 0
  br i1 %tobool27.not, label %if.else48, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.else
  %call30 = call fastcc i1 @cpu_online(i32 noundef %call296) #24
  br i1 %call30, label %if.else48, label %if.then40, !prof !16

if.then40:                                        ; preds = %land.lhs.true28
  call fastcc void @rcu_barrier_trace() #24
  call fastcc void @arch_local_irq_disable() #24
  %4 = inttoptr i64 %conv397 to i8*
  call void @rcu_barrier_func(i8* noundef %4) #24
  call fastcc void @arch_local_irq_enable() #24
  br label %for.cond.backedge

if.else48:                                        ; preds = %land.lhs.true28, %if.else
  %call50 = call fastcc i1 @cpu_online(i32 noundef %call296) #24
  call fastcc void @rcu_barrier_trace() #24
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.else48, %if.then21, %if.then40, %do.body
  %call2 = call i32 @cpumask_next(i32 noundef %call296, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %5
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %for.cond.backedge, %if.end
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef 2) #28
  %cmp.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then68, label %if.end69

if.then68:                                        ; preds = %for.end
  call void @complete(%struct.completion* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 16)) #28
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %for.end
  call void @wait_for_completion(%struct.completion* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 16)) #28
  call fastcc void @rcu_barrier_trace() #24
  call fastcc void @rcu_seq_end(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 17)) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then
  call void @mutex_unlock(%struct.mutex* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 14)) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @rcu_barrier_trace() unnamed_addr #6 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 15, i32 0), align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_seq_start(i64* noundef %sp) unnamed_addr #1 {
entry:
  %0 = load i64, i64* %sp, align 8
  %add = add i64 %0, 1
  store volatile i64 %add, i64* %sp, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !49
  %1 = load i64, i64* %sp, align 8
  %call = call fastcc i32 @rcu_seq_state(i64 noundef %1) #24
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/rcu.h\22; .popsection; .long 14472b - 14470b; .short 59; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !50
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion() unnamed_addr #1 {
entry:
  store i32 0, i32* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 16, i32 0), align 8
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 16, i32 1), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_online(i32 noundef %cpu) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) #24
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #6 {
entry:
  %len = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 3
  %0 = load volatile i64, i64* %len, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, void (i8*)* noundef, i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_barrier_func(i8* noundef %cpu_in) #1 {
entry:
  %0 = ptrtoint i8* %cpu_in to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %0
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %2 = inttoptr i64 %add to %struct.rcu_data*
  call fastcc void @rcu_barrier_trace() #24
  %func = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 27, i32 1
  store void (%struct.callback_head*)* @rcu_barrier_callback, void (%struct.callback_head*)** %func, align 8
  %3 = load volatile i64, i64* @jiffies, align 64
  %barrier_head = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 27
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 14
  %call20 = call i1 @rcu_segcblist_entrain(%struct.rcu_segcblist* noundef %cblist, %struct.callback_head* noundef %barrier_head) #28
  br i1 %call20, label %if.then21, label %if.else

if.then21:                                        ; preds = %entry
  call fastcc void @__ll_sc_atomic_add() #28
  br label %if.end23

if.else:                                          ; preds = %entry
  call fastcc void @rcu_barrier_trace() #24
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #24
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !13

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #26, !srcloc !51
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #26, !srcloc !52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_seq_end(i64* noundef %sp) unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !53
  %0 = load i64, i64* %sp, align 8
  %call = call fastcc i32 @rcu_seq_state(i64 noundef %0) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/rcu.h\22; .popsection; .long 14472b - 14470b; .short 72; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call18 = call fastcc i64 @rcu_seq_endval(i64* noundef %sp) #24
  store volatile i64 %call18, i64* %sp, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rcutree_prepare_cpu(i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %call5 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  %qlen_last_fqs_check = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 15
  store i64 0, i64* %qlen_last_fqs_check, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 28), align 32
  %n_force_qs_snap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 17
  store i64 %2, i64* %n_force_qs_snap, align 8
  %3 = load i64, i64* @blimit, align 8
  %blimit = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 18
  store i64 %3, i64* %blimit, align 8
  %dynticks_nesting = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 20
  store i64 1, i64* %dynticks_nesting, align 8
  call fastcc void @rcu_dynticks_eqs_online() #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 14
  %call20 = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %cblist) #24
  br i1 %call20, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @rcu_segcblist_init(%struct.rcu_segcblist* noundef %cblist) #28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 8
  %4 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %lock23 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %4, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock23) #24
  %beenonline = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 4
  store i8 1, i8* %beenonline, align 1
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %4, i64 0, i32 1
  %5 = load volatile i64, i64* %gp_seq, align 8
  %gp_seq33 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 0
  store i64 %5, i64* %gp_seq33, align 8
  %gp_seq_needed = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 1
  store i64 %5, i64* %gp_seq_needed, align 8
  %cpu_no_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 2
  %norm = bitcast %union.rcu_noqs* %cpu_no_qs to i8*
  store i8 1, i8* %norm, align 8
  %core_needs_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 3
  store i8 0, i8* %core_needs_qs, align 2
  %rcu_iw_pending = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 34
  store i8 0, i8* %rcu_iw_pending, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 33, i32 0, i32 0, i32 0
  store %struct.llist_node* null, %struct.llist_node** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx62 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 33, i32 0, i32 1, i32 0
  store i32 8, i32* %.compoundliteral.sroa.2.0..sroa_idx62, align 8
  %.compoundliteral.sroa.3.0..sroa_idx63 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 33, i32 0, i32 2
  store i16 0, i16* %.compoundliteral.sroa.3.0..sroa_idx63, align 4
  %.compoundliteral.sroa.4.0..sroa_idx64 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 33, i32 0, i32 3
  store i16 0, i16* %.compoundliteral.sroa.4.0..sroa_idx64, align 2
  %.compoundliteral.sroa.5.0..sroa_idx65 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 33, i32 1
  store void (%struct.irq_work*)* @rcu_iw_handler, void (%struct.irq_work*)** %.compoundliteral.sroa.5.0..sroa_idx65, align 8
  %sub = add i64 %5, -1
  %rcu_iw_gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 35
  store i64 %sub, i64* %rcu_iw_gp_seq, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock23, i64 noundef %call5) #24
  %6 = load i32, i32* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 3), align 4
  %add57 = add i32 %6, 1
  store volatile i32 %add57, i32* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 3), align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_dynticks_eqs_online() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %counter.i = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 22, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i64 @rcu_dynticks_inc(i32 noundef 1) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @rcu_segcblist_test_flags(%struct.rcu_segcblist* noundef %rsclp) #24
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_init(%struct.rcu_segcblist* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_iw_handler(%struct.irq_work* nocapture noundef %iwp) #1 {
entry:
  %add.ptr = getelementptr %struct.irq_work, %struct.irq_work* %iwp, i64 -15, i32 1
  %mynode = getelementptr inbounds void (%struct.irq_work*)*, void (%struct.irq_work*)** %add.ptr, i64 3
  %0 = bitcast void (%struct.irq_work*)** %mynode to %struct.rcu_node**
  %1 = load %struct.rcu_node*, %struct.rcu_node** %0, align 8
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %1, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #24
  %rcu_iw_pending = getelementptr inbounds void (%struct.irq_work*)*, void (%struct.irq_work*)** %add.ptr, i64 46
  %2 = bitcast void (%struct.irq_work*)** %rcu_iw_pending to i8*
  %3 = load i8, i8* %2, align 8, !range !30
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.then24, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_stall.h\22; .popsection; .long 14472b - 14470b; .short 192; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !55
  br label %do.end30

if.then24:                                        ; preds = %entry
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %1, i64 0, i32 1
  %4 = load i64, i64* %gp_seq, align 8
  %rcu_iw_gp_seq = getelementptr inbounds void (%struct.irq_work*)*, void (%struct.irq_work*)** %add.ptr, i64 47
  %5 = bitcast void (%struct.irq_work*)** %rcu_iw_gp_seq to i64*
  store i64 %4, i64* %5, align 8
  store i8 0, i8* %2, align 8
  br label %do.end30

do.end30:                                         ; preds = %if.then, %if.then24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rcutree_online_cpu(i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 8
  %2 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 9
  %3 = load i64, i64* %grpmask, align 8
  %ffmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 13
  %4 = load i64, i64* %ffmask, align 8
  %or = or i64 %4, %3
  store i64 %or, i64* %ffmask, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  %5 = load i32, i32* @rcu_scheduler_active, align 4
  %cmp27 = icmp eq i32 %5, 0
  br i1 %cmp27, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @sync_sched_exp_online_cleanup(i32 noundef %cpu) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sync_sched_exp_online_cleanup(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 8
  %2 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !56
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add10 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add10 to i32*
  %4 = load i32, i32* %3, align 4
  %expmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 9
  %5 = load volatile i64, i64* %expmask, align 8
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 9
  %6 = load i64, i64* %grpmask, align 8
  %and = and i64 %6, %5
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call28 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add29 = add i64 %call28, ptrtoint (i8* getelementptr (%struct.anon.81, %struct.anon.81* bitcast (%union.rcu_noqs* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 2) to %struct.anon.81*), i64 0, i32 1) to i64)
  %7 = inttoptr i64 %add29 to i8*
  %8 = load i8, i8* %7, align 1
  %tobool31.not = icmp eq i8 %8, 0
  br i1 %tobool31.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !57
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmp = icmp eq i32 %4, %cpu
  br i1 %cmp, label %do.body35, label %if.end58

do.body35:                                        ; preds = %if.end
  %call39 = call fastcc i64 @arch_local_irq_save() #24
  call fastcc void @rcu_exp_need_qs() #24
  call fastcc void @arch_local_irq_restore(i64 noundef %call39) #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !58
  br label %cleanup

if.end58:                                         ; preds = %if.end
  %call59 = call i32 @smp_call_function_single(i32 noundef %cpu, void (i8*)* noundef nonnull @rcu_exp_handler, i8* noundef null, i32 noundef 0) #28
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !59
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup, label %if.then69, !prof !16

if.then69:                                        ; preds = %if.end58
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_exp.h\22; .popsection; .long 14472b - 14470b; .short 778; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !60
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then69, %do.body35, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rcutree_offline_cpu(i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 8
  %2 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 9
  %3 = load i64, i64* %grpmask, align 8
  %neg = xor i64 %3, -1
  %ffmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 13
  %4 = load i64, i64* %ffmask, align 8
  %and = and i64 %4, %neg
  store i64 %and, i64* %ffmask, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_cpu_starting(i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %cpu_started = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 7
  %2 = load i8, i8* %cpu_started, align 2, !range !30
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  store i8 1, i8* %cpu_started, align 2
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 8
  %3 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 9
  %4 = load i64, i64* %grpmask, align 8
  %ofl_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 8
  %5 = load i64, i64* %ofl_seq, align 64
  %add8 = add i64 %5, 1
  store volatile i64 %add8, i64* %ofl_seq, align 64
  %and = and i64 %add8, 1
  %tobool15.not = icmp eq i64 %and, 0
  br i1 %tobool15.not, label %if.then24, label %if.end25, !prof !13

if.then24:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4253; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !61
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !62
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %qsmaskinitnext = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 7
  %6 = load i64, i64* %qsmaskinitnext, align 8
  %or = or i64 %6, %4
  store volatile i64 %or, i64* %qsmaskinitnext, align 8
  %expmaskinitnext = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 11
  %7 = load i64, i64* %expmaskinitnext, align 8
  %and55 = and i64 %7, %4
  %tobool56.not = icmp eq i64 %and55, 0
  %or60 = or i64 %7, %4
  store i64 %or60, i64* %expmaskinitnext, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 2), align 8
  %conv63 = zext i1 %tobool56.not to i32
  %add64 = add i32 %8, %conv63
  call void asm sideeffect "stlr ${1:w}, $0", "=*Q,r,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 2), i32 %add64) #26, !srcloc !63
  call fastcc void @rcu_gpnum_ovf(%struct.rcu_node* noundef %3, %struct.rcu_data* noundef %1) #24
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %rcu_onl_gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 38
  store i64 %9, i64* %rcu_onl_gp_seq, align 8
  %10 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %rcu_onl_gp_flags = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 39
  store i16 %10, i16* %rcu_onl_gp_flags, align 8
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 4
  %11 = load i64, i64* %qsmask, align 32
  %and80 = and i64 %11, %4
  %tobool81.not = icmp eq i64 %and80, 0
  br i1 %tobool81.not, label %do.body110, label %if.then94, !prof !16

if.then94:                                        ; preds = %if.end25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4267; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !64
  call fastcc void @rcu_disable_urgency_upon_qs(%struct.rcu_data* noundef %1) #24
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 1
  %12 = load i64, i64* %gp_seq, align 8
  call fastcc void @rcu_report_qs_rnp(i64 noundef %4, %struct.rcu_node* noundef %3, i64 noundef %12, i64 noundef %call) #24
  br label %if.end121

do.body110:                                       ; preds = %if.end25
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  br label %if.end121

if.end121:                                        ; preds = %do.body110, %if.then94
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !65
  %13 = load i64, i64* %ofl_seq, align 64
  %add128 = add i64 %13, 1
  store volatile i64 %add128, i64* %ofl_seq, align 64
  %and136 = and i64 %add128, 1
  %tobool137.not = icmp eq i64 %and136, 0
  br i1 %tobool137.not, label %if.end151, label %if.then150, !prof !16

if.then150:                                       ; preds = %if.end121
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4276; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !66
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %if.end121
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end151
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @rcu_gpnum_ovf(%struct.rcu_node* nocapture noundef readonly %rnp, %struct.rcu_data* noundef %rdp) unnamed_addr #12 {
entry:
  %gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 0
  %call = call fastcc i64 @rcu_seq_current(i64* noundef %gp_seq) #24
  %add = add i64 %call, 4611686018427387903
  %gp_seq1 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 1
  %0 = load i64, i64* %gp_seq1, align 8
  %sub = sub i64 %add, %0
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %do.body5, label %if.end

do.body5:                                         ; preds = %entry
  %gpwrap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 5
  store volatile i8 1, i8* %gpwrap, align 4
  %.pre = load i64, i64* %gp_seq1, align 8
  br label %if.end

if.end:                                           ; preds = %do.body5, %entry
  %1 = phi i64 [ %.pre, %do.body5 ], [ %0, %entry ]
  %rcu_iw_gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 35
  %2 = load i64, i64* %rcu_iw_gp_seq, align 8
  %add8 = add i64 %2, 4611686018427387903
  %sub10 = sub i64 %add8, %1
  %cmp11 = icmp slt i64 %sub10, 0
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  %add14 = add i64 %1, 4611686018427387903
  store i64 %add14, i64* %rcu_iw_gp_seq, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @rcu_disable_urgency_upon_qs(%struct.rcu_data* noundef %rdp) unnamed_addr #12 {
entry:
  %rcu_urgent_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 24
  store volatile i8 0, i8* %rcu_urgent_qs, align 1
  %rcu_need_heavy_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 23
  store volatile i8 0, i8* %rcu_need_heavy_qs, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_report_qs_rnp(i64 noundef %mask, %struct.rcu_node* noundef %rnp, i64 noundef %gps, i64 noundef %flags) unnamed_addr #1 {
entry:
  %qsmask185 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 4
  %0 = load i64, i64* %qsmask185, align 32
  %and186 = and i64 %0, %mask
  %tobool187 = icmp eq i64 %and186, 0
  %tobool1188 = icmp ne i64 %mask, 0
  %or.cond189 = and i1 %tobool1188, %tobool187
  br i1 %or.cond189, label %do.body6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry, %do.body111
  %1 = phi i64 [ %9, %do.body111 ], [ %0, %entry ]
  %qsmask194 = phi i64* [ %qsmask, %do.body111 ], [ %qsmask185, %entry ]
  %mask.addr.0193 = phi i64 [ %6, %do.body111 ], [ %mask, %entry ]
  %rnp.addr.0192 = phi %struct.rcu_node* [ %7, %do.body111 ], [ %rnp, %entry ]
  %flags.addr.0191 = phi i64 [ %call131, %do.body111 ], [ %flags, %entry ]
  %oldmask.0190 = phi i64 [ %8, %do.body111 ], [ 0, %entry ]
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0192, i64 0, i32 1
  %2 = load i64, i64* %gp_seq, align 8
  %cmp.not = icmp eq i64 %2, %gps
  br i1 %cmp.not, label %if.end, label %do.body6

do.body6:                                         ; preds = %do.body111, %lor.lhs.false, %entry
  %flags.addr.0.lcssa = phi i64 [ %flags, %entry ], [ %flags.addr.0191, %lor.lhs.false ], [ %call131, %do.body111 ]
  %rnp.addr.0.lcssa = phi %struct.rcu_node* [ %rnp, %entry ], [ %rnp.addr.0192, %lor.lhs.false ], [ %7, %do.body111 ]
  %lock8 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0.lcssa, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock8, i64 noundef %flags.addr.0.lcssa) #24
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool13.not = icmp eq i64 %oldmask.0190, 0
  br i1 %tobool13.not, label %if.end50, label %if.then22, !prof !16

if.then22:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2193; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !68
  %.pre = load i64, i64* %qsmask194, align 32
  br label %if.end50

if.end50:                                         ; preds = %if.end, %if.then22
  %3 = phi i64 [ %1, %if.end ], [ %.pre, %if.then22 ]
  %neg = xor i64 %mask.addr.0193, -1
  %and65 = and i64 %3, %neg
  store volatile i64 %and65, i64* %qsmask194, align 32
  %cmp80.not = icmp eq i64 %and65, 0
  br i1 %cmp80.not, label %lor.lhs.false82, label %do.body90

lor.lhs.false82:                                  ; preds = %if.end50
  %4 = load i64, i64* %gp_seq, align 8
  %completedqs = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0192, i64 0, i32 3
  store i64 %4, i64* %completedqs, align 8
  %parent = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0192, i64 0, i32 20
  %5 = load %struct.rcu_node*, %struct.rcu_node** %parent, align 8
  %cmp103 = icmp eq %struct.rcu_node* %5, null
  br i1 %cmp103, label %for.end, label %do.body111

do.body90:                                        ; preds = %if.end50
  %lock96 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0192, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock96, i64 noundef %flags.addr.0191) #24
  br label %cleanup

do.body111:                                       ; preds = %lor.lhs.false82
  %grpmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0192, i64 0, i32 14
  %6 = load i64, i64* %grpmask, align 16
  %lock117 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0192, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock117, i64 noundef %flags.addr.0191) #24
  %7 = load %struct.rcu_node*, %struct.rcu_node** %parent, align 8
  %lock130 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %7, i64 0, i32 0
  %call131 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock130) #24
  %8 = load volatile i64, i64* %qsmask194, align 32
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %7, i64 0, i32 4
  %9 = load i64, i64* %qsmask, align 32
  %and = and i64 %9, %6
  %tobool = icmp eq i64 %and, 0
  %tobool1 = icmp ne i64 %6, 0
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %do.body6, label %lor.lhs.false

for.end:                                          ; preds = %lor.lhs.false82
  call fastcc void @rcu_report_qs_rsp(i64 noundef %flags.addr.0191) #24
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body90, %do.body6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_report_dead(i32 noundef %cpu) local_unnamed_addr #1 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 8
  %2 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !69
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add10 = add i64 %call9, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %3 = inttoptr i64 %add10 to %struct.rcu_data*
  call fastcc void @rcu_report_exp_rdp(%struct.rcu_data* noundef %3) #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !70
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 9
  %5 = load i64, i64* %grpmask, align 8
  %ofl_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 8
  %6 = load i64, i64* %ofl_seq, align 64
  %add17 = add i64 %6, 1
  store volatile i64 %add17, i64* %ofl_seq, align 64
  %and = and i64 %add17, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4307; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !71
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !72
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 39)) #24
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 0
  %call44 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %7 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %rcu_ofl_gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 36
  store i64 %7, i64* %rcu_ofl_gp_seq, align 8
  %8 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %rcu_ofl_gp_flags = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 37
  store i16 %8, i16* %rcu_ofl_gp_flags, align 8
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 4
  %9 = load i64, i64* %qsmask, align 32
  %and60 = and i64 %9, %5
  %tobool61.not = icmp eq i64 %and60, 0
  br i1 %tobool61.not, label %do.body84, label %if.then62

if.then62:                                        ; preds = %if.end
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 1
  %10 = load i64, i64* %gp_seq, align 8
  call fastcc void @rcu_report_qs_rnp(i64 noundef %5, %struct.rcu_node* noundef %2, i64 noundef %10, i64 noundef %call44) #24
  %call71 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  br label %do.body84

do.body84:                                        ; preds = %if.end, %if.then62
  %flags.0 = phi i64 [ %call71, %if.then62 ], [ %call44, %if.end ]
  %qsmaskinitnext = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 7
  %11 = load i64, i64* %qsmaskinitnext, align 8
  %neg = xor i64 %5, -1
  %and85 = and i64 %11, %neg
  store volatile i64 %and85, i64* %qsmaskinitnext, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags.0) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 39)) #24
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !73
  %12 = load i64, i64* %ofl_seq, align 64
  %add112 = add i64 %12, 1
  store volatile i64 %add112, i64* %ofl_seq, align 64
  %and120 = and i64 %add112, 1
  %tobool121.not = icmp eq i64 %and120, 0
  br i1 %tobool121.not, label %if.end135, label %if.then134, !prof !16

if.then134:                                       ; preds = %do.body84
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4323; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !74
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %do.body84
  %cpu_started = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 7
  store i8 0, i8* %cpu_started, align 2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_report_exp_rdp(%struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  %exp_deferred_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 6
  store volatile i8 0, i8* %exp_deferred_qs, align 1
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 8
  %0 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 9
  %1 = load i64, i64* %grpmask, align 8
  call fastcc void @rcu_report_exp_cpu_mult(%struct.rcu_node* noundef %0, i64 noundef %1, i1 noundef true) #24
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @rcu_spawn_gp_kthread() #10 section ".init.text" {
entry:
  %sp = alloca %struct.sched_param, align 4
  %0 = load i32, i32* @kthread_prio, align 4
  %1 = bitcast %struct.sched_param* %sp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #26
  %2 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %sp, i64 0, i32 0, !annotation !39
  store i32 0, i32* %2, align 4, !annotation !39
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.end3, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp ugt i32 %0, 99
  br i1 %cmp1, label %if.end3, label %if.end6

if.end3:                                          ; preds = %if.else, %entry
  %.sink = phi i32 [ 0, %entry ], [ 99, %if.else ]
  store i32 %.sink, i32* @kthread_prio, align 4
  %cmp4.not = icmp eq i32 %.sink, %0
  br i1 %cmp4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end3
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.87, i64 0, i64 0), i32 noundef %.sink, i32 noundef %0) #30
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end, %if.end3
  store i32 1, i32* @rcu_scheduler_fully_active, align 4
  %3 = load i8*, i8** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 36), align 32
  %call7 = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* noundef nonnull @rcu_gp_kthread, i8* noundef null, i32 noundef -1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0), i8* noundef %3) #28
  %4 = bitcast %struct.task_struct* %call7 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %4) #24
  %.b137 = load i1, i1* @rcu_spawn_gp_kthread.__already_done, align 1
  %lnot11 = xor i1 %.b137, true
  %5 = select i1 %call8, i1 %lnot11, i1 false
  br i1 %5, label %if.then15, label %if.end43, !prof !13

if.then15:                                        ; preds = %if.end6
  store i1 true, i1* @rcu_spawn_gp_kthread.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.rcu_spawn_gp_kthread, i64 0, i64 0)) #28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4428; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !75
  br label %if.end43

if.end43:                                         ; preds = %if.then15, %if.end6
  br i1 %call8, label %cleanup, label %if.end54

if.end54:                                         ; preds = %if.end43
  %6 = load i32, i32* @kthread_prio, align 4
  %tobool55.not = icmp eq i32 %6, 0
  br i1 %tobool55.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %if.end54
  store i32 %6, i32* %2, align 4
  %call57 = call i32 @sched_setscheduler_nocheck(%struct.task_struct* noundef %call7, i32 noundef 1, %struct.sched_param* noundef nonnull %sp) #28
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end54
  %call65 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  %7 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %7, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  %8 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %8, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 32), align 64
  %9 = ptrtoint %struct.task_struct* %call7 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.task_struct** elementtype(%struct.task_struct*) getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 8), i64 %9) #26, !srcloc !76
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0), i64 noundef %call65) #24
  %call113 = call i32 @wake_up_process(%struct.task_struct* noundef %call7) #28
  call fastcc void @rcu_spawn_core_kthreads() #31
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #26
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_scheduler_starting() local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @num_online_cpus() #24
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4461; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call15 = call i64 @nr_context_switches() #28
  %cmp16.not = icmp eq i64 %call15, 0
  br i1 %cmp16.not, label %if.end31, label %if.then30, !prof !16

if.then30:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4462; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !78
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end
  call void @rcu_test_sync_prims() #28
  store i32 1, i32* @rcu_scheduler_active, align 4
  call void @rcu_test_sync_prims() #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #6 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nr_context_switches() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_test_sync_prims() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_init_geometry() local_unnamed_addr #1 {
entry:
  %rcu_capacity = alloca i64, align 8, !annotation !39
  %tmpcast = bitcast i64* %rcu_capacity to [2 x i32]*, !annotation !39
  %0 = bitcast i64* %rcu_capacity to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  %.b155 = load i1, i1* @rcu_init_geometry.initialized, align 1
  br i1 %.b155, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @rcu_init_geometry.old_nr_cpu_ids, align 8
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %conv = zext i32 %2 to i64
  %cmp.not = icmp eq i64 %1, %conv
  br i1 %cmp.not, label %cleanup, label %if.then10, !prof !16

if.then10:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4568; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !79
  br label %cleanup

if.end18:                                         ; preds = %entry
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %conv19 = zext i32 %3 to i64
  store i64 %conv19, i64* @rcu_init_geometry.old_nr_cpu_ids, align 8
  store i1 true, i1* @rcu_init_geometry.initialized, align 1
  %div = lshr i32 %3, 8
  %add = add nuw nsw i32 %div, 1
  %conv20 = zext i32 %add to i64
  %4 = load i64, i64* @jiffies_till_first_fqs, align 8
  %cmp21 = icmp eq i64 %4, -1
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  store i64 %conv20, i64* @jiffies_till_first_fqs, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end18
  %5 = load i64, i64* @jiffies_till_next_fqs, align 8
  %cmp25 = icmp eq i64 %5, -1
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i64 %conv20, i64* @jiffies_till_next_fqs, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  call fastcc void @adjust_jiffies_till_sched_qs() #24
  %6 = load i32, i32* @rcu_fanout_leaf, align 4
  %cmp29 = icmp eq i32 %6, 16
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %cmp31 = icmp eq i32 %7, 256
  %or.cond = select i1 %cmp29, i1 %cmp31, i1 false
  br i1 %or.cond, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end28
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0), i32 noundef %6, i32 noundef %7) #30
  %8 = load i32, i32* @rcu_fanout_leaf, align 4
  %9 = add i32 %8, -65
  %10 = icmp ult i32 %9, -63
  br i1 %10, label %if.then41, label %if.end61

if.then41:                                        ; preds = %do.end
  store i32 16, i32* @rcu_fanout_leaf, align 4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4605; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !80
  br label %cleanup

if.end61:                                         ; preds = %do.end
  %arrayidx = bitcast i64* %rcu_capacity to i32*
  store i32 %8, i32* %arrayidx, align 8
  %mul = shl nuw nsw i32 %8, 6
  %arrayidx66 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1
  store i32 %mul, i32* %arrayidx66, align 4
  %11 = load i32, i32* @nr_cpu_ids, align 4
  %cmp68 = icmp ugt i32 %11, %mul
  br i1 %cmp68, label %if.then70, label %for.cond91

if.then70:                                        ; preds = %if.end61
  store i32 16, i32* @rcu_fanout_leaf, align 4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4623; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !81
  br label %cleanup

for.cond91:                                       ; preds = %if.end61, %for.cond91
  %i.1 = phi i32 [ %inc98, %for.cond91 ], [ 0, %if.end61 ]
  %idxprom92 = sext i32 %i.1 to i64
  %arrayidx93 = getelementptr [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %idxprom92
  %12 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp ugt i32 %11, %12
  %inc98 = add i32 %i.1, 1
  br i1 %cmp94, label %for.cond91, label %for.end99

for.end99:                                        ; preds = %for.cond91
  store i32 %inc98, i32* @rcu_num_lvls, align 4
  %cmp102156 = icmp ult i32 %i.1, 2147483647
  br i1 %cmp102156, label %for.body104.lr.ph, label %for.end116.thread

for.end116.thread:                                ; preds = %for.end99
  store i32 0, i32* @rcu_num_nodes, align 4
  br label %cleanup

for.body104.lr.ph:                                ; preds = %for.end99
  %add109 = add i32 %11, -1
  %wide.trip.count = zext i32 %inc98 to i64
  %min.iters.check = icmp ult i32 %inc98, 2
  br i1 %min.iters.check, label %for.body104.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %for.body104.lr.ph
  %13 = add nsw i64 %wide.trip.count, -1
  %14 = trunc i64 %13 to i32
  %15 = sub i32 %i.1, %14
  %16 = icmp sgt i32 %15, %i.1
  %17 = icmp ugt i64 %13, 4294967295
  %18 = or i1 %16, %17
  br i1 %18, label %for.body104.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 4294967294
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %induction171 = or i64 %index, 1
  %19 = trunc i64 %index to i32
  %induction173.neg = xor i32 %19, -1
  %20 = sub i32 %i.1, %19
  %21 = add i32 %i.1, %induction173.neg
  %22 = sext i32 %20 to i64
  %23 = sext i32 %21 to i64
  %24 = getelementptr [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %22
  %25 = getelementptr [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %23
  %26 = load i32, i32* %24, align 4
  %27 = load i32, i32* %25, align 4
  %28 = add i32 %add109, %26
  %29 = add i32 %add109, %27
  %30 = udiv i32 %28, %26
  %31 = udiv i32 %29, %27
  %32 = getelementptr [2 x i32], [2 x i32]* @num_rcu_lvl, i64 0, i64 %index
  %33 = getelementptr [2 x i32], [2 x i32]* @num_rcu_lvl, i64 0, i64 %induction171
  store i32 %30, i32* %32, align 4
  store i32 %31, i32* %33, align 4
  %index.next = add nuw i64 %index, 2
  %34 = icmp eq i64 %index.next, %n.vec
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end116, label %for.body104.preheader

for.body104.preheader:                            ; preds = %vector.scevcheck, %for.body104.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %for.body104.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body104

for.body104:                                      ; preds = %for.body104.preheader, %for.body104
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body104 ], [ %indvars.iv.ph, %for.body104.preheader ]
  %35 = trunc i64 %indvars.iv to i32
  %sub106 = sub i32 %i.1, %35
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %idxprom107
  %36 = load i32, i32* %arrayidx108, align 4
  %sub110 = add i32 %add109, %36
  %div111 = udiv i32 %sub110, %36
  %arrayidx113 = getelementptr [2 x i32], [2 x i32]* @num_rcu_lvl, i64 0, i64 %indvars.iv
  store i32 %div111, i32* %arrayidx113, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end116, label %for.body104, !llvm.loop !84

for.end116:                                       ; preds = %for.body104, %middle.block
  store i32 0, i32* @rcu_num_nodes, align 4
  br i1 %cmp102156, label %for.body120.preheader, label %cleanup

for.body120.preheader:                            ; preds = %for.end116
  %wide.trip.count168 = zext i32 %inc98 to i64
  %min.iters.check177 = icmp ult i32 %inc98, 2
  br i1 %min.iters.check177, label %for.body120.preheader188, label %vector.ph178

vector.ph178:                                     ; preds = %for.body120.preheader
  %n.vec180 = and i64 %wide.trip.count, 4294967294
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph178
  %index183 = phi i64 [ 0, %vector.ph178 ], [ %index.next187, %vector.body176 ]
  %vec.phi = phi i32 [ 0, %vector.ph178 ], [ %41, %vector.body176 ]
  %vec.phi186 = phi i32 [ 0, %vector.ph178 ], [ %42, %vector.body176 ]
  %induction185 = or i64 %index183, 1
  %37 = getelementptr [2 x i32], [2 x i32]* @num_rcu_lvl, i64 0, i64 %index183
  %38 = getelementptr [2 x i32], [2 x i32]* @num_rcu_lvl, i64 0, i64 %induction185
  %39 = load i32, i32* %37, align 4
  %40 = load i32, i32* %38, align 4
  %41 = add i32 %vec.phi, %39
  %42 = add i32 %vec.phi186, %40
  %index.next187 = add nuw i64 %index183, 2
  %43 = icmp eq i64 %index.next187, %n.vec180
  br i1 %43, label %middle.block174, label %vector.body176, !llvm.loop !85

middle.block174:                                  ; preds = %vector.body176
  %bin.rdx = add i32 %42, %41
  %cmp.n182 = icmp eq i64 %n.vec180, %wide.trip.count
  br i1 %cmp.n182, label %for.cond117.cleanup.loopexit_crit_edge, label %for.body120.preheader188

for.body120.preheader188:                         ; preds = %for.body120.preheader, %middle.block174
  %indvars.iv164.ph = phi i64 [ 0, %for.body120.preheader ], [ %n.vec180, %middle.block174 ]
  %add123158160.ph = phi i32 [ 0, %for.body120.preheader ], [ %bin.rdx, %middle.block174 ]
  br label %for.body120

for.body120:                                      ; preds = %for.body120.preheader188, %for.body120
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %for.body120 ], [ %indvars.iv164.ph, %for.body120.preheader188 ]
  %add123158160 = phi i32 [ %add123, %for.body120 ], [ %add123158160.ph, %for.body120.preheader188 ]
  %arrayidx122 = getelementptr [2 x i32], [2 x i32]* @num_rcu_lvl, i64 0, i64 %indvars.iv164
  %44 = load i32, i32* %arrayidx122, align 4
  %add123 = add i32 %add123158160, %44
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %exitcond169.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count168
  br i1 %exitcond169.not, label %for.cond117.cleanup.loopexit_crit_edge, label %for.body120, !llvm.loop !86

for.cond117.cleanup.loopexit_crit_edge:           ; preds = %for.body120, %middle.block174
  %add123.lcssa = phi i32 [ %bin.rdx, %middle.block174 ], [ %add123, %for.body120 ]
  store i32 %add123.lcssa, i32* @rcu_num_nodes, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end116.thread, %for.end116, %for.cond117.cleanup.loopexit_crit_edge, %if.end28, %if.then, %if.then10, %if.then70, %if.then41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @adjust_jiffies_till_sched_qs() unnamed_addr #1 {
entry:
  %0 = load i64, i64* @jiffies_till_sched_qs, align 8
  %cmp.not = icmp eq i64 %0, -1
  br i1 %cmp.not, label %do.end9, label %cleanup

do.end9:                                          ; preds = %entry
  %1 = load volatile i64, i64* @jiffies_till_first_fqs, align 8
  %2 = load volatile i64, i64* @jiffies_till_next_fqs, align 8
  %mul = shl i64 %2, 1
  %add = add i64 %mul, %1
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %div = lshr i32 %3, 8
  %add14 = add nuw nsw i32 %div, 25
  %conv = zext i32 %add14 to i64
  %cmp15 = icmp ult i64 %add, %conv
  %spec.select = select i1 %cmp15, i64 %conv, i64 %add
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.115, i64 0, i64 0), i64 noundef %spec.select) #30
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end9
  %spec.select.sink = phi i64 [ %spec.select, %do.end9 ], [ %0, %entry ]
  store volatile i64 %spec.select.sink, i64* @jiffies_to_sched_qs, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #13

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @rcu_init() local_unnamed_addr #10 section ".init.text" {
entry:
  call void @rcu_early_boot_tests() #28
  call fastcc void @kfree_rcu_batch_init() #31
  call fastcc void @rcu_bootup_announce() #24
  call void @rcu_init_geometry() #24
  call fastcc void @rcu_init_one() #31
  %0 = load i8, i8* @dump_tree, align 4, !range !30
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @rcu_dump_rcu_node_tree() #31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, i8* @use_softirq, align 4, !range !30
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.end, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @open_softirq(i32 noundef 9, void (%struct.softirq_action*)* noundef nonnull @rcu_core_si) #28
  br label %do.end

do.end:                                           ; preds = %if.end, %if.then2
  %call65 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_online_mask) #29
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp66 = icmp ult i32 %call65, %2
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %do.end, %for.body
  %call67 = phi i32 [ %call, %for.body ], [ %call65, %do.end ]
  %call4 = call i32 @rcutree_prepare_cpu(i32 noundef %call67) #24
  call void @rcu_cpu_starting(i32 noundef %call67) #24
  %call5 = call i32 @rcutree_online_cpu(i32 noundef %call67) #24
  %call = call i32 @cpumask_next(i32 noundef %call67, %struct.cpumask* noundef nonnull @__cpu_online_mask) #29
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end
  %call6 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 noundef 8, i32 noundef 0) #28
  store %struct.workqueue_struct* %call6, %struct.workqueue_struct** @rcu_gp_wq, align 8
  %tobool7.not = icmp eq %struct.workqueue_struct* %call6, null
  br i1 %tobool7.not, label %if.then16, label %if.end17, !prof !13

if.then16:                                        ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4731; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !87
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.end
  %call25 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 noundef 8, i32 noundef 0) #28
  store %struct.workqueue_struct* %call25, %struct.workqueue_struct** @rcu_par_gp_wq, align 8
  %tobool27.not = icmp eq %struct.workqueue_struct* %call25, null
  br i1 %tobool27.not, label %if.then42, label %if.end43, !prof !13

if.then42:                                        ; preds = %if.end17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4733; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !88
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end17
  %4 = load i64, i64* @qovld, align 8
  %cmp52 = icmp slt i64 %4, 0
  %5 = load i64, i64* @qhimark, align 8
  %mul = shl i64 %5, 1
  %storemerge = select i1 %cmp52, i64 %mul, i64 %4
  store i64 %storemerge, i64* @qovld_calc, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_early_boot_tests() local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @kfree_rcu_batch_init() unnamed_addr #10 section ".init.text" {
entry:
  %0 = load i32, i32* @rcu_delay_page_cache_fill_msec, align 4
  %1 = icmp ugt i32 %0, 100000
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp3 = icmp sgt i32 %0, 0
  %cond = select i1 %cmp3, i32 %0, i32 0
  %cmp6 = icmp ult i32 %cond, 100000
  %cond11 = select i1 %cmp6, i32 %cond, i32 100000
  store i32 %cond11, i32* @rcu_delay_page_cache_fill_msec, align 4
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.116, i64 0, i64 0), i32 noundef %cond11) #30
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call13136 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp14137 = icmp ult i32 %call13136, %2
  br i1 %cmp14137, label %for.body, label %for.end89

for.body:                                         ; preds = %if.end, %for.body
  %call13138 = phi i32 [ %call13, %for.body ], [ %call13136, %if.end ]
  %idxprom = sext i32 %call13138 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %add = add i64 %3, ptrtoint (%struct.kfree_rcu_cpu* @krc to i64)
  %4 = inttoptr i64 %add to %struct.kfree_rcu_cpu*
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 2, i64 0, i32 0, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry38 = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 2, i64 0, i32 0, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry38) #24
  %func = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 2, i64 0, i32 0, i32 0, i32 2
  store void (%struct.work_struct*)* @kfree_rcu_work, void (%struct.work_struct*)** %func, align 8
  %krcp49 = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 2, i64 0, i32 3
  store %struct.kfree_rcu_cpu* %4, %struct.kfree_rcu_cpu** %krcp49, align 8
  %.compoundliteral.sroa.0.0..sroa_idx.c = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 2, i64 1, i32 0, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx.c, align 8
  %entry38.c = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 2, i64 1, i32 0, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry38.c) #24
  %func.c = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 2, i64 1, i32 0, i32 0, i32 2
  store void (%struct.work_struct*)* @kfree_rcu_work, void (%struct.work_struct*)** %func.c, align 8
  %krcp49.c = getelementptr %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 2, i64 1, i32 3
  store %struct.kfree_rcu_cpu* %4, %struct.kfree_rcu_cpu** %krcp49.c, align 8
  %.compoundliteral56.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 4, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral56.sroa.0.0..sroa_idx, align 8
  %entry60 = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 4, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry60) #24
  %func63 = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 4, i32 0, i32 2
  store void (%struct.work_struct*)* @kfree_rcu_monitor, void (%struct.work_struct*)** %func63, align 8
  %timer = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 4, i32 1
  call void @init_timer_key(%struct.timer_list* noundef %timer, void (%struct.timer_list*)* noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, i8* noundef null, %struct.lock_class_key* noundef null) #28
  %.compoundliteral75.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 8, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral75.sroa.0.0..sroa_idx, align 8
  %entry79 = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 8, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry79) #24
  %func82 = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 8, i32 0, i32 2
  store void (%struct.work_struct*)* @fill_page_cache_func, void (%struct.work_struct*)** %func82, align 8
  %timer86 = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 8, i32 1
  call void @init_timer_key(%struct.timer_list* noundef %timer86, void (%struct.timer_list*)* noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, i8* noundef null, %struct.lock_class_key* noundef null) #28
  %initialized = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %4, i64 0, i32 6
  store i8 1, i8* %initialized, align 1
  %call13 = call i32 @cpumask_next(i32 noundef %call13138, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp14 = icmp ult i32 %call13, %5
  br i1 %cmp14, label %for.body, label %for.end89

for.end89:                                        ; preds = %for.body, %if.end
  %call90 = call i32 @register_shrinker(%struct.shrinker* noundef nonnull @kfree_rcu_shrinker) #28
  %tobool.not = icmp eq i32 %call90, 0
  br i1 %tobool.not, label %if.end97, label %do.end94

do.end94:                                         ; preds = %for.end89
  %call96 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.117, i64 0, i64 0)) #30
  br label %if.end97

if.end97:                                         ; preds = %do.end94, %for.end89
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @rcu_bootup_announce() unnamed_addr #10 section ".init.text" {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.166, i64 0, i64 0)) #30
  call fastcc void @rcu_bootup_announce_oddness() #31
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @rcu_init_one() unnamed_addr #10 section ".init.text" {
entry:
  %levelspread = alloca i64, align 8, !annotation !39
  %tmpcast = bitcast i64* %levelspread to [2 x i32]*, !annotation !39
  %0 = bitcast i64* %levelspread to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  store i64 0, i64* %levelspread, align 8, !annotation !39
  %1 = load i32, i32* @rcu_num_lvls, align 4
  %2 = add i32 %1, -3
  %3 = icmp ult i32 %2, -2
  br i1 %3, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp2199 = icmp ugt i32 %1, 1
  br i1 %cmp2199, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.122, i64 0, i64 0)) #32
  unreachable

for.body:                                         ; preds = %for.cond.preheader
  %.pre = load %struct.rcu_node*, %struct.rcu_node** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 0), align 64
  %4 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @num_rcu_lvl, i64 0, i64 0), align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %.pre, i64 %idx.ext
  store %struct.rcu_node* %add.ptr, %struct.rcu_node** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 1), align 8
  br label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %arraydecay = bitcast i64* %levelspread to i32*
  call fastcc void @rcu_init_levelspread(i32* noundef nonnull %arraydecay) #24
  %5 = load i32, i32* @rcu_num_lvls, align 4
  %i.1204 = add i32 %5, -1
  %cmp10205 = icmp sgt i32 %i.1204, -1
  br i1 %cmp10205, label %for.body11, label %do.body106

for.cond9.loopexit:                               ; preds = %if.end72, %for.body11
  %i.1 = add i32 %i.1208, -1
  %cmp10 = icmp sgt i32 %i.1, -1
  br i1 %cmp10, label %for.body11, label %do.body106

for.body11:                                       ; preds = %for.end, %for.cond9.loopexit
  %i.1208 = phi i32 [ %i.1, %for.cond9.loopexit ], [ %i.1204, %for.end ]
  %cpustride.0207 = phi i32 [ %mul, %for.cond9.loopexit ], [ 1, %for.end ]
  %i.1.in206 = phi i32 [ %i.1208, %for.cond9.loopexit ], [ %5, %for.end ]
  %idxprom12198 = zext i32 %i.1208 to i64
  %arrayidx13 = getelementptr [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %idxprom12198
  %6 = load i32, i32* %arrayidx13, align 4
  %mul = mul i32 %6, %cpustride.0207
  %arrayidx18 = getelementptr [2 x i32], [2 x i32]* @num_rcu_lvl, i64 0, i64 %idxprom12198
  %7 = load i32, i32* %arrayidx18, align 4
  %cmp19201 = icmp sgt i32 %7, 0
  br i1 %cmp19201, label %do.body21.lr.ph, label %for.cond9.loopexit

do.body21.lr.ph:                                  ; preds = %for.body11
  %arrayidx15 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom12198
  %8 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx15, align 8
  %cmp54 = icmp eq i32 %i.1208, 0
  %sub56 = add i32 %i.1.in206, -2
  %9 = zext i32 %sub56 to i64
  %arrayidx58 = getelementptr [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 %9
  %arrayidx65 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %9
  %conv73 = trunc i32 %i.1208 to i8
  br label %do.body21

do.body21:                                        ; preds = %do.body21.lr.ph, %if.end72
  %j.0203 = phi i32 [ 0, %do.body21.lr.ph ], [ %add, %if.end72 ]
  %rnp.0202 = phi %struct.rcu_node* [ %8, %do.body21.lr.ph ], [ %incdec.ptr, %if.end72 ]
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 64
  %.compoundliteral32.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 31, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral32.sroa.0.0..sroa_idx, align 64
  %10 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 1
  store i64 %10, i64* %gp_seq, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %gp_seq_needed = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 2
  store i64 %11, i64* %gp_seq_needed, align 16
  %12 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %completedqs = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 3
  store i64 %12, i64* %completedqs, align 8
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 4
  store i64 0, i64* %qsmask, align 32
  %qsmaskinit = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 6
  store i64 0, i64* %qsmaskinit, align 16
  %mul45 = mul i32 %j.0203, %mul
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 15
  store i32 %mul45, i32* %grplo, align 8
  %add = add nuw nsw i32 %j.0203, 1
  %mul46 = mul i32 %add, %mul
  %sub47 = add i32 %mul46, -1
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 16
  store i32 %sub47, i32* %grphi, align 4
  %13 = load i32, i32* @nr_cpu_ids, align 4
  %cmp49.not = icmp ult i32 %sub47, %13
  br i1 %cmp49.not, label %if.end53, label %if.then50

if.then50:                                        ; preds = %do.body21
  %sub51 = add i32 %13, -1
  store i32 %sub51, i32* %grphi, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %do.body21
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end53
  %grpnum = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 17
  store i8 0, i8* %grpnum, align 64
  %grpmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 14
  store i64 0, i64* %grpmask, align 16
  br label %if.end72

if.else:                                          ; preds = %if.end53
  %14 = load i32, i32* %arrayidx58, align 4
  %j.0203.frozen = freeze i32 %j.0203
  %.frozen = freeze i32 %14
  %div = sdiv i32 %j.0203.frozen, %.frozen
  %15 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %j.0203.frozen, %15
  %conv = trunc i32 %rem.decomposed to i8
  %grpnum59 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 17
  store i8 %conv, i8* %grpnum59, align 64
  %conv61 = and i32 %rem.decomposed, 255
  %sh_prom = zext i32 %conv61 to i64
  %shl = shl nuw i64 1, %sh_prom
  %grpmask62 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 14
  store i64 %shl, i64* %grpmask62, align 16
  %16 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx65, align 8
  %idx.ext69 = sext i32 %div to i64
  %add.ptr70 = getelementptr %struct.rcu_node, %struct.rcu_node* %16, i64 %idx.ext69
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then55
  %add.ptr70.sink = phi %struct.rcu_node* [ null, %if.then55 ], [ %add.ptr70, %if.else ]
  %17 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 20
  store %struct.rcu_node* %add.ptr70.sink, %struct.rcu_node** %17, align 8
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 18
  store i8 %conv73, i8* %level, align 1
  %blkd_tasks = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 21
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %blkd_tasks) #24
  %arrayidx75 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 35, i64 0
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %arrayidx75, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.123, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @rcu_init_one.__key) #28
  %arrayidx80 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 35, i64 1
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %arrayidx80, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.125, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @rcu_init_one.__key.124) #28
  %arrayidx85 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 35, i64 2
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %arrayidx85, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.127, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @rcu_init_one.__key.126) #28
  %arrayidx90 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 35, i64 3
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %arrayidx90, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.129, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @rcu_init_one.__key.128) #28
  %.compoundliteral95.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 0, i32 33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral95.sroa.0.0..sroa_idx, align 64
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0202, i64 1
  %18 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp slt i32 %add, %18
  br i1 %cmp19, label %do.body21, label %for.cond9.loopexit

do.body106:                                       ; preds = %for.cond9.loopexit, %for.end
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 9), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.131, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @rcu_init_one.__key.130) #28
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 22), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.133, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @rcu_init_one.__key.132) #28
  %call116209 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %19 = load i32, i32* @nr_cpu_ids, align 4
  %cmp117210 = icmp ult i32 %call116209, %19
  br i1 %cmp117210, label %while.cond.preheader.preheader, label %for.end131

while.cond.preheader.preheader:                   ; preds = %do.body106
  %20 = load i32, i32* @rcu_num_lvls, align 4
  %sub112 = add i32 %20, -1
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom113
  %21 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx114, align 8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.cond.preheader.preheader, %while.end
  %call116212 = phi i32 [ %call116, %while.end ], [ %call116209, %while.cond.preheader.preheader ]
  %rnp.1211 = phi %struct.rcu_node* [ %rnp.2, %while.end ], [ %21, %while.cond.preheader.preheader ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %rnp.2 = phi %struct.rcu_node* [ %incdec.ptr123, %while.cond ], [ %rnp.1211, %while.cond.preheader ]
  %grphi120 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.2, i64 0, i32 16
  %22 = load i32, i32* %grphi120, align 4
  %cmp121 = icmp sgt i32 %call116212, %22
  %incdec.ptr123 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.2, i64 1
  br i1 %cmp121, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %idxprom128 = sext i32 %call116212 to i64
  %arrayidx129 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom128
  %23 = load i64, i64* %arrayidx129, align 8
  %add130 = add i64 %23, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %24 = inttoptr i64 %add130 to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %24, i64 0, i32 8
  store %struct.rcu_node* %rnp.2, %struct.rcu_node** %mynode, align 8
  call fastcc void @rcu_boot_init_percpu_data(i32 noundef %call116212) #31
  %call116 = call i32 @cpumask_next(i32 noundef %call116212, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %25 = load i32, i32* @nr_cpu_ids, align 4
  %cmp117 = icmp ult i32 %call116, %25
  br i1 %cmp117, label %while.cond.preheader, label %for.end131

for.end131:                                       ; preds = %while.end, %do.body106
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @rcu_dump_rcu_node_tree() unnamed_addr #10 section ".init.text" {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.134, i64 0, i64 0)) #30
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i64 0, i64 0)) #30
  %0 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom40 = sext i32 %0 to i64
  %arrayidx41 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom40
  %cmp42 = icmp ugt %struct.rcu_node* %arrayidx41, getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)
  br i1 %cmp42, label %for.body, label %do.end29

for.body:                                         ; preds = %entry, %do.end23
  %level.044 = phi i32 [ %level.1, %do.end23 ], [ 0, %entry ]
  %rnp.043 = phi %struct.rcu_node* [ %incdec.ptr, %do.end23 ], [ getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0), %entry ]
  %level6 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.043, i64 0, i32 18
  %1 = load i8, i8* %level6, align 1
  %conv = zext i8 %1 to i32
  %cmp7.not = icmp eq i32 %level.044, %conv
  br i1 %cmp7.not, label %do.end23, label %do.end11

do.end11:                                         ; preds = %for.body
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #30
  %call18 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i64 0, i64 0)) #30
  %2 = load i8, i8* %level6, align 1
  %conv20 = zext i8 %2 to i32
  br label %do.end23

do.end23:                                         ; preds = %for.body, %do.end11
  %level.1 = phi i32 [ %conv20, %do.end11 ], [ %level.044, %for.body ]
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.043, i64 0, i32 15
  %3 = load i32, i32* %grplo, align 8
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.043, i64 0, i32 16
  %4 = load i32, i32* %grphi, align 4
  %grpnum = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.043, i64 0, i32 17
  %5 = load i8, i8* %grpnum, align 64
  %conv25 = zext i8 %5 to i32
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.136, i64 0, i64 0), i32 noundef %3, i32 noundef %4, i32 noundef %conv25) #30
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.043, i64 1
  %6 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom
  %cmp = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx
  br i1 %cmp, label %for.body, label %do.end29

do.end29:                                         ; preds = %do.end23, %entry
  %call31 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, void (%struct.softirq_action*)* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_core_si(%struct.softirq_action* nocapture noundef readnone %h) #1 {
entry:
  call fastcc void @rcu_core() #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8* noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i32 @rcu_jiffies_till_stall_check() local_unnamed_addr #12 {
entry:
  %0 = load volatile i32, i32* @rcu_cpu_stall_timeout, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.end21.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %cmp10 = icmp ugt i32 %0, 300
  br i1 %cmp10, label %if.end21.sink.split, label %if.end21

if.end21.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 3, %entry ], [ 300, %if.else ]
  store volatile i32 %.sink, i32* @rcu_cpu_stall_timeout, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else
  %till_stall_check.0 = phi i32 [ %0, %if.else ], [ %.sink, %if.end21.sink.split ]
  %mul = mul nuw nsw i32 %till_stall_check.0, 250
  ret i32 %mul
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @rcu_gp_might_be_stalled() local_unnamed_addr #1 {
entry:
  %call = call i32 @rcu_jiffies_till_stall_check() #24
  %div = sdiv i32 %call, 8
  %0 = zext i32 %div to i64
  %1 = load volatile i64, i64* @jiffies, align 64
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !89
  %call2 = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %entry
  %2 = icmp ugt i64 %0, 500
  %spec.store.select = select i1 %2, i64 %0, i64 500
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !90
  %3 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 29), align 8
  %4 = add i64 %spec.store.select, %3
  %sub = sub i64 %1, %4
  %cmp5 = icmp sgt i64 %sub, -1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi i1 [ %cmp5, %if.end4 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @rcu_gp_in_progress() unnamed_addr #6 {
entry:
  %call = call fastcc i64 @rcu_seq_current(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  %call1 = call fastcc i32 @rcu_seq_state(i64 noundef %call) #24
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @rcu_sysrq_start() local_unnamed_addr #14 {
entry:
  %0 = load i32, i32* @rcu_cpu_stall_suppress, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* @rcu_cpu_stall_suppress, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @rcu_sysrq_end() local_unnamed_addr #14 {
entry:
  %0 = load i32, i32* @rcu_cpu_stall_suppress, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @rcu_cpu_stall_suppress, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @check_cpu_stall_init() #10 section ".init.text" {
entry:
  %call = call i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef nonnull @panic_notifier_list, %struct.notifier_block* noundef bitcast ({ i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }* @rcu_panic_block to %struct.notifier_block*)) #28
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @rcu_cpu_stall_reset() local_unnamed_addr #12 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %call = call i32 @rcu_jiffies_till_stall_check() #24
  %1 = zext i32 %call to i64
  %add = add i64 %0, %1
  store volatile i64 %add, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @rcu_check_boost_fail(i64 noundef %gp_state, i32* noundef writeonly %cpup) local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @rcu_num_lvls, align 4
  %sub = add i32 %0, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom
  %1 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx, align 8
  %2 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom1155 = sext i32 %2 to i64
  %arrayidx2156 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom1155
  %cmp157 = icmp ult %struct.rcu_node* %1, %arrayidx2156
  br i1 %cmp157, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq i32* %cpup, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc114
  %atb.0.off0160 = phi i1 [ false, %for.body.lr.ph ], [ %atb.2.off0, %for.inc114 ]
  %rnp.0158 = phi %struct.rcu_node* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc114 ]
  br i1 %tobool.not, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0158, i64 0, i32 4
  %3 = load volatile i64, i64* %qsmask, align 32
  %tobool5.not = icmp eq i64 %3, 0
  br i1 %tobool5.not, label %do.end9, label %cleanup

do.end9:                                          ; preds = %if.then
  %gp_tasks = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0158, i64 0, i32 22
  %4 = load volatile %struct.list_head*, %struct.list_head** %gp_tasks, align 32
  %tobool11.not = icmp ne %struct.list_head* %4, null
  %spec.select = select i1 %tobool11.not, i1 true, i1 %atb.0.off0160
  br label %for.inc114

if.end13:                                         ; preds = %for.body
  store i32 -1, i32* %cpup, align 4
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0158, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %gp_tasks25 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0158, i64 0, i32 22
  %5 = load %struct.list_head*, %struct.list_head** %gp_tasks25, align 32
  %tobool26.not = icmp ne %struct.list_head* %5, null
  %spec.select151 = select i1 %tobool26.not, i1 true, i1 %atb.0.off0160
  %qsmask29 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0158, i64 0, i32 4
  %6 = load i64, i64* %qsmask29, align 32
  %tobool30.not = icmp eq i64 %6, 0
  br i1 %tobool30.not, label %do.body36, label %if.end47

do.body36:                                        ; preds = %if.end13
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  br label %for.inc114

if.end47:                                         ; preds = %if.end13
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0158, i64 0, i32 18
  %7 = load i8, i8* %level, align 1
  %conv48 = zext i8 %7 to i32
  %8 = load i32, i32* @rcu_num_lvls, align 4
  %sub49 = add i32 %8, -1
  %cmp50.not = icmp eq i32 %sub49, %conv48
  br i1 %cmp50.not, label %if.end62, label %if.then61, !prof !16

if.then61:                                        ; preds = %if.end47
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_stall.h\22; .popsection; .long 14472b - 14470b; .short 788; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !91
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end47
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0158, i64 0, i32 15
  %9 = load i32, i32* %grplo, align 8
  %sub71 = add i32 %9, -1
  %call72 = call i32 @cpumask_next(i32 noundef %sub71, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0158, i64 0, i32 16
  %10 = load i32, i32* %grphi, align 4
  %cmp74.not153 = icmp sgt i32 %call72, %10
  br i1 %cmp74.not153, label %do.body103, label %for.body76.lr.ph

for.body76.lr.ph:                                 ; preds = %if.end62
  %11 = load i64, i64* %qsmask29, align 32
  br label %for.body76

for.body76:                                       ; preds = %for.body76.lr.ph, %for.inc
  %cpu.0154 = phi i32 [ %call72, %for.body76.lr.ph ], [ %call98, %for.inc ]
  %sub79 = sub i32 %cpu.0154, %9
  %sh_prom = zext i32 %sub79 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %11, %shl
  %tobool80.not = icmp eq i64 %and, 0
  br i1 %tobool80.not, label %for.inc, label %do.body86

do.body86:                                        ; preds = %for.body76
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  store i32 %cpu.0154, i32* %cpup, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body76
  %call98 = call i32 @cpumask_next(i32 noundef %cpu.0154, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %cmp74.not = icmp sgt i32 %call98, %10
  br i1 %cmp74.not, label %do.body103, label %for.body76

do.body103:                                       ; preds = %for.inc, %if.end62
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  br label %for.inc114

for.inc114:                                       ; preds = %do.end9, %do.body103, %do.body36
  %atb.2.off0 = phi i1 [ %spec.select151, %do.body103 ], [ %spec.select151, %do.body36 ], [ %spec.select, %do.end9 ]
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0158, i64 1
  %12 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom1 = sext i32 %12 to i64
  %arrayidx2 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom1
  %cmp = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx2
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.then, %for.inc114, %entry, %do.body86
  %retval.0 = phi i1 [ false, %do.body86 ], [ false, %entry ], [ false, %if.then ], [ %atb.2.off0, %for.inc114 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @show_rcu_gp_kthreads() local_unnamed_addr #1 {
entry:
  %0 = load volatile %struct.task_struct*, %struct.task_struct** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 8), align 8
  %1 = load volatile i64, i64* @jiffies, align 64
  %2 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  %sub = sub i64 %1, %2
  %3 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 32), align 64
  %sub14 = sub i64 %1, %3
  %4 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 29), align 8
  %sub22 = sub i64 %1, %4
  %5 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 12), align 64
  %sub30 = sub i64 %1, %5
  %6 = load i8*, i8** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 36), align 32
  %7 = load i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %call = call fastcc i8* @gp_state_getname(i16 noundef %7) #24
  %8 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %conv = sext i16 %8 to i32
  %tobool.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool.not, label %cond.end52, label %cond.true50

cond.true50:                                      ; preds = %entry
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 1
  %9 = load volatile i32, i32* %__state, align 16
  %rt_priority = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 18
  %10 = load i32, i32* %rt_priority, align 16
  br label %cond.end52

cond.end52:                                       ; preds = %entry, %cond.true50
  %cond433 = phi i32 [ %9, %cond.true50 ], [ 131071, %entry ]
  %cond53 = phi i32 [ %10, %cond.true50 ], [ 255, %entry ]
  %11 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 13), align 8
  %12 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %13 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 2), align 16
  %14 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 7), align 16
  %15 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %conv90 = sext i16 %15 to i32
  %call91 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([220 x i8], [220 x i8]* @.str.21, i64 0, i64 0), i8* noundef %6, i8* noundef %call, i32 noundef %conv, i32 noundef %cond433, i32 noundef %cond53, i64 noundef %sub22, i64 noundef %sub, i64 noundef %sub14, i64 noundef %sub30, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i32 noundef %conv90) #30
  %16 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom436 = sext i32 %16 to i64
  %arrayidx437 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom436
  %cmp438 = icmp ugt %struct.rcu_node* %arrayidx437, getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)
  br i1 %cmp438, label %do.end95, label %for.cond321.preheader

for.cond321.preheader:                            ; preds = %for.inc319, %cond.end52
  %17 = load i32, i32* @nr_cpu_ids, align 4
  %call322442 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %cmp323443 = icmp ult i32 %call322442, %17
  br i1 %cmp323443, label %do.body326, label %do.end350

do.end95:                                         ; preds = %cond.end52, %for.inc319
  %rnp.0439 = phi %struct.rcu_node* [ %incdec.ptr, %for.inc319 ], [ getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0), %cond.end52 ]
  %18 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %gp_seq_needed101 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 2
  %19 = load volatile i64, i64* %gp_seq_needed101, align 16
  %sub102 = sub i64 %18, %19
  %cmp103 = icmp sgt i64 %sub102, -1
  br i1 %cmp103, label %land.lhs.true, label %do.end142

land.lhs.true:                                    ; preds = %do.end95
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 4
  %20 = load volatile i64, i64* %qsmask, align 32
  %tobool112.not = icmp eq i64 %20, 0
  br i1 %tobool112.not, label %land.lhs.true113, label %do.end142

land.lhs.true113:                                 ; preds = %land.lhs.true
  %boost_tasks = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 24
  %21 = load volatile %struct.list_head*, %struct.list_head** %boost_tasks, align 16
  %tobool121.not = icmp eq %struct.list_head* %21, null
  br i1 %tobool121.not, label %land.lhs.true122, label %do.end142

land.lhs.true122:                                 ; preds = %land.lhs.true113
  %exp_tasks = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 23
  %22 = load volatile %struct.list_head*, %struct.list_head** %exp_tasks, align 8
  %tobool130.not = icmp eq %struct.list_head* %22, null
  br i1 %tobool130.not, label %land.lhs.true131, label %do.end142

land.lhs.true131:                                 ; preds = %land.lhs.true122
  %gp_tasks = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 22
  %23 = load volatile %struct.list_head*, %struct.list_head** %gp_tasks, align 32
  %tobool139.not = icmp eq %struct.list_head* %23, null
  br i1 %tobool139.not, label %for.inc319, label %do.end142

do.end142:                                        ; preds = %do.end95, %land.lhs.true, %land.lhs.true113, %land.lhs.true122, %land.lhs.true131
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 15
  %24 = load i32, i32* %grplo, align 8
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 16
  %25 = load i32, i32* %grphi, align 4
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 1
  %26 = load volatile i64, i64* %gp_seq, align 8
  %27 = load volatile i64, i64* %gp_seq_needed101, align 16
  %qsmask165 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 4
  %28 = load volatile i64, i64* %qsmask165, align 32
  %boost_kthread_task = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 27
  %29 = load volatile %struct.task_struct*, %struct.task_struct** %boost_kthread_task, align 32
  %tobool174 = icmp ne %struct.task_struct* %29, null
  %30 = zext i1 %tobool174 to i64
  %arrayidx177 = getelementptr [3 x i8], [3 x i8]* @.str.23, i64 0, i64 %30
  %31 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %31 to i32
  %boost_tasks185 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 24
  %32 = load volatile %struct.list_head*, %struct.list_head** %boost_tasks185, align 16
  %tobool187 = icmp ne %struct.list_head* %32, null
  %33 = zext i1 %tobool187 to i64
  %arrayidx193 = getelementptr [3 x i8], [3 x i8]* @.str.24, i64 0, i64 %33
  %34 = load i8, i8* %arrayidx193, align 1
  %conv194 = zext i8 %34 to i32
  %exp_tasks201 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 23
  %35 = load volatile %struct.list_head*, %struct.list_head** %exp_tasks201, align 8
  %tobool203 = icmp ne %struct.list_head* %35, null
  %36 = zext i1 %tobool203 to i64
  %arrayidx209 = getelementptr [3 x i8], [3 x i8]* @.str.25, i64 0, i64 %36
  %37 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %37 to i32
  %gp_tasks217 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 22
  %38 = load volatile %struct.list_head*, %struct.list_head** %gp_tasks217, align 32
  %tobool219 = icmp ne %struct.list_head* %38, null
  %39 = zext i1 %tobool219 to i64
  %arrayidx225 = getelementptr [3 x i8], [3 x i8]* @.str.26, i64 0, i64 %39
  %40 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %40 to i32
  %n_boosts = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 29
  %41 = load volatile i64, i64* %n_boosts, align 16
  %call234 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.22, i64 0, i64 0), i32 noundef %24, i32 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i32 noundef %conv178, i32 noundef %conv194, i32 noundef %conv210, i32 noundef %conv226, i64 noundef %41) #30
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 0, i32 18
  %42 = load i8, i8* %level, align 1
  %conv235 = zext i8 %42 to i32
  %43 = load i32, i32* @rcu_num_lvls, align 4
  %sub236 = add i32 %43, -1
  %cmp237 = icmp eq i32 %sub236, %conv235
  br i1 %cmp237, label %if.end260, label %for.inc319

if.end260:                                        ; preds = %do.end142
  %44 = load i32, i32* %grplo, align 8
  %sub270 = add i32 %44, -1
  %call271 = call i32 @cpumask_next(i32 noundef %sub270, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %45 = load i32, i32* %grphi, align 4
  %cmp274.not434 = icmp sgt i32 %call271, %45
  br i1 %cmp274.not434, label %for.inc319, label %do.body277

do.body277:                                       ; preds = %if.end260, %for.inc
  %46 = phi i32 [ %53, %for.inc ], [ %45, %if.end260 ]
  %cpu.0435 = phi i32 [ %call318, %for.inc ], [ %call271, %if.end260 ]
  %idxprom282 = sext i32 %cpu.0435 to i64
  %arrayidx283 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom282
  %47 = load i64, i64* %arrayidx283, align 8
  %add = add i64 %47, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %48 = inttoptr i64 %add to %struct.rcu_data*
  %gpwrap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %48, i64 0, i32 5
  %49 = load volatile i8, i8* %gpwrap, align 4, !range !30
  %tobool288.not = icmp eq i8 %49, 0
  br i1 %tobool288.not, label %do.end293, label %for.inc

do.end293:                                        ; preds = %do.body277
  %50 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %gp_seq_needed299 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %48, i64 0, i32 1
  %51 = load volatile i64, i64* %gp_seq_needed299, align 8
  %sub300 = sub i64 %50, %51
  %cmp301 = icmp sgt i64 %sub300, -1
  br i1 %cmp301, label %for.inc, label %do.end307

do.end307:                                        ; preds = %do.end293
  %52 = load volatile i64, i64* %gp_seq_needed299, align 8
  %call317 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i32 noundef %cpu.0435, i64 noundef %52) #30
  %.pre = load i32, i32* %grphi, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.body277, %do.end293, %do.end307
  %53 = phi i32 [ %46, %do.body277 ], [ %46, %do.end293 ], [ %.pre, %do.end307 ]
  %call318 = call i32 @cpumask_next(i32 noundef %cpu.0435, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %cmp274.not = icmp sgt i32 %call318, %53
  br i1 %cmp274.not, label %for.inc319, label %do.body277

for.inc319:                                       ; preds = %for.inc, %if.end260, %do.end142, %land.lhs.true131
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0439, i64 1
  %54 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom = sext i32 %54 to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom
  %cmp = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx
  br i1 %cmp, label %do.end95, label %for.cond321.preheader

do.body326:                                       ; preds = %for.cond321.preheader, %do.body326
  %call322445 = phi i32 [ %call322, %do.body326 ], [ %call322442, %for.cond321.preheader ]
  %cbs.0444 = phi i64 [ %add343, %do.body326 ], [ 0, %for.cond321.preheader ]
  %idxprom333 = sext i32 %call322445 to i64
  %arrayidx334 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom333
  %55 = load i64, i64* %arrayidx334, align 8
  %add335 = add i64 %55, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %56 = inttoptr i64 %add335 to %struct.rcu_data*
  %n_cbs_invoked = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %56, i64 0, i32 16
  %57 = load volatile i64, i64* %n_cbs_invoked, align 8
  %add343 = add i64 %57, %cbs.0444
  %call322 = call i32 @cpumask_next(i32 noundef %call322445, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %cmp323 = icmp ult i32 %call322, %17
  br i1 %cmp323, label %do.body326, label %do.end350

do.end350:                                        ; preds = %do.body326, %for.cond321.preheader
  %cbs.0.lcssa = phi i64 [ 0, %for.cond321.preheader ], [ %add343, %do.body326 ]
  %call352 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i64 noundef %cbs.0.lcssa) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @gp_state_getname(i16 noundef %gs) unnamed_addr #3 {
entry:
  %cmp3 = icmp ugt i16 %gs, 8
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv27 = zext i16 %gs to i64
  %arrayidx = getelementptr [9 x i8*], [9 x i8*]* @gp_state_names, i64 0, i64 %conv27
  %0 = load i8*, i8** %arrayidx, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_fwd_progress_check(i64 noundef %j) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool.not = icmp eq i32 %call, 0
  %0 = load volatile i64, i64* @jiffies, align 64
  br i1 %tobool.not, label %do.end10, label %do.end

do.end:                                           ; preds = %entry
  %1 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 29), align 8
  %sub = sub i64 %0, %1
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.rcu_fwd_progress_check, i64 0, i64 0), i64 noundef %sub) #30
  call void @show_rcu_gp_kthreads() #24
  br label %for.cond.outer.preheader

do.end10:                                         ; preds = %entry
  %2 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 30), align 16
  %sub19 = sub i64 %0, %2
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.rcu_fwd_progress_check, i64 0, i64 0), i64 noundef %sub19) #30
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !92
  %call26 = call fastcc i64 @__kern_my_cpu_offset() #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !93
  br label %for.cond.outer.preheader

for.cond.outer.preheader:                         ; preds = %do.end10, %do.end
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.preheader, %do.end42
  %max_cpu.0.ph = phi i32 [ %spec.select, %do.end42 ], [ -1, %for.cond.outer.preheader ]
  %max_cbs.0.ph = phi i64 [ %spec.select74, %do.end42 ], [ 0, %for.cond.outer.preheader ]
  %cpu.0.ph = phi i32 [ %call27, %do.end42 ], [ -1, %for.cond.outer.preheader ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %cpu.0 = phi i32 [ %call27, %for.body ], [ %cpu.0.ph, %for.cond.outer ]
  %call27 = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call27, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call28 = call fastcc i64 @rcu_get_n_cbs_cpu(i32 noundef %call27) #24
  %tobool29.not = icmp eq i64 %call28, 0
  br i1 %tobool29.not, label %for.cond, label %if.end31

if.end31:                                         ; preds = %for.body
  %cmp32 = icmp slt i32 %max_cpu.0.ph, 0
  br i1 %cmp32, label %do.end36, label %do.end42

do.end36:                                         ; preds = %if.end31
  %call38 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.rcu_fwd_progress_check, i64 0, i64 0)) #30
  br label %do.end42

do.end42:                                         ; preds = %if.end31, %do.end36
  %call44 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 noundef %call27, i64 noundef %call28) #30
  %cmp45.not = icmp ugt i64 %call28, %max_cbs.0.ph
  %spec.select = select i1 %cmp45.not, i32 %call27, i32 %max_cpu.0.ph
  %spec.select74 = select i1 %cmp45.not, i64 %call28, i64 %max_cbs.0.ph
  br label %for.cond.outer

for.end:                                          ; preds = %for.cond
  %cmp48 = icmp sgt i32 %max_cpu.0.ph, -1
  br i1 %cmp48, label %do.end52, label %if.end55

do.end52:                                         ; preds = %for.end
  %call54 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #30
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %for.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @rcu_get_n_cbs_cpu(i32 noundef %cpu) unnamed_addr #6 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 14
  %call = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %cblist) #24
  br i1 %call, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %call3 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %call3, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn
define internal i32 @rcu_sysrq_init() #15 section ".init.text" {
entry:
  %0 = load i8, i8* @sysrq_rcu, align 4, !range !30
  %tobool.not = icmp eq i8 %0, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_gp_is_normal() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rcu_exp_gp_seq_snap() unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !94
  %call = call fastcc i64 @rcu_seq_snap(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 20)) #24, !range !42
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @exp_funnel_lock(i64 noundef %s) unnamed_addr #1 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add9 = add i64 %2, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %3 = inttoptr i64 %add9 to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %3, i64 0, i32 8
  %4 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %exp_seq_rq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %4, i64 0, i32 34
  %5 = load volatile i64, i64* %exp_seq_rq, align 8
  %sub = sub i64 %5, %s
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp15 = icmp eq %struct.rcu_node* %4, getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)
  br i1 %cmp15, label %land.lhs.true23, label %do.end18

do.end18:                                         ; preds = %land.lhs.true
  %6 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 34), align 8
  %sub21 = sub i64 %6, %s
  %cmp22 = icmp slt i64 %sub21, 0
  br i1 %cmp22, label %land.lhs.true23, label %if.end

land.lhs.true23:                                  ; preds = %do.end18, %land.lhs.true
  %call24 = call i32 @mutex_trylock(%struct.mutex* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 18)) #28
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end, label %fastpath

if.end:                                           ; preds = %land.lhs.true23, %do.end18, %entry
  %cmp25.not122 = icmp eq %struct.rcu_node* %4, null
  br i1 %cmp25.not122, label %for.end73, label %for.body

for.body:                                         ; preds = %if.end, %do.body63
  %rnp.0123 = phi %struct.rcu_node* [ %9, %do.body63 ], [ %4, %if.end ]
  %call26 = call fastcc i1 @sync_exp_work_done(i64 noundef %s) #24
  br i1 %call26, label %cleanup77, label %if.end28

if.end28:                                         ; preds = %for.body
  %rlock.i = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0123, i64 0, i32 33, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #28
  %exp_seq_rq29 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0123, i64 0, i32 34
  %7 = load i64, i64* %exp_seq_rq29, align 8
  %sub30 = sub i64 %7, %s
  %cmp31 = icmp sgt i64 %sub30, -1
  br i1 %cmp31, label %if.then32, label %do.body63

if.then32:                                        ; preds = %if.end28
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #28
  %call41 = call fastcc i1 @sync_exp_work_done(i64 noundef %s) #24
  br i1 %call41, label %cleanup77, label %if.end43

if.end43:                                         ; preds = %if.then32
  %8 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false), !annotation !39
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #28
  %call45 = call fastcc i64 @rcu_seq_ctr(i64 noundef %s) #24
  %and = and i64 %call45, 3
  %arrayidx46 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0123, i64 0, i32 35, i64 %and
  %call47124 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %arrayidx46, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #28
  %call48125 = call fastcc i1 @sync_exp_work_done(i64 noundef %s) #24
  br i1 %call48125, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end43, %cleanup
  call void @schedule() #28
  %call47 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %arrayidx46, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #28
  %call48 = call fastcc i1 @sync_exp_work_done(i64 noundef %s) #24
  br i1 %call48, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end43
  call void @finish_wait(%struct.wait_queue_head* noundef %arrayidx46, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #26
  br label %cleanup77

do.body63:                                        ; preds = %if.end28
  store volatile i64 %s, i64* %exp_seq_rq29, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #28
  %parent = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0123, i64 0, i32 20
  %9 = load %struct.rcu_node*, %struct.rcu_node** %parent, align 8
  %cmp25.not = icmp eq %struct.rcu_node* %9, null
  br i1 %cmp25.not, label %for.end73, label %for.body

for.end73:                                        ; preds = %do.body63, %if.end
  call void @mutex_lock(%struct.mutex* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 18)) #28
  br label %fastpath

fastpath:                                         ; preds = %land.lhs.true23, %for.end73
  %call74 = call fastcc i1 @sync_exp_work_done(i64 noundef %s) #24
  br i1 %call74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %fastpath
  call void @mutex_unlock(%struct.mutex* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 18)) #28
  br label %cleanup77

if.end76:                                         ; preds = %fastpath
  call fastcc void @rcu_exp_gp_seq_start() #24
  br label %cleanup77

cleanup77:                                        ; preds = %for.body, %for.end, %if.then32, %if.end76, %if.then75
  %retval.0 = phi i1 [ true, %if.then75 ], [ false, %if.end76 ], [ true, %if.then32 ], [ true, %for.end ], [ true, %for.body ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_exp_sel_wait_wake(i64 noundef %s) unnamed_addr #1 {
entry:
  call fastcc void @sync_rcu_exp_select_cpus() #24
  call fastcc void @rcu_exp_wait_wake(i64 noundef %s) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #12 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @wait_rcu_exp_gp(%struct.work_struct* nocapture noundef readonly %wp) #1 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %wp, i64 -1, i32 2
  %rew_s = bitcast void (%struct.work_struct*)** %add.ptr to i64*
  %0 = load i64, i64* %rew_s, align 8
  call fastcc void @rcu_exp_sel_wait_wake(i64 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #1 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @sync_exp_work_done(i64 noundef %s) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @rcu_exp_gp_seq_done(i64 noundef %s) #24
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !95
  br label %return

return:                                           ; preds = %entry, %if.then
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @rcu_seq_ctr(i64 noundef %s) unnamed_addr #3 {
entry:
  %shr = lshr i64 %s, 2
  ret i64 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_all_qs() local_unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 24) to i64)
  %0 = inttoptr i64 %add to i8*
  %1 = load i8, i8* %0, align 1, !range !30
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !96
  %call20 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add21 = add i64 %call20, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 24) to i64)
  %2 = inttoptr i64 %add21 to i8*
  %3 = call i8 asm sideeffect "ldarb ${0:w}, $1", "=r,*Q,~{memory}"(i8* elementtype(i8) %2) #26, !srcloc !97
  %4 = and i8 %3, 1
  %tobool27.not = icmp eq i8 %4, 0
  call void asm sideeffect "", "~{memory}"() #26
  br i1 %tobool27.not, label %cleanup, label %do.body33

do.body33:                                        ; preds = %if.end
  %call44 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add45 = add i64 %call44, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 24) to i64)
  %5 = inttoptr i64 %add45 to i8*
  call fastcc void @__percpu_write_8(i8* noundef %5) #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !98
  %call61 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add62 = add i64 %call61, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 23) to i64)
  %6 = inttoptr i64 %add62 to i8*
  %7 = load i8, i8* %6, align 1, !range !30
  %tobool63.not = icmp eq i8 %7, 0
  br i1 %tobool63.not, label %if.end97, label %do.body75, !prof !16

do.body75:                                        ; preds = %do.body33
  %call78 = call fastcc i64 @arch_local_irq_save() #24
  call void @rcu_momentary_dyntick_idle() #24
  call fastcc void @arch_local_irq_restore(i64 noundef %call78) #24
  br label %if.end97

if.end97:                                         ; preds = %do.body75, %do.body33
  call fastcc void @rcu_qs() #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !99
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end97
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__percpu_write_8(i8* noundef %ptr) unnamed_addr #12 {
entry:
  store volatile i8 0, i8* %ptr, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_note_context_switch(i1 noundef %preempt) local_unnamed_addr #1 {
entry:
  call fastcc void @rcu_qs() #24
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 24) to i64)
  %0 = inttoptr i64 %add to i8*
  %1 = call i8 asm sideeffect "ldarb ${0:w}, $1", "=r,*Q,~{memory}"(i8* elementtype(i8) %0) #26, !srcloc !100
  %2 = and i8 %1, 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %out, label %do.body10

do.body10:                                        ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !101
  %call21 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add22 = add i64 %call21, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 24) to i64)
  %3 = inttoptr i64 %add22 to i8*
  call fastcc void @__percpu_write_8(i8* noundef %3) #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !102
  %call37 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add38 = add i64 %call37, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 23) to i64)
  %4 = inttoptr i64 %add38 to i8*
  %5 = load i8, i8* %4, align 1, !range !30
  %tobool39.not = icmp eq i8 %5, 0
  br i1 %tobool39.not, label %out, label %if.then49, !prof !16

if.then49:                                        ; preds = %do.body10
  call void @rcu_momentary_dyntick_idle() #24
  br label %out

out:                                              ; preds = %do.body10, %if.then49, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @exit_rcu() local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i32 @rcu_needs_cpu(i64 noundef %basemono, i64* nocapture noundef writeonly %nextevt) local_unnamed_addr #16 {
entry:
  store i64 9223372036854775807, i64* %nextevt, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 14
  %call2 = call fastcc i1 @rcu_segcblist_empty(%struct.rcu_segcblist* noundef %cblist) #24
  br i1 %call2, label %land.end, label %do.body3

do.body3:                                         ; preds = %entry
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #24
  br label %land.end

land.end:                                         ; preds = %do.body3, %entry
  %1 = xor i1 %call2, true
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_segcblist_empty(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #6 {
entry:
  %head = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 0
  %0 = load volatile %struct.callback_head*, %struct.callback_head** %head, align 8
  %tobool.not = icmp eq %struct.callback_head* %0, null
  ret i1 %tobool.not
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #17

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return(i32 noundef %i, %struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 %i, i32* elementtype(i32) %counter) #26, !srcloc !103
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @param_set_first_fqs_jiffies(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #1 {
entry:
  %j = alloca i64, align 8
  %0 = bitcast i64* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  store i64 0, i64* %j, align 8, !annotation !39
  %call = call fastcc i32 @kstrtoul(i8* noundef %val, i64* noundef nonnull %j) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %if.end

do.body2:                                         ; preds = %entry
  %1 = load i64, i64* %j, align 8
  %2 = icmp ult i64 %1, 250
  %cond = select i1 %2, i64 %1, i64 250
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %3 = bitcast i8** %arg to i64**
  %4 = load i64*, i64** %3, align 8
  store volatile i64 %cond, i64* %4, align 8
  call fastcc void @adjust_jiffies_till_sched_qs() #24
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_ulong(i8* noundef, %struct.kernel_param* noundef) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtoul(i8* noundef %s, i64* noundef %res) unnamed_addr #1 {
entry:
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef 0, i64* noundef %res) #28
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @param_set_next_fqs_jiffies(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #1 {
entry:
  %j = alloca i64, align 8
  %0 = bitcast i64* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  store i64 0, i64* %j, align 8, !annotation !39
  %call = call fastcc i32 @kstrtoul(i8* noundef %val, i64* noundef nonnull %j) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %if.end

do.body2:                                         ; preds = %entry
  %1 = load i64, i64* %j, align 8
  %cmp = icmp ugt i64 %1, 250
  %tobool3.not = icmp eq i64 %1, 0
  %. = select i1 %tobool3.not, i64 1, i64 %1
  %cond7 = select i1 %cmp, i64 250, i64 %.
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %2 = bitcast i8** %arg to i64**
  %3 = load i64*, i64** %2, align 8
  store volatile i64 %cond7, i64* %3, align 8
  call fastcc void @adjust_jiffies_till_sched_qs() #24
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #26, !srcloc !104
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #26, !srcloc !105
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #24
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %call) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #3 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 2, i64* elementtype(i64) %counter) #26, !srcloc !106
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_raw_spin_trylock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %counter.i.i = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0, i32 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %queued_spin_trylock.exit, !prof !16

if.end.i:                                         ; preds = %entry
  %1 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %1, i32 noundef 0) #28
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  %lnot.ext9.i = zext i1 %cmp.not.i.i.i to i32
  br label %queued_spin_trylock.exit

queued_spin_trylock.exit:                         ; preds = %entry, %if.end.i
  %retval.0.i = phi i32 [ %lnot.ext9.i, %if.end.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #24
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #26, !srcloc !107
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #26, !srcloc !108
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #28
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !16

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #28
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @swake_up_one(%struct.swait_queue_head* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @invoke_rcu_core_kthread() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #24
  %call15 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call15, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 31) to i64)
  %0 = inttoptr i64 %add to i8*
  store i8 1, i8* %0, align 1
  %call33 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add34 = add i64 %call33, ptrtoint (%struct.task_struct** getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 29) to i64)
  %1 = inttoptr i64 %add34 to %struct.task_struct**
  %2 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %cmp36.not = icmp eq %struct.task_struct* %2, null
  br i1 %cmp36.not, label %do.body59, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %cmp39.not = icmp eq %struct.task_struct* %2, %4
  br i1 %cmp39.not, label %do.body59, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add56 = add i64 %call33, ptrtoint (i32* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 30) to i64)
  %5 = inttoptr i64 %add56 to i32*
  %6 = load i32, i32* %5, align 4
  call fastcc void @rcu_wake_cond(%struct.task_struct* noundef nonnull %2, i32 noundef %6) #24
  br label %do.body59

do.body59:                                        ; preds = %if.then, %land.lhs.true, %entry
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_wake_cond(%struct.task_struct* noundef %t, i32 noundef %status) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.task_struct* %t, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cmp.not = icmp eq i32 %status, 4
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags.i, align 4
  %and.i = and i32 %2, 2
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call2 = call i32 @wake_up_process(%struct.task_struct* noundef nonnull %t) #28
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(%struct.task_struct* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_cb_ovld(%struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 8
  %0 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %1 = load i64, i64* @qovld_calc, align 8
  %cmp = icmp slt i64 %1, 1
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 14
  %call = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  %cmp1 = icmp slt i64 %call, %1
  %cbovldmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 12
  %2 = load volatile i64, i64* %cbovldmask, align 32
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 9
  %3 = load i64, i64* %grpmask, align 8
  %and = and i64 %3, %2
  %tobool = icmp ne i64 %and, 0
  %cmp3 = xor i1 %cmp1, %tobool
  br i1 %cmp3, label %cleanup, label %do.body5

do.body5:                                         ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #24
  call fastcc void @check_cb_ovld_locked(%struct.rcu_data* noundef %rdp, %struct.rcu_node* noundef %0) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %do.body5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_enqueue(%struct.rcu_segcblist* noundef, %struct.callback_head* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__call_rcu_core(%struct.rcu_data* noundef %rdp, %struct.callback_head* noundef readnone %head, i64 noundef %flags) unnamed_addr #1 {
entry:
  %call = call i1 @rcu_is_watching() #24
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @invoke_rcu_core() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) #24
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %if.end41

do.body:                                          ; preds = %if.end
  %call5 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call5, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call6 = call fastcc i1 @cpu_online(i32 noundef %1) #24
  br i1 %call6, label %if.end12, label %if.end41, !prof !16

if.end12:                                         ; preds = %do.body
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 14
  %call13 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  %qlen_last_fqs_check = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 15
  %2 = load i64, i64* %qlen_last_fqs_check, align 8
  %3 = load i64, i64* @qhimark, align 8
  %add14 = add i64 %3, %2
  %cmp15 = icmp sgt i64 %call13, %add14
  br i1 %cmp15, label %if.then24, label %if.end41, !prof !13

if.then24:                                        ; preds = %if.end12
  call fastcc void @note_gp_changes(%struct.rcu_data* noundef %rdp) #24
  %call25 = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then24
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 8
  %4 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  call fastcc void @rcu_accelerate_cbs_unlocked(%struct.rcu_node* noundef %4, %struct.rcu_data* noundef %rdp) #24
  br label %if.end41

if.else:                                          ; preds = %if.then24
  %blimit = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 18
  store i64 10000, i64* %blimit, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 28), align 32
  %n_force_qs_snap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 17
  %6 = load i64, i64* %n_force_qs_snap, align 8
  %cmp28 = icmp eq i64 %5, %6
  br i1 %cmp28, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.else
  %call31 = call %struct.callback_head* @rcu_segcblist_first_pend_cb(%struct.rcu_segcblist* noundef %cblist) #28
  %cmp32.not = icmp eq %struct.callback_head* %call31, %head
  br i1 %cmp32.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %land.lhs.true
  call void @rcu_force_quiescent_state() #24
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true, %if.else
  %7 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 28), align 32
  store i64 %7, i64* %n_force_qs_snap, align 8
  %call38 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  store i64 %call38, i64* %qlen_last_fqs_check, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then27, %if.end35, %if.end, %do.body, %if.end12
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @check_cb_ovld_locked(%struct.rcu_data* noundef %rdp, %struct.rcu_node* noundef %rnp) unnamed_addr #12 {
entry:
  %0 = load i64, i64* @qovld_calc, align 8
  %cmp = icmp slt i64 %0, 1
  br i1 %cmp, label %if.end19, label %if.end

if.end:                                           ; preds = %entry
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 14
  %call = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  %cmp1.not = icmp slt i64 %call, %0
  %cbovldmask14 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 12
  %1 = load i64, i64* %cbovldmask14, align 32
  %grpmask15 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 9
  %2 = load i64, i64* %grpmask15, align 8
  %neg = xor i64 %2, -1
  %and = and i64 %1, %neg
  %or = or i64 %2, %1
  %and.sink = select i1 %cmp1.not, i64 %and, i64 %or
  store volatile i64 %and.sink, i64* %cbovldmask14, align 32
  br label %if.end19

if.end19:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @note_gp_changes(%struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #24
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 8
  %0 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 0
  %1 = load i64, i64* %gp_seq, align 8
  %gp_seq4 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 1
  %call5 = call fastcc i64 @rcu_seq_current(i64* noundef %gp_seq4) #24
  %cmp6 = icmp eq i64 %1, %call5
  br i1 %cmp6, label %do.end10, label %lor.lhs.false

do.end10:                                         ; preds = %entry
  %gpwrap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 5
  %2 = load volatile i8, i8* %gpwrap, align 4, !range !30
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body29, label %lor.lhs.false, !prof !16

lor.lhs.false:                                    ; preds = %do.end10, %entry
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 0
  %call16 = call fastcc i32 @__raw_spin_trylock(%struct.raw_spinlock* noundef %lock) #24
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body29, label %if.end42

do.body29:                                        ; preds = %lor.lhs.false, %do.end10
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #24
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false
  %call43 = call fastcc i1 @__note_gp_changes(%struct.rcu_node* noundef %0, %struct.rcu_data* noundef %rdp) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  br i1 %call43, label %if.then61, label %cleanup

if.then61:                                        ; preds = %if.end42
  call fastcc void @rcu_gp_kthread_wake() #24
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then61, %do.body29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_accelerate_cbs_unlocked(%struct.rcu_node* noundef %rnp, %struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @rcu_seq_snap(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  %gpwrap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 5
  %0 = load volatile i8, i8* %gpwrap, align 4, !range !30
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body3

land.lhs.true:                                    ; preds = %entry
  %gp_seq_needed = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 1
  %1 = load i64, i64* %gp_seq_needed, align 8
  %sub = sub i64 %1, %call
  %cmp = icmp sgt i64 %sub, -1
  br i1 %cmp, label %if.then, label %do.body3

if.then:                                          ; preds = %land.lhs.true
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 14
  %call2 = call i1 @rcu_segcblist_accelerate(%struct.rcu_segcblist* noundef %cblist, i64 noundef %call) #28
  br label %cleanup

do.body3:                                         ; preds = %entry, %land.lhs.true
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #24
  %call9 = call fastcc i1 @rcu_accelerate_cbs(%struct.rcu_node* noundef %rnp, %struct.rcu_data* noundef %rdp) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  br i1 %call9, label %if.then19, label %cleanup

if.then19:                                        ; preds = %do.body3
  call fastcc void @rcu_gp_kthread_wake() #24
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %if.then19, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.callback_head* @rcu_segcblist_first_pend_cb(%struct.rcu_segcblist* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__note_gp_changes(%struct.rcu_node* noundef %rnp, %struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  %gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 0
  %0 = load i64, i64* %gp_seq, align 8
  %gp_seq1 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 1
  %1 = load i64, i64* %gp_seq1, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call fastcc i1 @rcu_seq_completed_gp(i64 noundef %0, i64 noundef %1) #24
  br i1 %call4, label %if.then14, label %do.end7

do.end7:                                          ; preds = %if.end
  %gpwrap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 5
  %2 = load volatile i8, i8* %gpwrap, align 4, !range !30
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then20, label %if.then14, !prof !16

if.then14:                                        ; preds = %if.end, %do.end7
  %call15 = call fastcc i1 @rcu_advance_cbs(%struct.rcu_node* noundef %rnp, %struct.rcu_data* noundef %rdp) #24
  %core_needs_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 3
  store i8 0, i8* %core_needs_qs, align 2
  br label %if.end35

if.then20:                                        ; preds = %do.end7
  %call21 = call fastcc i1 @rcu_accelerate_cbs(%struct.rcu_node* noundef %rnp, %struct.rcu_data* noundef %rdp) #24
  %core_needs_qs24 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 3
  %3 = load i8, i8* %core_needs_qs24, align 2, !range !30
  %tobool25.not = icmp eq i8 %3, 0
  br i1 %tobool25.not, label %if.end35, label %if.then26

if.then26:                                        ; preds = %if.then20
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 4
  %4 = load i64, i64* %qsmask, align 32
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 9
  %5 = load i64, i64* %grpmask, align 8
  %and = and i64 %5, %4
  %tobool27 = icmp ne i64 %and, 0
  %frombool33 = zext i1 %tobool27 to i8
  store i8 %frombool33, i8* %core_needs_qs24, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then20, %if.then26, %if.then14
  %ret.2.in = phi i1 [ %call15, %if.then14 ], [ %call21, %if.then26 ], [ %call21, %if.then20 ]
  %6 = load i64, i64* %gp_seq, align 8
  %7 = load i64, i64* %gp_seq1, align 8
  %call38 = call fastcc i1 @rcu_seq_new_gp(i64 noundef %6, i64 noundef %7) #24
  br i1 %call38, label %if.then56, label %do.end43

do.end43:                                         ; preds = %if.end35
  %gpwrap45 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 5
  %8 = load volatile i8, i8* %gpwrap45, align 4, !range !30
  %tobool46.not = icmp eq i8 %8, 0
  br i1 %tobool46.not, label %if.end72, label %if.then56, !prof !16

if.then56:                                        ; preds = %do.end43, %if.end35
  %qsmask58 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 4
  %9 = load i64, i64* %qsmask58, align 32
  %grpmask59 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 9
  %10 = load i64, i64* %grpmask59, align 8
  %and60 = and i64 %10, %9
  %tobool61 = icmp ne i64 %and60, 0
  %frombool66 = zext i1 %tobool61 to i8
  %cpu_no_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 2
  %norm = bitcast %union.rcu_noqs* %cpu_no_qs to i8*
  store i8 %frombool66, i8* %norm, align 8
  %core_needs_qs70 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 3
  store i8 %frombool66, i8* %core_needs_qs70, align 2
  call fastcc void @zero_cpu_stall_ticks(%struct.rcu_data* noundef %rdp) #24
  %.pre = load i64, i64* %gp_seq1, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then56, %do.end43
  %11 = phi i64 [ %.pre, %if.then56 ], [ %7, %do.end43 ]
  store i64 %11, i64* %gp_seq, align 8
  %gp_seq_needed = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 1
  %12 = load i64, i64* %gp_seq_needed, align 8
  %gp_seq_needed75 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 2
  %13 = load i64, i64* %gp_seq_needed75, align 16
  %sub = sub i64 %12, %13
  %cmp76 = icmp slt i64 %sub, 0
  br i1 %cmp76, label %do.body87, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.end72
  %gpwrap79 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 5
  %14 = load i8, i8* %gpwrap79, align 4, !range !30
  %tobool80.not = icmp eq i8 %14, 0
  br i1 %tobool80.not, label %do.body99, label %do.body87

do.body87:                                        ; preds = %if.end72, %lor.lhs.false78
  store volatile i64 %13, i64* %gp_seq_needed, align 8
  br label %do.body99

do.body99:                                        ; preds = %lor.lhs.false78, %do.body87
  %gpwrap100 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 5
  store volatile i8 0, i8* %gpwrap100, align 4
  call fastcc void @rcu_gpnum_ovf(%struct.rcu_node* noundef %rnp, %struct.rcu_data* noundef %rdp) #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body99
  %retval.0 = phi i1 [ %ret.2.in, %do.body99 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @rcu_seq_completed_gp(i64 noundef %old, i64 noundef %new) unnamed_addr #3 {
entry:
  %and = and i64 %new, -4
  %sub = sub i64 %old, %and
  %cmp = icmp slt i64 %sub, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rcu_advance_cbs(%struct.rcu_node* noundef %rnp, %struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 14
  %call = call i1 @rcu_segcblist_pend_cbs(%struct.rcu_segcblist* noundef %cblist) #28
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 1
  %0 = load i64, i64* %gp_seq, align 8
  call void @rcu_segcblist_advance(%struct.rcu_segcblist* noundef %cblist, i64 noundef %0) #28
  %call2 = call fastcc i1 @rcu_accelerate_cbs(%struct.rcu_node* noundef %rnp, %struct.rcu_data* noundef %rdp) #24
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call2, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rcu_accelerate_cbs(%struct.rcu_node* noundef %rnp, %struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 14
  %call = call i1 @rcu_segcblist_pend_cbs(%struct.rcu_segcblist* noundef %cblist) #28
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @rcu_seq_snap(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24, !range !42
  %call4 = call i1 @rcu_segcblist_accelerate(%struct.rcu_segcblist* noundef %cblist, i64 noundef %call2) #28
  br i1 %call4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i1 @rcu_start_this_gp(%struct.rcu_node* noundef %rnp, %struct.rcu_data* noundef %rdp, i64 noundef %call2) #24
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %ret.0.off0 = phi i1 [ %call6, %if.then5 ], [ false, %if.end ]
  %call9 = call fastcc i1 @rcu_segcblist_restempty(%struct.rcu_segcblist* noundef %cblist, i32 noundef 1) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %ret.0.off0, %if.end7 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @rcu_seq_new_gp(i64 noundef %old, i64 noundef %new) unnamed_addr #3 {
entry:
  %add = add i64 %old, 3
  %and = and i64 %add, -4
  %sub = sub i64 %and, %new
  %cmp = icmp slt i64 %sub, 0
  ret i1 %cmp
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @zero_cpu_stall_ticks(%struct.rcu_data* noundef %rdp) unnamed_addr #16 {
entry:
  %ticks_this_gp = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 10
  store i64 0, i64* %ticks_this_gp, align 8
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 9, i32 noundef %1) #24
  %softirq_snap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 32
  store i32 %call2, i32* %softirq_snap, align 8
  %2 = load volatile i64, i64* @jiffies, align 64
  %last_fqs_resched = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 40
  store volatile i64 %2, i64* %last_fqs_resched, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_segcblist_pend_cbs(%struct.rcu_segcblist* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_advance(%struct.rcu_segcblist* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_segcblist_accelerate(%struct.rcu_segcblist* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_segcblist_restempty(%struct.rcu_segcblist* noundef %rsclp, i32 noundef %seg) unnamed_addr #6 {
entry:
  %0 = zext i32 %seg to i64
  %arrayidx = getelementptr %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 1, i64 %0
  %1 = load volatile %struct.callback_head**, %struct.callback_head*** %arrayidx, align 8
  %2 = load volatile %struct.callback_head*, %struct.callback_head** %1, align 8
  %tobool.not = icmp eq %struct.callback_head* %2, null
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @kstat_softirqs_cpu(i32 noundef %irq, i32 noundef %cpu) unnamed_addr #0 {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.kernel_stat* @kstat to i64)
  %1 = inttoptr i64 %add to %struct.kernel_stat*
  %idxprom2 = zext i32 %irq to i64
  %arrayidx3 = getelementptr %struct.kernel_stat, %struct.kernel_stat* %1, i64 0, i32 1, i64 %idxprom2
  %2 = load i32, i32* %arrayidx3, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kfree_rcu_cpu* @krc_this_cpu_lock(i64* nocapture noundef writeonly %flags) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #24
  store i64 %call, i64* %flags, align 8
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call9, ptrtoint (%struct.kfree_rcu_cpu* @krc to i64)
  %0 = inttoptr i64 %add to %struct.kfree_rcu_cpu*
  %lock = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %0, i64 0, i32 3
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) #24
  ret %struct.kfree_rcu_cpu* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_vmalloc_addr(i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kvfree_rcu_bulk_data* @get_cached_bnode(%struct.kfree_rcu_cpu* noundef %krcp) unnamed_addr #1 {
entry:
  %nr_bkv_objs = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 13
  %0 = load i32, i32* %nr_bkv_objs, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %do.body2

do.body2:                                         ; preds = %entry
  %sub = add i32 %0, -1
  store volatile i32 %sub, i32* %nr_bkv_objs, align 8
  %bkvcache = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 12
  %call = call %struct.llist_node* @llist_del_first(%struct.llist_head* noundef %bkvcache) #28
  %1 = bitcast %struct.llist_node* %call to %struct.kvfree_rcu_bulk_data*
  br label %return

return:                                           ; preds = %entry, %do.body2
  %retval.0 = phi %struct.kvfree_rcu_bulk_data* [ %1, %do.body2 ], [ null, %entry ]
  ret %struct.kvfree_rcu_bulk_data* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.llist_node* @llist_del_first(%struct.llist_head* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) unnamed_addr #1 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(%struct.hrtimer* noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @schedule_page_work_fn(%struct.hrtimer* noundef %t) #1 {
entry:
  %add.ptr = getelementptr %struct.hrtimer, %struct.hrtimer* %t, i64 -7, i32 3
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_highpri_wq, align 8
  %page_cache_work = getelementptr inbounds %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %add.ptr, i64 38
  %1 = bitcast %struct.hrtimer_clock_base** %page_cache_work to %struct.delayed_work*
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %0, %struct.delayed_work* noundef %1, i64 noundef 0) #24
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start(%struct.hrtimer* noundef %timer) unnamed_addr #1 {
entry:
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef %timer, i64 noundef 0, i64 noundef 0, i32 noundef 1) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__xchg_case_mb_32(i32 noundef %x, i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i32, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09stlxr\09${1:w}, ${3:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i32* elementtype(i32) %0, i32 %x, i32* elementtype(i32) %0) #26, !srcloc !109
  %asmresult = extractvalue { i32, i64 } %1, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i64 noundef %x, i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %x, i64* elementtype(i64) %0) #26, !srcloc !110
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #28
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !16

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #28
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @trace_rcu_this_gp(%struct.rcu_node* noundef %rnp) unnamed_addr #6 {
entry:
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 1
  %0 = load volatile i64, i64* %gp_seq, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_seq_started(i64* noundef %sp, i64 noundef %s) unnamed_addr #6 {
entry:
  %sub = add i64 %s, -1
  %and = and i64 %sub, -4
  %0 = load volatile i64, i64* %sp, align 8
  %sub1 = sub i64 %and, %0
  %cmp = icmp slt i64 %sub1, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rcu_seq_state(i64 noundef %s) unnamed_addr #3 {
entry:
  %0 = trunc i64 %s to i32
  %conv = and i32 %0, 3
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_cpu_stall(%struct.rcu_data* nocapture noundef readonly %rdp) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @rcu_stall_is_suppressed() #24
  br i1 %call, label %do.end3, label %lor.lhs.false

do.end3:                                          ; preds = %entry
  %0 = load volatile i8, i8* @rcu_kick_kthreads, align 4, !range !30
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end3, %entry
  %call5 = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @rcu_stall_kick_kthreads() #24
  %1 = load volatile i64, i64* @jiffies, align 64
  %2 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  call void asm sideeffect "dmb ishld", "~{memory}"() #26, !srcloc !111
  %3 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33), align 8
  call void asm sideeffect "dmb ishld", "~{memory}"() #26, !srcloc !112
  %4 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 29), align 8
  call void asm sideeffect "dmb ishld", "~{memory}"() #26, !srcloc !113
  %5 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %cmp.not = icmp ne i64 %2, %5
  %sub = sub i64 %1, %3
  %cmp24 = icmp slt i64 %sub, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp24
  %sub26 = sub i64 %4, %3
  %cmp27 = icmp sgt i64 %sub26, -1
  %or.cond179 = select i1 %or.cond, i1 true, i1 %cmp27
  br i1 %or.cond179, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 8
  %6 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %7 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %7, 9223372036854775807
  %call30 = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else, label %do.end35

do.end35:                                         ; preds = %if.end29
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %6, i64 0, i32 4
  %8 = load volatile i64, i64* %qsmask, align 32
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 9
  %9 = load i64, i64* %grpmask, align 8
  %and = and i64 %9, %8
  %tobool37.not = icmp eq i64 %and, 0
  br i1 %tobool37.not, label %if.else, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %do.end35
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i64 noundef %3, i64 noundef %add) #28
  %cmp42 = icmp eq i64 %call14.i, %3
  br i1 %cmp42, label %if.then43, label %if.else

if.then43:                                        ; preds = %land.lhs.true38
  call fastcc void @print_cpu_stall(i64 noundef %4) #24
  %10 = load volatile i32, i32* @rcu_cpu_stall_ftrace_dump, align 4
  %tobool51.not = icmp eq i32 %10, 0
  br i1 %tobool51.not, label %do.end128, label %do.body53

do.body53:                                        ; preds = %if.then43
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @check_cpu_stall.___rfd_beenhere, i64 0, i32 0), align 4
  %tobool55.not = icmp eq i32 %11, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %do.end128

land.lhs.true56:                                  ; preds = %do.body53
  %call8.i.i = call fastcc i32 @__xchg_case_mb_32(i32 noundef 1, i8* noundef bitcast (%struct.atomic_t* @check_cpu_stall.___rfd_beenhere to i8*)) #28
  %tobool58.not = icmp eq i32 %call8.i.i, 0
  br i1 %tobool58.not, label %if.then59, label %do.end128

if.then59:                                        ; preds = %land.lhs.true56
  %12 = load i32, i32* @rcu_cpu_stall_suppress, align 4
  switch i32 %12, label %do.end128 [
    i32 0, label %do.end128.sink.split
    i32 3, label %do.end128.sink.split
  ]

if.else:                                          ; preds = %land.lhs.true38, %do.end35, %if.end29
  %call76 = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.else
  %add79.neg = add i64 %1, -2
  %sub80 = sub i64 %add79.neg, %3
  %cmp81 = icmp sgt i64 %sub80, -1
  br i1 %cmp81, label %land.lhs.true82, label %cleanup

land.lhs.true82:                                  ; preds = %land.lhs.true78
  %call14.i182 = call fastcc i64 @__cmpxchg_case_mb_64(i64 noundef %3, i64 noundef %add) #28
  %cmp88 = icmp eq i64 %call14.i182, %3
  br i1 %cmp88, label %if.then89, label %cleanup

if.then89:                                        ; preds = %land.lhs.true82
  call fastcc void @print_other_cpu_stall(i64 noundef %2, i64 noundef %4) #24
  %13 = load volatile i32, i32* @rcu_cpu_stall_ftrace_dump, align 4
  %tobool97.not = icmp eq i32 %13, 0
  br i1 %tobool97.not, label %do.end128, label %do.body99

do.body99:                                        ; preds = %if.then89
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @check_cpu_stall.___rfd_beenhere.54, i64 0, i32 0), align 4
  %tobool101.not = icmp eq i32 %14, 0
  br i1 %tobool101.not, label %land.lhs.true102, label %do.end128

land.lhs.true102:                                 ; preds = %do.body99
  %call8.i.i183 = call fastcc i32 @__xchg_case_mb_32(i32 noundef 1, i8* noundef bitcast (%struct.atomic_t* @check_cpu_stall.___rfd_beenhere.54 to i8*)) #28
  %tobool104.not = icmp eq i32 %call8.i.i183, 0
  br i1 %tobool104.not, label %if.then105, label %do.end128

if.then105:                                       ; preds = %land.lhs.true102
  %15 = load i32, i32* @rcu_cpu_stall_suppress, align 4
  switch i32 %15, label %do.end128 [
    i32 0, label %do.end128.sink.split
    i32 3, label %do.end128.sink.split
  ]

do.end128.sink.split:                             ; preds = %if.then105, %if.then105, %if.then59, %if.then59
  store i32 0, i32* @rcu_cpu_stall_suppress, align 4
  br label %do.end128

do.end128:                                        ; preds = %do.end128.sink.split, %if.then105, %if.then59, %do.body53, %land.lhs.true56, %if.then43, %do.body99, %land.lhs.true102, %if.then89
  %16 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33), align 8
  %cmp130 = icmp eq i64 %16, %add
  br i1 %cmp130, label %if.then131, label %cleanup

if.then131:                                       ; preds = %do.end128
  %17 = load volatile i64, i64* @jiffies, align 64
  %call132 = call i32 @rcu_jiffies_till_stall_check() #24
  %mul = mul i32 %call132, 3
  %18 = zext i32 %mul to i64
  %add133 = add i64 %17, 3
  %add134 = add i64 %add133, %18
  store volatile i64 %add134, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33), align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end128, %if.then131, %land.lhs.true82, %land.lhs.true78, %if.else, %if.end, %do.end3, %lor.lhs.false
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_segcblist_ready_cbs(%struct.rcu_segcblist* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rcu_stall_is_suppressed() unnamed_addr #1 {
entry:
  %call = call fastcc i1 @rcu_stall_is_suppressed_at_boot() #24
  %0 = load i32, i32* @rcu_cpu_stall_suppress, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = select i1 %call, i1 true, i1 %tobool
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_stall_kick_kthreads() unnamed_addr #1 {
entry:
  %0 = load volatile i8, i8* @rcu_kick_kthreads, align 4, !range !30
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %cleanup, label %do.end4

do.end4:                                          ; preds = %entry
  %1 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 27), align 8
  %2 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %1, %2
  %cmp = icmp slt i64 %sub, 0
  %3 = load %struct.task_struct*, %struct.task_struct** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 8), align 8
  %tobool6 = icmp ne %struct.task_struct* %3, null
  %or.cond = select i1 %cmp, i1 %tobool6, i1 false
  br i1 %or.cond, label %land.lhs.true7, label %cleanup

land.lhs.true7:                                   ; preds = %do.end4
  %call = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %do.end11, label %if.then14

do.end11:                                         ; preds = %land.lhs.true7
  %4 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %tobool13.not = icmp eq i16 %4, 0
  br i1 %tobool13.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %do.end11, %land.lhs.true7
  %.b98 = load i1, i1* @rcu_stall_kick_kthreads.__already_done, align 1
  br i1 %.b98, label %if.end50, label %if.then22, !prof !16

if.then22:                                        ; preds = %if.then14
  store i1 true, i1* @rcu_stall_kick_kthreads.__already_done, align 1
  %5 = load i8*, i8** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 36), align 32
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0), i8* noundef %5) #28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_stall.h\22; .popsection; .long 14472b - 14470b; .short 172; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !114
  br label %if.end50

if.end50:                                         ; preds = %if.then22, %if.then14
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @rcu_stall_kick_kthreads.___rfd_beenhere, i64 0, i32 0), align 4
  %tobool61.not = icmp eq i32 %6, 0
  br i1 %tobool61.not, label %land.lhs.true62, label %do.end81

land.lhs.true62:                                  ; preds = %if.end50
  %call8.i.i = call fastcc i32 @__xchg_case_mb_32(i32 noundef 1, i8* noundef bitcast (%struct.atomic_t* @rcu_stall_kick_kthreads.___rfd_beenhere to i8*)) #28
  %tobool64.not = icmp eq i32 %call8.i.i, 0
  br i1 %tobool64.not, label %if.then65, label %do.end81

if.then65:                                        ; preds = %land.lhs.true62
  %7 = load i32, i32* @rcu_cpu_stall_suppress, align 4
  switch i32 %7, label %do.end81 [
    i32 0, label %if.then75
    i32 3, label %if.then75
  ]

if.then75:                                        ; preds = %if.then65, %if.then65
  store i32 0, i32* @rcu_cpu_stall_suppress, align 4
  br label %do.end81

do.end81:                                         ; preds = %if.then65, %if.then75, %land.lhs.true62, %if.end50
  %8 = load %struct.task_struct*, %struct.task_struct** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 8), align 8
  %call82 = call i32 @wake_up_process(%struct.task_struct* noundef %8) #28
  %add = add i64 %1, 250
  store volatile i64 %add, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 27), align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %do.end11, %do.end81, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_cpu_stall(i64 noundef %gps) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  call fastcc void @rcu_stall_kick_kthreads() #24
  %call6 = call fastcc i1 @rcu_stall_is_suppressed() #24
  br i1 %call6, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add i64 %call, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %1 = load i8*, i8** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 36), align 32
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i64 0, i64 0), i8* noundef %1) #30
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 8
  %2 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 0
  %call15 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %call30 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add31 = add i64 %call30, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add31 to i32*
  %4 = load i32, i32* %3, align 4
  call fastcc void @print_cpu_stall_info(i32 noundef %4) #24
  %5 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %lock43 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %5, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock43, i64 noundef %call15) #24
  %call48132 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %cmp49133 = icmp ult i32 %call48132, %6
  br i1 %cmp49133, label %for.body, label %do.end55

for.body:                                         ; preds = %if.end, %for.body
  %call48135 = phi i32 [ %call48, %for.body ], [ %call48132, %if.end ]
  %totqlen.0134 = phi i64 [ %add52, %for.body ], [ 0, %if.end ]
  %call51 = call fastcc i64 @rcu_get_n_cbs_cpu(i32 noundef %call48135) #24
  %add52 = add i64 %call51, %totqlen.0134
  %call48 = call i32 @cpumask_next(i32 noundef %call48135, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %cmp49 = icmp ult i32 %call48, %7
  br i1 %cmp49, label %for.body, label %do.end55

do.end55:                                         ; preds = %for.body, %if.end
  %totqlen.0.lcssa = phi i64 [ 0, %if.end ], [ %add52, %for.body ]
  %8 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %8, %gps
  %call57 = call fastcc i64 @rcu_seq_current(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  %call58 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0), i64 noundef %sub, i64 noundef %call57, i64 noundef %totqlen.0.lcssa) #30
  call fastcc void @rcu_check_gp_kthread_expired_fqs_timer() #24
  call fastcc void @rcu_check_gp_kthread_starvation() #24
  call fastcc void @rcu_dump_cpu_stacks() #24
  %call67 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  %9 = load volatile i64, i64* @jiffies, align 64
  %10 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33), align 8
  %sub79 = sub i64 %9, %10
  %cmp80 = icmp sgt i64 %sub79, -1
  br i1 %cmp80, label %do.body87, label %do.body101

do.body87:                                        ; preds = %do.end55
  %11 = load volatile i64, i64* @jiffies, align 64
  %call88 = call i32 @rcu_jiffies_till_stall_check() #24
  %mul = mul i32 %call88, 3
  %12 = zext i32 %mul to i64
  %add90 = add i64 %11, 3
  %add91 = add i64 %add90, %12
  store volatile i64 %add91, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33), align 8
  br label %do.body101

do.body101:                                       ; preds = %do.end55, %do.body87
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0), i64 noundef %call67) #24
  call fastcc void @panic_on_rcu_stall() #24
  %13 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %14 = inttoptr i64 %13 to %struct.task_struct*
  call fastcc void @set_tsk_need_resched(%struct.task_struct* noundef %14) #24
  call fastcc void @set_preempt_need_resched() #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body101
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_other_cpu_stall(i64 noundef %gp_seq, i64 noundef %gps) unnamed_addr #1 {
entry:
  call fastcc void @rcu_stall_kick_kthreads() #24
  %call = call fastcc i1 @rcu_stall_is_suppressed() #24
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 36), align 32
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.78, i64 0, i64 0), i8* noundef %0) #30
  %1 = load i32, i32* @rcu_num_lvls, align 4
  %sub = add i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom
  %2 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx, align 8
  %3 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom5209 = sext i32 %3 to i64
  %arrayidx6210 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom5209
  %cmp211 = icmp ult %struct.rcu_node* %2, %arrayidx6210
  br i1 %cmp211, label %do.body8, label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %if.end57, %if.end
  %ndetected.0.lcssa = phi i32 [ 0, %if.end ], [ %ndetected.3, %if.end57 ]
  %call65215 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp66216 = icmp ult i32 %call65215, %4
  br i1 %cmp66216, label %for.body68, label %do.body76

do.body8:                                         ; preds = %if.end, %if.end57
  %ndetected.0213 = phi i32 [ %ndetected.3, %if.end57 ], [ 0, %if.end ]
  %rnp.0212 = phi %struct.rcu_node* [ %incdec.ptr, %if.end57 ], [ %2, %if.end ]
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0212, i64 0, i32 0
  %call11 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0212, i64 0, i32 4
  %5 = load i64, i64* %qsmask, align 32
  %cmp19.not = icmp eq i64 %5, 0
  br i1 %cmp19.not, label %if.end57, label %if.then21

if.then21:                                        ; preds = %do.body8
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0212, i64 0, i32 18
  %6 = load i8, i8* %level, align 1
  %conv22 = zext i8 %6 to i32
  %7 = load i32, i32* @rcu_num_lvls, align 4
  %sub23 = add i32 %7, -1
  %cmp24.not = icmp eq i32 %sub23, %conv22
  br i1 %cmp24.not, label %if.end35, label %if.then34, !prof !16

if.then34:                                        ; preds = %if.then21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_stall.h\22; .popsection; .long 14472b - 14470b; .short 547; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !115
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then21
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0212, i64 0, i32 15
  %8 = load i32, i32* %grplo, align 8
  %sub44 = add i32 %8, -1
  %call45 = call i32 @cpumask_next(i32 noundef %sub44, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0212, i64 0, i32 16
  %9 = load i32, i32* %grphi, align 4
  %cmp47.not205 = icmp sgt i32 %call45, %9
  br i1 %cmp47.not205, label %if.end57, label %for.body49

for.body49:                                       ; preds = %if.end35, %for.inc.for.body49_crit_edge
  %10 = phi i32 [ %13, %for.inc.for.body49_crit_edge ], [ %9, %if.end35 ]
  %11 = phi i32 [ %.pre, %for.inc.for.body49_crit_edge ], [ %8, %if.end35 ]
  %cpu.0207 = phi i32 [ %call56, %for.inc.for.body49_crit_edge ], [ %call45, %if.end35 ]
  %ndetected.1206 = phi i32 [ %ndetected.2, %for.inc.for.body49_crit_edge ], [ %ndetected.0213, %if.end35 ]
  %12 = load i64, i64* %qsmask, align 32
  %sub52 = sub i32 %cpu.0207, %11
  %sh_prom = zext i32 %sub52 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, %12
  %tobool53.not = icmp eq i64 %and, 0
  br i1 %tobool53.not, label %for.inc, label %if.then54

if.then54:                                        ; preds = %for.body49
  call fastcc void @print_cpu_stall_info(i32 noundef %cpu.0207) #24
  %inc = add i32 %ndetected.1206, 1
  %.pre220 = load i32, i32* %grphi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body49, %if.then54
  %13 = phi i32 [ %.pre220, %if.then54 ], [ %10, %for.body49 ]
  %ndetected.2 = phi i32 [ %inc, %if.then54 ], [ %ndetected.1206, %for.body49 ]
  %call56 = call i32 @cpumask_next(i32 noundef %cpu.0207, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %cmp47.not = icmp sgt i32 %call56, %13
  br i1 %cmp47.not, label %if.end57, label %for.inc.for.body49_crit_edge

for.inc.for.body49_crit_edge:                     ; preds = %for.inc
  %.pre = load i32, i32* %grplo, align 8
  br label %for.body49

if.end57:                                         ; preds = %for.inc, %if.end35, %do.body8
  %ndetected.3 = phi i32 [ %ndetected.0213, %do.body8 ], [ %ndetected.0213, %if.end35 ], [ %ndetected.2, %for.inc ]
  call fastcc void @rcu_print_task_stall(%struct.rcu_node* noundef %rnp.0212, i64 noundef %call11) #24
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0212, i64 1
  %14 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom5
  %cmp = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx6
  br i1 %cmp, label %do.body8, label %for.cond64.preheader

for.body68:                                       ; preds = %for.cond64.preheader, %for.body68
  %call65218 = phi i32 [ %call65, %for.body68 ], [ %call65215, %for.cond64.preheader ]
  %totqlen.0217 = phi i64 [ %add70, %for.body68 ], [ 0, %for.cond64.preheader ]
  %call69 = call fastcc i64 @rcu_get_n_cbs_cpu(i32 noundef %call65218) #24
  %add70 = add i64 %call69, %totqlen.0217
  %call65 = call i32 @cpumask_next(i32 noundef %call65218, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %15 = load i32, i32* @nr_cpu_ids, align 4
  %cmp66 = icmp ult i32 %call65, %15
  br i1 %cmp66, label %for.body68, label %do.body76

do.body76:                                        ; preds = %for.body68, %for.cond64.preheader
  %totqlen.0.lcssa = phi i64 [ 0, %for.cond64.preheader ], [ %add70, %for.body68 ]
  %call81 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add82 = add i64 %call81, ptrtoint (i32* @cpu_number to i64)
  %16 = inttoptr i64 %add82 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = load volatile i64, i64* @jiffies, align 64
  %sub83 = sub i64 %18, %gps
  %call84 = call fastcc i64 @rcu_seq_current(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  %call85 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.79, i64 0, i64 0), i32 noundef %17, i64 noundef %sub83, i64 noundef %call84, i64 noundef %totqlen.0.lcssa) #30
  %tobool86.not = icmp eq i32 %ndetected.0.lcssa, 0
  br i1 %tobool86.not, label %if.else, label %if.then87

if.then87:                                        ; preds = %do.body76
  call fastcc void @rcu_dump_cpu_stacks() #24
  %19 = load i32, i32* @rcu_num_lvls, align 4
  %sub88 = add i32 %19, -1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom89
  %20 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx90, align 8
  %21 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom92 = sext i32 %21 to i64
  %arrayidx93 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom92
  br label %for.cond91

for.cond91:                                       ; preds = %for.cond91, %if.then87
  %rnp.1 = phi %struct.rcu_node* [ %20, %if.then87 ], [ %incdec.ptr98, %for.cond91 ]
  %cmp94 = icmp ult %struct.rcu_node* %rnp.1, %arrayidx93
  %incdec.ptr98 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.1, i64 1
  br i1 %cmp94, label %for.cond91, label %if.end139

if.else:                                          ; preds = %do.body76
  %call100 = call fastcc i64 @rcu_seq_current(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  %cmp101.not = icmp eq i64 %call100, %gp_seq
  br i1 %cmp101.not, label %if.else109, label %do.end106

do.end106:                                        ; preds = %if.else
  %call108 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.80, i64 0, i64 0)) #30
  br label %if.end139

if.else109:                                       ; preds = %if.else
  %22 = load volatile i64, i64* @jiffies, align 64
  %23 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 36), align 32
  %sub120 = sub i64 %22, %23
  %25 = load volatile i64, i64* @jiffies_till_next_fqs, align 8
  %26 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 4), align 32
  %call137 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.81, i64 0, i64 0), i8* noundef %24, i64 noundef %sub120, i64 noundef %22, i64 noundef %23, i64 noundef %25, i64 noundef %26) #30
  br label %if.end139

if.end139:                                        ; preds = %for.cond91, %do.end106, %if.else109
  %27 = load volatile i64, i64* @jiffies, align 64
  %28 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33), align 8
  %sub144 = sub i64 %27, %28
  %cmp145 = icmp sgt i64 %sub144, -1
  br i1 %cmp145, label %do.body152, label %if.end161

do.body152:                                       ; preds = %if.end139
  %29 = load volatile i64, i64* @jiffies, align 64
  %call153 = call i32 @rcu_jiffies_till_stall_check() #24
  %mul = mul i32 %call153, 3
  %30 = zext i32 %mul to i64
  %add155 = add i64 %29, 3
  %add156 = add i64 %add155, %30
  store volatile i64 %add156, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33), align 8
  br label %if.end161

if.end161:                                        ; preds = %do.body152, %if.end139
  call fastcc void @rcu_check_gp_kthread_expired_fqs_timer() #24
  call fastcc void @rcu_check_gp_kthread_starvation() #24
  call fastcc void @panic_on_rcu_stall() #24
  call void @rcu_force_quiescent_state() #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end161
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rcu_stall_is_suppressed_at_boot() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @rcu_cpu_stall_suppress_at_boot, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i1 @rcu_inkernel_boot_has_ended() #28
  %lnot = xor i1 %call, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_inkernel_boot_has_ended() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i64 noundef %old, i64 noundef %new) #24
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33), i64 %old, i64 %new, i64* elementtype(i64) getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33)) #26, !srcloc !116
  %asmresult1 = extractvalue { i64, i64 } %0, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_cpu_stall_info(i32 noundef %cpu) unnamed_addr #1 {
entry:
  %fast_no_hz = alloca [72 x i8], align 1
  %0 = getelementptr inbounds [72 x i8], [72 x i8]* %fast_no_hz, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !39
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %2 = inttoptr i64 %add to %struct.rcu_data*
  %3 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 0
  %4 = load i64, i64* %gp_seq, align 8
  %sub = sub i64 %3, %4
  %call = call fastcc i64 @rcu_seq_ctr(i64 noundef %sub) #24
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %ticks_this_gp = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 10
  %5 = load i64, i64* %ticks_this_gp, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %ticks_value.0 = phi i64 [ %5, %if.else ], [ %call, %entry ]
  %ticks_title.0 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i64 0, i64 0), %entry ]
  call fastcc void @print_cpu_stall_fast_no_hz(i8* noundef nonnull %0) #24
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 8
  %6 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %gp_seq2 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %6, i64 0, i32 1
  %7 = load i64, i64* %gp_seq2, align 8
  %rcu_iw_gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 35
  %8 = load i64, i64* %rcu_iw_gp_seq, align 8
  %sub3 = sub i64 %7, %8
  %call4 = call fastcc i64 @rcu_seq_ctr(i64 noundef %sub3) #24
  %call5 = call fastcc i1 @rcu_is_gp_kthread_starving(i64* noundef null) #24
  br i1 %call5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %call6 = call fastcc i32 @rcu_dynticks_snap(%struct.rcu_data* noundef %2) #24
  %call7 = call fastcc i1 @rcu_dynticks_in_eqs(i32 noundef %call6) #24
  %phi.sel = select i1 %call7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.67, i64 0, i64 0)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %9 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.67, i64 0, i64 0), %if.end ], [ %phi.sel, %land.rhs ]
  %call12 = call fastcc i1 @cpu_online(i32 noundef %cpu) #24
  %10 = zext i1 %call12 to i64
  %arrayidx15 = getelementptr [3 x i8], [3 x i8]* @.str.62, i64 0, i64 %10
  %11 = load i8, i8* %arrayidx15, align 1
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 9
  %12 = load i64, i64* %grpmask, align 8
  %13 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %qsmaskinit = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %13, i64 0, i32 6
  %14 = load i64, i64* %qsmaskinit, align 16
  %and = and i64 %14, %12
  %tobool17 = icmp ne i64 %and, 0
  %15 = zext i1 %tobool17 to i64
  %arrayidx23 = getelementptr [3 x i8], [3 x i8]* @.str.63, i64 0, i64 %15
  %16 = load i8, i8* %arrayidx23, align 1
  %qsmaskinitnext = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %13, i64 0, i32 7
  %17 = load i64, i64* %qsmaskinitnext, align 8
  %and27 = and i64 %17, %12
  %tobool28 = icmp ne i64 %and27, 0
  %18 = zext i1 %tobool28 to i64
  %arrayidx34 = getelementptr [3 x i8], [3 x i8]* @.str.64, i64 0, i64 %18
  %19 = load i8, i8* %arrayidx34, align 1
  %rcu_iw_pending = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 34
  %20 = load i8, i8* %rcu_iw_pending, align 8, !range !30
  %tobool36.not = icmp eq i8 %20, 0
  br i1 %tobool36.not, label %cond.false43, label %cond.true

cond.true:                                        ; preds = %land.end
  %cmp = icmp ult i64 %call4, 9
  %cond = select i1 %cmp, i64 %call4, i64 9
  %conv41 = trunc i64 %cond to i32
  %add42 = or i32 %conv41, 48
  br label %cond.end50

cond.false43:                                     ; preds = %land.end
  %tobool44.not = icmp eq i64 %call4, 0
  %21 = zext i1 %tobool44.not to i64
  %arrayidx48 = getelementptr [3 x i8], [3 x i8]* @.str.65, i64 0, i64 %21
  %22 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %22 to i32
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false43, %cond.true
  %cond51 = phi i32 [ %add42, %cond.true ], [ %conv49, %cond.false43 ]
  %conv35 = zext i8 %19 to i32
  %conv24 = zext i8 %16 to i32
  %conv = zext i8 %11 to i32
  %call52 = call fastcc i32 @rcu_dynticks_snap(%struct.rcu_data* noundef %2) #24
  %and53 = and i32 %call52, 4095
  %dynticks_nesting = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 20
  %23 = load i64, i64* %dynticks_nesting, align 8
  %dynticks_nmi_nesting = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 21
  %24 = load i64, i64* %dynticks_nmi_nesting, align 8
  %softirq_snap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %2, i64 0, i32 32
  %25 = load i32, i32* %softirq_snap, align 8
  %call54 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 9, i32 noundef %cpu) #24
  %26 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 28), align 32
  %27 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 35), align 8
  %sub57 = sub i64 %26, %27
  %call62 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.61, i64 0, i64 0), i32 noundef %cpu, i32 noundef %conv, i32 noundef %conv24, i32 noundef %conv35, i32 noundef %cond51, i64 noundef %ticks_value.0, i8* noundef %ticks_title.0, i32 noundef %and53, i64 noundef %23, i64 noundef %24, i32 noundef %25, i32 noundef %call54, i64 noundef %sub57, i8* noundef nonnull %0, i8* noundef %9) #30
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_check_gp_kthread_expired_fqs_timer() unnamed_addr #1 {
entry:
  %0 = load %struct.task_struct*, %struct.task_struct** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 8), align 8
  %1 = call i16 asm sideeffect "ldarh ${0:w}, $1", "=r,*Q,~{memory}"(i16* elementtype(i16) getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11)) #26, !srcloc !117
  %2 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 26), align 16
  %cmp = icmp eq i16 %1, 5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %add = add i64 %2, 500
  %3 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %add, %3
  %cmp6 = icmp slt i64 %sub, 0
  %tobool = icmp ne %struct.task_struct* %0, null
  %or.cond = select i1 %cmp6, i1 %tobool, i1 false
  br i1 %or.cond, label %do.end12, label %if.end

do.end12:                                         ; preds = %land.lhs.true
  %on_rq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 14
  %4 = load volatile i32, i32* %on_rq, align 32
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.then, label %if.end

if.then:                                          ; preds = %do.end12
  %call15 = call fastcc i32 @task_cpu(%struct.task_struct* noundef nonnull %0) #24
  %5 = load i8*, i8** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 36), align 32
  %6 = load volatile i64, i64* @jiffies, align 64
  %sub20 = sub i64 %6, %2
  %call21 = call fastcc i64 @rcu_seq_current(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  %7 = load i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %conv24 = sext i16 %7 to i32
  %call25 = call fastcc i8* @gp_state_getname(i16 noundef 5) #24
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 1
  %8 = load volatile i32, i32* %__state, align 16
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.68, i64 0, i64 0), i8* noundef %5, i64 noundef %sub20, i64 noundef %call21, i32 noundef %conv24, i8* noundef %call25, i32 noundef 5, i32 noundef %8) #30
  %call38 = call fastcc i32 @kstat_softirqs_cpu(i32 noundef 1, i32 noundef %call15) #24
  %call39 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.69, i64 0, i64 0), i32 noundef %call15, i32 noundef %call38) #30
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end12, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_check_gp_kthread_starvation() unnamed_addr #1 {
entry:
  %j = alloca i64, align 8
  %0 = load %struct.task_struct*, %struct.task_struct** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 8), align 8
  %1 = bitcast i64* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #26
  store i64 0, i64* %j, align 8, !annotation !39
  %call = call fastcc i1 @rcu_is_gp_kthread_starving(i64* noundef nonnull %j) #24
  br i1 %call, label %if.then, label %if.end67

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq %struct.task_struct* %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %call1 = call fastcc i32 @task_cpu(%struct.task_struct* noundef nonnull %0) #24
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ -1, %if.then ]
  %2 = load i8*, i8** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 36), align 32
  %3 = load i64, i64* %j, align 8
  %call2 = call fastcc i64 @rcu_seq_current(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  %4 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %conv = sext i16 %4 to i32
  %5 = load i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %call9 = call fastcc i8* @gp_state_getname(i16 noundef %5) #24
  %6 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %conv17 = sext i16 %6 to i32
  br i1 %tobool.not, label %if.end67.critedge, label %cond.true19

cond.true19:                                      ; preds = %cond.end
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i64 0, i32 1
  %7 = load volatile i32, i32* %__state, align 16
  %call30 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.70, i64 0, i64 0), i8* noundef %2, i64 noundef %3, i64 noundef %call2, i32 noundef %conv, i8* noundef %call9, i32 noundef %conv17, i32 noundef %7, i32 noundef %cond) #30
  %8 = load i8*, i8** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 36), align 32
  %call37 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.71, i64 0, i64 0), i8* noundef %8) #30
  %call42 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.72, i64 0, i64 0)) #30
  call void @sched_show_task(%struct.task_struct* noundef nonnull %0) #28
  %cmp = icmp sgt i32 %cond, -1
  br i1 %cmp, label %if.then44, label %if.end64

if.then44:                                        ; preds = %cond.true19
  %call45 = call fastcc i1 @cpu_online(i32 noundef %cond) #24
  br i1 %call45, label %do.end58, label %do.end53, !prof !16

do.end53:                                         ; preds = %if.then44
  %call55 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.73, i64 0, i64 0), i32 noundef %cond) #30
  br label %if.end64

do.end58:                                         ; preds = %if.then44
  %call60 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.74, i64 0, i64 0)) #30
  call void @dump_cpu_task(i32 noundef %cond) #28
  br label %if.end64

if.end64:                                         ; preds = %do.end53, %do.end58, %cond.true19
  %call65 = call i32 @wake_up_process(%struct.task_struct* noundef nonnull %0) #28
  br label %if.end67

if.end67.critedge:                                ; preds = %cond.end
  %call30.c = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.70, i64 0, i64 0), i8* noundef %2, i64 noundef %3, i64 noundef %call2, i32 noundef %conv, i8* noundef %call9, i32 noundef %conv17, i32 noundef -1, i32 noundef %cond) #30
  br label %if.end67

if.end67:                                         ; preds = %if.end67.critedge, %if.end64, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_dump_cpu_stacks() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @rcu_num_lvls, align 4
  %sub = add i32 %0, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom
  %1 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx, align 8
  %2 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom1101 = sext i32 %2 to i64
  %arrayidx2102 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom1101
  %cmp103 = icmp ult %struct.rcu_node* %1, %arrayidx2102
  br i1 %cmp103, label %do.body3, label %for.end78

do.body3:                                         ; preds = %entry, %do.body66
  %rnp.0104 = phi %struct.rcu_node* [ %incdec.ptr, %do.body66 ], [ %1, %entry ]
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0104, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0104, i64 0, i32 18
  %3 = load i8, i8* %level, align 1
  %conv10 = zext i8 %3 to i32
  %4 = load i32, i32* @rcu_num_lvls, align 4
  %sub11 = add i32 %4, -1
  %cmp12.not = icmp eq i32 %sub11, %conv10
  br i1 %cmp12.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %do.body3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_stall.h\22; .popsection; .long 14472b - 14470b; .short 339; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !118
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body3
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0104, i64 0, i32 15
  %5 = load i32, i32* %grplo, align 8
  %sub30 = add i32 %5, -1
  %call31 = call i32 @cpumask_next(i32 noundef %sub30, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0104, i64 0, i32 16
  %6 = load i32, i32* %grphi, align 4
  %cmp33.not98 = icmp sgt i32 %call31, %6
  br i1 %cmp33.not98, label %do.body66, label %for.body35.lr.ph

for.body35.lr.ph:                                 ; preds = %if.end
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0104, i64 0, i32 4
  br label %for.body35

for.body35:                                       ; preds = %for.inc.for.body35_crit_edge, %for.body35.lr.ph
  %7 = phi i32 [ %5, %for.body35.lr.ph ], [ %.pre, %for.inc.for.body35_crit_edge ]
  %cpu.099 = phi i32 [ %call31, %for.body35.lr.ph ], [ %call61, %for.inc.for.body35_crit_edge ]
  %8 = load i64, i64* %qsmask, align 32
  %sub37 = sub i32 %cpu.099, %7
  %sh_prom = zext i32 %sub37 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, %8
  %tobool38.not = icmp eq i64 %and, 0
  br i1 %tobool38.not, label %for.inc, label %if.then39

if.then39:                                        ; preds = %for.body35
  %call40 = call fastcc i1 @cpu_online(i32 noundef %cpu.099) #24
  br i1 %call40, label %if.else, label %do.end53, !prof !16

do.end53:                                         ; preds = %if.then39
  %call55 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0), i32 noundef %cpu.099) #30
  br label %for.inc

if.else:                                          ; preds = %if.then39
  call void @dump_cpu_task(i32 noundef %cpu.099) #28
  br label %for.inc

for.inc:                                          ; preds = %for.body35, %if.else, %do.end53
  %call61 = call i32 @cpumask_next(i32 noundef %cpu.099, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %9 = load i32, i32* %grphi, align 4
  %cmp33.not = icmp sgt i32 %call61, %9
  br i1 %cmp33.not, label %do.body66, label %for.inc.for.body35_crit_edge

for.inc.for.body35_crit_edge:                     ; preds = %for.inc
  %.pre = load i32, i32* %grplo, align 8
  br label %for.body35

do.body66:                                        ; preds = %for.inc, %if.end
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0104, i64 1
  %10 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx2 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom1
  %cmp = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx2
  br i1 %cmp, label %do.body3, label %for.end78

for.end78:                                        ; preds = %do.body66, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @panic_on_rcu_stall() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @panic_on_rcu_stall.cpu_stall, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @panic_on_rcu_stall.cpu_stall, align 4
  %1 = load i32, i32* @sysctl_max_rcu_stall_to_panic, align 4
  %cmp = icmp sge i32 %inc, %1
  %2 = load i32, i32* @sysctl_panic_on_rcu_stall, align 4
  %tobool = icmp ne i32 %2, 0
  %or.cond = select i1 %cmp, i1 %tobool, i1 false
  br i1 %or.cond, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0)) #32
  unreachable

if.end2:                                          ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @print_cpu_stall_fast_no_hz(i8* nocapture noundef writeonly %cp) unnamed_addr #18 {
entry:
  store i8 0, i8* %cp, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_is_gp_kthread_starving(i64* noundef writeonly %jp) unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %1 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  %sub = sub i64 %0, %1
  %tobool.not = icmp eq i64* %jp, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 %sub, i64* %jp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp = icmp ugt i64 %sub, 500
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_show_task(%struct.task_struct* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_cpu_task(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #19

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_print_task_stall(%struct.rcu_node* noundef %rnp, i64 noundef %flags) unnamed_addr #1 {
entry:
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) unnamed_addr #6 {
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
define internal void @rcu_barrier_callback(%struct.callback_head* nocapture noundef readnone %rhp) #1 {
entry:
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef 1) #28
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  call fastcc void @rcu_barrier_trace() #24
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @complete(%struct.completion* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 16)) #28
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @rcu_segcblist_entrain(%struct.rcu_segcblist* noundef, %struct.callback_head* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(i32 noundef %i) unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 15, i32 0), i32 %i, i32* elementtype(i32) getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 15, i32 0)) #26, !srcloc !119
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add() unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 15, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 15, i32 0)) #26, !srcloc !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #6 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rcu_seq_endval(i64* nocapture noundef readonly %sp) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %sp, align 8
  %or = or i64 %0, 3
  %add = add i64 %or, 1
  ret i64 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_segcblist_test_flags(%struct.rcu_segcblist* noundef %rsclp) unnamed_addr #6 {
entry:
  %flags1 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %rsclp, i64 0, i32 5
  %0 = load volatile i8, i8* %flags1, align 8
  %1 = and i8 %0, 1
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_report_qs_rsp(i64 noundef %flags) unnamed_addr #1 {
entry:
  %call1 = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2152; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !121
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %1 = or i16 %0, 2
  store volatile i16 %1, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0), i64 noundef %flags) #24
  call fastcc void @rcu_gp_kthread_wake() #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)* noundef, i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal i32 @rcu_gp_kthread(i8* nocapture noundef readnone %unused) #20 {
entry:
  %__wait = alloca %struct.swait_queue, align 8
  %0 = bitcast %struct.swait_queue* %__wait to i8*
  %task_list = getelementptr inbounds %struct.swait_queue, %struct.swait_queue* %__wait, i64 0, i32 1
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.backedge, %entry
  store volatile i16 1, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %1 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %2 = and i16 %1, 1
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end, label %do.end20

if.end:                                           ; preds = %for.cond1
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !39
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %task_list) #24
  %call98 = call i64 @prepare_to_swait_event(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 9), %struct.swait_queue* noundef nonnull %__wait, i32 noundef 1026) #28
  %3 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %4 = and i16 %3, 1
  %tobool15.not99 = icmp eq i16 %4, 0
  br i1 %tobool15.not99, label %cleanup, label %for.end

cleanup:                                          ; preds = %if.end, %cleanup
  call void @schedule() #28
  %call = call i64 @prepare_to_swait_event(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 9), %struct.swait_queue* noundef nonnull %__wait, i32 noundef 1026) #28
  %5 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %6 = and i16 %5, 1
  %tobool15.not = icmp eq i16 %6, 0
  br i1 %tobool15.not, label %cleanup, label %for.end

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_swait(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 9), %struct.swait_queue* noundef nonnull %__wait) #28
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #26
  br label %do.end20

do.end20:                                         ; preds = %for.cond1, %for.end
  store volatile i16 2, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %call30 = call fastcc i1 @rcu_gp_init() #24
  br i1 %call30, label %for.end71, label %do.end36

do.end36:                                         ; preds = %do.end20
  call fastcc void @_cond_resched() #24
  %7 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %7, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %call51 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %9) #24
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.cond1.backedge, label %if.then61, !prof !16

if.then61:                                        ; preds = %do.end36
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2124; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !122
  br label %for.cond1.backedge

for.end71:                                        ; preds = %do.end20
  call fastcc void @rcu_gp_fqs_loop() #24
  store volatile i16 7, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  call fastcc void @rcu_gp_cleanup() #24
  store volatile i16 8, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  br label %for.cond1.backedge

for.cond1.backedge:                               ; preds = %for.end71, %if.then61, %do.end36
  br label %for.cond1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_setscheduler_nocheck(%struct.task_struct* noundef, i32 noundef, %struct.sched_param* noundef) local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @rcu_spawn_core_kthreads() unnamed_addr #10 section ".init.text" {
entry:
  %call3 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp4 = icmp ult i32 %call3, %0
  br i1 %cmp4, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %do.body
  %call5 = phi i32 [ %call, %do.body ], [ %call3, %entry ]
  %idxprom = sext i32 %call5 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 31) to i64)
  %2 = inttoptr i64 %add to i8*
  store i8 0, i8* %2, align 1
  %call = call i32 @cpumask_next(i32 noundef %call5, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  %4 = load i8, i8* @use_softirq, align 4, !range !30
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.end
  %call2 = call i32 @smpboot_register_percpu_thread(%struct.smp_hotplug_thread* noundef nonnull @rcu_cpu_thread_spec) #28
  %tobool3 = icmp ne i32 %call2, 0
  %.b1 = load i1, i1* @rcu_spawn_core_kthreads.__already_done, align 1
  %lnot7 = xor i1 %.b1, true
  %5 = select i1 %tobool3, i1 %lnot7, i1 false
  br i1 %5, label %if.then11, label %cleanup, !prof !13

if.then11:                                        ; preds = %if.end
  store i1 true, i1* @rcu_spawn_core_kthreads.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.rcu_spawn_core_kthreads, i64 0, i64 0)) #28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2861; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_swait_event(%struct.swait_queue_head* noundef, %struct.swait_queue* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_swait(%struct.swait_queue_head* noundef, %struct.swait_queue* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rcu_gp_init() unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %0, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  %1 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %do.body27

do.body27:                                        ; preds = %entry
  store volatile i16 0, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %call32 = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end60, label %if.then41, !prof !16

if.then41:                                        ; preds = %do.body27
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 1754; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !124
  br label %cleanup.sink.split

if.end60:                                         ; preds = %do.body27
  call fastcc void @record_gp_stall_check_time() #24
  call fastcc void @rcu_seq_start(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  store volatile i16 3, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %2 = load i32, i32* @rcu_num_lvls, align 4
  %sub = add i32 %2, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom
  %3 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx, align 8
  %4 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom77330 = sext i32 %4 to i64
  %arrayidx78331 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom77330
  %cmp332 = icmp ult %struct.rcu_node* %3, %arrayidx78331
  br i1 %cmp332, label %for.body, label %for.end

for.body:                                         ; preds = %if.end60, %for.inc
  %rnp.0333 = phi %struct.rcu_node* [ %incdec.ptr, %for.inc ], [ %3, %if.end60 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !125
  %ofl_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0333, i64 0, i32 8
  %5 = load volatile i64, i64* %ofl_seq, align 64
  %and = and i64 %5, 1
  %tobool84.not = icmp eq i64 %and, 0
  br i1 %tobool84.not, label %if.end94, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  %6 = load volatile i64, i64* %ofl_seq, align 64
  %cmp91329 = icmp eq i64 %5, %6
  br i1 %cmp91329, label %while.body, label %if.end94

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call93 = call i64 @schedule_timeout_idle(i64 noundef 1) #28
  %7 = load volatile i64, i64* %ofl_seq, align 64
  %cmp91 = icmp eq i64 %5, %7
  br i1 %cmp91, label %while.body, label %if.end94

if.end94:                                         ; preds = %while.body, %while.cond.preheader, %for.body
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !126
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 39)) #24
  %lock96 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0333, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock96) #24
  %qsmaskinit = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0333, i64 0, i32 6
  %8 = load i64, i64* %qsmaskinit, align 16
  %qsmaskinitnext = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0333, i64 0, i32 7
  %9 = load i64, i64* %qsmaskinitnext, align 8
  %cmp102 = icmp eq i64 %8, %9
  br i1 %cmp102, label %land.lhs.true, label %if.end113

land.lhs.true:                                    ; preds = %if.end94
  %wait_blkd_tasks = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0333, i64 0, i32 19
  %10 = load i8, i8* %wait_blkd_tasks, align 2, !range !30
  %tobool104.not = icmp eq i8 %10, 0
  br i1 %tobool104.not, label %for.inc, label %if.end113

if.end113:                                        ; preds = %land.lhs.true, %if.end94
  store i64 %9, i64* %qsmaskinit, align 16
  %tobool117.not = icmp ne i64 %8, 0
  %tobool121.not = icmp eq i64 %9, 0
  %brmerge = or i1 %tobool117.not, %tobool121.not
  br i1 %brmerge, label %if.end139, label %if.then128

if.then128:                                       ; preds = %if.end113
  %wait_blkd_tasks129 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0333, i64 0, i32 19
  %11 = load i8, i8* %wait_blkd_tasks129, align 2, !range !30
  %tobool130.not = icmp eq i8 %11, 0
  br i1 %tobool130.not, label %if.then131, label %if.end139

if.then131:                                       ; preds = %if.then128
  call fastcc void @rcu_init_new_rnp(%struct.rcu_node* noundef %rnp.0333) #24
  br label %if.end139

if.end139:                                        ; preds = %if.end113, %if.then131, %if.then128
  %wait_blkd_tasks140 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0333, i64 0, i32 19
  %12 = load i8, i8* %wait_blkd_tasks140, align 2, !range !30
  %tobool141.not = icmp eq i8 %12, 0
  br i1 %tobool141.not, label %for.inc, label %land.lhs.true143

land.lhs.true143:                                 ; preds = %if.end139
  store i8 0, i8* %wait_blkd_tasks140, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end139, %land.lhs.true143, %land.lhs.true
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock96) #24
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 39)) #24
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0333, i64 1
  %13 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom77 = sext i32 %13 to i64
  %arrayidx78 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom77
  %cmp = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx78
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end60
  %14 = load i32, i32* @gp_preinit_delay, align 4
  call fastcc void @rcu_gp_slow(i32 noundef %14) #24
  store volatile i16 4, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %15 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom171337 = sext i32 %15 to i64
  %arrayidx172338 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom171337
  %cmp173339 = icmp ugt %struct.rcu_node* %arrayidx172338, getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)
  br i1 %cmp173339, label %for.body175, label %cleanup

for.body175:                                      ; preds = %for.end, %do.end241
  %rnp.1340 = phi %struct.rcu_node* [ %incdec.ptr256, %do.end241 ], [ getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0), %for.end ]
  %16 = load i32, i32* @gp_init_delay, align 4
  call fastcc void @rcu_gp_slow(i32 noundef %16) #24
  %lock181 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1340, i64 0, i32 0
  %call182 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock181) #24
  %call195 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call195, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %17 = inttoptr i64 %add to %struct.rcu_data*
  call fastcc void @rcu_preempt_check_blocked_tasks(%struct.rcu_node* noundef %rnp.1340) #24
  %qsmaskinit196 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1340, i64 0, i32 6
  %18 = load i64, i64* %qsmaskinit196, align 16
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1340, i64 0, i32 4
  store i64 %18, i64* %qsmask, align 32
  %19 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1340, i64 0, i32 1
  store volatile i64 %19, i64* %gp_seq, align 8
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %17, i64 0, i32 8
  %20 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %cmp206 = icmp eq %struct.rcu_node* %rnp.1340, %20
  br i1 %cmp206, label %if.then208, label %if.end210

if.then208:                                       ; preds = %for.body175
  %call209 = call fastcc i1 @__note_gp_changes(%struct.rcu_node* noundef %rnp.1340, %struct.rcu_data* noundef %17) #24
  %.pre = load i64, i64* %qsmask, align 32
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %for.body175
  %21 = phi i64 [ %.pre, %if.then208 ], [ %18, %for.body175 ]
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1340, i64 0, i32 18
  %qsmaskinitnext214 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1340, i64 0, i32 7
  %22 = load i64, i64* %qsmaskinitnext214, align 8
  %neg = xor i64 %22, -1
  %and215 = and i64 %21, %neg
  %rcu_gp_init_mask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1340, i64 0, i32 5
  store i64 %and215, i64* %rcu_gp_init_mask, align 8
  %tobool216.not = icmp eq i64 %and215, 0
  br i1 %tobool216.not, label %lor.lhs.false217, label %land.lhs.true221

lor.lhs.false217:                                 ; preds = %if.end210
  %wait_blkd_tasks218 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1340, i64 0, i32 19
  %23 = load i8, i8* %wait_blkd_tasks218, align 2, !range !30
  %tobool219.not = icmp eq i8 %23, 0
  br i1 %tobool219.not, label %do.end233, label %land.lhs.true221

land.lhs.true221:                                 ; preds = %lor.lhs.false217, %if.end210
  %24 = load i8, i8* %level, align 1
  %conv223 = zext i8 %24 to i32
  %25 = load i32, i32* @rcu_num_lvls, align 4
  %sub224 = add i32 %25, -1
  %cmp225 = icmp eq i32 %sub224, %conv223
  br i1 %cmp225, label %if.then227, label %do.end233

if.then227:                                       ; preds = %land.lhs.true221
  %26 = load i64, i64* %gp_seq, align 8
  call fastcc void @rcu_report_qs_rnp(i64 noundef %and215, %struct.rcu_node* noundef %rnp.1340, i64 noundef %26, i64 noundef %call182) #24
  br label %do.end241

do.end233:                                        ; preds = %land.lhs.true221, %lor.lhs.false217
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock181) #24
  br label %do.end241

do.end241:                                        ; preds = %do.end233, %if.then227
  call fastcc void @_cond_resched() #24
  %27 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %27, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  %incdec.ptr256 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.1340, i64 1
  %28 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom171 = sext i32 %28 to i64
  %arrayidx172 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom171
  %cmp173 = icmp ult %struct.rcu_node* %incdec.ptr256, %arrayidx172
  br i1 %cmp173, label %for.body175, label %cleanup

cleanup.sink.split:                               ; preds = %entry, %if.then41
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  br label %cleanup

cleanup:                                          ; preds = %do.end241, %cleanup.sink.split, %for.end
  %retval.0 = phi i1 [ true, %for.end ], [ false, %cleanup.sink.split ], [ true, %do.end241 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #1 {
entry:
  %call = call i32 @__cond_resched() #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #24
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !16

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #24
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_gp_fqs_loop() unnamed_addr #1 {
entry:
  %gf = alloca i32, align 4
  %__wait = alloca %struct.swait_queue, align 8
  %0 = bitcast i32* %gf to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #26
  store i32 0, i32* %gf, align 4
  %1 = load volatile i64, i64* @jiffies_till_first_fqs, align 8
  %2 = load i8, i8* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 24), align 4
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 4, i32* %gf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast %struct.swait_queue* %__wait to i8*
  %task_list = getelementptr inbounds %struct.swait_queue, %struct.swait_queue* %__wait, i64 0, i32 1
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end, %if.end94
  %j.0.ph = phi i64 [ %1, %if.end ], [ %15, %if.end94 ]
  %first_gp_fqs.0.off0.ph = phi i1 [ true, %if.end ], [ false, %if.end94 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.end146
  %tobool1.not = phi i1 [ false, %if.end146 ], [ true, %for.cond.outer ]
  %j.0 = phi i64 [ %j.1, %if.end146 ], [ %j.0.ph, %for.cond.outer ]
  br i1 %tobool1.not, label %do.body7, label %if.end23

do.body7:                                         ; preds = %for.cond
  %4 = load volatile i64, i64* @jiffies, align 64
  %add = add i64 %4, %j.0
  store volatile i64 %add, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 26), align 16
  call void asm sideeffect "dmb ishst", "~{memory}"() #26, !srcloc !127
  %5 = load volatile i64, i64* @jiffies, align 64
  %tobool17.not = icmp eq i64 %j.0, 0
  %mul = mul i64 %j.0, 3
  %cond = select i1 %tobool17.not, i64 2, i64 %mul
  %add18 = add i64 %5, %cond
  store volatile i64 %add18, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 27), align 8
  br label %if.end23

if.end23:                                         ; preds = %do.body7, %for.cond
  store volatile i16 5, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %call33 = call fastcc i1 @rcu_gp_fqs_check_wake(i32* noundef nonnull %gf) #24
  %tobool34.not = xor i1 %call33, true
  %tobool40.not191 = icmp eq i64 %j.0, 0
  %tobool40.not = select i1 %tobool34.not, i1 %tobool40.not191, i1 false
  %6 = select i1 %call33, i1 true, i1 %tobool40.not
  br i1 %6, label %if.end66, label %if.then42

if.then42:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !annotation !39
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %task_list) #24
  %call45195 = call i64 @prepare_to_swait_event(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 9), %struct.swait_queue* noundef nonnull %__wait, i32 noundef 1026) #28
  %call47196 = call fastcc i1 @rcu_gp_fqs_check_wake(i32* noundef nonnull %gf) #24
  %tobool49.not197 = xor i1 %call47196, true
  %tobool51198 = icmp ne i64 %j.0, 0
  %or.cond164199 = select i1 %tobool49.not197, i1 true, i1 %tobool51198
  %spec.store.select165200 = select i1 %or.cond164199, i64 %j.0, i64 1
  %tobool57.not201 = icmp eq i64 %spec.store.select165200, 0
  %7 = select i1 %call47196, i1 true, i1 %tobool57.not201
  br i1 %7, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.then42, %cleanup
  %spec.store.select165202 = phi i64 [ %spec.store.select165, %cleanup ], [ %spec.store.select165200, %if.then42 ]
  %call64 = call i64 @schedule_timeout(i64 noundef %spec.store.select165202) #28
  %call45 = call i64 @prepare_to_swait_event(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 9), %struct.swait_queue* noundef nonnull %__wait, i32 noundef 1026) #28
  %call47 = call fastcc i1 @rcu_gp_fqs_check_wake(i32* noundef nonnull %gf) #24
  %tobool49.not = xor i1 %call47, true
  %tobool51 = icmp ne i64 %call64, 0
  %or.cond164 = select i1 %tobool49.not, i1 true, i1 %tobool51
  %spec.store.select165 = select i1 %or.cond164, i64 %call64, i64 1
  %tobool57.not = icmp eq i64 %spec.store.select165, 0
  %8 = select i1 %call47, i1 true, i1 %tobool57.not
  br i1 %8, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.then42
  call void @finish_swait(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 9), %struct.swait_queue* noundef nonnull %__wait) #28
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #26
  br label %if.end66

if.end66:                                         ; preds = %for.end, %if.end23
  store volatile i16 6, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 4), align 32
  %tobool81.not = icmp eq i64 %9, 0
  br i1 %tobool81.not, label %land.lhs.true82, label %if.end86

land.lhs.true82:                                  ; preds = %if.end66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #26
  ret void

if.end86:                                         ; preds = %if.end66
  %10 = load volatile i64, i64* @jiffies, align 64
  %11 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 26), align 16
  %sub = sub i64 %10, %11
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then88

lor.lhs.false:                                    ; preds = %if.end86
  %12 = load i32, i32* %gf, align 4
  %and = and i32 %12, 6
  %tobool87.not = icmp eq i32 %and, 0
  br i1 %tobool87.not, label %do.end119, label %if.then88

if.then88:                                        ; preds = %lor.lhs.false, %if.end86
  call fastcc void @rcu_gp_fqs(i1 noundef %first_gp_fqs.0.off0.ph) #24
  store i32 0, i32* %gf, align 4
  br i1 %first_gp_fqs.0.off0.ph, label %if.then91, label %if.end94

if.then91:                                        ; preds = %if.then88
  %13 = load i8, i8* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 24), align 4
  %tobool92.not = icmp eq i8 %13, 0
  %cond93 = select i1 %tobool92.not, i32 0, i32 4
  store i32 %cond93, i32* %gf, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.then88
  call fastcc void @_cond_resched() #24
  %14 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %14, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  %15 = load volatile i64, i64* @jiffies_till_next_fqs, align 8
  br label %for.cond.outer

do.end119:                                        ; preds = %lor.lhs.false
  call fastcc void @_cond_resched() #24
  %16 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %16, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  %17 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %18 = inttoptr i64 %17 to %struct.task_struct*
  %call134 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %18) #24
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end146, label %if.then145, !prof !16

if.then145:                                       ; preds = %do.end119
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 1987; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !128
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %do.end119
  %19 = load volatile i64, i64* @jiffies, align 64
  %20 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 26), align 16
  %21 = load volatile i64, i64* @jiffies, align 64
  %sub155 = sub i64 %20, %21
  %cmp156 = icmp slt i64 %sub155, 0
  %sub160 = sub i64 %20, %19
  %j.1 = select i1 %cmp156, i64 1, i64 %sub160
  store i32 0, i32* %gf, align 4
  br label %for.cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_gp_cleanup() unnamed_addr #1 {
entry:
  %new_gp_seq = alloca i64, align 8
  %0 = bitcast i64* %new_gp_seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  %1 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %1, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  %2 = load volatile i64, i64* @jiffies, align 64
  store i64 %2, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 30), align 16
  %3 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 29), align 8
  %sub = sub i64 %2, %3
  %4 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 7), align 16
  %cmp = icmp ugt i64 %sub, %4
  br i1 %cmp, label %if.then, label %do.end16

if.then:                                          ; preds = %entry
  store i64 %sub, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 7), align 16
  br label %do.end16

do.end16:                                         ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  %5 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  store i64 %5, i64* %new_gp_seq, align 8
  call fastcc void @rcu_seq_end(i64* noundef nonnull %new_gp_seq) #24
  %6 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom343 = sext i32 %6 to i64
  %arrayidx344 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom343
  %cmp20345 = icmp ugt %struct.rcu_node* %arrayidx344, getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)
  br i1 %cmp20345, label %do.body21, label %for.end192

do.body21:                                        ; preds = %do.end16, %if.end165
  %needgp.0.off0350 = phi i1 [ %12, %if.end165 ], [ false, %do.end16 ]
  %rnp.0346 = phi %struct.rcu_node* [ %incdec.ptr, %if.end165 ], [ getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0), %do.end16 ]
  %lock22 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0346, i64 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock22) #24
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0346, i64 0, i32 4
  %7 = load i64, i64* %qsmask, align 32
  %tobool49.not = icmp eq i64 %7, 0
  br i1 %tobool49.not, label %if.end63, label %if.then62, !prof !16

if.then62:                                        ; preds = %do.body21
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2047; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !129
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %do.body21
  %8 = load i64, i64* %new_gp_seq, align 8
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0346, i64 0, i32 1
  store volatile i64 %8, i64* %gp_seq, align 8
  %call86 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call86, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %9 = inttoptr i64 %add to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %9, i64 0, i32 8
  %10 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %cmp87 = icmp eq %struct.rcu_node* %rnp.0346, %10
  br i1 %cmp87, label %if.then89, label %if.end94

if.then89:                                        ; preds = %if.end63
  %call90 = call fastcc i1 @__note_gp_changes(%struct.rcu_node* noundef %rnp.0346, %struct.rcu_data* noundef %9) #24
  %11 = select i1 %call90, i1 true, i1 %needgp.0.off0350
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %if.end63
  %needgp.1.off0 = phi i1 [ %11, %if.then89 ], [ %needgp.0.off0350, %if.end63 ]
  %call95 = call fastcc i1 @rcu_future_gp_cleanup(%struct.rcu_node* noundef %rnp.0346) #24
  %12 = select i1 %call95, i1 true, i1 %needgp.1.off0
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0346, i64 0, i32 18
  %13 = load i8, i8* %level, align 1
  %conv102 = zext i8 %13 to i32
  %14 = load i32, i32* @rcu_num_lvls, align 4
  %sub103 = add i32 %14, -1
  %cmp104 = icmp eq i32 %sub103, %conv102
  br i1 %cmp104, label %if.end128, label %if.end165

if.end128:                                        ; preds = %if.end94
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0346, i64 0, i32 15
  %15 = load i32, i32* %grplo, align 8
  %cbovldmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0346, i64 0, i32 12
  %call138 = call fastcc i64 @find_next_bit(i64* noundef %cbovldmask, i64 noundef 0) #24
  %16 = trunc i64 %call138 to i32
  %conv140 = add i32 %15, %16
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0346, i64 0, i32 16
  %17 = load i32, i32* %grphi, align 4
  %cmp142.not341 = icmp sgt i32 %conv140, %17
  br i1 %cmp142.not341, label %if.end165, label %do.body145

do.body145:                                       ; preds = %if.end128, %do.body145
  %cpu.0342 = phi i32 [ %conv164, %do.body145 ], [ %conv140, %if.end128 ]
  %idxprom152 = sext i32 %cpu.0342 to i64
  %arrayidx153 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom152
  %18 = load i64, i64* %arrayidx153, align 8
  %add154 = add i64 %18, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %19 = inttoptr i64 %add154 to %struct.rcu_data*
  call fastcc void @check_cb_ovld_locked(%struct.rcu_data* noundef %19, %struct.rcu_node* noundef %rnp.0346) #24
  %20 = load i32, i32* %grplo, align 8
  %add158 = add i32 %cpu.0342, 1
  %sub160 = sub i32 %add158, %20
  %conv161 = sext i32 %sub160 to i64
  %call162 = call fastcc i64 @find_next_bit(i64* noundef %cbovldmask, i64 noundef %conv161) #24
  %21 = trunc i64 %call162 to i32
  %conv164 = add i32 %20, %21
  %22 = load i32, i32* %grphi, align 4
  %cmp142.not = icmp sgt i32 %conv164, %22
  br i1 %cmp142.not, label %if.end165, label %do.body145

if.end165:                                        ; preds = %do.body145, %if.end128, %if.end94
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock22) #24
  call fastcc void @_cond_resched() #24
  %23 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %23, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  %24 = load i32, i32* @gp_cleanup_delay, align 4
  call fastcc void @rcu_gp_slow(i32 noundef %24) #24
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0346, i64 1
  %25 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom
  %cmp20 = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx
  br i1 %cmp20, label %do.body21, label %for.end192

for.end192:                                       ; preds = %if.end165, %do.end16
  %needgp.0.off0.lcssa = phi i1 [ false, %do.end16 ], [ %12, %if.end165 ]
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  call fastcc void @rcu_seq_end(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6)) #24
  store volatile i16 0, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 11), align 2
  %call217 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add218 = add i64 %call217, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %26 = inttoptr i64 %add218 to %struct.rcu_data*
  br i1 %needgp.0.off0.lcssa, label %if.end226, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end192
  %27 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 1), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 2), align 16
  %sub221 = sub i64 %27, %28
  %cmp222 = icmp slt i64 %sub221, 0
  br i1 %cmp222, label %if.then224, label %if.end226.thread

if.end226.thread:                                 ; preds = %land.lhs.true
  %call231338 = call fastcc i1 @rcu_accelerate_cbs(%struct.rcu_node* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0), %struct.rcu_data* noundef %26) #24
  br label %do.body258

if.then224:                                       ; preds = %land.lhs.true
  call fastcc void @trace_rcu_this_gp(%struct.rcu_node* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)) #24
  br label %if.end226

if.end226:                                        ; preds = %if.then224, %for.end192
  %call231 = call fastcc i1 @rcu_accelerate_cbs(%struct.rcu_node* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0), %struct.rcu_data* noundef %26) #24
  br i1 %call231, label %do.body258, label %do.body240

do.body240:                                       ; preds = %if.end226
  store volatile i16 1, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %29 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %29, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 32), align 64
  br label %do.end269

do.body258:                                       ; preds = %if.end226.thread, %if.end226
  %30 = load i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %31 = and i16 %30, 1
  store volatile i16 %31, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  br label %do.end269

do.end269:                                        ; preds = %do.body258, %do.body240
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !130
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #24
  call fastcc void @arch_local_irq_enable() #24
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !131
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @record_gp_stall_check_time() unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %0, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 29), align 8
  %call = call i32 @rcu_jiffies_till_stall_check() #24
  %1 = zext i32 %call to i64
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !132
  %add = add i64 %0, %1
  store volatile i64 %add, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 33), align 8
  %div = lshr i64 %1, 1
  %add16 = add i64 %div, %0
  store i64 %add16, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 34), align 16
  %2 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 28), align 32
  store i64 %2, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 35), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout_idle(i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_init_new_rnp(%struct.rcu_node* nocapture noundef readonly %rnp_leaf) unnamed_addr #1 {
entry:
  %wait_blkd_tasks = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp_leaf, i64 0, i32 19
  %0 = load i8, i8* %wait_blkd_tasks, align 2, !range !30
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4076; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !133
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %do.body18
  %rnp.0 = phi %struct.rcu_node* [ %1, %do.body18 ], [ %rnp_leaf, %for.cond.preheader ]
  %parent = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0, i64 0, i32 20
  %1 = load %struct.rcu_node*, %struct.rcu_node** %parent, align 8
  %cmp = icmp eq %struct.rcu_node* %1, null
  br i1 %cmp, label %cleanup, label %do.body18

do.body18:                                        ; preds = %for.cond
  %grpmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0, i64 0, i32 14
  %2 = load i64, i64* %grpmask, align 16
  %lock19 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %1, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock19) #24
  %qsmaskinit = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %1, i64 0, i32 6
  %3 = load i64, i64* %qsmaskinit, align 16
  %or = or i64 %3, %2
  store i64 %or, i64* %qsmaskinit, align 16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock19) #24
  %tobool33.not = icmp eq i64 %3, 0
  br i1 %tobool33.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %do.body18, %for.cond
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_gp_slow(i32 noundef %delay) unnamed_addr #1 {
entry:
  %cmp = icmp sgt i32 %delay, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %call = call fastcc i64 @rcu_seq_ctr(i64 noundef %0) #24
  %1 = load i32, i32* @rcu_num_nodes, align 4
  %mul = mul i32 %delay, 3
  %mul1 = mul i32 %mul, %1
  %conv = sext i32 %mul1 to i64
  %rem = urem i64 %call, %conv
  %tobool.not = icmp eq i64 %rem, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %conv26 = zext i32 %delay to i64
  %call3 = call i64 @schedule_timeout_idle(i64 noundef %conv26) #28
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_preempt_check_blocked_tasks(%struct.rcu_node* nocapture noundef readonly %rnp) unnamed_addr #1 {
entry:
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 4
  %0 = load i64, i64* %qsmask, align 32
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_plugin.h\22; .popsection; .long 14472b - 14470b; .short 938; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !134
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #6 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #24
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #24
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #6 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #24
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
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

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_gp_fqs_check_wake(i32* nocapture noundef %gfp) unnamed_addr #6 {
entry:
  %0 = load i32, i32* %gfp, align 4
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %cleanup

do.end:                                           ; preds = %entry
  %1 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %conv = sext i16 %1 to i32
  store i32 %conv, i32* %gfp, align 4
  %and1 = and i32 %conv, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.end7, label %cleanup

do.end7:                                          ; preds = %do.end
  %2 = load volatile i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 4), align 32
  %tobool9.not = icmp eq i64 %2, 0
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ true, %do.end ], [ %tobool9.not, %do.end7 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_gp_fqs(i1 noundef %first_time) unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %0, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 31), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 28), align 32
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 28), align 32
  %dyntick_save_progress_counter.rcu_implicit_dynticks_qs = select i1 %first_time, i32 (%struct.rcu_data*)* @dyntick_save_progress_counter, i32 (%struct.rcu_data*)* @rcu_implicit_dynticks_qs
  call fastcc void @force_qs_rnp(i32 (%struct.rcu_data*)* noundef nonnull %dyntick_save_progress_counter.rcu_implicit_dynticks_qs) #24
  %2 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %3 = and i16 %2, 2
  %tobool10.not = icmp eq i16 %3, 0
  br i1 %tobool10.not, label %if.end41, label %do.body12

do.body12:                                        ; preds = %entry
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  %4 = load volatile i16, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  %5 = and i16 %4, -3
  store volatile i16 %5, i16* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 10), align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 0)) #24
  br label %if.end41

if.end41:                                         ; preds = %do.body12, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @force_qs_rnp(i32 (%struct.rcu_data*)* nocapture noundef readonly %f) unnamed_addr #1 {
entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 25), align 1
  store i8 %0, i8* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 24), align 4
  store i8 0, i8* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 25), align 1
  %1 = load i32, i32* @rcu_num_lvls, align 4
  %sub = add i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom
  %2 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx, align 8
  %3 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom1161 = sext i32 %3 to i64
  %arrayidx2162 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom1161
  %cmp163 = icmp ult %struct.rcu_node* %2, %arrayidx2162
  br i1 %cmp163, label %do.end, label %for.end120

do.end:                                           ; preds = %entry, %for.inc119
  %rnp.0164 = phi %struct.rcu_node* [ %incdec.ptr, %for.inc119 ], [ %2, %entry ]
  call fastcc void @_cond_resched() #24
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0164, i64 0, i32 0
  %call10 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %cbovldmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0164, i64 0, i32 12
  %4 = load i64, i64* %cbovldmask, align 32
  %tobool = icmp ne i64 %4, 0
  %lnot.ext = zext i1 %tobool to i8
  %5 = load i8, i8* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 25), align 1
  %or = or i8 %5, %lnot.ext
  store i8 %or, i8* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 25), align 1
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0164, i64 0, i32 4
  %6 = load i64, i64* %qsmask, align 32
  %cmp21 = icmp eq i64 %6, 0
  br i1 %cmp21, label %if.then, label %if.end41

if.then:                                          ; preds = %do.end
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call10) #24
  br label %for.inc119

if.end41:                                         ; preds = %do.end
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0164, i64 0, i32 18
  %7 = load i8, i8* %level, align 1
  %conv42 = zext i8 %7 to i32
  %8 = load i32, i32* @rcu_num_lvls, align 4
  %sub43 = add i32 %8, -1
  %cmp44.not = icmp eq i32 %sub43, %conv42
  br i1 %cmp44.not, label %if.end60, label %if.then59, !prof !16

if.then59:                                        ; preds = %if.end41
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2642; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !135
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end41
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0164, i64 0, i32 15
  %9 = load i32, i32* %grplo, align 8
  %call71 = call fastcc i64 @find_next_bit(i64* noundef %qsmask, i64 noundef 0) #24
  %10 = trunc i64 %call71 to i32
  %conv72 = add i32 %9, %10
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0164, i64 0, i32 16
  %11 = load i32, i32* %grphi, align 4
  %cmp74.not158 = icmp sgt i32 %conv72, %11
  br i1 %cmp74.not158, label %do.body107, label %do.body77

do.body77:                                        ; preds = %if.end60, %for.inc
  %cpu.0160 = phi i32 [ %conv99, %for.inc ], [ %conv72, %if.end60 ]
  %mask.0159 = phi i64 [ %mask.1, %for.inc ], [ 0, %if.end60 ]
  %idxprom82 = sext i32 %cpu.0160 to i64
  %arrayidx83 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom82
  %12 = load i64, i64* %arrayidx83, align 8
  %add84 = add i64 %12, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %13 = inttoptr i64 %add84 to %struct.rcu_data*
  %call85 = call i32 %f(%struct.rcu_data* noundef %13) #28, !callees !136
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %for.inc, label %if.then87

if.then87:                                        ; preds = %do.body77
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %13, i64 0, i32 9
  %14 = load i64, i64* %grpmask, align 8
  %or88 = or i64 %14, %mask.0159
  call fastcc void @rcu_disable_urgency_upon_qs(%struct.rcu_data* noundef %13) #24
  br label %for.inc

for.inc:                                          ; preds = %do.body77, %if.then87
  %mask.1 = phi i64 [ %or88, %if.then87 ], [ %mask.0159, %do.body77 ]
  %15 = load i32, i32* %grplo, align 8
  %add93 = add i32 %cpu.0160, 1
  %sub95 = sub i32 %add93, %15
  %conv96 = sext i32 %sub95 to i64
  %call97 = call fastcc i64 @find_next_bit(i64* noundef %qsmask, i64 noundef %conv96) #24
  %16 = trunc i64 %call97 to i32
  %conv99 = add i32 %15, %16
  %17 = load i32, i32* %grphi, align 4
  %cmp74.not = icmp sgt i32 %conv99, %17
  br i1 %cmp74.not, label %for.end, label %do.body77

for.end:                                          ; preds = %for.inc
  %cmp100.not = icmp eq i64 %mask.1, 0
  br i1 %cmp100.not, label %do.body107, label %if.then102

if.then102:                                       ; preds = %for.end
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0164, i64 0, i32 1
  %18 = load i64, i64* %gp_seq, align 8
  call fastcc void @rcu_report_qs_rnp(i64 noundef %mask.1, %struct.rcu_node* noundef %rnp.0164, i64 noundef %18, i64 noundef %call10) #24
  br label %for.inc119

do.body107:                                       ; preds = %if.end60, %for.end
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call10) #24
  br label %for.inc119

for.inc119:                                       ; preds = %if.then102, %do.body107, %if.then
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0164, i64 1
  %19 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom1 = sext i32 %19 to i64
  %arrayidx2 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom1
  %cmp = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx2
  br i1 %cmp, label %do.end, label %for.end120

for.end120:                                       ; preds = %for.inc119, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @dyntick_save_progress_counter(%struct.rcu_data* noundef %rdp) #1 {
entry:
  %call = call fastcc i32 @rcu_dynticks_snap(%struct.rcu_data* noundef %rdp) #24
  %dynticks_snap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 19
  store i32 %call, i32* %dynticks_snap, align 8
  %call2 = call fastcc i1 @rcu_dynticks_in_eqs(i32 noundef %call) #24
  br i1 %call2, label %if.then, label %return

if.then:                                          ; preds = %entry
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 8
  %0 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  call fastcc void @rcu_gpnum_ovf(%struct.rcu_node* noundef %0, %struct.rcu_data* noundef %rdp) #24
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @rcu_implicit_dynticks_qs(%struct.rcu_data* noundef %rdp) #1 {
entry:
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 8
  %0 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %dynticks_snap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 19
  %1 = load i32, i32* %dynticks_snap, align 8
  %call = call fastcc i1 @rcu_dynticks_in_eqs_since(%struct.rcu_data* noundef %rdp, i32 noundef %1) #24
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @rcu_gpnum_ovf(%struct.rcu_node* noundef %0, %struct.rcu_data* noundef %rdp) #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 9
  %2 = load i64, i64* %grpmask, align 8
  %call1 = call fastcc i64 @rcu_rnp_online_cpus(%struct.rcu_node* noundef %0) #24
  %and = and i64 %call1, %2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then10, label %do.end54, !prof !13

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 1258; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !137
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 15
  %3 = load i32, i32* %grplo, align 8
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 16
  %4 = load i32, i32* %grphi, align 4
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 18
  %5 = load i8, i8* %level, align 1
  %conv22 = zext i8 %5 to i32
  %gp_seq23 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 1
  %6 = load i64, i64* %gp_seq23, align 8
  %completedqs = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 3
  %7 = load i64, i64* %completedqs, align 8
  %call24 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rcu_implicit_dynticks_qs, i64 0, i64 0), i32 noundef %3, i32 noundef %4, i32 noundef %conv22, i64 noundef %6, i64 noundef %7) #30
  %tobool25.not275 = icmp eq %struct.rcu_node* %0, null
  br i1 %tobool25.not275, label %for.end, label %do.end28

do.end28:                                         ; preds = %if.then10, %do.end28
  %rnp1.0276 = phi %struct.rcu_node* [ %14, %do.end28 ], [ %0, %if.then10 ]
  %grplo30 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp1.0276, i64 0, i32 15
  %8 = load i32, i32* %grplo30, align 8
  %grphi31 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp1.0276, i64 0, i32 16
  %9 = load i32, i32* %grphi31, align 4
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp1.0276, i64 0, i32 4
  %10 = load i64, i64* %qsmask, align 32
  %qsmaskinit = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp1.0276, i64 0, i32 6
  %11 = load i64, i64* %qsmaskinit, align 16
  %qsmaskinitnext = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp1.0276, i64 0, i32 7
  %12 = load i64, i64* %qsmaskinitnext, align 8
  %rcu_gp_init_mask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp1.0276, i64 0, i32 5
  %13 = load i64, i64* %rcu_gp_init_mask, align 8
  %call32 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rcu_implicit_dynticks_qs, i64 0, i64 0), i32 noundef %8, i32 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13) #30
  %parent = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp1.0276, i64 0, i32 20
  %14 = load %struct.rcu_node*, %struct.rcu_node** %parent, align 8
  %tobool25.not = icmp eq %struct.rcu_node* %14, null
  br i1 %tobool25.not, label %for.end, label %do.end28

for.end:                                          ; preds = %do.end28, %if.then10
  %15 = load i64, i64* %grpmask, align 8
  %call34 = call fastcc i64 @rcu_rnp_online_cpus(%struct.rcu_node* noundef %0) #24
  %and35 = and i64 %call34, %15
  %tobool36 = icmp ne i64 %and35, 0
  %cpu45 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 41
  %16 = load i32, i32* %cpu45, align 8
  %idxprom = zext i1 %tobool36 to i64
  %arrayidx = getelementptr [3 x i8], [3 x i8]* @.str.102, i64 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv47 = zext i8 %17 to i32
  %rcu_onl_gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 38
  %18 = load i64, i64* %rcu_onl_gp_seq, align 8
  %rcu_onl_gp_flags = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 39
  %19 = load i16, i16* %rcu_onl_gp_flags, align 8
  %conv48 = sext i16 %19 to i32
  %rcu_ofl_gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 36
  %20 = load i64, i64* %rcu_ofl_gp_seq, align 8
  %rcu_ofl_gp_flags = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 37
  %21 = load i16, i16* %rcu_ofl_gp_flags, align 8
  %conv49 = sext i16 %21 to i32
  %call50 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.rcu_implicit_dynticks_qs, i64 0, i64 0), i32 noundef %16, i32 noundef %conv47, i64 noundef %18, i32 noundef %conv48, i64 noundef %20, i32 noundef %conv49) #30
  br label %cleanup

do.end54:                                         ; preds = %if.end
  %22 = load volatile i64, i64* @jiffies_to_sched_qs, align 8
  %cpu61 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 41
  %23 = load i32, i32* %cpu61, align 8
  %idxprom62 = sext i32 %23 to i64
  %arrayidx63 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom62
  %24 = load i64, i64* %arrayidx63, align 8
  %add = add i64 %24, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 24) to i64)
  %25 = inttoptr i64 %add to i8*
  %add74 = add i64 %24, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 23) to i64)
  %26 = inttoptr i64 %add74 to i8*
  %27 = load volatile i8, i8* %26, align 1, !range !30
  %tobool79.not = icmp eq i8 %27, 0
  %28 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 29), align 8
  br i1 %tobool79.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end54
  %mul = shl i64 %22, 1
  %add82 = add i64 %28, %mul
  %29 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %add82, %29
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %do.body95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %30 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 34), align 16
  %31 = load volatile i64, i64* @jiffies, align 64
  %sub84 = sub i64 %30, %31
  %cmp85 = icmp slt i64 %sub84, 0
  %32 = load i8, i8* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 24), align 4
  %tobool89 = icmp ne i8 %32, 0
  %or.cond = select i1 %cmp85, i1 true, i1 %tobool89
  br i1 %or.cond, label %do.body95, label %if.else

do.body95:                                        ; preds = %land.lhs.true, %lor.lhs.false
  store volatile i8 1, i8* %26, align 1
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %25, i8 1) #26, !srcloc !138
  br label %if.end122

if.else:                                          ; preds = %do.end54, %lor.lhs.false
  %add107 = add i64 %28, %22
  %33 = load volatile i64, i64* @jiffies, align 64
  %sub108 = sub i64 %add107, %33
  %cmp109 = icmp slt i64 %sub108, 0
  br i1 %cmp109, label %do.body116, label %if.end122

do.body116:                                       ; preds = %if.else
  store volatile i8 1, i8* %25, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.else, %do.body116, %do.body95
  %34 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 34), align 16
  %35 = load volatile i64, i64* @jiffies, align 64
  %sub161 = sub i64 %34, %35
  %cmp162 = icmp slt i64 %sub161, 0
  br i1 %cmp162, label %do.end167, label %cleanup

do.end167:                                        ; preds = %if.end122
  %last_fqs_resched169 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 40
  %36 = load volatile i64, i64* %last_fqs_resched169, align 8
  %add170 = add i64 %36, %22
  %37 = load volatile i64, i64* @jiffies, align 64
  %sub171 = sub i64 %add170, %37
  %cmp172 = icmp slt i64 %sub171, 0
  br i1 %cmp172, label %if.then174, label %if.end186

if.then174:                                       ; preds = %do.end167
  %38 = load i32, i32* %cpu61, align 8
  call void @resched_cpu(i32 noundef %38) #28
  %39 = load volatile i64, i64* @jiffies, align 64
  store volatile i64 %39, i64* %last_fqs_resched169, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.then174, %do.end167
  %rcu_iw_pending = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 34
  %40 = load i8, i8* %rcu_iw_pending, align 8, !range !30
  %tobool187.not = icmp eq i8 %40, 0
  br i1 %tobool187.not, label %land.lhs.true188, label %cleanup

land.lhs.true188:                                 ; preds = %if.end186
  %rcu_iw_gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 35
  %41 = load i64, i64* %rcu_iw_gp_seq, align 8
  %gp_seq189 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 1
  %42 = load i64, i64* %gp_seq189, align 8
  %cmp190.not = icmp eq i64 %41, %42
  br i1 %cmp190.not, label %cleanup, label %land.lhs.true192

land.lhs.true192:                                 ; preds = %land.lhs.true188
  %ffmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %0, i64 0, i32 13
  %43 = load i64, i64* %ffmask, align 8
  %44 = load i64, i64* %grpmask, align 8
  %and194 = and i64 %44, %43
  %tobool195.not = icmp eq i64 %and194, 0
  br i1 %tobool195.not, label %cleanup, label %if.then196

if.then196:                                       ; preds = %land.lhs.true192
  store i8 1, i8* %rcu_iw_pending, align 8
  %45 = load i64, i64* %gp_seq189, align 8
  store i64 %45, i64* %rcu_iw_gp_seq, align 8
  %rcu_iw = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 33
  %46 = load i32, i32* %cpu61, align 8
  %call201 = call i1 @irq_work_queue_on(%struct.irq_work* noundef %rcu_iw, i32 noundef %46) #28
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.then196, %land.lhs.true192, %land.lhs.true188, %if.end186, %for.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %for.end ], [ 0, %if.end186 ], [ 0, %land.lhs.true188 ], [ 0, %land.lhs.true192 ], [ 0, %if.then196 ], [ 0, %if.end122 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_initiate_boost(%struct.rcu_node* noundef %rnp, i64 noundef %flags) unnamed_addr #1 {
entry:
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @find_next_bit(i64* nocapture noundef readonly %addr, i64 noundef %offset) unnamed_addr #21 {
entry:
  %cmp3 = icmp ugt i64 %offset, 63
  br i1 %cmp3, label %return, label %if.end, !prof !13

if.end:                                           ; preds = %entry
  %0 = load i64, i64* %addr, align 8
  %shl.neg = shl nsw i64 -1, %offset
  %and9 = and i64 %0, %shl.neg
  %1 = call i64 @llvm.cttz.i64(i64 %and9, i1 false) #26, !range !139
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i64 [ 64, %entry ], [ %1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #22

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rcu_dynticks_in_eqs_since(%struct.rcu_data* noundef %rdp, i32 noundef %snap) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @rcu_dynticks_snap(%struct.rcu_data* noundef %rdp) #24
  %cmp = icmp ne i32 %call, %snap
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @rcu_rnp_online_cpus(%struct.rcu_node* noundef %rnp) unnamed_addr #6 {
entry:
  %qsmaskinitnext = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 7
  %0 = load volatile i64, i64* %qsmaskinitnext, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_cpu(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @irq_work_queue_on(%struct.irq_work* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rcu_future_gp_cleanup(%struct.rcu_node* noundef %rnp) unnamed_addr #16 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %gp_seq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 1
  %0 = load i64, i64* %gp_seq, align 8
  %gp_seq_needed = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 2
  %1 = load i64, i64* %gp_seq_needed, align 16
  %sub = sub i64 %0, %1
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 %0, i64* %gp_seq_needed, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @trace_rcu_this_gp(%struct.rcu_node* noundef %rnp) #24
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(%struct.smp_hotplug_thread* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal i32 @rcu_cpu_kthread_should_run(i32 noundef %cpu) #4 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 31) to i64)
  %0 = inttoptr i64 %add to i8*
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_cpu_kthread(i32 noundef %cpu) #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i32* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 30) to i64)
  %0 = inttoptr i64 %add to i32*
  %add10 = add i64 %call, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 31) to i64)
  %1 = inttoptr i64 %add10 to i8*
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %spincnt.038, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %spincnt.038 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  call fastcc void @local_bh_disable() #24
  store i32 1, i32* %0, align 4
  call fastcc void @arch_local_irq_disable() #24
  %2 = load i8, i8* %1, align 1
  store i8 0, i8* %1, align 1
  call fastcc void @arch_local_irq_enable() #24
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call fastcc void @rcu_core() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call fastcc void @local_bh_enable() #24
  %3 = load i8, i8* %1, align 1
  %cmp17 = icmp eq i8 %3, 0
  br i1 %cmp17, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 4, i32* %0, align 4
  %call21 = call i64 @schedule_timeout_idle(i64 noundef 2) #28
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end
  store i32 2, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @rcu_cpu_kthread_setup(i32 noundef %cpu) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @rcu_cpu_kthread_park(i32 noundef %cpu) #14 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (i32* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 30) to i64)
  %1 = inttoptr i64 %add to i32*
  store i32 3, i32* %1, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_bh_disable() unnamed_addr #1 {
__here:
  call fastcc void @__preempt_count_add() #28
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !140
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_core() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 8
  %1 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 14
  %add11 = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add11 to i32*
  %3 = load i32, i32* %2, align 4
  %call12 = call fastcc i1 @cpu_online(i32 noundef %3) #24
  br i1 %call12, label %if.end, label %cleanup, !prof !16

if.end:                                           ; preds = %entry
  %beenonline = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 4
  %4 = load i8, i8* %beenonline, align 1, !range !30
  %tobool16.not = icmp eq i8 %4, 0
  br i1 %tobool16.not, label %if.then31, label %if.end32, !prof !13

if.then31:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2716; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !141
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end
  %call41 = call fastcc i32 @preempt_count() #24
  %5 = call i64 asm "mrs $0, sp_el0", "=r"() #25
  call fastcc void @rcu_check_quiescent_state(%struct.rcu_data* noundef %0) #24
  %call52 = call fastcc i32 @rcu_gp_in_progress() #24
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true, label %if.end74

land.lhs.true:                                    ; preds = %if.end32
  %call55 = call fastcc i1 @rcu_segcblist_is_enabled(%struct.rcu_segcblist* noundef %cblist) #24
  br i1 %call55, label %do.body62, label %if.end74

do.body62:                                        ; preds = %land.lhs.true
  %call65 = call fastcc i64 @arch_local_irq_save() #24
  %call71 = call fastcc i1 @rcu_segcblist_restempty(%struct.rcu_segcblist* noundef %cblist, i32 noundef 2) #24
  br i1 %call71, label %if.end73, label %if.then72

if.then72:                                        ; preds = %do.body62
  call fastcc void @rcu_accelerate_cbs_unlocked(%struct.rcu_node* noundef %1, %struct.rcu_data* noundef %0) #24
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %do.body62
  call fastcc void @rcu_nocb_unlock_irqrestore(i64 noundef %call65) #24
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %land.lhs.true, %if.end32
  %call75 = call i32 @rcu_jiffies_till_stall_check() #24
  %call81 = call i1 @rcu_segcblist_ready_cbs(%struct.rcu_segcblist* noundef %cblist) #28
  br i1 %call81, label %do.end86, label %cleanup

do.end86:                                         ; preds = %if.end74
  %6 = load volatile i32, i32* @rcu_scheduler_fully_active, align 4
  %tobool88.not = icmp eq i32 %6, 0
  br i1 %tobool88.not, label %cleanup, label %if.then96, !prof !13

if.then96:                                        ; preds = %do.end86
  call fastcc void @rcu_do_batch(%struct.rcu_data* noundef %0) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end86, %if.then96, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_bh_enable() #1 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  call void @__local_bh_enable_ip(i64 noundef ptrtoint (i8* blockaddress(@local_bh_enable, %__here) to i64), i32 noundef 512) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.0* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 512
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_check_quiescent_state(%struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  call fastcc void @note_gp_changes(%struct.rcu_data* noundef %rdp) #24
  %core_needs_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 3
  %0 = load i8, i8* %core_needs_qs, align 2, !range !30
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cpu_no_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 2
  %norm = bitcast %union.rcu_noqs* %cpu_no_qs to i8*
  %1 = load i8, i8* %norm, align 8
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  call fastcc void @rcu_report_qs_rdp(%struct.rcu_data* noundef %rdp) #24
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_nocb_unlock_irqrestore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_do_batch(%struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  %rcl = alloca %struct.rcu_cblist, align 8
  %0 = bitcast %struct.rcu_cblist* %rcl to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #26
  %head = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rcl, i64 0, i32 0
  %tail = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rcl, i64 0, i32 1
  %1 = bitcast %struct.rcu_cblist* %rcl to i64*
  store i64 0, i64* %1, align 8
  store %struct.callback_head** %head, %struct.callback_head*** %tail, align 8
  %len = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %rcl, i64 0, i32 2
  store i64 0, i64* %len, align 8
  %cblist = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 14
  %call2 = call i1 @rcu_segcblist_ready_cbs(%struct.rcu_segcblist* noundef %cblist) #28
  br i1 %call2, label %do.body14, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  %call6 = call fastcc i1 @rcu_segcblist_empty(%struct.rcu_segcblist* noundef %cblist) #24
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %4 = getelementptr %struct.task_struct, %struct.task_struct* %3, i64 0, i32 0
  %call1.i = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %4, i32 noundef 1) #28
  br label %cleanup379

do.body14:                                        ; preds = %entry
  %call16 = call fastcc i64 @arch_local_irq_save() #24
  %call24 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call24, ptrtoint (i32* @cpu_number to i64)
  %5 = inttoptr i64 %add to i32*
  %6 = load i32, i32* %5, align 4
  %call25 = call fastcc i1 @cpu_online(i32 noundef %6) #24
  br i1 %call25, label %if.end46, label %if.then45, !prof !16

if.then45:                                        ; preds = %do.body14
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2473; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !142
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %do.body14
  %call56 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  %7 = load volatile i32, i32* @rcu_divisor, align 4
  %cmp61 = icmp slt i32 %7, 0
  %8 = icmp ult i32 %7, 62
  %cond = select i1 %8, i32 %7, i32 62
  %conv71 = select i1 %cmp61, i32 7, i32 %cond
  %blimit = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 18
  %9 = load i64, i64* %blimit, align 8
  %sh_prom = zext i32 %conv71 to i64
  %shr = ashr i64 %call56, %sh_prom
  %cmp73 = icmp sgt i64 %9, %shr
  %cond78 = select i1 %cmp73, i64 %9, i64 %shr
  %cmp79 = icmp sgt i64 %cond78, 100
  br i1 %cmp79, label %if.then88, label %if.end107, !prof !13

if.then88:                                        ; preds = %if.end46
  %10 = load volatile i64, i64* @rcu_resched_ns, align 8
  %11 = icmp slt i64 %10, 1000000000
  %cond102 = select i1 %11, i64 %10, i64 1000000000
  %12 = icmp sgt i64 %cond102, 1000000
  %cond104 = select i1 %12, i64 %cond102, i64 1000000
  %call105 = call fastcc i64 @local_clock() #24
  %add106 = add i64 %cond104, %call105
  br label %if.end107

if.end107:                                        ; preds = %if.then88, %if.end46
  %tlimit.0 = phi i64 [ %add106, %if.then88 ], [ 0, %if.end46 ]
  %call109 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  call void @rcu_segcblist_extract_done_cbs(%struct.rcu_segcblist* noundef %cblist, %struct.rcu_cblist* noundef nonnull %rcl) #28
  call fastcc void @rcu_nocb_unlock_irqrestore(i64 noundef %call16) #24
  %13 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %call118 = call %struct.callback_head* @rcu_cblist_dequeue(%struct.rcu_cblist* noundef nonnull %rcl) #28
  %14 = inttoptr i64 %13 to %struct.task_struct*
  %15 = getelementptr %struct.task_struct, %struct.task_struct* %14, i64 0, i32 0
  %flags.i480 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i64 0, i32 4
  %tobool119.not492 = icmp eq %struct.callback_head* %call118, null
  br i1 %tobool119.not492, label %do.body194, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end107
  %tobool148.not = icmp eq i64 %tlimit.0, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %rhp.0494 = phi %struct.callback_head* [ %call118, %for.body.lr.ph ], [ %call192, %for.inc ]
  %count.0493 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %inc = add i64 %count.0493, 1
  %func = getelementptr inbounds %struct.callback_head, %struct.callback_head* %rhp.0494, i64 0, i32 1
  %16 = load void (%struct.callback_head*)*, void (%struct.callback_head*)** %func, align 8
  store volatile void (%struct.callback_head*)* null, void (%struct.callback_head*)** %func, align 8
  call void %16(%struct.callback_head* noundef nonnull %rhp.0494) #28
  %cmp136.not = icmp slt i64 %inc, %cond78
  br i1 %cmp136.not, label %if.end147, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %for.body
  %call1.i478 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %15, i32 noundef 1) #28
  %tobool.i479.not = icmp eq i32 %call1.i478, 0
  br i1 %tobool.i479.not, label %lor.lhs.false, label %do.body194

lor.lhs.false:                                    ; preds = %land.lhs.true139
  %17 = load i32, i32* %flags.i480, align 4
  %and.i481 = and i32 %17, 2
  %tobool.i482.not = icmp eq i32 %and.i481, 0
  br i1 %tobool.i482.not, label %do.body194, label %if.end147

if.end147:                                        ; preds = %lor.lhs.false, %for.body
  br i1 %tobool148.not, label %if.end170, label %if.then156, !prof !16

if.then156:                                       ; preds = %if.end147
  %and = and i64 %inc, 31
  %tobool157.not = icmp eq i64 %and, 0
  br i1 %tobool157.not, label %lor.end, label %for.inc

lor.end:                                          ; preds = %if.then156
  %call158 = call fastcc i64 @local_clock() #24
  %cmp159 = icmp ult i64 %call158, %tlimit.0
  br i1 %cmp159, label %for.inc, label %do.body194

if.end170:                                        ; preds = %if.end147
  %call171 = call fastcc i32 @preempt_count() #24
  %18 = and i32 %call171, 256
  %tobool175.not = icmp eq i32 %18, 0
  br i1 %tobool175.not, label %if.then176, label %for.inc

if.then176:                                       ; preds = %if.end170
  call fastcc void @local_bh_enable() #24
  call fastcc void @_cond_resched() #24
  call fastcc void @local_bh_disable() #24
  br label %for.inc

for.inc:                                          ; preds = %lor.end, %if.then156, %if.then176, %if.end170
  %call192 = call %struct.callback_head* @rcu_cblist_dequeue(%struct.rcu_cblist* noundef nonnull %rcl) #28
  %tobool119.not = icmp eq %struct.callback_head* %call192, null
  br i1 %tobool119.not, label %do.body194, label %for.body

do.body194:                                       ; preds = %for.inc, %land.lhs.true139, %lor.lhs.false, %lor.end, %if.end107
  %count.1 = phi i64 [ 0, %if.end107 ], [ %inc, %lor.end ], [ %inc, %lor.lhs.false ], [ %inc, %land.lhs.true139 ], [ %inc, %for.inc ]
  %call200 = call fastcc i64 @arch_local_irq_save() #24
  %n_cbs_invoked = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 16
  %19 = load i64, i64* %n_cbs_invoked, align 8
  %add205 = add i64 %19, %count.1
  store i64 %add205, i64* %n_cbs_invoked, align 8
  %call1.i483 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %15, i32 noundef 1) #28
  call void @rcu_segcblist_insert_done_cbs(%struct.rcu_segcblist* noundef %cblist, %struct.rcu_cblist* noundef nonnull %rcl) #28
  %sub = sub i64 0, %count.1
  call void @rcu_segcblist_add_len(%struct.rcu_segcblist* noundef %cblist, i64 noundef %sub) #28
  %call224 = call fastcc i64 @rcu_segcblist_n_cbs(%struct.rcu_segcblist* noundef %cblist) #24
  %20 = load i64, i64* %blimit, align 8
  %cmp226 = icmp slt i64 %20, 10000
  %21 = load i64, i64* @qlowmark, align 8
  %cmp229.not = icmp sgt i64 %call224, %21
  %or.cond = select i1 %cmp226, i1 true, i1 %cmp229.not
  br i1 %or.cond, label %if.end233, label %if.then231

if.then231:                                       ; preds = %do.body194
  %22 = load i64, i64* @blimit, align 8
  store i64 %22, i64* %blimit, align 8
  br label %if.end233

if.end233:                                        ; preds = %if.then231, %do.body194
  %cmp234 = icmp eq i64 %call224, 0
  %qlen_last_fqs_check237 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 15
  %23 = load i64, i64* %qlen_last_fqs_check237, align 8
  br i1 %cmp234, label %land.lhs.true236, label %if.else

land.lhs.true236:                                 ; preds = %if.end233
  %cmp238.not = icmp eq i64 %23, 0
  br i1 %cmp238.not, label %if.else, label %if.then240

if.then240:                                       ; preds = %land.lhs.true236
  store i64 0, i64* %qlen_last_fqs_check237, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 28), align 32
  %n_force_qs_snap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 17
  store i64 %24, i64* %n_force_qs_snap, align 8
  br label %if.end249

if.else:                                          ; preds = %if.end233, %land.lhs.true236
  %25 = phi i64 [ 0, %land.lhs.true236 ], [ %23, %if.end233 ]
  %26 = load i64, i64* @qhimark, align 8
  %sub243 = sub i64 %25, %26
  %cmp244 = icmp slt i64 %call224, %sub243
  br i1 %cmp244, label %if.then246, label %if.end249

if.then246:                                       ; preds = %if.else
  %qlen_last_fqs_check242 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 15
  store i64 %call224, i64* %qlen_last_fqs_check242, align 8
  br label %if.end249

if.end249:                                        ; preds = %if.else, %if.then246, %if.then240
  %call251 = call fastcc i1 @rcu_segcblist_empty(%struct.rcu_segcblist* noundef %cblist) #24
  %lnot257 = xor i1 %call251, true
  %27 = select i1 %cmp234, i1 %lnot257, i1 false
  br i1 %27, label %if.end272.thread, label %if.end272, !prof !13

if.end272.thread:                                 ; preds = %if.end249
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2562; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !143
  br label %if.end301

if.end272:                                        ; preds = %if.end249
  %cmp282 = icmp ne i64 %call224, 0
  %28 = select i1 %cmp282, i1 %call251, i1 false
  br i1 %28, label %if.then300, label %if.end301, !prof !13

if.then300:                                       ; preds = %if.end272
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2564; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !144
  br label %if.end301

if.end301:                                        ; preds = %if.end272.thread, %if.then300, %if.end272
  br i1 %cmp234, label %land.rhs313, label %if.end332

land.rhs313:                                      ; preds = %if.end301
  %call315 = call i64 @rcu_segcblist_n_segment_cbs(%struct.rcu_segcblist* noundef %cblist) #28
  %cmp316.not = icmp eq i64 %call315, 0
  br i1 %cmp316.not, label %if.end332, label %if.then331, !prof !16

if.then331:                                       ; preds = %land.rhs313
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2565; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !145
  br label %if.end332

if.end332:                                        ; preds = %if.end301, %if.then331, %land.rhs313
  br i1 %call251, label %if.end362, label %land.rhs343

land.rhs343:                                      ; preds = %if.end332
  %call345 = call i64 @rcu_segcblist_n_segment_cbs(%struct.rcu_segcblist* noundef %cblist) #28
  %cmp346 = icmp eq i64 %call345, 0
  br i1 %cmp346, label %if.then361, label %if.end362, !prof !13

if.then361:                                       ; preds = %land.rhs343
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2566; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !146
  br label %if.end362

if.end362:                                        ; preds = %if.end332, %if.then361, %land.rhs343
  call fastcc void @rcu_nocb_unlock_irqrestore(i64 noundef %call200) #24
  %call374 = call i1 @rcu_segcblist_ready_cbs(%struct.rcu_segcblist* noundef %cblist) #28
  br i1 %call374, label %if.then376, label %cleanup379

if.then376:                                       ; preds = %if.end362
  call fastcc void @invoke_rcu_core() #24
  br label %cleanup379

cleanup379:                                       ; preds = %if.end362, %if.then376, %if.then
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_report_qs_rdp(%struct.rcu_data* noundef %rdp) unnamed_addr #1 {
entry:
  %cpu = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 41
  %0 = load i32, i32* %cpu, align 8
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call2, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %cmp.not = icmp eq i32 %0, %2
  br i1 %cmp.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 2285; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !147
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 8
  %3 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 0
  %call22 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %cpu_no_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 2
  %norm = bitcast %union.rcu_noqs* %cpu_no_qs to i8*
  %4 = load i8, i8* %norm, align 8
  %tobool31.not = icmp eq i8 %4, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %if.then38

lor.lhs.false:                                    ; preds = %if.end
  %gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 0
  %5 = load i64, i64* %gp_seq, align 8
  %gp_seq32 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 1
  %6 = load i64, i64* %gp_seq32, align 8
  %cmp33.not = icmp eq i64 %5, %6
  br i1 %cmp33.not, label %lor.lhs.false35, label %if.then38

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %gpwrap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 5
  %7 = load i8, i8* %gpwrap, align 4, !range !30
  %tobool36.not = icmp eq i8 %7, 0
  br i1 %tobool36.not, label %if.end57, label %if.then38

if.then38:                                        ; preds = %lor.lhs.false35, %lor.lhs.false, %if.end
  store i8 1, i8* %norm, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call22) #24
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false35
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 9
  %8 = load i64, i64* %grpmask, align 8
  %core_needs_qs = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %rdp, i64 0, i32 3
  store i8 0, i8* %core_needs_qs, align 2
  %qsmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 4
  %9 = load i64, i64* %qsmask, align 32
  %and = and i64 %9, %8
  %cmp58 = icmp eq i64 %and, 0
  br i1 %cmp58, label %do.body65, label %if.then77

do.body65:                                        ; preds = %if.end57
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call22) #24
  br label %cleanup

if.then77:                                        ; preds = %if.end57
  %call78 = call fastcc i1 @rcu_accelerate_cbs(%struct.rcu_node* noundef %3, %struct.rcu_data* noundef %rdp) #24
  call fastcc void @rcu_disable_urgency_upon_qs(%struct.rcu_data* noundef %rdp) #24
  %10 = load i64, i64* %gp_seq32, align 8
  call fastcc void @rcu_report_qs_rnp(i64 noundef %8, %struct.rcu_node* noundef %3, i64 noundef %10, i64 noundef %call22) #24
  br i1 %call78, label %if.then83, label %cleanup

if.then83:                                        ; preds = %if.then77
  call fastcc void @rcu_gp_kthread_wake() #24
  br label %cleanup

cleanup:                                          ; preds = %do.body65, %if.then83, %if.then77, %if.then38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @local_clock() unnamed_addr #1 {
entry:
  %call = call i64 @sched_clock() #28
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_extract_done_cbs(%struct.rcu_segcblist* noundef, %struct.rcu_cblist* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.callback_head* @rcu_cblist_dequeue(%struct.rcu_cblist* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_insert_done_cbs(%struct.rcu_segcblist* noundef, %struct.rcu_cblist* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_add_len(%struct.rcu_segcblist* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rcu_segcblist_n_segment_cbs(%struct.rcu_segcblist* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kfree_rcu_work(%struct.work_struct* noundef %work) #1 {
entry:
  %call = call fastcc %struct.rcu_work* @to_rcu_work(%struct.work_struct* noundef %work) #24
  %krcp1 = getelementptr inbounds %struct.rcu_work, %struct.rcu_work* %call, i64 1, i32 0, i32 2
  %0 = bitcast void (%struct.work_struct*)** %krcp1 to %struct.kfree_rcu_cpu**
  %1 = load %struct.kfree_rcu_cpu*, %struct.kfree_rcu_cpu** %0, align 8
  %lock = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %1, i64 0, i32 3
  %call4 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %bkvhead_free = getelementptr inbounds %struct.rcu_work, %struct.rcu_work* %call, i64 1, i32 0, i32 1
  %arrayidx = bitcast %struct.list_head* %bkvhead_free to %struct.kvfree_rcu_bulk_data**
  %2 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %arrayidx, align 8
  store %struct.kvfree_rcu_bulk_data* null, %struct.kvfree_rcu_bulk_data** %arrayidx, align 8
  %arrayidx.1 = getelementptr %struct.rcu_work, %struct.rcu_work* %call, i64 1, i32 0, i32 1, i32 1
  %3 = bitcast %struct.list_head** %arrayidx.1 to %struct.kvfree_rcu_bulk_data**
  %4 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %3, align 8
  store %struct.kvfree_rcu_bulk_data* null, %struct.kvfree_rcu_bulk_data** %3, align 8
  %head_free = getelementptr inbounds %struct.rcu_work, %struct.rcu_work* %call, i64 1
  %5 = bitcast %struct.rcu_work* %head_free to %struct.callback_head**
  %6 = load %struct.callback_head*, %struct.callback_head** %5, align 8
  store %struct.callback_head* null, %struct.callback_head** %5, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call4) #24
  %tobool.not229 = icmp eq %struct.kvfree_rcu_bulk_data* %2, null
  br i1 %tobool.not229, label %for.inc122, label %do.body77

do.body77:                                        ; preds = %entry, %do.end113
  %7 = phi %struct.kvfree_rcu_bulk_data* [ %8, %do.end113 ], [ %2, %entry ]
  %next34 = getelementptr inbounds %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %7, i64 0, i32 1
  %8 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %next34, align 8
  %nr_records48 = getelementptr inbounds %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %7, i64 0, i32 0
  %9 = load i64, i64* %nr_records48, align 8
  %arraydecay52 = getelementptr inbounds %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %7, i64 0, i32 2, i64 0
  call void @kmem_cache_free_bulk(%struct.kmem_cache* noundef null, i64 noundef %9, i8** noundef %arraydecay52) #28
  %call84 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %call89 = call fastcc i1 @put_cached_bnode(%struct.kfree_rcu_cpu* noundef %1, %struct.kvfree_rcu_bulk_data* noundef nonnull %7) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call84) #24
  br i1 %call89, label %do.end113, label %if.then106

if.then106:                                       ; preds = %do.body77
  %10 = ptrtoint %struct.kvfree_rcu_bulk_data* %7 to i64
  call void @free_pages(i64 noundef %10, i32 noundef 0) #28
  br label %do.end113

do.end113:                                        ; preds = %if.then106, %do.body77
  call fastcc void @_cond_resched() #24
  %tobool.not = icmp eq %struct.kvfree_rcu_bulk_data* %8, null
  br i1 %tobool.not, label %for.inc122, label %do.body77

for.inc122:                                       ; preds = %do.end113, %entry
  %tobool.not229.1 = icmp eq %struct.kvfree_rcu_bulk_data* %4, null
  br i1 %tobool.not229.1, label %for.inc122.1, label %for.cond53.preheader.1

for.cond53.preheader.1:                           ; preds = %for.inc122, %do.end113.1
  %11 = phi %struct.kvfree_rcu_bulk_data* [ %12, %do.end113.1 ], [ %4, %for.inc122 ]
  %next34.1 = getelementptr inbounds %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %11, i64 0, i32 1
  %12 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %next34.1, align 8
  %nr_records57.1 = getelementptr inbounds %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %11, i64 0, i32 0
  %13 = load i64, i64* %nr_records57.1, align 8
  %cmp58226.not.1 = icmp eq i64 %13, 0
  br i1 %cmp58226.not.1, label %do.body77.1, label %for.body60.1

for.body60.1:                                     ; preds = %for.cond53.preheader.1, %for.body60.1
  %conv54228.1 = phi i64 [ %conv54.1, %for.body60.1 ], [ 0, %for.cond53.preheader.1 ]
  %arrayidx70.1 = getelementptr %struct.kvfree_rcu_bulk_data, %struct.kvfree_rcu_bulk_data* %11, i64 0, i32 2, i64 %conv54228.1
  %14 = load i8*, i8** %arrayidx70.1, align 8
  call void @vfree(i8* noundef %14) #28
  %inc72.1 = shl nsw i64 %conv54228.1, 32
  %sext = add i64 %inc72.1, 4294967296
  %conv54.1 = ashr exact i64 %sext, 32
  %15 = load i64, i64* %nr_records57.1, align 8
  %cmp58.1 = icmp ugt i64 %15, %conv54.1
  br i1 %cmp58.1, label %for.body60.1, label %do.body77.1

do.body77.1:                                      ; preds = %for.body60.1, %for.cond53.preheader.1
  %call84.1 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %call89.1 = call fastcc i1 @put_cached_bnode(%struct.kfree_rcu_cpu* noundef %1, %struct.kvfree_rcu_bulk_data* noundef nonnull %11) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call84.1) #24
  %tobool105.not233.1 = icmp eq %struct.kvfree_rcu_bulk_data* %11, null
  %tobool105.not.1 = select i1 %call89.1, i1 true, i1 %tobool105.not233.1
  br i1 %tobool105.not.1, label %do.end113.1, label %if.then106.1

if.then106.1:                                     ; preds = %do.body77.1
  %16 = ptrtoint %struct.kvfree_rcu_bulk_data* %11 to i64
  call void @free_pages(i64 noundef %16, i32 noundef 0) #28
  br label %do.end113.1

do.end113.1:                                      ; preds = %if.then106.1, %do.body77.1
  call fastcc void @_cond_resched() #24
  %tobool.not.1 = icmp eq %struct.kvfree_rcu_bulk_data* %12, null
  br i1 %tobool.not.1, label %for.inc122.1, label %for.cond53.preheader.1

for.inc122.1:                                     ; preds = %do.end113.1, %for.inc122
  %tobool126.not231 = icmp eq %struct.callback_head* %6, null
  br i1 %tobool126.not231, label %for.end169, label %for.body127

for.body127:                                      ; preds = %for.inc122.1, %do.end163
  %head.0232 = phi %struct.callback_head* [ %18, %do.end163 ], [ %6, %for.inc122.1 ]
  %func = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head.0232, i64 0, i32 1
  %17 = load void (%struct.callback_head*)*, void (%struct.callback_head*)** %func, align 8
  %next129 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head.0232, i64 0, i32 0
  %18 = load %struct.callback_head*, %struct.callback_head** %next129, align 8
  %cmp133.not = icmp ult void (%struct.callback_head*)* %17, inttoptr (i64 4096 to void (%struct.callback_head*)*)
  br i1 %cmp133.not, label %if.then155, label %if.then144, !prof !16

if.then144:                                       ; preds = %for.body127
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 3316; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !148
  br label %do.end163

if.then155:                                       ; preds = %for.body127
  %19 = bitcast %struct.callback_head* %head.0232 to i8*
  %20 = ptrtoint void (%struct.callback_head*)* %17 to i64
  %idx.neg = sub i64 0, %20
  %add.ptr128 = getelementptr i8, i8* %19, i64 %idx.neg
  call void @kvfree(i8* noundef %add.ptr128) #28
  br label %do.end163

do.end163:                                        ; preds = %if.then144, %if.then155
  call fastcc void @_cond_resched() #24
  %tobool126.not = icmp eq %struct.callback_head* %18, null
  br i1 %tobool126.not, label %for.end169, label %for.body127

for.end169:                                       ; preds = %do.end163, %for.inc122.1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kfree_rcu_monitor(%struct.work_struct* noundef %work) #1 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -7, i32 1, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to %struct.kfree_rcu_cpu*
  %lock = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 25
  %1 = bitcast %struct.list_head** %lock to %struct.raw_spinlock*
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %1) #24
  %krw_arr = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 3
  %bkvhead = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 1
  %arrayidx7 = bitcast %struct.list_head** %bkvhead to %struct.kvfree_rcu_bulk_data**
  %arrayidx11 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 2
  %2 = bitcast %struct.list_head** %arrayidx11 to %struct.kvfree_rcu_bulk_data**
  %head = bitcast %struct.list_head** %add.ptr to %struct.callback_head**
  %count = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %0, i64 0, i32 7
  %3 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %arrayidx7, align 8
  %tobool.not = icmp eq %struct.kvfree_rcu_bulk_data* %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx8 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 11
  %4 = bitcast %struct.list_head** %arrayidx8 to %struct.kvfree_rcu_bulk_data**
  %5 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %4, align 8
  %tobool9.not = icmp eq %struct.kvfree_rcu_bulk_data* %5, null
  br i1 %tobool9.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %2, align 8
  %tobool12.not = icmp eq %struct.kvfree_rcu_bulk_data* %6, null
  br i1 %tobool12.not, label %lor.lhs.false17, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 12
  %7 = bitcast %struct.list_head** %arrayidx15 to %struct.kvfree_rcu_bulk_data**
  %8 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %7, align 8
  %tobool16.not = icmp eq %struct.kvfree_rcu_bulk_data* %8, null
  br i1 %tobool16.not, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %land.lhs.true13, %lor.lhs.false
  %9 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  %tobool18.not = icmp eq %struct.callback_head* %9, null
  br i1 %tobool18.not, label %if.end56, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %lor.lhs.false17
  %head_free = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 10
  %10 = bitcast %struct.list_head** %head_free to %struct.callback_head**
  %11 = load %struct.callback_head*, %struct.callback_head** %10, align 8
  %tobool20.not = icmp eq %struct.callback_head* %11, null
  br i1 %tobool20.not, label %if.then, label %if.end56

if.then:                                          ; preds = %land.lhs.true19, %land.lhs.true13, %land.lhs.true
  %arrayidx27 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 11
  %12 = bitcast %struct.list_head** %arrayidx27 to %struct.kvfree_rcu_bulk_data**
  %13 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %12, align 8
  %tobool28.not = icmp eq %struct.kvfree_rcu_bulk_data* %13, null
  br i1 %tobool28.not, label %if.then29, label %for.inc

if.then29:                                        ; preds = %if.then
  %arrayidx32 = bitcast %struct.list_head** %bkvhead to %struct.kvfree_rcu_bulk_data**
  store %struct.kvfree_rcu_bulk_data* %3, %struct.kvfree_rcu_bulk_data** %12, align 8
  store %struct.kvfree_rcu_bulk_data* null, %struct.kvfree_rcu_bulk_data** %arrayidx32, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then29
  %arrayidx27.1 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 12
  %14 = bitcast %struct.list_head** %arrayidx27.1 to %struct.kvfree_rcu_bulk_data**
  %15 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %14, align 8
  %tobool28.not.1 = icmp eq %struct.kvfree_rcu_bulk_data* %15, null
  br i1 %tobool28.not.1, label %if.then29.1, label %for.inc.1

if.then29.1:                                      ; preds = %for.inc
  %arrayidx32.1 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 2
  %16 = bitcast %struct.list_head** %arrayidx32.1 to %struct.kvfree_rcu_bulk_data**
  %17 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %16, align 8
  store %struct.kvfree_rcu_bulk_data* %17, %struct.kvfree_rcu_bulk_data** %14, align 8
  store %struct.kvfree_rcu_bulk_data* null, %struct.kvfree_rcu_bulk_data** %16, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then29.1, %for.inc
  %head_free39 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 10
  %18 = bitcast %struct.list_head** %head_free39 to %struct.callback_head**
  %19 = load %struct.callback_head*, %struct.callback_head** %18, align 8
  %tobool40.not = icmp eq %struct.callback_head* %19, null
  br i1 %tobool40.not, label %if.then41, label %do.body50

if.then41:                                        ; preds = %for.inc.1
  %20 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  store %struct.callback_head* %20, %struct.callback_head** %18, align 8
  store %struct.callback_head* null, %struct.callback_head** %head, align 8
  br label %do.body50

do.body50:                                        ; preds = %for.inc.1, %if.then41
  store volatile i32 0, i32* %count, align 4
  %21 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  %rcu_work = bitcast %struct.list_head** %krw_arr to %struct.rcu_work*
  %call55 = call i1 @queue_rcu_work(%struct.workqueue_struct* noundef %21, %struct.rcu_work* noundef %rcu_work) #28
  %.pre = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %arrayidx7, align 8
  br label %if.end56

if.end56:                                         ; preds = %do.body50, %land.lhs.true19, %lor.lhs.false17
  %22 = phi %struct.kvfree_rcu_bulk_data* [ %.pre, %do.body50 ], [ %3, %land.lhs.true19 ], [ %3, %lor.lhs.false17 ]
  %tobool.not.1 = icmp eq %struct.kvfree_rcu_bulk_data* %22, null
  br i1 %tobool.not.1, label %lor.lhs.false.1, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %if.end56
  %arrayidx8.1 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 22
  %23 = bitcast %struct.list_head** %arrayidx8.1 to %struct.kvfree_rcu_bulk_data**
  %24 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %23, align 8
  %tobool9.not.1 = icmp eq %struct.kvfree_rcu_bulk_data* %24, null
  br i1 %tobool9.not.1, label %if.then.1, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %land.lhs.true.1, %if.end56
  %25 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %2, align 8
  %tobool12.not.1 = icmp eq %struct.kvfree_rcu_bulk_data* %25, null
  br i1 %tobool12.not.1, label %lor.lhs.false17.1, label %land.lhs.true13.1

land.lhs.true13.1:                                ; preds = %lor.lhs.false.1
  %arrayidx15.1 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 23
  %26 = bitcast %struct.list_head** %arrayidx15.1 to %struct.kvfree_rcu_bulk_data**
  %27 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %26, align 8
  %tobool16.not.1 = icmp eq %struct.kvfree_rcu_bulk_data* %27, null
  br i1 %tobool16.not.1, label %if.then.1, label %lor.lhs.false17.1

lor.lhs.false17.1:                                ; preds = %land.lhs.true13.1, %lor.lhs.false.1
  %28 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  %tobool18.not.1 = icmp eq %struct.callback_head* %28, null
  br i1 %tobool18.not.1, label %if.end56.1, label %land.lhs.true19.1

land.lhs.true19.1:                                ; preds = %lor.lhs.false17.1
  %head_free.1 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 21
  %29 = bitcast %struct.list_head** %head_free.1 to %struct.callback_head**
  %30 = load %struct.callback_head*, %struct.callback_head** %29, align 8
  %tobool20.not.1 = icmp eq %struct.callback_head* %30, null
  br i1 %tobool20.not.1, label %if.then.1, label %if.end56.1

if.then.1:                                        ; preds = %land.lhs.true19.1, %land.lhs.true13.1, %land.lhs.true.1
  %arrayidx27.1121 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 22
  %31 = bitcast %struct.list_head** %arrayidx27.1121 to %struct.kvfree_rcu_bulk_data**
  %32 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %31, align 8
  %tobool28.not.1122 = icmp eq %struct.kvfree_rcu_bulk_data* %32, null
  br i1 %tobool28.not.1122, label %if.then29.1124, label %for.inc.1125

if.then29.1124:                                   ; preds = %if.then.1
  %arrayidx32.1123 = bitcast %struct.list_head** %bkvhead to %struct.kvfree_rcu_bulk_data**
  store %struct.kvfree_rcu_bulk_data* %22, %struct.kvfree_rcu_bulk_data** %31, align 8
  store %struct.kvfree_rcu_bulk_data* null, %struct.kvfree_rcu_bulk_data** %arrayidx32.1123, align 8
  br label %for.inc.1125

for.inc.1125:                                     ; preds = %if.then29.1124, %if.then.1
  %arrayidx27.1.1 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 23
  %33 = bitcast %struct.list_head** %arrayidx27.1.1 to %struct.kvfree_rcu_bulk_data**
  %34 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %33, align 8
  %tobool28.not.1.1 = icmp eq %struct.kvfree_rcu_bulk_data* %34, null
  br i1 %tobool28.not.1.1, label %if.then29.1.1, label %for.inc.1.1

if.then29.1.1:                                    ; preds = %for.inc.1125
  %arrayidx32.1.1 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 2
  %35 = bitcast %struct.list_head** %arrayidx32.1.1 to %struct.kvfree_rcu_bulk_data**
  %36 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %35, align 8
  store %struct.kvfree_rcu_bulk_data* %36, %struct.kvfree_rcu_bulk_data** %33, align 8
  store %struct.kvfree_rcu_bulk_data* null, %struct.kvfree_rcu_bulk_data** %35, align 8
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %if.then29.1.1, %for.inc.1125
  %head_free39.1 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 21
  %37 = bitcast %struct.list_head** %head_free39.1 to %struct.callback_head**
  %38 = load %struct.callback_head*, %struct.callback_head** %37, align 8
  %tobool40.not.1 = icmp eq %struct.callback_head* %38, null
  br i1 %tobool40.not.1, label %if.then41.1, label %do.body50.1

if.then41.1:                                      ; preds = %for.inc.1.1
  %39 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  store %struct.callback_head* %39, %struct.callback_head** %37, align 8
  store %struct.callback_head* null, %struct.callback_head** %head, align 8
  br label %do.body50.1

do.body50.1:                                      ; preds = %if.then41.1, %for.inc.1.1
  store volatile i32 0, i32* %count, align 4
  %40 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  %rcu_work.1 = getelementptr %struct.list_head*, %struct.list_head** %add.ptr, i64 14
  %41 = bitcast %struct.list_head** %rcu_work.1 to %struct.rcu_work*
  %call55.1 = call i1 @queue_rcu_work(%struct.workqueue_struct* noundef %40, %struct.rcu_work* noundef %41) #28
  %.pre126 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %arrayidx7, align 8
  br label %if.end56.1

if.end56.1:                                       ; preds = %do.body50.1, %land.lhs.true19.1, %lor.lhs.false17.1
  %42 = phi %struct.kvfree_rcu_bulk_data* [ %.pre126, %do.body50.1 ], [ %22, %land.lhs.true19.1 ], [ %22, %lor.lhs.false17.1 ]
  %tobool62.not = icmp eq %struct.kvfree_rcu_bulk_data* %42, null
  br i1 %tobool62.not, label %land.lhs.true63, label %if.else

land.lhs.true63:                                  ; preds = %if.end56.1
  %43 = load %struct.kvfree_rcu_bulk_data*, %struct.kvfree_rcu_bulk_data** %2, align 8
  %tobool66.not = icmp eq %struct.kvfree_rcu_bulk_data* %43, null
  br i1 %tobool66.not, label %land.lhs.true67, label %if.else

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %44 = load %struct.callback_head*, %struct.callback_head** %head, align 8
  %tobool69.not = icmp eq %struct.callback_head* %44, null
  br i1 %tobool69.not, label %if.then70, label %if.else

if.then70:                                        ; preds = %land.lhs.true67
  %monitor_todo = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 37
  %45 = bitcast %struct.list_head** %monitor_todo to i8*
  store i8 0, i8* %45, align 8
  br label %do.body73

if.else:                                          ; preds = %land.lhs.true67, %land.lhs.true63, %if.end56.1
  %monitor_work = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 26
  %46 = bitcast %struct.list_head** %monitor_work to %struct.delayed_work*
  call fastcc void @schedule_delayed_work(%struct.delayed_work* noundef %46) #24
  br label %do.body73

do.body73:                                        ; preds = %if.then70, %if.else
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %1, i64 noundef %call) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fill_page_cache_func(%struct.work_struct* noundef %work) #1 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -10, i32 1, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to %struct.kfree_rcu_cpu*
  %backoff_page_cache_fill = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 49
  %counter.i = bitcast %struct.list_head** %backoff_page_cache_fill to i32*
  %1 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %1, 0
  %2 = load i32, i32* @rcu_min_cached_objs, align 4
  %cond = select i1 %tobool.not, i32 %2, i32 1
  %cmp39 = icmp sgt i32 %cond, 0
  br i1 %cmp39, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lock = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 25
  %3 = bitcast %struct.list_head** %lock to %struct.raw_spinlock*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call1 = call i64 @__get_free_pages(i32 noundef 601280, i32 noundef 0) #28
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %for.inc, label %do.body3

do.body3:                                         ; preds = %for.body
  %4 = inttoptr i64 %call1 to %struct.kvfree_rcu_bulk_data*
  %call6 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %3) #24
  %call9 = call fastcc i1 @put_cached_bnode(%struct.kfree_rcu_cpu* noundef %0, %struct.kvfree_rcu_bulk_data* noundef nonnull %4) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %3, i64 noundef %call6) #24
  br i1 %call9, label %for.inc, label %if.then20

if.then20:                                        ; preds = %do.body3
  call void @free_pages(i64 noundef %call1, i32 noundef 0) #28
  br label %for.end

for.inc:                                          ; preds = %for.body, %do.body3
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %if.then20
  %counter.i37 = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %0, i64 0, i32 10, i32 0
  store volatile i32 0, i32* %counter.i37, align 4
  store volatile i32 0, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(%struct.shrinker* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.rcu_work* @to_rcu_work(%struct.work_struct* noundef readnone %work) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.work_struct* %work to %struct.rcu_work*
  ret %struct.rcu_work* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @put_cached_bnode(%struct.kfree_rcu_cpu* noundef %krcp, %struct.kvfree_rcu_bulk_data* noundef %bnode) unnamed_addr #1 {
entry:
  %nr_bkv_objs = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 13
  %0 = load i32, i32* %nr_bkv_objs, align 8
  %1 = load i32, i32* @rcu_min_cached_objs, align 4
  %cmp.not = icmp slt i32 %0, %1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.kvfree_rcu_bulk_data* %bnode to %struct.llist_node*
  %bkvcache = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 12
  call fastcc void @llist_add(%struct.llist_node* noundef %2, %struct.llist_head* noundef %bkvcache) #24
  %3 = load i32, i32* %nr_bkv_objs, align 8
  %add = add i32 %3, 1
  store volatile i32 %add, i32* %nr_bkv_objs, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free_bulk(%struct.kmem_cache* noundef, i64 noundef, i8** noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @llist_add(%struct.llist_node* noundef %new, %struct.llist_head* noundef %head) unnamed_addr #1 {
entry:
  %call = call i1 @llist_add_batch(%struct.llist_node* noundef %new, %struct.llist_node* noundef %new, %struct.llist_head* noundef %head) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @llist_add_batch(%struct.llist_node* noundef, %struct.llist_node* noundef, %struct.llist_head* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_rcu_work(%struct.workqueue_struct* noundef, %struct.rcu_work* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal i64 @kfree_rcu_shrink_count(%struct.shrinker* nocapture noundef readnone %shrink, %struct.shrink_control* nocapture noundef readnone %sc) #16 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call25 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %cmp26 = icmp ult i32 %call25, %0
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call28 = phi i32 [ %call, %for.body ], [ %call25, %entry ]
  %count.027 = phi i64 [ %add13, %for.body ], [ 0, %entry ]
  %idxprom = sext i32 %call28 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.kfree_rcu_cpu* @krc to i64)
  %2 = inttoptr i64 %add to %struct.kfree_rcu_cpu*
  %count6 = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 7
  %3 = load volatile i32, i32* %count6, align 4
  %conv = sext i32 %3 to i64
  %add7 = add i64 %count.027, %conv
  %nr_bkv_objs = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 13
  %4 = load volatile i32, i32* %nr_bkv_objs, align 8
  %conv12 = sext i32 %4 to i64
  %add13 = add i64 %add7, %conv12
  %counter.i = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 9, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  %call = call i32 @cpumask_next(i32 noundef %call28, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %count.0.lcssa = phi i64 [ 0, %entry ], [ %add13, %for.body ]
  ret i64 %count.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @kfree_rcu_shrink_scan(%struct.shrinker* nocapture noundef readnone %shrink, %struct.shrink_control* nocapture noundef %sc) #1 {
entry:
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %sc, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %freed.0 = phi i32 [ 0, %entry ], [ %add5, %for.body ]
  %cpu.0 = phi i32 [ -1, %entry ], [ %call, %for.body ]
  %call = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.kfree_rcu_cpu* @krc to i64)
  %2 = inttoptr i64 %add to %struct.kfree_rcu_cpu*
  %count2 = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 7
  %3 = load i32, i32* %count2, align 4
  %call3 = call fastcc i32 @drain_page_cache(%struct.kfree_rcu_cpu* noundef %2) #24
  %add4 = add i32 %call3, %3
  %work = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %2, i64 0, i32 4, i32 0
  call void @kfree_rcu_monitor(%struct.work_struct* noundef %work) #24
  %conv = sext i32 %add4 to i64
  %4 = load i64, i64* %nr_to_scan, align 8
  %sub = sub i64 %4, %conv
  store i64 %sub, i64* %nr_to_scan, align 8
  %add5 = add i32 %add4, %freed.0
  %cmp7 = icmp eq i64 %sub, 0
  br i1 %cmp7, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body, %for.cond
  %freed.1 = phi i32 [ %add5, %for.body ], [ %freed.0, %for.cond ]
  %cmp10 = icmp eq i32 %freed.1, 0
  %narrow = select i1 %cmp10, i32 -1, i32 %freed.1
  %cond = sext i32 %narrow to i64
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @drain_page_cache(%struct.kfree_rcu_cpu* noundef %krcp) unnamed_addr #1 {
entry:
  %lock = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 3
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %bkvcache = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 12
  %call1 = call fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %bkvcache) #24
  %nr_bkv_objs = getelementptr inbounds %struct.kfree_rcu_cpu, %struct.kfree_rcu_cpu* %krcp, i64 0, i32 13
  store volatile i32 0, i32* %nr_bkv_objs, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  %tobool.not31 = icmp eq %struct.llist_node* %call1, null
  br i1 %tobool.not31, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %land.rhs
  %pos.033 = phi %struct.llist_node* [ %0, %land.rhs ], [ %call1, %entry ]
  %freed.032 = phi i32 [ %inc, %land.rhs ], [ 0, %entry ]
  %next = getelementptr inbounds %struct.llist_node, %struct.llist_node* %pos.033, i64 0, i32 0
  %0 = load %struct.llist_node*, %struct.llist_node** %next, align 8
  %1 = ptrtoint %struct.llist_node* %pos.033 to i64
  call void @free_pages(i64 noundef %1, i32 noundef 0) #28
  %inc = add i32 %freed.032, 1
  %tobool.not = icmp eq %struct.llist_node* %0, null
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %land.rhs, %entry
  %freed.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %land.rhs ]
  ret i32 %freed.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.llist_node* @llist_del_all(%struct.llist_head* noundef %head) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.llist_head* %head to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i64 noundef 0, i8* noundef %0) #28
  %1 = inttoptr i64 %call11.i to %struct.llist_node*
  ret %struct.llist_node* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @rcu_init_levelspread(i32* nocapture noundef writeonly %levelspread) unnamed_addr #23 {
entry:
  store i32 -2147483648, i32* %levelspread, align 4
  %arrayidx.1 = getelementptr i32, i32* %levelspread, i64 1
  store i32 -2147483648, i32* %arrayidx.1, align 4
  %0 = load i8, i8* @rcu_fanout_exact, align 4, !range !30
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @rcu_fanout_leaf, align 4
  %2 = load i32, i32* @rcu_num_lvls, align 4
  %sub = add i32 %2, -1
  %idxprom1 = sext i32 %sub to i64
  %arrayidx2 = getelementptr i32, i32* %levelspread, i64 %idxprom1
  store i32 %1, i32* %arrayidx2, align 4
  %3 = load i32, i32* @rcu_num_lvls, align 4
  %sub3 = add i32 %3, -2
  %cmp55 = icmp sgt i32 %sub3, -1
  br i1 %cmp55, label %for.body6.preheader, label %if.end

for.body6.preheader:                              ; preds = %if.then
  %4 = zext i32 %sub3 to i64
  %5 = add nuw nsw i64 %4, 1
  %min.iters.check = icmp eq i32 %sub3, 0
  br i1 %min.iters.check, label %for.body6.preheader17, label %vector.ph

vector.ph:                                        ; preds = %for.body6.preheader
  %n.vec = and i64 %5, 8589934590
  %ind.end = sub nsw i64 %4, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = sub i64 %4, %index
  %induction16 = add i64 %offset.idx, -1
  %6 = getelementptr i32, i32* %levelspread, i64 %offset.idx
  %7 = getelementptr i32, i32* %levelspread, i64 %induction16
  store i32 64, i32* %6, align 4
  store i32 64, i32* %7, align 4
  %index.next = add nuw i64 %index, 2
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %if.end, label %for.body6.preheader17

for.body6.preheader17:                            ; preds = %for.body6.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %4, %for.body6.preheader ], [ %ind.end, %middle.block ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6.preheader17, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ %indvars.iv.ph, %for.body6.preheader17 ]
  %arrayidx8 = getelementptr i32, i32* %levelspread, i64 %indvars.iv
  store i32 64, i32* %arrayidx8, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp5.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp5.not, label %if.end, label %for.body6, !llvm.loop !150

if.else:                                          ; preds = %entry
  %9 = load i32, i32* @rcu_num_lvls, align 4
  %i.27 = add i32 %9, -1
  %cmp138 = icmp sgt i32 %i.27, -1
  br i1 %cmp138, label %for.body14.preheader, label %if.end

for.body14.preheader:                             ; preds = %if.else
  %10 = load i32, i32* @nr_cpu_ids, align 4
  br label %for.body14

for.body14:                                       ; preds = %for.body14.preheader, %for.body14
  %i.210 = phi i32 [ %i.2, %for.body14 ], [ %i.27, %for.body14.preheader ]
  %cprv.09 = phi i32 [ %11, %for.body14 ], [ %10, %for.body14.preheader ]
  %idxprom151 = zext i32 %i.210 to i64
  %arrayidx16 = getelementptr [2 x i32], [2 x i32]* @num_rcu_lvl, i64 0, i64 %idxprom151
  %11 = load i32, i32* %arrayidx16, align 4
  %add = add i32 %cprv.09, -1
  %sub17 = add i32 %add, %11
  %div = sdiv i32 %sub17, %11
  %arrayidx19 = getelementptr i32, i32* %levelspread, i64 %idxprom151
  store i32 %div, i32* %arrayidx19, align 4
  %i.2 = add nsw i32 %i.210, -1
  %cmp13 = icmp sgt i32 %i.210, 0
  br i1 %cmp13, label %for.body14, label %if.end

if.end:                                           ; preds = %for.body6, %for.body14, %middle.block, %if.then, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @rcu_boot_init_percpu_data(i32 noundef %cpu) unnamed_addr #10 section ".init.text" {
entry:
  %idxprom = sext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %1 = inttoptr i64 %add to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 8
  %2 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %2, i64 0, i32 15
  %3 = load i32, i32* %grplo, align 8
  %sub = sub i32 %cpu, %3
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 9
  store i64 %shl, i64* %grpmask, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 13, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry5 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 13, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry5) #24
  %func = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 13, i32 2
  store void (%struct.work_struct*)* @strict_work_handler, void (%struct.work_struct*)** %func, align 8
  %dynticks_nesting = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 20
  %4 = load i64, i64* %dynticks_nesting, align 8
  %cmp.not = icmp eq i64 %4, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4102; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !151
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i32 @rcu_dynticks_snap(%struct.rcu_data* noundef %1) #24
  %call24 = call fastcc i1 @rcu_dynticks_in_eqs(i32 noundef %call) #24
  br i1 %call24, label %if.then37, label %if.end38, !prof !13

if.then37:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree.c\22; .popsection; .long 14472b - 14470b; .short 4103; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !152
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %rcu_ofl_gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 36
  store i64 %5, i64* %rcu_ofl_gp_seq, align 8
  %rcu_ofl_gp_flags = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 37
  store i16 8, i16* %rcu_ofl_gp_flags, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 6), align 8
  %rcu_onl_gp_seq = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 38
  store i64 %6, i64* %rcu_onl_gp_seq, align 8
  %rcu_onl_gp_flags = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 39
  store i16 8, i16* %rcu_onl_gp_flags, align 8
  %cpu47 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %1, i64 0, i32 41
  store i32 %cpu, i32* %cpu47, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @strict_work_handler(%struct.work_struct* nocapture noundef readnone %work) #1 {
entry:
  call fastcc void @__rcu_read_lock() #28
  call fastcc void @rcu_read_unlock() #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !153
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !154
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal i32 @rcu_panic(%struct.notifier_block* nocapture noundef readnone %this, i64 noundef %ev, i8* nocapture noundef readnone %ptr) #18 {
entry:
  store i32 1, i32* @rcu_cpu_stall_suppress, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_report_exp_cpu_mult(%struct.rcu_node* noundef %rnp, i64 noundef %mask, i1 noundef %wake) unnamed_addr #1 {
entry:
  %mask.addr = alloca i64, align 8
  store i64 %mask, i64* %mask.addr, align 8
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %expmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 9
  %0 = load i64, i64* %expmask, align 8
  %and = and i64 %0, %mask
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body11, label %do.body26

do.body11:                                        ; preds = %entry
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  br label %cleanup

do.body26:                                        ; preds = %entry
  %neg = xor i64 %mask, -1
  %and28 = and i64 %0, %neg
  store volatile i64 %and28, i64* %expmask, align 8
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 18
  %1 = load i8, i8* %level, align 1
  %conv34 = zext i8 %1 to i32
  %2 = load i32, i32* @rcu_num_lvls, align 4
  %sub = add i32 %2, -1
  %cmp35.not = icmp eq i32 %sub, %conv34
  br i1 %cmp35.not, label %if.end47, label %if.then46, !prof !16

if.then46:                                        ; preds = %do.body26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_exp.h\22; .popsection; .long 14472b - 14470b; .short 243; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !155
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %do.body26
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 15
  %3 = load i32, i32* %grplo, align 8
  %call57 = call fastcc i64 @find_next_bit(i64* noundef nonnull %mask.addr, i64 noundef 0) #24
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 16
  %4 = load i32, i32* %grphi, align 4
  %.pn101 = trunc i64 %call57 to i32
  %cpu.0102 = add i32 %3, %.pn101
  %cmp59.not103 = icmp sgt i32 %cpu.0102, %4
  br i1 %cmp59.not103, label %for.end, label %do.body61.lr.ph

do.body61.lr.ph:                                  ; preds = %if.end47
  %add69 = sub i32 1, %3
  br label %do.body61

do.body61:                                        ; preds = %do.body61.lr.ph, %do.body61
  %cpu.0104 = phi i32 [ %cpu.0102, %do.body61.lr.ph ], [ %cpu.0, %do.body61 ]
  %sub71 = add i32 %add69, %cpu.0104
  %conv72 = sext i32 %sub71 to i64
  %call73 = call fastcc i64 @find_next_bit(i64* noundef nonnull %mask.addr, i64 noundef %conv72) #24
  %.pn = trunc i64 %call73 to i32
  %cpu.0 = add i32 %3, %.pn
  %cmp59.not = icmp sgt i32 %cpu.0, %4
  br i1 %cmp59.not, label %for.end, label %do.body61

for.end:                                          ; preds = %do.body61, %if.end47
  call fastcc void @__rcu_report_exp_rnp(%struct.rcu_node* noundef %rnp, i1 noundef %wake, i64 noundef %call) #24
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_report_exp_rnp(%struct.rcu_node* noundef %rnp, i1 noundef %wake, i64 noundef %flags) unnamed_addr #1 {
entry:
  %call103 = call fastcc i1 @sync_rcu_exp_done(%struct.rcu_node* noundef %rnp) #24
  br i1 %call103, label %if.end12, label %if.then

if.then:                                          ; preds = %if.end62, %entry
  %rnp.addr.0.lcssa = phi %struct.rcu_node* [ %rnp, %entry ], [ %3, %if.end62 ]
  %expmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0.lcssa, i64 0, i32 9
  %0 = load i64, i64* %expmask, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.then1, label %do.body6

if.then1:                                         ; preds = %if.then
  call fastcc void @rcu_initiate_boost(%struct.rcu_node* noundef %rnp.addr.0.lcssa, i64 noundef %flags) #24
  br label %for.end

do.body6:                                         ; preds = %if.then
  %lock7 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0.lcssa, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock7, i64 noundef %flags) #24
  br label %for.end

if.end12:                                         ; preds = %entry, %if.end62
  %rnp.addr.0104 = phi %struct.rcu_node* [ %3, %if.end62 ], [ %rnp, %entry ]
  %parent = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0104, i64 0, i32 20
  %1 = load %struct.rcu_node*, %struct.rcu_node** %parent, align 8
  %cmp13 = icmp eq %struct.rcu_node* %1, null
  br i1 %cmp13, label %do.body20, label %if.end34

do.body20:                                        ; preds = %if.end12
  %lock26 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0104, i64 0, i32 0
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock26, i64 noundef %flags) #24
  br i1 %wake, label %if.then32, label %for.end

if.then32:                                        ; preds = %do.body20
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !156
  call void @swake_up_one(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 22)) #28
  br label %for.end

if.end34:                                         ; preds = %if.end12
  %grpmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0104, i64 0, i32 14
  %2 = load i64, i64* %grpmask, align 16
  %lock39 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.addr.0104, i64 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock39) #24
  %3 = load %struct.rcu_node*, %struct.rcu_node** %parent, align 8
  %lock44 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock44) #24
  %expmask50 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %3, i64 0, i32 9
  %4 = load i64, i64* %expmask50, align 8
  %and = and i64 %4, %2
  %tobool51.not = icmp eq i64 %and, 0
  br i1 %tobool51.not, label %if.then61, label %if.end62, !prof !13

if.then61:                                        ; preds = %if.end34
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_exp.h\22; .popsection; .long 14472b - 14470b; .short 209; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !157
  %.pre = load i64, i64* %expmask50, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end34
  %5 = phi i64 [ %.pre, %if.then61 ], [ %4, %if.end34 ]
  %neg = xor i64 %2, -1
  %and77 = and i64 %5, %neg
  store volatile i64 %and77, i64* %expmask50, align 8
  %call = call fastcc i1 @sync_rcu_exp_done(%struct.rcu_node* noundef %3) #24
  br i1 %call, label %if.end12, label %if.then

for.end:                                          ; preds = %do.body20, %if.then32, %if.then1, %do.body6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @sync_rcu_exp_done(%struct.rcu_node* noundef %rnp) unnamed_addr #6 {
entry:
  %exp_tasks = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 23
  %0 = load volatile %struct.list_head*, %struct.list_head** %exp_tasks, align 8
  %cmp = icmp eq %struct.list_head* %0, null
  br i1 %cmp, label %do.end4, label %land.end

do.end4:                                          ; preds = %entry
  %expmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 9
  %1 = load volatile i64, i64* %expmask, align 8
  %cmp6 = icmp eq i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %do.end4, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp6, %do.end4 ]
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_exp_need_qs() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (i8* getelementptr (%struct.anon.81, %struct.anon.81* bitcast (%union.rcu_noqs* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 2) to %struct.anon.81*), i64 0, i32 1) to i64)
  %0 = inttoptr i64 %add to i8*
  store i8 1, i8* %0, align 1
  %call16 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add17 = add i64 %call16, ptrtoint (i8* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 24) to i64)
  %1 = inttoptr i64 %add17 to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %1, i8 1) #26, !srcloc !158
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #25, !srcloc !8
  %3 = inttoptr i64 %2 to %struct.task_struct*
  call fastcc void @set_tsk_need_resched(%struct.task_struct* noundef %3) #24
  call fastcc void @set_preempt_need_resched() #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_exp_handler(i8* nocapture noundef readnone %unused) #1 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #24
  %add = add i64 %call, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %0 = inttoptr i64 %add to %struct.rcu_data*
  %mynode = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 8
  %1 = load %struct.rcu_node*, %struct.rcu_node** %mynode, align 8
  %expmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %1, i64 0, i32 9
  %2 = load volatile i64, i64* %expmask, align 8
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %0, i64 0, i32 9
  %3 = load i64, i64* %grpmask, align 8
  %and = and i64 %3, %2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call19 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add20 = add i64 %call19, ptrtoint (i8* getelementptr (%struct.anon.81, %struct.anon.81* bitcast (%union.rcu_noqs* getelementptr inbounds (%struct.rcu_data, %struct.rcu_data* @rcu_data, i64 0, i32 2) to %struct.anon.81*), i64 0, i32 1) to i64)
  %4 = inttoptr i64 %add20 to i8*
  %5 = load i8, i8* %4, align 1
  %tobool22.not = icmp eq i8 %5, 0
  br i1 %tobool22.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call23 = call fastcc i32 @rcu_is_cpu_rrupt_from_idle() #24
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end35, label %do.body26

do.body26:                                        ; preds = %if.end
  %call33 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add34 = add i64 %call33, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %6 = inttoptr i64 %add34 to %struct.rcu_data*
  call fastcc void @rcu_report_exp_rdp(%struct.rcu_data* noundef %6) #24
  br label %cleanup

if.end35:                                         ; preds = %if.end
  call fastcc void @rcu_exp_need_qs() #24
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end35, %do.body26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_exp_gp_seq_start() unnamed_addr #1 {
entry:
  call fastcc void @rcu_seq_start(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 20)) #24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sync_rcu_exp_select_cpus() unnamed_addr #1 {
entry:
  call fastcc void @sync_exp_reset_tree() #24
  %0 = load i32, i32* @rcu_num_lvls, align 4
  %sub = add i32 %0, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom
  %1 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx, align 8
  %2 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom285 = sext i32 %2 to i64
  %arrayidx386 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom285
  %cmp87 = icmp ult %struct.rcu_node* %1, %arrayidx386
  br i1 %cmp87, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %3 = phi i32 [ %10, %for.inc ], [ %2, %entry ]
  %rnp.088 = phi %struct.rcu_node* [ %incdec.ptr, %for.inc ], [ %1, %entry ]
  %exp_need_flush = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 0, i32 37
  store i8 0, i8* %exp_need_flush, align 8
  %expmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 0, i32 9
  %4 = load volatile i64, i64* %expmask, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %for.inc, label %do.end6

do.end6:                                          ; preds = %for.body
  %5 = load volatile %struct.workqueue_struct*, %struct.workqueue_struct** @rcu_par_gp_wq, align 8
  %tobool8 = icmp eq %struct.workqueue_struct* %5, null
  %6 = load i32, i32* @rcu_scheduler_active, align 4
  %cmp9 = icmp ne i32 %6, 2
  %or.cond = select i1 %tobool8, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then15, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %do.end6
  %sub11 = add i32 %3, -1
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom12
  %cmp14 = icmp eq %struct.rcu_node* %rnp.088, %arrayidx13
  br i1 %cmp14, label %if.then15, label %do.body17

if.then15:                                        ; preds = %lor.lhs.false10, %do.end6
  %rew_work = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 0, i32 36, i32 1
  call void @sync_rcu_exp_select_node_cpus(%struct.work_struct* noundef %rew_work) #24
  br label %for.inc

do.body17:                                        ; preds = %lor.lhs.false10
  %rew_work19 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 0, i32 36, i32 1
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 0, i32 36, i32 1, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry24 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 0, i32 36, i32 1, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry24) #24
  %func = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 0, i32 36, i32 1, i32 2
  store void (%struct.work_struct*)* @sync_rcu_exp_select_node_cpus, void (%struct.work_struct*)** %func, align 8
  %ffmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 0, i32 13
  %call29 = call fastcc i64 @find_next_bit(i64* noundef %ffmask, i64 noundef -1) #24
  %conv = trunc i64 %call29 to i32
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 0, i32 16
  %7 = load i32, i32* %grphi, align 4
  %grplo = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 0, i32 15
  %8 = load i32, i32* %grplo, align 8
  %sub30 = sub i32 %7, %8
  %cmp31 = icmp slt i32 %sub30, %conv
  %add = add i32 %8, %conv
  %cpu.0 = select i1 %cmp31, i32 256, i32 %add, !prof !13
  %9 = load %struct.workqueue_struct*, %struct.workqueue_struct** @rcu_par_gp_wq, align 8
  %call41 = call i1 @queue_work_on(i32 noundef %cpu.0, %struct.workqueue_struct* noundef %9, %struct.work_struct* noundef %rew_work19) #28
  store i8 1, i8* %exp_need_flush, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.body17, %if.then15
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.088, i64 1
  %10 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom2
  %cmp = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx3
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  %idxprom2.le = sext i32 %10 to i64
  %.pre = load i32, i32* @rcu_num_lvls, align 4
  %.pre96 = add i32 %.pre, -1
  %.pre97 = sext i32 %.pre96 to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %idxprom4790.pre-phi = phi i64 [ %idxprom2.le, %for.end.loopexit ], [ %idxprom285, %entry ]
  %idxprom44.pre-phi = phi i64 [ %.pre97, %for.end.loopexit ], [ %idxprom, %entry ]
  %11 = phi i32 [ %10, %for.end.loopexit ], [ %2, %entry ]
  %arrayidx45 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom44.pre-phi
  %12 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx45, align 8
  %arrayidx4891 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom4790.pre-phi
  %cmp4992 = icmp ult %struct.rcu_node* %12, %arrayidx4891
  br i1 %cmp4992, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.end, %for.inc59
  %13 = phi i32 [ %15, %for.inc59 ], [ %11, %for.end ]
  %rnp.193 = phi %struct.rcu_node* [ %incdec.ptr60, %for.inc59 ], [ %12, %for.end ]
  %exp_need_flush52 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.193, i64 0, i32 37
  %14 = load i8, i8* %exp_need_flush52, align 8, !range !30
  %tobool53.not = icmp eq i8 %14, 0
  br i1 %tobool53.not, label %for.inc59, label %if.then54

if.then54:                                        ; preds = %for.body51
  %rew_work56 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.193, i64 0, i32 36, i32 1
  %call57 = call i1 @flush_work(%struct.work_struct* noundef %rew_work56) #28
  %.pre95 = load i32, i32* @rcu_num_nodes, align 4
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51, %if.then54
  %15 = phi i32 [ %13, %for.body51 ], [ %.pre95, %if.then54 ]
  %incdec.ptr60 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.193, i64 1
  %idxprom47 = sext i32 %15 to i64
  %arrayidx48 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom47
  %cmp49 = icmp ult %struct.rcu_node* %incdec.ptr60, %arrayidx48
  br i1 %cmp49, label %for.body51, label %for.end61

for.end61:                                        ; preds = %for.inc59, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_exp_wait_wake(i64 noundef %s) unnamed_addr #1 {
entry:
  call fastcc void @synchronize_rcu_expedited_wait() #24
  call void @mutex_lock(%struct.mutex* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 19)) #28
  call fastcc void @rcu_exp_gp_seq_end() #24
  %0 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom33 = sext i32 %0 to i64
  %arrayidx34 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom33
  %cmp35 = icmp ugt %struct.rcu_node* %arrayidx34, getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)
  br i1 %cmp35, label %do.end, label %for.end

do.end:                                           ; preds = %entry, %if.end17
  %rnp.036 = phi %struct.rcu_node* [ %incdec.ptr, %if.end17 ], [ getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0), %entry ]
  %exp_seq_rq = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.036, i64 0, i32 34
  %1 = load volatile i64, i64* %exp_seq_rq, align 8
  %sub = sub i64 %1, %s
  %cmp1 = icmp slt i64 %sub, 0
  br i1 %cmp1, label %if.then, label %if.end17

if.then:                                          ; preds = %do.end
  %rlock.i = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.036, i64 0, i32 33, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #28
  %2 = load i64, i64* %exp_seq_rq, align 8
  %sub3 = sub i64 %2, %s
  %cmp4 = icmp slt i64 %sub3, 0
  br i1 %cmp4, label %do.body10, label %if.end

do.body10:                                        ; preds = %if.then
  store volatile i64 %s, i64* %exp_seq_rq, align 8
  br label %if.end

if.end:                                           ; preds = %do.body10, %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #28
  br label %if.end17

if.end17:                                         ; preds = %if.end, %do.end
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !159
  %call = call fastcc i64 @rcu_seq_ctr(i64 noundef %s) #24
  %and = and i64 %call, 3
  %arrayidx18 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.036, i64 0, i32 35, i64 %and
  call void @__wake_up(%struct.wait_queue_head* noundef %arrayidx18, i32 noundef 3, i32 noundef 0, i8* noundef null) #28
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.036, i64 1
  %3 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom
  %cmp = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx
  br i1 %cmp, label %do.end, label %for.end

for.end:                                          ; preds = %if.end17, %entry
  call void @mutex_unlock(%struct.mutex* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 19)) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sync_exp_reset_tree() unnamed_addr #1 {
entry:
  call fastcc void @sync_exp_reset_tree_hotplug() #24
  %0 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom59 = sext i32 %0 to i64
  %arrayidx60 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom59
  %cmp61 = icmp ugt %struct.rcu_node* %arrayidx60, getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)
  br i1 %cmp61, label %do.body1, label %for.end

do.body1:                                         ; preds = %entry, %if.end
  %rnp.062 = phi %struct.rcu_node* [ %incdec.ptr, %if.end ], [ getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0), %entry ]
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.062, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %expmask = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.062, i64 0, i32 9
  %1 = load i64, i64* %expmask, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %do.body1
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_exp.h\22; .popsection; .long 14472b - 14470b; .short 138; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !160
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body1
  %expmaskinit = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.062, i64 0, i32 10
  %2 = load i64, i64* %expmaskinit, align 16
  store volatile i64 %2, i64* %expmask, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.062, i64 1
  %3 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom
  %cmp = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx
  br i1 %cmp, label %do.body1, label %for.end

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @sync_rcu_exp_select_node_cpus(%struct.work_struct* noundef %wp) #1 {
entry:
  %mask_ofl_ipi = alloca i64, align 8
  %0 = bitcast i64* %mask_ofl_ipi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #26
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %wp, i64 -1, i32 2
  %add.ptr6336 = getelementptr void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 -54
  %1 = bitcast void (%struct.work_struct*)** %add.ptr6336 to %struct.rcu_node*
  %lock = bitcast void (%struct.work_struct*)** %add.ptr6336 to %struct.raw_spinlock*
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %level = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %1, i64 0, i32 18
  %2 = load i8, i8* %level, align 1
  %conv17 = zext i8 %2 to i32
  %3 = load i32, i32* @rcu_num_lvls, align 4
  %sub = add i32 %3, -1
  %cmp18.not = icmp eq i32 %sub, %conv17
  br i1 %cmp18.not, label %if.end, label %if.then, !prof !16

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_exp.h\22; .popsection; .long 14472b - 14470b; .short 352; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !161
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %grplo = getelementptr void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 -39
  %4 = bitcast void (%struct.work_struct*)** %grplo to i32*
  %5 = load i32, i32* %4, align 8
  %expmask = getelementptr void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 -45
  %6 = bitcast void (%struct.work_struct*)** %expmask to i64*
  %call37 = call fastcc i64 @find_next_bit(i64* noundef %6, i64 noundef 0) #24
  %7 = trunc i64 %call37 to i32
  %conv38 = add i32 %5, %7
  %grphi = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %1, i64 0, i32 16
  %8 = load i32, i32* %grphi, align 4
  %cmp39.not342 = icmp sgt i32 %conv38, %8
  br i1 %cmp39.not342, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %qsmaskinitnext = getelementptr void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 -47
  %9 = bitcast void (%struct.work_struct*)** %qsmaskinitnext to i64*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end66
  %cpu.0345 = phi i32 [ %conv38, %for.body.lr.ph ], [ %conv76, %if.end66 ]
  %mask_ofl_test.0343 = phi i64 [ 0, %for.body.lr.ph ], [ %mask_ofl_test.1, %if.end66 ]
  %idxprom = sext i32 %cpu.0345 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8
  %add46 = add i64 %10, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %11 = inttoptr i64 %add46 to %struct.rcu_data*
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %11, i64 0, i32 9
  %12 = load i64, i64* %grpmask, align 8
  %call54 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add55 = add i64 %call54, ptrtoint (i32* @cpu_number to i64)
  %13 = inttoptr i64 %add55 to i32*
  %14 = load i32, i32* %13, align 4
  %cmp56 = icmp eq i32 %14, %cpu.0345
  br i1 %cmp56, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i64, i64* %9, align 8
  %and = and i64 %15, %12
  %tobool58.not = icmp eq i64 %and, 0
  br i1 %tobool58.not, label %if.then59, label %if.else

if.then59:                                        ; preds = %lor.lhs.false, %for.body
  %or = or i64 %12, %mask_ofl_test.0343
  br label %if.end66

if.else:                                          ; preds = %lor.lhs.false
  %call60 = call fastcc i32 @rcu_dynticks_snap(%struct.rcu_data* noundef %11) #24
  %call61 = call fastcc i1 @rcu_dynticks_in_eqs(i32 noundef %call60) #24
  br i1 %call61, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.else
  %or63 = or i64 %12, %mask_ofl_test.0343
  br label %if.end66

if.else64:                                        ; preds = %if.else
  %exp_dynticks_snap = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %11, i64 0, i32 28
  store i32 %call60, i32* %exp_dynticks_snap, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.else64, %if.then59
  %mask_ofl_test.1 = phi i64 [ %or, %if.then59 ], [ %or63, %if.then62 ], [ %mask_ofl_test.0343, %if.else64 ]
  %16 = load i32, i32* %4, align 8
  %add70 = add i32 %cpu.0345, 1
  %sub72 = sub i32 %add70, %16
  %conv73 = sext i32 %sub72 to i64
  %call74 = call fastcc i64 @find_next_bit(i64* noundef %6, i64 noundef %conv73) #24
  %17 = trunc i64 %call74 to i32
  %conv76 = add i32 %16, %17
  %18 = load i32, i32* %grphi, align 4
  %cmp39.not = icmp sgt i32 %conv76, %18
  br i1 %cmp39.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end66, %if.end
  %mask_ofl_test.0.lcssa = phi i64 [ 0, %if.end ], [ %mask_ofl_test.1, %if.end66 ]
  %19 = load i64, i64* %6, align 8
  %neg = xor i64 %mask_ofl_test.0.lcssa, -1
  %and78 = and i64 %19, %neg
  store i64 %and78, i64* %mask_ofl_ipi, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  %20 = load i8, i8* %level, align 1
  %conv108 = zext i8 %20 to i32
  %21 = load i32, i32* @rcu_num_lvls, align 4
  %sub109 = add i32 %21, -1
  %cmp110.not = icmp eq i32 %sub109, %conv108
  br i1 %cmp110.not, label %if.end127, label %if.then126, !prof !16

if.then126:                                       ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_exp.h\22; .popsection; .long 14472b - 14470b; .short 380; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !162
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %for.end
  %22 = load i32, i32* %4, align 8
  %call138 = call fastcc i64 @find_next_bit(i64* noundef nonnull %mask_ofl_ipi, i64 noundef 0) #24
  %23 = trunc i64 %call138 to i32
  %conv140 = add i32 %22, %23
  %24 = load i32, i32* %grphi, align 4
  %cmp143.not347 = icmp sgt i32 %conv140, %24
  br i1 %cmp143.not347, label %for.end255, label %for.body145.lr.ph

for.body145.lr.ph:                                ; preds = %if.end127
  %qsmaskinitnext198 = getelementptr void (%struct.work_struct*)*, void (%struct.work_struct*)** %add.ptr, i64 -47
  %25 = bitcast void (%struct.work_struct*)** %qsmaskinitnext198 to i64*
  br label %for.body145

for.body145:                                      ; preds = %for.body145.lr.ph, %cleanup
  %cpu.1351 = phi i32 [ %conv140, %for.body145.lr.ph ], [ %conv254, %cleanup ]
  %mask_ofl_test.2348 = phi i64 [ %mask_ofl_test.0.lcssa, %for.body145.lr.ph ], [ %mask_ofl_test.4, %cleanup ]
  %idxprom154 = sext i32 %cpu.1351 to i64
  %arrayidx155 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom154
  %26 = load i64, i64* %arrayidx155, align 8
  %add156 = add i64 %26, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %27 = inttoptr i64 %add156 to %struct.rcu_data*
  %grpmask158 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %27, i64 0, i32 9
  %28 = load i64, i64* %grpmask158, align 8
  %exp_dynticks_snap159 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %27, i64 0, i32 28
  %29 = load i32, i32* %exp_dynticks_snap159, align 8
  %call160346 = call fastcc i1 @rcu_dynticks_in_eqs_since(%struct.rcu_data* noundef %27, i32 noundef %29) #24
  br i1 %call160346, label %if.then161, label %if.end163

if.then161:                                       ; preds = %do.body209, %for.body145
  %or162 = or i64 %28, %mask_ofl_test.2348
  br label %cleanup

if.end163:                                        ; preds = %for.body145, %do.body209
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !163
  %call172 = call fastcc i64 @__kern_my_cpu_offset() #24
  %add173 = add i64 %call172, ptrtoint (i32* @cpu_number to i64)
  %30 = inttoptr i64 %add173 to i32*
  %31 = load i32, i32* %30, align 4
  %cmp174 = icmp eq i32 %31, %cpu.1351
  br i1 %cmp174, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end163
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !164
  br label %cleanup

if.end177:                                        ; preds = %if.end163
  %call178 = call i32 @smp_call_function_single(i32 noundef %cpu.1351, void (i8*)* noundef nonnull @rcu_exp_handler, i8* noundef null, i32 noundef 0) #28
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !165
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %cleanup, label %do.body183

do.body183:                                       ; preds = %if.end177
  %call190 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %32 = load i64, i64* %25, align 8
  %and199 = and i64 %32, %28
  %tobool200.not = icmp eq i64 %and199, 0
  %.pre = load i64, i64* %6, align 8
  %.pre357 = and i64 %.pre, %28
  %tobool225.not = icmp eq i64 %.pre357, 0
  br i1 %tobool200.not, label %if.end222, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body183
  br i1 %tobool225.not, label %if.end222.thread, label %do.body209

do.body209:                                       ; preds = %land.lhs.true
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call190) #24
  %call221 = call i64 @schedule_timeout_idle(i64 noundef 1) #28
  %33 = load i32, i32* %exp_dynticks_snap159, align 8
  %call160 = call fastcc i1 @rcu_dynticks_in_eqs_since(%struct.rcu_data* noundef %27, i32 noundef %33) #24
  br i1 %call160, label %if.then161, label %if.end163

if.end222:                                        ; preds = %do.body183
  br i1 %tobool225.not, label %if.end222.thread, label %34

if.end222.thread:                                 ; preds = %land.lhs.true, %if.end222
  br label %34

34:                                               ; preds = %if.end222, %if.end222.thread
  %35 = phi i64 [ 0, %if.end222.thread ], [ %28, %if.end222 ]
  %spec.select = or i64 %35, %mask_ofl_test.2348
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call190) #24
  br label %cleanup

cleanup:                                          ; preds = %if.end177, %34, %if.then176, %if.then161
  %mask_ofl_test.4 = phi i64 [ %or162, %if.then161 ], [ %mask_ofl_test.2348, %if.then176 ], [ %spec.select, %34 ], [ %mask_ofl_test.2348, %if.end177 ]
  %36 = load i32, i32* %4, align 8
  %add248 = add i32 %cpu.1351, 1
  %sub250 = sub i32 %add248, %36
  %conv251 = sext i32 %sub250 to i64
  %call252 = call fastcc i64 @find_next_bit(i64* noundef nonnull %mask_ofl_ipi, i64 noundef %conv251) #24
  %37 = trunc i64 %call252 to i32
  %conv254 = add i32 %36, %37
  %38 = load i32, i32* %grphi, align 4
  %cmp143.not = icmp sgt i32 %conv254, %38
  br i1 %cmp143.not, label %for.end255, label %for.body145

for.end255:                                       ; preds = %cleanup, %if.end127
  %mask_ofl_test.2.lcssa = phi i64 [ %mask_ofl_test.0.lcssa, %if.end127 ], [ %mask_ofl_test.4, %cleanup ]
  %tobool256.not = icmp eq i64 %mask_ofl_test.2.lcssa, 0
  br i1 %tobool256.not, label %if.end258, label %if.then257

if.then257:                                       ; preds = %for.end255
  call fastcc void @rcu_report_exp_cpu_mult(%struct.rcu_node* noundef %1, i64 noundef %mask_ofl_test.2.lcssa, i1 noundef false) #24
  br label %if.end258

if.end258:                                        ; preds = %if.then257, %for.end255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @flush_work(%struct.work_struct* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sync_exp_reset_tree_hotplug() unnamed_addr #1 {
entry:
  %0 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 2)) #26, !srcloc !166
  %1 = load i32, i32* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 23), align 8
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %cleanup, label %if.end, !prof !16

if.end:                                           ; preds = %entry
  store i32 %0, i32* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 23), align 8
  %2 = load i32, i32* @rcu_num_lvls, align 4
  %sub = add i32 %2, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom
  %3 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx, align 8
  %4 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom2140 = sext i32 %4 to i64
  %arrayidx3141 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom2140
  %cmp4142 = icmp ult %struct.rcu_node* %3, %arrayidx3141
  br i1 %cmp4142, label %do.body7, label %cleanup

do.body7:                                         ; preds = %if.end, %for.inc
  %rnp.0143 = phi %struct.rcu_node* [ %incdec.ptr, %for.inc ], [ %3, %if.end ]
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0143, i64 0, i32 0
  %call11 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %expmaskinit = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0143, i64 0, i32 10
  %5 = load i64, i64* %expmaskinit, align 16
  %expmaskinitnext = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0143, i64 0, i32 11
  %6 = load i64, i64* %expmaskinitnext, align 8
  %cmp19 = icmp eq i64 %5, %6
  br i1 %cmp19, label %do.body26, label %if.end37

do.body26:                                        ; preds = %do.body7
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call11) #24
  br label %for.inc

if.end37:                                         ; preds = %do.body7
  store i64 %6, i64* %expmaskinit, align 16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call11) #24
  %tobool56.not = icmp eq i64 %5, 0
  br i1 %tobool56.not, label %while.cond, label %for.inc

while.cond:                                       ; preds = %if.end37, %do.body61
  %rnp.0.pn = phi %struct.rcu_node* [ %rnp_up.0, %do.body61 ], [ %rnp.0143, %if.end37 ]
  %rnp_up.0.in = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0.pn, i64 0, i32 20
  %rnp_up.0 = load %struct.rcu_node*, %struct.rcu_node** %rnp_up.0.in, align 8
  %tobool59.not = icmp eq %struct.rcu_node* %rnp_up.0, null
  br i1 %tobool59.not, label %for.inc, label %do.body61

do.body61:                                        ; preds = %while.cond
  %mask.0.in = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.0.pn, i64 0, i32 14
  %mask.0 = load i64, i64* %mask.0.in, align 16
  %lock67 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp_up.0, i64 0, i32 0
  %call68 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock67) #24
  %expmaskinit76 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp_up.0, i64 0, i32 10
  %7 = load i64, i64* %expmaskinit76, align 16
  %tobool77.not.not = icmp eq i64 %7, 0
  %or = or i64 %7, %mask.0
  store i64 %or, i64* %expmaskinit76, align 16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock67, i64 noundef %call68) #24
  br i1 %tobool77.not.not, label %while.cond, label %for.inc

for.inc:                                          ; preds = %while.cond, %do.body61, %if.end37, %do.body26
  %incdec.ptr = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.0143, i64 1
  %8 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom2
  %cmp4 = icmp ult %struct.rcu_node* %incdec.ptr, %arrayidx3
  br i1 %cmp4, label %do.body7, label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @synchronize_rcu_expedited_wait() unnamed_addr #1 {
entry:
  %call2 = call i32 @rcu_jiffies_till_stall_check() #24
  %0 = load volatile i64, i64* @jiffies, align 64
  br label %for.cond89.outer

for.cond89.outer:                                 ; preds = %for.end348, %entry
  %jiffies_stall.0.ph.in = phi i32 [ %add350, %for.end348 ], [ %call2, %entry ]
  %jiffies_stall.0.ph = zext i32 %jiffies_stall.0.ph.in to i64
  br label %for.cond89

for.cond89:                                       ; preds = %for.cond89.outer, %if.end92
  %call90 = call fastcc i1 @synchronize_rcu_expedited_wait_once(i64 noundef %jiffies_stall.0.ph) #24
  br i1 %call90, label %cleanup352, label %if.end92

if.end92:                                         ; preds = %for.cond89
  %call93 = call fastcc i1 @rcu_stall_is_suppressed() #24
  br i1 %call93, label %for.cond89, label %if.end95

if.end95:                                         ; preds = %if.end92
  call fastcc void @panic_on_rcu_stall() #24
  %1 = load i8*, i8** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 36), align 32
  %call100 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.159, i64 0, i64 0), i8* noundef %1) #30
  %2 = load i32, i32* @rcu_num_lvls, align 4
  %sub101 = add i32 %2, -1
  %idxprom102 = sext i32 %sub101 to i64
  %arrayidx103 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom102
  %3 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx103, align 8
  %4 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom105445 = sext i32 %4 to i64
  %arrayidx106446 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom105445
  %cmp107447 = icmp ult %struct.rcu_node* %3, %arrayidx106446
  br i1 %cmp107447, label %for.body109, label %do.end211

for.body109:                                      ; preds = %if.end95, %for.inc206.for.body109_crit_edge
  %5 = phi i32 [ %.pre, %for.inc206.for.body109_crit_edge ], [ %2, %if.end95 ]
  %ndetected.0450 = phi i32 [ %ndetected.1.lcssa, %for.inc206.for.body109_crit_edge ], [ 0, %if.end95 ]
  %rnp.1448 = phi %struct.rcu_node* [ %incdec.ptr207, %for.inc206.for.body109_crit_edge ], [ %3, %if.end95 ]
  %level113 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1448, i64 0, i32 18
  %6 = load i8, i8* %level113, align 1
  %conv114 = zext i8 %6 to i32
  %sub115 = add i32 %5, -1
  %cmp116.not = icmp eq i32 %sub115, %conv114
  br i1 %cmp116.not, label %if.end133, label %if.then132, !prof !16

if.then132:                                       ; preds = %for.body109
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_exp.h\22; .popsection; .long 14472b - 14470b; .short 530; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !167
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %for.body109
  %grplo142 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1448, i64 0, i32 15
  %7 = load i32, i32* %grplo142, align 8
  %sub143 = add i32 %7, -1
  %call144 = call i32 @cpumask_next(i32 noundef %sub143, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %grphi146 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1448, i64 0, i32 16
  %8 = load i32, i32* %grphi146, align 4
  %cmp147.not441 = icmp sgt i32 %call144, %8
  br i1 %cmp147.not441, label %for.inc206, label %for.body149.lr.ph

for.body149.lr.ph:                                ; preds = %if.end133
  %expmask157 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1448, i64 0, i32 9
  %expmaskinit = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1448, i64 0, i32 10
  %expmaskinitnext = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.1448, i64 0, i32 11
  br label %for.body149

for.body149:                                      ; preds = %cleanup.for.body149_crit_edge, %for.body149.lr.ph
  %9 = phi i32 [ %8, %for.body149.lr.ph ], [ %23, %cleanup.for.body149_crit_edge ]
  %10 = phi i32 [ %7, %for.body149.lr.ph ], [ %.pre465, %cleanup.for.body149_crit_edge ]
  %cpu.1443 = phi i32 [ %call144, %for.body149.lr.ph ], [ %call204, %cleanup.for.body149_crit_edge ]
  %ndetected.1442 = phi i32 [ %ndetected.0450, %for.body149.lr.ph ], [ %ndetected.2, %cleanup.for.body149_crit_edge ]
  %sub152 = sub i32 %cpu.1443, %10
  %sh_prom = zext i32 %sub152 to i64
  %shl = shl nuw i64 1, %sh_prom
  %11 = load volatile i64, i64* %expmask157, align 8
  %and = and i64 %shl, %11
  %tobool158.not = icmp eq i64 %and, 0
  br i1 %tobool158.not, label %cleanup, label %if.end160

if.end160:                                        ; preds = %for.body149
  %inc = add i32 %ndetected.1442, 1
  %idxprom168 = sext i32 %cpu.1443 to i64
  %arrayidx169 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom168
  %12 = load i64, i64* %arrayidx169, align 8
  %add170 = add i64 %12, ptrtoint (%struct.rcu_data* @rcu_data to i64)
  %13 = inttoptr i64 %add170 to %struct.rcu_data*
  %call175 = call fastcc i1 @cpu_online(i32 noundef %cpu.1443) #24
  %14 = zext i1 %call175 to i64
  %arrayidx181 = getelementptr [3 x i8], [3 x i8]* @.str.62, i64 0, i64 %14
  %15 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %15 to i32
  %grpmask = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %13, i64 0, i32 9
  %16 = load i64, i64* %grpmask, align 8
  %17 = load i64, i64* %expmaskinit, align 16
  %and183 = and i64 %17, %16
  %tobool184 = icmp ne i64 %and183, 0
  %18 = zext i1 %tobool184 to i64
  %arrayidx190 = getelementptr [3 x i8], [3 x i8]* @.str.63, i64 0, i64 %18
  %19 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %19 to i32
  %20 = load i64, i64* %expmaskinitnext, align 8
  %and193 = and i64 %20, %16
  %tobool194 = icmp ne i64 %and193, 0
  %21 = zext i1 %tobool194 to i64
  %arrayidx200 = getelementptr [3 x i8], [3 x i8]* @.str.64, i64 0, i64 %21
  %22 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %22 to i32
  %call202 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.160, i64 0, i64 0), i32 noundef %cpu.1443, i32 noundef %conv182, i32 noundef %conv191, i32 noundef %conv201) #30
  %.pre466 = load i32, i32* %grphi146, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body149, %if.end160
  %23 = phi i32 [ %.pre466, %if.end160 ], [ %9, %for.body149 ]
  %ndetected.2 = phi i32 [ %inc, %if.end160 ], [ %ndetected.1442, %for.body149 ]
  %call204 = call i32 @cpumask_next(i32 noundef %cpu.1443, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %cmp147.not = icmp sgt i32 %call204, %23
  br i1 %cmp147.not, label %for.inc206, label %cleanup.for.body149_crit_edge

cleanup.for.body149_crit_edge:                    ; preds = %cleanup
  %.pre465 = load i32, i32* %grplo142, align 8
  br label %for.body149

for.inc206:                                       ; preds = %cleanup, %if.end133
  %ndetected.1.lcssa = phi i32 [ %ndetected.0450, %if.end133 ], [ %ndetected.2, %cleanup ]
  %incdec.ptr207 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.1448, i64 1
  %24 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom105 = sext i32 %24 to i64
  %arrayidx106 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom105
  %cmp107 = icmp ult %struct.rcu_node* %incdec.ptr207, %arrayidx106
  br i1 %cmp107, label %for.inc206.for.body109_crit_edge, label %do.end211

for.inc206.for.body109_crit_edge:                 ; preds = %for.inc206
  %.pre = load i32, i32* @rcu_num_lvls, align 4
  br label %for.body109

do.end211:                                        ; preds = %for.inc206, %if.end95
  %ndetected.0.lcssa = phi i32 [ 0, %if.end95 ], [ %ndetected.1.lcssa, %for.inc206 ]
  %25 = load volatile i64, i64* @jiffies, align 64
  %sub213 = sub i64 %25, %0
  %26 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 20), align 32
  %27 = load i64, i64* getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 9), align 8
  %28 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0, i32 23), align 8
  %tobool220 = icmp ne %struct.list_head* %28, null
  %29 = zext i1 %tobool220 to i64
  %arrayidx226 = getelementptr [3 x i8], [3 x i8]* @.str.162, i64 0, i64 %29
  %30 = load i8, i8* %arrayidx226, align 1
  %conv227 = zext i8 %30 to i32
  %call228 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.161, i64 0, i64 0), i64 noundef %sub213, i64 noundef %26, i64 noundef %27, i32 noundef %conv227) #30
  %tobool229.not = icmp eq i32 %ndetected.0.lcssa, 0
  br i1 %tobool229.not, label %if.end282, label %do.end233

do.end233:                                        ; preds = %do.end211
  %call235 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.163, i64 0, i64 0)) #30
  %31 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom237452 = sext i32 %31 to i64
  %arrayidx238453 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom237452
  %cmp239454 = icmp ugt %struct.rcu_node* %arrayidx238453, getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)
  br i1 %cmp239454, label %for.body241, label %do.end279

for.body241:                                      ; preds = %do.end233, %for.inc274
  %rnp.2455 = phi %struct.rcu_node* [ %incdec.ptr275, %for.inc274 ], [ getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0), %do.end233 ]
  %cmp242 = icmp eq %struct.rcu_node* %rnp.2455, getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)
  br i1 %cmp242, label %for.inc274, label %if.end245

if.end245:                                        ; preds = %for.body241
  %call246 = call fastcc i1 @sync_rcu_exp_done_unlocked(%struct.rcu_node* noundef %rnp.2455) #24
  br i1 %call246, label %for.inc274, label %do.end251

do.end251:                                        ; preds = %if.end245
  %level253 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.2455, i64 0, i32 18
  %32 = load i8, i8* %level253, align 1
  %conv254 = zext i8 %32 to i32
  %grplo255 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.2455, i64 0, i32 15
  %33 = load i32, i32* %grplo255, align 8
  %grphi256 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.2455, i64 0, i32 16
  %34 = load i32, i32* %grphi256, align 4
  %expmask259 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.2455, i64 0, i32 9
  %35 = load i64, i64* %expmask259, align 8
  %exp_tasks263 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.2455, i64 0, i32 23
  %36 = load %struct.list_head*, %struct.list_head** %exp_tasks263, align 8
  %tobool265 = icmp ne %struct.list_head* %36, null
  %37 = zext i1 %tobool265 to i64
  %arrayidx271 = getelementptr [3 x i8], [3 x i8]* @.str.162, i64 0, i64 %37
  %38 = load i8, i8* %arrayidx271, align 1
  %conv272 = zext i8 %38 to i32
  %call273 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.164, i64 0, i64 0), i32 noundef %conv254, i32 noundef %33, i32 noundef %34, i64 noundef %35, i32 noundef %conv272) #30
  br label %for.inc274

for.inc274:                                       ; preds = %if.end245, %for.body241, %do.end251
  %incdec.ptr275 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.2455, i64 1
  %39 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom237 = sext i32 %39 to i64
  %arrayidx238 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom237
  %cmp239 = icmp ult %struct.rcu_node* %incdec.ptr275, %arrayidx238
  br i1 %cmp239, label %for.body241, label %do.end279

do.end279:                                        ; preds = %for.inc274, %do.end233
  %call281 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #30
  br label %if.end282

if.end282:                                        ; preds = %do.end279, %do.end211
  %40 = load i32, i32* @rcu_num_lvls, align 4
  %sub283 = add i32 %40, -1
  %idxprom284 = sext i32 %sub283 to i64
  %arrayidx285 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 1, i64 %idxprom284
  %41 = load %struct.rcu_node*, %struct.rcu_node** %arrayidx285, align 8
  %42 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom287460 = sext i32 %42 to i64
  %arrayidx288461 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom287460
  %cmp289462 = icmp ult %struct.rcu_node* %41, %arrayidx288461
  br i1 %cmp289462, label %for.body291, label %for.end348

for.body291:                                      ; preds = %if.end282, %for.inc346.for.body291_crit_edge
  %43 = phi i32 [ %.pre467, %for.inc346.for.body291_crit_edge ], [ %40, %if.end282 ]
  %rnp.3463 = phi %struct.rcu_node* [ %incdec.ptr347, %for.inc346.for.body291_crit_edge ], [ %41, %if.end282 ]
  %level293 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.3463, i64 0, i32 18
  %44 = load i8, i8* %level293, align 1
  %conv294 = zext i8 %44 to i32
  %sub295 = add i32 %43, -1
  %cmp296.not = icmp eq i32 %sub295, %conv294
  br i1 %cmp296.not, label %if.end313, label %if.then312, !prof !16

if.then312:                                       ; preds = %for.body291
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_exp.h\22; .popsection; .long 14472b - 14470b; .short 563; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !168
  br label %if.end313

if.end313:                                        ; preds = %if.then312, %for.body291
  %grplo322 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.3463, i64 0, i32 15
  %45 = load i32, i32* %grplo322, align 8
  %sub323 = add i32 %45, -1
  %call324 = call i32 @cpumask_next(i32 noundef %sub323, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %grphi326 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.3463, i64 0, i32 16
  %46 = load i32, i32* %grphi326, align 4
  %cmp327.not457 = icmp sgt i32 %call324, %46
  br i1 %cmp327.not457, label %for.inc346, label %for.body329.lr.ph

for.body329.lr.ph:                                ; preds = %if.end313
  %expmask338 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp.3463, i64 0, i32 9
  br label %for.body329

for.body329:                                      ; preds = %for.inc343.for.body329_crit_edge, %for.body329.lr.ph
  %47 = phi i32 [ %46, %for.body329.lr.ph ], [ %50, %for.inc343.for.body329_crit_edge ]
  %48 = phi i32 [ %45, %for.body329.lr.ph ], [ %.pre468, %for.inc343.for.body329_crit_edge ]
  %cpu.2458 = phi i32 [ %call324, %for.body329.lr.ph ], [ %call344, %for.inc343.for.body329_crit_edge ]
  %sub331 = sub i32 %cpu.2458, %48
  %sh_prom332 = zext i32 %sub331 to i64
  %shl333 = shl nuw i64 1, %sh_prom332
  %49 = load volatile i64, i64* %expmask338, align 8
  %and339 = and i64 %shl333, %49
  %tobool340.not = icmp eq i64 %and339, 0
  br i1 %tobool340.not, label %for.inc343, label %if.end342

if.end342:                                        ; preds = %for.body329
  call void @dump_cpu_task(i32 noundef %cpu.2458) #28
  %.pre469 = load i32, i32* %grphi326, align 4
  br label %for.inc343

for.inc343:                                       ; preds = %for.body329, %if.end342
  %50 = phi i32 [ %47, %for.body329 ], [ %.pre469, %if.end342 ]
  %call344 = call i32 @cpumask_next(i32 noundef %cpu.2458, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #29
  %cmp327.not = icmp sgt i32 %call344, %50
  br i1 %cmp327.not, label %for.inc346, label %for.inc343.for.body329_crit_edge

for.inc343.for.body329_crit_edge:                 ; preds = %for.inc343
  %.pre468 = load i32, i32* %grplo322, align 8
  br label %for.body329

for.inc346:                                       ; preds = %for.inc343, %if.end313
  %incdec.ptr347 = getelementptr %struct.rcu_node, %struct.rcu_node* %rnp.3463, i64 1
  %51 = load i32, i32* @rcu_num_nodes, align 4
  %idxprom287 = sext i32 %51 to i64
  %arrayidx288 = getelementptr %struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 %idxprom287
  %cmp289 = icmp ult %struct.rcu_node* %incdec.ptr347, %arrayidx288
  br i1 %cmp289, label %for.inc346.for.body291_crit_edge, label %for.end348

for.inc346.for.body291_crit_edge:                 ; preds = %for.inc346
  %.pre467 = load i32, i32* @rcu_num_lvls, align 4
  br label %for.body291

for.end348:                                       ; preds = %for.inc346, %if.end282
  %call349 = call i32 @rcu_jiffies_till_stall_check() #24
  %mul = mul i32 %call349, 3
  %add350 = add i32 %mul, 3
  br label %for.cond89.outer

cleanup352:                                       ; preds = %for.cond89
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_exp_gp_seq_end() unnamed_addr #1 {
entry:
  call fastcc void @rcu_seq_end(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 20)) #24
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !169
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @synchronize_rcu_expedited_wait_once(i64 noundef %tlimit) unnamed_addr #1 {
entry:
  %__wait = alloca %struct.swait_queue, align 8
  %call1 = call fastcc i1 @sync_rcu_exp_done_unlocked(%struct.rcu_node* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)) #24
  br i1 %call1, label %if.end29, label %if.then6

if.then6:                                         ; preds = %entry
  %0 = bitcast %struct.swait_queue* %__wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #26
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !39
  %task_list = getelementptr inbounds %struct.swait_queue, %struct.swait_queue* %__wait, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %task_list) #24
  %call883 = call i64 @prepare_to_swait_event(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 22), %struct.swait_queue* noundef nonnull %__wait, i32 noundef 2) #28
  %call1084 = call fastcc i1 @sync_rcu_exp_done_unlocked(%struct.rcu_node* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)) #24
  %tobool1486 = icmp eq i64 %tlimit, 0
  %1 = and i1 %call1084, %tobool1486
  %spec.store.select6088 = select i1 %1, i64 1, i64 %tlimit
  %tobool20.not89 = icmp eq i64 %spec.store.select6088, 0
  %2 = select i1 %call1084, i1 true, i1 %tobool20.not89
  br i1 %2, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.then6, %cleanup
  %spec.store.select6090 = phi i64 [ %spec.store.select60, %cleanup ], [ %spec.store.select6088, %if.then6 ]
  %call27 = call i64 @schedule_timeout(i64 noundef %spec.store.select6090) #28
  %call8 = call i64 @prepare_to_swait_event(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 22), %struct.swait_queue* noundef nonnull %__wait, i32 noundef 2) #28
  %call10 = call fastcc i1 @sync_rcu_exp_done_unlocked(%struct.rcu_node* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)) #24
  %tobool12.not = xor i1 %call10, true
  %tobool14 = icmp ne i64 %call27, 0
  %or.cond59 = select i1 %tobool12.not, i1 true, i1 %tobool14
  %spec.store.select60 = select i1 %or.cond59, i64 %call27, i64 1
  %tobool20.not = icmp eq i64 %spec.store.select60, 0
  %3 = select i1 %call10, i1 true, i1 %tobool20.not
  br i1 %3, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.then6
  %spec.store.select60.lcssa = phi i64 [ %spec.store.select6088, %if.then6 ], [ %spec.store.select60, %cleanup ]
  call void @finish_swait(%struct.swait_queue_head* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 22), %struct.swait_queue* noundef nonnull %__wait) #28
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #26
  br label %if.end29

if.end29:                                         ; preds = %for.end, %entry
  %__ret.0 = phi i64 [ %tlimit, %entry ], [ %spec.store.select60.lcssa, %for.end ]
  %conv = trunc i64 %__ret.0 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %cleanup57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %call32 = call fastcc i1 @sync_rcu_exp_done_unlocked(%struct.rcu_node* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 0, i64 0)) #24
  br i1 %call32, label %cleanup57, label %if.end35

if.end35:                                         ; preds = %lor.lhs.false
  %cmp36 = icmp slt i32 %conv, 0
  br i1 %cmp36, label %if.then47, label %cleanup57, !prof !13

if.then47:                                        ; preds = %if.end35
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/tree_exp.h\22; .popsection; .long 14472b - 14470b; .short 477; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #26, !srcloc !170
  br label %cleanup57

cleanup57:                                        ; preds = %if.end35, %if.then47, %if.end29, %lor.lhs.false
  %retval.0 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end29 ], [ false, %if.then47 ], [ false, %if.end35 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @sync_rcu_exp_done_unlocked(%struct.rcu_node* noundef %rnp) unnamed_addr #1 {
entry:
  %lock = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %rnp, i64 0, i32 0
  %call = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) #24
  %call7 = call fastcc i1 @sync_rcu_exp_done(%struct.rcu_node* noundef %rnp) #24
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %call) #24
  ret i1 %call7
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_exp_gp_seq_done(i64 noundef %s) unnamed_addr #6 {
entry:
  %call = call fastcc i1 @rcu_seq_done(i64* noundef getelementptr inbounds (%struct.rcu_state, %struct.rcu_state* @rcu_state, i64 0, i32 20), i64 noundef %s) #24
  ret i1 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @rcu_bootup_announce_oddness() unnamed_addr #10 section ".init.text" {
entry:
  %0 = load i8, i8* @rcu_fanout_exact, align 4, !range !30
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.167, i64 0, i64 0)) #30
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load i32, i32* @rcu_fanout_leaf, align 4
  %cmp.not = icmp eq i32 %1, 16
  br i1 %cmp.not, label %if.end6, label %do.end3

do.end3:                                          ; preds = %if.end
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.168, i64 0, i64 0), i32 noundef %1) #30
  br label %if.end6

if.end6:                                          ; preds = %do.end3, %if.end
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp7.not = icmp eq i32 %2, 256
  br i1 %cmp7.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end6
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.169, i64 0, i64 0), i32 noundef 256, i32 noundef %2) #30
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.end6
  %3 = load i64, i64* @blimit, align 8
  %cmp14.not = icmp eq i64 %3, 10
  br i1 %cmp14.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end13
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.170, i64 0, i64 0), i64 noundef %3) #30
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %if.end13
  %4 = load i64, i64* @qhimark, align 8
  %cmp21.not = icmp eq i64 %4, 10000
  br i1 %cmp21.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end20
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.171, i64 0, i64 0), i64 noundef %4) #30
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end20
  %5 = load i64, i64* @qlowmark, align 8
  %cmp28.not = icmp eq i64 %5, 100
  br i1 %cmp28.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.end27
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.172, i64 0, i64 0), i64 noundef %5) #30
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.end27
  %6 = load i64, i64* @qovld, align 8
  %cmp35.not = icmp eq i64 %6, 20000
  br i1 %cmp35.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end34
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.173, i64 0, i64 0), i64 noundef %6) #30
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.end34
  %7 = load i64, i64* @jiffies_till_first_fqs, align 8
  %cmp42.not = icmp eq i64 %7, -1
  br i1 %cmp42.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.end41
  %call47 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.174, i64 0, i64 0), i64 noundef %7) #30
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.end41
  %8 = load i64, i64* @jiffies_till_next_fqs, align 8
  %cmp49.not = icmp eq i64 %8, -1
  br i1 %cmp49.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.end48
  %call54 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.175, i64 0, i64 0), i64 noundef %8) #30
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.end48
  %9 = load i64, i64* @jiffies_till_sched_qs, align 8
  %cmp56.not = icmp eq i64 %9, -1
  br i1 %cmp56.not, label %if.end62, label %do.end59

do.end59:                                         ; preds = %if.end55
  %call61 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.176, i64 0, i64 0), i64 noundef %9) #30
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %if.end55
  %10 = load i8, i8* @rcu_kick_kthreads, align 4, !range !30
  %tobool63.not = icmp eq i8 %10, 0
  br i1 %tobool63.not, label %if.end69, label %do.end66

do.end66:                                         ; preds = %if.end62
  %call68 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.177, i64 0, i64 0)) #30
  br label %if.end69

if.end69:                                         ; preds = %do.end66, %if.end62
  %11 = load i32, i32* @gp_preinit_delay, align 4
  %tobool70.not = icmp eq i32 %11, 0
  br i1 %tobool70.not, label %if.end76, label %do.end73

do.end73:                                         ; preds = %if.end69
  %call75 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.178, i64 0, i64 0), i32 noundef %11) #30
  br label %if.end76

if.end76:                                         ; preds = %do.end73, %if.end69
  %12 = load i32, i32* @gp_init_delay, align 4
  %tobool77.not = icmp eq i32 %12, 0
  br i1 %tobool77.not, label %if.end83, label %do.end80

do.end80:                                         ; preds = %if.end76
  %call82 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.179, i64 0, i64 0), i32 noundef %12) #30
  br label %if.end83

if.end83:                                         ; preds = %do.end80, %if.end76
  %13 = load i32, i32* @gp_cleanup_delay, align 4
  %tobool84.not = icmp eq i32 %13, 0
  br i1 %tobool84.not, label %if.end90, label %do.end87

do.end87:                                         ; preds = %if.end83
  %call89 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.179, i64 0, i64 0), i32 noundef %13) #30
  br label %if.end90

if.end90:                                         ; preds = %do.end87, %if.end83
  %14 = load i8, i8* @use_softirq, align 4, !range !30
  %tobool91.not = icmp eq i8 %14, 0
  br i1 %tobool91.not, label %do.end94, label %if.end97

do.end94:                                         ; preds = %if.end90
  %call96 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.180, i64 0, i64 0)) #30
  br label %if.end97

if.end97:                                         ; preds = %do.end94, %if.end90
  call void @rcupdate_announce_bootup_oddness() #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcupdate_announce_bootup_oddness() local_unnamed_addr #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { noinline noprofile nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { noinline nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #20 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #21 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #22 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #23 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #24 = { nobuiltin "no-builtins" }
attributes #25 = { nounwind readnone }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly }
attributes #28 = { nobuiltin nounwind "no-builtins" }
attributes #29 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #30 = { cold nobuiltin nounwind "no-builtins" }
attributes #31 = { cold nobuiltin "no-builtins" }
attributes #32 = { cold nobuiltin noreturn nounwind "no-builtins" }

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
!8 = !{i64 1321883}
!9 = !{i64 2156002685}
!10 = !{i64 2148154260}
!11 = !{i64 2156004147}
!12 = !{i64 2156006555}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2156013159}
!15 = !{i64 2149083795, i64 2149083842, i64 2149083848, i64 2149083885, i64 2149083903, i64 2149084830, i64 2149084878, i64 2149084926, i64 2149084989, i64 2149085038, i64 2149083981, i64 2149084006, i64 2149084032, i64 2149084038, i64 2149084075, i64 2149084081, i64 2149084131, i64 2149084177, i64 2149084210}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2156103872}
!18 = !{i64 2156116039}
!19 = !{i64 2156117723}
!20 = !{i64 2149067489, i64 2149067536, i64 2149067542, i64 2149067579, i64 2149067597, i64 2149072969, i64 2149073017, i64 2149073065, i64 2149073128, i64 2149073177, i64 2149067675, i64 2149067700, i64 2149067726, i64 2149067732, i64 2149072635, i64 2149072675, i64 2149072693, i64 2149072725, i64 2149072753, i64 2149072807, i64 2149072827, i64 2149072924, i64 2149067755, i64 2149067769, i64 2149067775, i64 2149067825, i64 2149067871, i64 2149067904}
!21 = !{i64 2156133339}
!22 = !{i64 2156143036}
!23 = !{i64 2156146401}
!24 = !{i64 2156153684}
!25 = !{i64 2156153732}
!26 = !{i64 2156153867}
!27 = !{i64 2156155547}
!28 = !{i64 2156474802}
!29 = !{i64 2156036417}
!30 = !{i8 0, i8 2}
!31 = !{i64 2149491108}
!32 = !{i64 2149495165}
!33 = !{i64 2149517931}
!34 = !{i64 2149495649}
!35 = !{i64 2149521492}
!36 = !{i64 2156569193}
!37 = !{i64 2156578392}
!38 = !{i64 2156580069}
!39 = !{!"auto-init"}
!40 = !{i64 2156621376}
!41 = !{i64 2156624300}
!42 = !{i64 0, i64 -3}
!43 = !{i64 2157516737}
!44 = !{i64 2156625643}
!45 = !{i64 2155929549}
!46 = !{i64 2149510650}
!47 = !{i64 2156627668}
!48 = !{i64 2156634927}
!49 = !{i64 2155921489}
!50 = !{i64 2155922873}
!51 = !{i64 2149055773, i64 2149055820, i64 2149055826, i64 2149055863, i64 2149055881, i64 2149057222, i64 2149057270, i64 2149057318, i64 2149057381, i64 2149057430, i64 2149055959, i64 2149055984, i64 2149056010, i64 2149056016, i64 2149056888, i64 2149056928, i64 2149056946, i64 2149056978, i64 2149057006, i64 2149057060, i64 2149057080, i64 2149057177, i64 2149056039, i64 2149056053, i64 2149056059, i64 2149056109, i64 2149056155, i64 2149056188}
!52 = !{i64 2149046317, i64 2149046364, i64 2149046370, i64 2149046407, i64 2149046425, i64 2149047765, i64 2149047813, i64 2149047861, i64 2149047924, i64 2149047973, i64 2149046503, i64 2149046528, i64 2149046554, i64 2149046560, i64 2149047431, i64 2149047471, i64 2149047489, i64 2149047521, i64 2149047549, i64 2149047603, i64 2149047623, i64 2149047720, i64 2149046583, i64 2149046597, i64 2149046603, i64 2149046653, i64 2149046699, i64 2149046732}
!53 = !{i64 2155923594}
!54 = !{i64 2155924974}
!55 = !{i64 2156843565}
!56 = !{i64 2157498718}
!57 = !{i64 2157507161}
!58 = !{i64 2157507816}
!59 = !{i64 2157507893}
!60 = !{i64 2157513325}
!61 = !{i64 2156658968}
!62 = !{i64 2156659321}
!63 = !{i64 2156662578}
!64 = !{i64 2156677075}
!65 = !{i64 2156677927}
!66 = !{i64 2156681193}
!67 = !{i64 2156681546}
!68 = !{i64 2156410675}
!69 = !{i64 2156682307}
!70 = !{i64 2156683056}
!71 = !{i64 2156686322}
!72 = !{i64 2156686675}
!73 = !{i64 2156695845}
!74 = !{i64 2156699111}
!75 = !{i64 2156704573}
!76 = !{i64 2156710500}
!77 = !{i64 2156720012}
!78 = !{i64 2156721613}
!79 = !{i64 2156732983}
!80 = !{i64 2156735364}
!81 = !{i64 2156736951}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !83}
!87 = !{i64 2156758806}
!88 = !{i64 2156760396}
!89 = !{i64 2156802043}
!90 = !{i64 2156802110}
!91 = !{i64 2156999228}
!92 = !{i64 2157320160}
!93 = !{i64 2157320909}
!94 = !{i64 2157355400}
!95 = !{i64 2157390925}
!96 = !{i64 2157715493}
!97 = !{i64 2157717114}
!98 = !{i64 2157734043}
!99 = !{i64 2157746187}
!100 = !{i64 2157747966}
!101 = !{i64 2157763945}
!102 = !{i64 2157764847}
!103 = !{i64 2147875354, i64 2147876002, i64 2147876032, i64 2147876064, i64 2147876098, i64 2147876134, i64 2147876159}
!104 = !{i64 2149061476, i64 2149061523, i64 2149061529, i64 2149061566, i64 2149061584, i64 2149062895, i64 2149062943, i64 2149062991, i64 2149063054, i64 2149063103, i64 2149061662, i64 2149061687, i64 2149061713, i64 2149061719, i64 2149062561, i64 2149062601, i64 2149062619, i64 2149062651, i64 2149062679, i64 2149062733, i64 2149062753, i64 2149062850, i64 2149061742, i64 2149061756, i64 2149061762, i64 2149061812, i64 2149061858, i64 2149061891}
!105 = !{i64 2149063655, i64 2149063702, i64 2149063708, i64 2149063745, i64 2149063763, i64 2149064706, i64 2149064754, i64 2149064802, i64 2149064865, i64 2149064914, i64 2149063841, i64 2149063866, i64 2149063892, i64 2149063898, i64 2149063935, i64 2149063941, i64 2149063991, i64 2149064037, i64 2149064070}
!106 = !{i64 2147943582, i64 2147944093, i64 2147944123, i64 2147944149, i64 2147944181, i64 2147944210}
!107 = !{i64 2147970364, i64 2147970397, i64 2147970450, i64 2147970509, i64 2147970543, i64 2147970598, i64 2147970627, i64 2147970647}
!108 = !{i64 2149310161}
!109 = !{i64 2148008281, i64 2148008313, i64 2148008358, i64 2148008406, i64 2148008432}
!110 = !{i64 2148009380, i64 2148009412, i64 2148009456, i64 2148009503, i64 2148009529}
!111 = !{i64 2156962501}
!112 = !{i64 2156965449}
!113 = !{i64 2156968262}
!114 = !{i64 2156836771}
!115 = !{i64 2156911591}
!116 = !{i64 2147989222, i64 2147989255, i64 2147989306, i64 2147989362, i64 2147989395, i64 2147989450, i64 2147989479, i64 2147989506}
!117 = !{i64 2156889205}
!118 = !{i64 2156850964}
!119 = !{i64 2147885075, i64 2147885723, i64 2147885753, i64 2147885785, i64 2147885819, i64 2147885855, i64 2147885880}
!120 = !{i64 2147874502, i64 2147875018, i64 2147875048, i64 2147875075, i64 2147875109, i64 2147875139}
!121 = !{i64 2156401066}
!122 = !{i64 2156391137}
!123 = !{i64 2156558146}
!124 = !{i64 2156284962}
!125 = !{i64 2156288118}
!126 = !{i64 2156297404}
!127 = !{i64 2156329736}
!128 = !{i64 2156349698}
!129 = !{i64 2156356547}
!130 = !{i64 2149499942}
!131 = !{i64 2149524795}
!132 = !{i64 2156817886}
!133 = !{i64 2156638143}
!134 = !{i64 2157777941}
!135 = !{i64 2156497763}
!136 = !{i32 (%struct.rcu_data*)* @dyntick_save_progress_counter, i32 (%struct.rcu_data*)* @rcu_implicit_dynticks_qs}
!137 = !{i64 2156176237}
!138 = !{i64 2156189254}
!139 = !{i64 0, i64 65}
!140 = !{i64 2149159156}
!141 = !{i64 2156522026}
!142 = !{i64 2156446653}
!143 = !{i64 2156461916}
!144 = !{i64 2156464408}
!145 = !{i64 2156466127}
!146 = !{i64 2156467842}
!147 = !{i64 2156426548}
!148 = !{i64 2156595512}
!149 = distinct !{!149, !83}
!150 = distinct !{!150, !83}
!151 = !{i64 2156641899}
!152 = !{i64 2156643601}
!153 = !{i64 2149683069}
!154 = !{i64 2149683286}
!155 = !{i64 2157386812}
!156 = !{i64 2157373634}
!157 = !{i64 2157375526}
!158 = !{i64 2157472358}
!159 = !{i64 2157463286}
!160 = !{i64 2157363462}
!161 = !{i64 2157411108}
!162 = !{i64 2157417183}
!163 = !{i64 2157418491}
!164 = !{i64 2157419302}
!165 = !{i64 2157419379}
!166 = !{i64 2157356045}
!167 = !{i64 2157441396}
!168 = !{i64 2157454254}
!169 = !{i64 2157355333}
!170 = !{i64 2157430193}
