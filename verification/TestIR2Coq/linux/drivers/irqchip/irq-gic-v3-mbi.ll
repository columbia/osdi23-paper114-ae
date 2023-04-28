; ModuleID = 'drivers/irqchip/irq-gic-v3-mbi.c'
source_filename = "drivers/irqchip/irq-gic-v3-mbi.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.mbi_range = type { i32, i32, i64* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.device = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.68 }
%struct.msi_msg = type { %union.anon.65, %union.anon.66, %union.anon.67 }
%union.anon.65 = type { i32 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.cpumask = type { [4 x i64] }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { %union.anon.70, %struct.anon.71, %union.anon.72 }
%union.anon.70 = type { i32 }
%struct.anon.71 = type { i16, i16, i32 }
%union.anon.72 = type { i8* }
%struct.seq_file = type opaque
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.page = type { i64, %union.anon.2, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.76, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.51, %struct.list_head, %struct.list_head, %union.anon.52 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.51 = type { %struct.list_head }
%union.anon.52 = type { %struct.hlist_node }
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
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
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
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.74 = type { %struct.callback_head }
%union.anon.75 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.53 }
%union.anon.53 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.54, %union.anon.55 }
%union.anon.54 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.55 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.59 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.57, %struct.qspinlock }
%union.anon.57 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.76 = type { %struct.pipe_inode_info* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.63 = type { %struct.atomic_t }
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
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.cgroup_namespace = type opaque
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.50, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.kref = type { %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proc_dir_entry = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.module = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.msi_domain_info = type { i32, %struct.msi_domain_ops*, %struct.irq_chip*, i8*, void (%struct.irq_desc*)*, i8*, i8*, i8* }
%struct.msi_domain_ops = type { i64 (%struct.msi_domain_info*, %struct.msi_alloc_info*)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i64, %struct.msi_alloc_info*)*, void (%struct.irq_domain*, %struct.msi_domain_info*, i32)*, i32 (%struct.irq_domain*, %struct.msi_domain_info*, %struct.device*)*, i32 (%struct.irq_domain*, %struct.device*, i32, %struct.msi_alloc_info*)*, void (%struct.msi_alloc_info*, i32)*, void (%struct.msi_alloc_info*, %struct.msi_desc*)*, i32 (%struct.irq_domain*, %struct.msi_desc*, i32)*, i32 (%struct.irq_domain*, %struct.device*, i32)*, void (%struct.irq_domain*, %struct.device*)* }
%struct.msi_alloc_info = type { %struct.msi_desc*, i64, i64, [2 x %union.anon.77] }
%union.anon.77 = type { i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@.str = private unnamed_addr constant [15 x i8] c"msi-controller\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"mbi-ranges\00", align 1
@mbi_range_nr = internal unnamed_addr global i32 0, align 4
@mbi_ranges = internal unnamed_addr global %struct.mbi_range* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"\016GICv3: MBI range [%d:%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mbi-alias\00", align 1
@mbi_phys_base = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"\016GICv3: Using MBI frame %pa\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@mbi_domain_ops = internal constant %struct.irq_domain_ops { i32 (%struct.irq_domain*, %struct.device_node*, i32)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)* null, i32 (%struct.irq_domain*, i32, i64)* null, void (%struct.irq_domain*, i32)* null, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* null, i32 (%struct.irq_domain*, i32, i32, i8*)* @mbi_irq_domain_alloc, void (%struct.irq_domain*, i32, i32)* @mbi_irq_domain_free, i32 (%struct.irq_domain*, %struct.irq_data*, i1)* null, void (%struct.irq_domain*, %struct.irq_data*)* null, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* null }, align 8
@mbi_pmsi_domain_info = internal global %struct.msi_domain_info { i32 67, %struct.msi_domain_ops* @mbi_pmsi_ops, %struct.irq_chip* @mbi_pmsi_irq_chip, i8* null, void (%struct.irq_desc*)* null, i8* null, i8* null, i8* null }, align 8
@mbi_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @mbi_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @mbi_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@mbi_irq_chip = internal global %struct.irq_chip { %struct.device* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @irq_chip_mask_parent, void (%struct.irq_data*)* null, void (%struct.irq_data*)* @irq_chip_unmask_parent, void (%struct.irq_data*)* @irq_chip_eoi_parent, i32 (%struct.irq_data*, %struct.cpumask*, i1)* @irq_chip_set_affinity_parent, i32 (%struct.irq_data*)* null, i32 (%struct.irq_data*, i32)* @irq_chip_set_type_parent, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* null, i32 (%struct.irq_data*, i32, i1)* null, i32 (%struct.irq_data*, i8*)* null, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i64 0 }, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"MBI\00", align 1
@mbi_pmsi_ops = internal global %struct.msi_domain_ops zeroinitializer, align 8
@mbi_pmsi_irq_chip = internal global %struct.irq_chip { %struct.device* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i32 (%struct.irq_data*, %struct.cpumask*, i1)* null, i32 (%struct.irq_data*)* null, i32 (%struct.irq_data*, i32)* @irq_chip_set_type_parent, i32 (%struct.irq_data*, i32)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.seq_file*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, void (%struct.irq_data*, %struct.msi_msg*)* @mbi_compose_mbi_msg, void (%struct.irq_data*, %struct.msi_msg*)* null, i32 (%struct.irq_data*, i32, i8*)* null, i32 (%struct.irq_data*, i32, i1)* null, i32 (%struct.irq_data*, i8*)* null, void (%struct.irq_data*, i32)* null, void (%struct.irq_data*, %struct.cpumask*)* null, i32 (%struct.irq_data*)* null, void (%struct.irq_data*)* null, i64 128 }, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"pMSI\00", align 1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @mbi_init(%struct.fwnode_handle* noundef %fwnode, %struct.irq_domain* noundef %parent) local_unnamed_addr #0 section ".init.text" {
entry:
  %res = alloca %struct.resource, align 8
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #12
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %call2 = call fastcc i1 @of_property_read_bool(%struct.device_node* noundef %cond) #12
  br i1 %call2, label %if.end, label %cleanup85

if.end:                                           ; preds = %entry
  %call3 = call i32 @of_property_count_elems_of_size(%struct.device_node* noundef %cond, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 4) #13
  %cmp = icmp sgt i32 %call3, 0
  %1 = and i32 %call3, 1
  %tobool.not = icmp eq i32 %1, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end5, label %cleanup85

if.end5:                                          ; preds = %if.end
  %div125 = lshr i32 %call3, 1
  store i32 %div125, i32* @mbi_range_nr, align 4
  %conv = zext i32 %div125 to i64
  %call6 = call fastcc i8* @kcalloc(i64 noundef %conv) #12
  store i8* %call6, i8** bitcast (%struct.mbi_range** @mbi_ranges to i8**), align 8
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %cleanup85, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %2 = load i32, i32* @mbi_range_nr, align 4
  %cmp10126.not = icmp eq i32 %2, 0
  br i1 %cmp10126.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %spi_start135 = bitcast i8* %call6 to i32*
  %call12136 = call i32 @of_property_read_u32_index(%struct.device_node* noundef %cond, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 0, i32* noundef nonnull %spi_start135) #13
  %tobool13.not137 = icmp eq i32 %call12136, 0
  br i1 %tobool13.not137, label %if.end15, label %err_free_mbithread-pre-split

if.end15:                                         ; preds = %for.body.preheader, %do.end37.for.body_crit_edge
  %idxprom140 = phi i64 [ %idxprom, %do.end37.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul139 = phi i32 [ %mul, %do.end37.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %n.0127138 = phi i32 [ %inc, %do.end37.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add = or i32 %mul139, 1
  %3 = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  %nr_spis = getelementptr %struct.mbi_range, %struct.mbi_range* %3, i64 %idxprom140, i32 1
  %call19 = call i32 @of_property_read_u32_index(%struct.device_node* noundef %cond, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef %add, i32* noundef %nr_spis) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %err_free_mbithread-pre-split

if.end22:                                         ; preds = %if.end15
  %4 = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  %nr_spis25 = getelementptr %struct.mbi_range, %struct.mbi_range* %4, i64 %idxprom140, i32 1
  %5 = load i32, i32* %nr_spis25, align 4
  %call26 = call i64* @bitmap_zalloc(i32 noundef %5, i32 noundef 3264) #13
  %6 = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  %bm = getelementptr %struct.mbi_range, %struct.mbi_range* %6, i64 %idxprom140, i32 2
  store i64* %call26, i64** %bm, align 8
  %tobool32.not = icmp eq i64* %call26, null
  br i1 %tobool32.not, label %err_free_mbi, label %do.end37

do.end37:                                         ; preds = %if.end22
  %spi_start41 = getelementptr %struct.mbi_range, %struct.mbi_range* %6, i64 %idxprom140, i32 0
  %7 = load i32, i32* %spi_start41, align 8
  %nr_spis47 = getelementptr %struct.mbi_range, %struct.mbi_range* %6, i64 %idxprom140, i32 1
  %8 = load i32, i32* %nr_spis47, align 4
  %add48 = add i32 %7, -1
  %sub = add i32 %add48, %8
  %call49 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 noundef %7, i32 noundef %sub) #14
  %inc = add nuw i32 %n.0127138, 1
  %9 = load i32, i32* @mbi_range_nr, align 4
  %cmp10 = icmp ult i32 %inc, %9
  br i1 %cmp10, label %do.end37.for.body_crit_edge, label %for.end

do.end37.for.body_crit_edge:                      ; preds = %do.end37
  %.pre = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  %mul = shl i32 %inc, 1
  %idxprom = sext i32 %inc to i64
  %spi_start = getelementptr %struct.mbi_range, %struct.mbi_range* %.pre, i64 %idxprom, i32 0
  %call12 = call i32 @of_property_read_u32_index(%struct.device_node* noundef %cond, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef %mul, i32* noundef %spi_start) #13
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %err_free_mbithread-pre-split

for.end:                                          ; preds = %do.end37, %for.cond.preheader
  %call50 = call i8* @of_get_property(%struct.device_node* noundef %cond, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* noundef null) #13
  %tobool51.not = icmp eq i8* %call50, null
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %for.end
  %10 = bitcast i8* %call50 to i32*
  %call53 = call i64 @of_translate_address(%struct.device_node* noundef %cond, i32* noundef nonnull %10) #13
  store i64 %call53, i64* @mbi_phys_base, align 8
  %cmp54 = icmp eq i64 %call53, -1
  br i1 %cmp54, label %err_free_mbithread-pre-split, label %do.end65

if.else:                                          ; preds = %for.end
  %11 = bitcast %struct.resource* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %11) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !annotation !7
  %call58 = call i32 @of_address_to_resource(%struct.device_node* noundef %cond, i32 noundef 0, %struct.resource* noundef nonnull %res) #13
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %12 = load i64, i64* %start, align 8
  store i64 %12, i64* @mbi_phys_base, align 8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #15
  br label %do.end65

cleanup:                                          ; preds = %if.else
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #15
  br label %err_free_mbithread-pre-split

do.end65:                                         ; preds = %cleanup.thread, %if.then52
  %call67 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64* noundef nonnull @mbi_phys_base) #14
  %call68 = call fastcc i32 @mbi_allocate_domains(%struct.irq_domain* noundef %parent) #12
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cleanup85, label %err_free_mbithread-pre-split

err_free_mbithread-pre-split:                     ; preds = %if.end15, %do.end37.for.body_crit_edge, %for.body.preheader, %do.end65, %if.then52, %cleanup
  %ret.2.ph = phi i32 [ -6, %if.then52 ], [ -6, %cleanup ], [ %call68, %do.end65 ], [ %call12136, %for.body.preheader ], [ %call12, %do.end37.for.body_crit_edge ], [ %call19, %if.end15 ]
  %.pr = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  br label %err_free_mbi

err_free_mbi:                                     ; preds = %if.end22, %err_free_mbithread-pre-split
  %13 = phi %struct.mbi_range* [ %.pr, %err_free_mbithread-pre-split ], [ %6, %if.end22 ]
  %ret.2 = phi i32 [ %ret.2.ph, %err_free_mbithread-pre-split ], [ -12, %if.end22 ]
  %tobool72.not = icmp eq %struct.mbi_range* %13, null
  br i1 %tobool72.not, label %cleanup85, label %for.cond74.preheader

for.cond74.preheader:                             ; preds = %err_free_mbi
  %14 = bitcast %struct.mbi_range* %13 to i8*
  %15 = load i32, i32* @mbi_range_nr, align 4
  %cmp75128.not = icmp eq i32 %15, 0
  br i1 %cmp75128.not, label %for.end83, label %for.body77.preheader

for.body77.preheader:                             ; preds = %for.cond74.preheader
  %bm80142 = getelementptr %struct.mbi_range, %struct.mbi_range* %13, i64 0, i32 2
  %16 = load i64*, i64** %bm80142, align 8
  call void @bitmap_free(i64* noundef %16) #13
  %17 = load i32, i32* @mbi_range_nr, align 4
  %cmp75143 = icmp ugt i32 %17, 1
  br i1 %cmp75143, label %for.body77.for.body77_crit_edge, label %for.end83.loopexit

for.body77.for.body77_crit_edge:                  ; preds = %for.body77.preheader, %for.body77.for.body77_crit_edge
  %inc82144 = phi i32 [ %inc82, %for.body77.for.body77_crit_edge ], [ 1, %for.body77.preheader ]
  %.pre131 = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  %idxprom78 = sext i32 %inc82144 to i64
  %bm80 = getelementptr %struct.mbi_range, %struct.mbi_range* %.pre131, i64 %idxprom78, i32 2
  %18 = load i64*, i64** %bm80, align 8
  call void @bitmap_free(i64* noundef %18) #13
  %inc82 = add nuw i32 %inc82144, 1
  %19 = load i32, i32* @mbi_range_nr, align 4
  %cmp75 = icmp ult i32 %inc82, %19
  br i1 %cmp75, label %for.body77.for.body77_crit_edge, label %for.end83.loopexit

for.end83.loopexit:                               ; preds = %for.body77.for.body77_crit_edge, %for.body77.preheader
  %.pre132 = load i8*, i8** bitcast (%struct.mbi_range** @mbi_ranges to i8**), align 8
  br label %for.end83

for.end83:                                        ; preds = %for.end83.loopexit, %for.cond74.preheader
  %20 = phi i8* [ %.pre132, %for.end83.loopexit ], [ %14, %for.cond74.preheader ]
  call void @kfree(i8* noundef %20) #13
  br label %cleanup85

cleanup85:                                        ; preds = %err_free_mbi, %for.end83, %do.end65, %if.end5, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -22, %if.end ], [ -12, %if.end5 ], [ 0, %do.end65 ], [ %ret.2, %for.end83 ], [ %ret.2, %err_free_mbi ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #12
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @of_property_read_bool(%struct.device_node* noundef %np) unnamed_addr #3 {
entry:
  %call = call %struct.property* @of_find_property(%struct.device_node* noundef %np, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* noundef null) #13
  %tobool = icmp ne %struct.property* %call, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #12
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(%struct.device_node* noundef, i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64* @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_get_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(%struct.device_node* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(%struct.device_node* noundef, i32 noundef, %struct.resource* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mbi_allocate_domains(%struct.irq_domain* noundef %parent) unnamed_addr #3 {
entry:
  %pci_domain = alloca %struct.irq_domain*, align 8
  %0 = bitcast %struct.irq_domain** %pci_domain to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct.irq_domain* null, %struct.irq_domain** %pci_domain, align 8, !annotation !7
  %fwnode = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %parent, i64 0, i32 6
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call = call fastcc %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle* noundef %1) #12
  %tobool.not = icmp eq %struct.irq_domain* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @irq_domain_update_bus_token(%struct.irq_domain* noundef nonnull %call, i32 noundef 5) #13
  %parent1 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %call, i64 0, i32 9
  store %struct.irq_domain* %parent, %struct.irq_domain** %parent1, align 8
  call fastcc void @mbi_allocate_pci_domain(%struct.irq_domain** noundef nonnull %pci_domain) #12
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call4 = call %struct.irq_domain* @platform_msi_create_irq_domain(%struct.fwnode_handle* noundef %2, %struct.msi_domain_info* noundef nonnull @mbi_pmsi_domain_info, %struct.irq_domain* noundef nonnull %call) #13
  %tobool6.not = icmp eq %struct.irq_domain* %call4, null
  br i1 %tobool6.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end
  %3 = load %struct.irq_domain*, %struct.irq_domain** %pci_domain, align 8
  %tobool11.not = icmp eq %struct.irq_domain* %3, null
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @irq_domain_remove(%struct.irq_domain* noundef nonnull %3) #13
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  call void @irq_domain_remove(%struct.irq_domain* noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ -12, %if.end13 ], [ -12, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(i64* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #3 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 16)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !8

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.irq_domain* @irq_domain_create_tree(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #3 {
entry:
  %call = call %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef %fwnode, i32 noundef 0, i64 noundef -1, i32 noundef 0, %struct.irq_domain_ops* noundef nonnull @mbi_domain_ops, i8* noundef null) #13
  ret %struct.irq_domain* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @mbi_allocate_pci_domain(%struct.irq_domain** nocapture noundef writeonly %pci_domain) unnamed_addr #9 {
entry:
  store %struct.irq_domain* null, %struct.irq_domain** %pci_domain, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @platform_msi_create_irq_domain(%struct.fwnode_handle* noundef, %struct.msi_domain_info* noundef, %struct.irq_domain* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(%struct.irq_domain* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_domain* @__irq_domain_add(%struct.fwnode_handle* noundef, i32 noundef, i64 noundef, i32 noundef, %struct.irq_domain_ops* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @mbi_irq_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, i8* nocapture noundef readnone %args) #3 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @mbi_lock) #13
  %0 = load i32, i32* @mbi_range_nr, align 4
  %cmp70.not = icmp eq i32 %0, 0
  br i1 %cmp70.not, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %call = call fastcc i32 @get_count_order(i32 noundef %nr_irqs) #12
  br label %for.body

for.cond:                                         ; preds = %for.body
  %1 = load i32, i32* @mbi_range_nr, align 4
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %for.cond, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @mbi_lock) #13
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %2 = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  %idxprom = sext i32 %i.071 to i64
  %bm = getelementptr %struct.mbi_range, %struct.mbi_range* %2, i64 %idxprom, i32 2
  %3 = load i64*, i64** %bm, align 8
  %nr_spis = getelementptr %struct.mbi_range, %struct.mbi_range* %2, i64 %idxprom, i32 1
  %4 = load i32, i32* %nr_spis, align 4
  %call3 = call i32 @bitmap_find_free_region(i64* noundef %3, i32 noundef %4, i32 noundef %call) #13
  %cmp4 = icmp sgt i32 %call3, -1
  %inc = add nuw i32 %i.071, 1
  br i1 %cmp4, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %5 = load %struct.mbi_range*, %struct.mbi_range** @mbi_ranges, align 8
  %arrayidx6 = getelementptr %struct.mbi_range, %struct.mbi_range* %5, i64 %idxprom
  call void @mutex_unlock(%struct.mutex* noundef nonnull @mbi_lock) #13
  %tobool.not = icmp eq %struct.mbi_range* %arrayidx6, null
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %for.end
  %spi_start = getelementptr inbounds %struct.mbi_range, %struct.mbi_range* %arrayidx6, i64 0, i32 0
  %6 = load i32, i32* %spi_start, align 8
  %add = add i32 %6, %call3
  %cmp1572.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp1572.not, label %cleanup, label %for.body16.lr.ph

for.body16.lr.ph:                                 ; preds = %if.end8
  %7 = bitcast %struct.mbi_range* %arrayidx6 to i8*
  br label %for.body16

for.body16:                                       ; preds = %for.body16.lr.ph, %if.end22
  %i.173 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc28, %if.end22 ]
  %add17 = add i32 %i.173, %virq
  %add18 = add i32 %i.173, %add
  %conv = sext i32 %add18 to i64
  %call19 = call fastcc i32 @mbi_irq_gic_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %add17, i64 noundef %conv) #12
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %fail

if.end22:                                         ; preds = %for.body16
  %call26 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef %domain, i32 noundef %add17, i64 noundef %conv, %struct.irq_chip* noundef nonnull @mbi_irq_chip, i8* noundef nonnull %7) #13
  %inc28 = add nuw i32 %i.173, 1
  %exitcond.not = icmp eq i32 %inc28, %nr_irqs
  br i1 %exitcond.not, label %cleanup, label %for.body16

fail:                                             ; preds = %for.body16
  call void @irq_domain_free_irqs_parent(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #13
  call fastcc void @mbi_free_msi(%struct.mbi_range* noundef nonnull %arrayidx6, i32 noundef %add, i32 noundef %nr_irqs) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end8, %for.end.thread, %for.end, %fail
  %retval.0 = phi i32 [ %call19, %fail ], [ -28, %for.end ], [ -28, %for.end.thread ], [ 0, %if.end8 ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @mbi_irq_domain_free(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #3 {
entry:
  %call = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %domain, i32 noundef %virq) #13
  %call1 = call fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* noundef %call) #12
  %0 = bitcast i8* %call1 to %struct.mbi_range*
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call, i64 0, i32 2
  %1 = load i64, i64* %hwirq, align 8
  %conv = trunc i64 %1 to i32
  call fastcc void @mbi_free_msi(%struct.mbi_range* noundef %0, i32 noundef %conv, i32 noundef %nr_irqs) #12
  call void @irq_domain_free_irqs_parent(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @get_count_order(i32 noundef %count) unnamed_addr #10 {
entry:
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %dec = add i32 %count, -1
  %tobool.not.i = icmp eq i32 %dec, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %dec, i1 false) #15, !range !9
  %narrow.i = sub nuw nsw i32 32, %0
  %narrow3.i = select i1 %tobool.not.i, i32 0, i32 %narrow.i
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %narrow3.i, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mbi_irq_gic_domain_alloc(%struct.irq_domain* noundef %domain, i32 noundef %virq, i64 noundef %hwirq) unnamed_addr #3 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 8
  %0 = bitcast %struct.irq_fwspec* %fwspec to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #15
  %1 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 3
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 56, i1 false), !annotation !7
  %parent = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %domain, i64 0, i32 9
  %3 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %fwnode = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %3, i64 0, i32 6
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %4) #12
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %fwnode3 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 0
  store %struct.fwnode_handle* %4, %struct.fwnode_handle** %fwnode3, align 8
  %param_count = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 1
  store i32 3, i32* %param_count, align 8
  %arrayidx = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 0
  store i32 0, i32* %arrayidx, align 4
  %5 = trunc i64 %hwirq to i32
  %conv = add i32 %5, -32
  %arrayidx5 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 1
  store i32 %conv, i32* %arrayidx5, align 8
  %arrayidx7 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i64 0, i32 2, i64 2
  store i32 1, i32* %arrayidx7, align 4
  %call8 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* noundef %domain, i32 noundef %virq, i32 noundef 1, i8* noundef nonnull %0) #13
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = load %struct.irq_domain*, %struct.irq_domain** %parent, align 8
  %call12 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef %6, i32 noundef %virq) #13
  %chip = getelementptr inbounds %struct.irq_data, %struct.irq_data* %call12, i64 0, i32 4
  %7 = load %struct.irq_chip*, %struct.irq_chip** %chip, align 8
  %irq_set_type = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %7, i64 0, i32 13
  %8 = load i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)** %irq_set_type, align 8
  %call13 = call i32 %8(%struct.irq_data* noundef %call12, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ -22, %entry ], [ %call8, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* noundef, i32 noundef, i64 noundef, %struct.irq_chip* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(%struct.irq_domain* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mbi_free_msi(%struct.mbi_range* nocapture noundef readonly %mbi, i32 noundef %hwirq, i32 noundef %nr_irqs) unnamed_addr #3 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @mbi_lock) #13
  %bm = getelementptr inbounds %struct.mbi_range, %struct.mbi_range* %mbi, i64 0, i32 2
  %0 = load i64*, i64** %bm, align 8
  %spi_start = getelementptr inbounds %struct.mbi_range, %struct.mbi_range* %mbi, i64 0, i32 0
  %1 = load i32, i32* %spi_start, align 8
  %sub = sub i32 %hwirq, %1
  %call = call fastcc i32 @get_count_order(i32 noundef %nr_irqs) #12
  call void @bitmap_release_region(i64* noundef %0, i32 noundef %sub, i32 noundef %call) #13
  call void @mutex_unlock(%struct.mutex* noundef nonnull @mbi_lock) #13
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(%struct.irq_data* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(%struct.irq_data* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(%struct.irq_data* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(%struct.irq_data* noundef, %struct.cpumask* noundef, i1 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(%struct.irq_data* noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @irq_data_get_irq_chip_data(%struct.irq_data* nocapture noundef readonly %d) unnamed_addr #2 {
entry:
  %chip_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %d, i64 0, i32 7
  %0 = load i8*, i8** %chip_data, align 8
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @mbi_compose_mbi_msg(%struct.irq_data* nocapture noundef readonly %data, %struct.msi_msg* nocapture noundef writeonly %msg) #11 {
entry:
  call fastcc void @mbi_compose_msi_msg(%struct.irq_data* noundef %data, %struct.msi_msg* noundef %msg) #12
  %0 = load i64, i64* @mbi_phys_base, align 8
  %add = add i64 %0, 72
  %shr = lshr i64 %add, 32
  %conv = trunc i64 %shr to i32
  %address_hi = getelementptr %struct.msi_msg, %struct.msi_msg* %msg, i64 1, i32 1, i32 0
  store i32 %conv, i32* %address_hi, align 4
  %1 = load i64, i64* @mbi_phys_base, align 8
  %2 = trunc i64 %1 to i32
  %conv3 = add i32 %2, 72
  %address_lo = getelementptr %struct.msi_msg, %struct.msi_msg* %msg, i64 1, i32 0, i32 0
  store i32 %conv3, i32* %address_lo, align 4
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %3 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %3, i64 0, i32 2
  %4 = load i64, i64* %hwirq, align 8
  %conv5 = trunc i64 %4 to i32
  %data7 = getelementptr %struct.msi_msg, %struct.msi_msg* %msg, i64 1, i32 2, i32 0
  store i32 %conv5, i32* %data7, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @mbi_compose_msi_msg(%struct.irq_data* nocapture noundef readonly %data, %struct.msi_msg* nocapture noundef writeonly %msg) unnamed_addr #11 {
entry:
  %0 = load i64, i64* @mbi_phys_base, align 8
  %add = add i64 %0, 64
  %shr = lshr i64 %add, 32
  %conv = trunc i64 %shr to i32
  %address_hi = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %msg, i64 0, i32 1, i32 0
  store i32 %conv, i32* %address_hi, align 4
  %1 = load i64, i64* @mbi_phys_base, align 8
  %2 = trunc i64 %1 to i32
  %conv3 = add i32 %2, 64
  %address_lo = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %msg, i64 0, i32 0, i32 0
  store i32 %conv3, i32* %address_lo, align 4
  %parent_data = getelementptr inbounds %struct.irq_data, %struct.irq_data* %data, i64 0, i32 6
  %3 = load %struct.irq_data*, %struct.irq_data** %parent_data, align 8
  %hwirq = getelementptr inbounds %struct.irq_data, %struct.irq_data* %3, i64 0, i32 2
  %4 = load i64, i64* %hwirq, align 8
  %conv5 = trunc i64 %4 to i32
  %data7 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %msg, i64 0, i32 2, i32 0
  store i32 %conv5, i32* %data7, align 4
  ret void
}

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind }

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
!9 = !{i32 0, i32 33}
