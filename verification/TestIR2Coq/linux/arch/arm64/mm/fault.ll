; ModuleID = 'arch/arm64/mm/fault.c'
source_filename = "arch/arm64/mm/fault.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.fault_info = type { i32 (i64, i32, %struct.pt_regs*)*, i32, i32, i8* }
%struct.pt_regs = type { %union.anon.73, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.73 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.72, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot_t = type { i64 }
%struct.anon.72 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.54, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.55, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.54 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.55 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.36, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.66, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
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
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.10, i32 }
%union.anon.10 = type { %struct.kuid_t }
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
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.35, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.13 = type { i32 }
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.19 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.19 = type { %struct.callback_head }
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
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.20, %union.anon.21, i32 }
%struct.request_queue = type opaque
%union.anon.20 = type { %struct.list_head }
%union.anon.21 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.22 }
%struct.anon.22 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.26 }
%struct.anon.26 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.34, i32, [12 x i8] }
%union.anon.34 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.35 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.58, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.58 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.60 = type { %struct.callback_head }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, {}*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.38 }
%union.anon.38 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.39, %union.anon.40 }
%union.anon.39 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.40 = type { i64 }
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
%union.anon.66 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.57 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [48 x i8] }
%struct.anon.3 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.4, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.bp_hardening_data = type { i32, void ()* }
%struct.exception_table_entry = type { i32, i32 }
%struct.nodemask_t = type { [1 x i64] }

@.str = private unnamed_addr constant [31 x i8] c"\011Unhandled fault at 0x%016lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SP/PC alignment exception\00", align 1
@debug_fault_info = internal global [8 x %struct.fault_info] [%struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 5, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 5, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 5, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.103, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 5, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.106, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @early_brk64, i32 5, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0) }], section ".ref.data", align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@fault_info = internal constant [64 x %struct.fault_info] [%struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_translation_fault, i32 11, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_translation_fault, i32 11, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_translation_fault, i32 11, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_translation_fault, i32 11, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_page_fault, i32 11, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_page_fault, i32 11, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_page_fault, i32 11, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_page_fault, i32 11, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_page_fault, i32 11, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_page_fault, i32 11, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_sea, i32 7, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_tag_check_fault, i32 11, i32 9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_sea, i32 9, i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_sea, i32 9, i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_sea, i32 9, i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_sea, i32 9, i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_sea, i32 7, i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_sea, i32 9, i32 128, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_sea, i32 9, i32 128, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.32, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_sea, i32 9, i32 128, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.33, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_sea, i32 9, i32 128, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.34, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_alignment_fault, i32 7, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 7, i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.56, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0) }, %struct.fault_info { i32 (i64, i32, %struct.pt_regs*)* @do_bad, i32 9, i32 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0) }], align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"ttbr address size fault\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"level 1 address size fault\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"level 2 address size fault\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"level 3 address size fault\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"level 0 translation fault\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"level 1 translation fault\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"level 2 translation fault\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"level 3 translation fault\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"unknown 8\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"level 1 access flag fault\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"level 2 access flag fault\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"level 3 access flag fault\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"unknown 12\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"level 1 permission fault\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"level 2 permission fault\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"level 3 permission fault\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"synchronous external abort\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"synchronous tag check fault\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"unknown 18\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"unknown 19\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"level 0 (translation table walk)\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"level 1 (translation table walk)\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"level 2 (translation table walk)\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"level 3 (translation table walk)\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"synchronous parity or ECC error\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"unknown 25\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"unknown 26\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"unknown 27\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"level 0 synchronous parity error (translation table walk)\00", align 1
@.str.32 = private unnamed_addr constant [58 x i8] c"level 1 synchronous parity error (translation table walk)\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"level 2 synchronous parity error (translation table walk)\00", align 1
@.str.34 = private unnamed_addr constant [58 x i8] c"level 3 synchronous parity error (translation table walk)\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"unknown 32\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"alignment fault\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"unknown 34\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"unknown 35\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"unknown 36\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"unknown 37\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"unknown 38\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"unknown 39\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"unknown 40\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"unknown 41\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"unknown 42\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"unknown 43\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"unknown 44\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"unknown 45\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"unknown 46\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"unknown 47\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"TLB conflict abort\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"Unsupported atomic hardware update fault\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"unknown 50\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"unknown 51\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"implementation fault (lockdown abort)\00", align 1
@.str.56 = private unnamed_addr constant [45 x i8] c"implementation fault (unsupported exclusive)\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"unknown 54\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"unknown 55\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"unknown 56\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"unknown 57\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"unknown 58\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"unknown 59\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"unknown 60\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"section domain fault\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"page domain fault\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"unknown 63\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"ESR 0x%x is not DABT or IABT from EL0\0A\00", align 1
@__do_kernel_fault._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.__do_kernel_fault = private unnamed_addr constant [18 x i8] c"__do_kernel_fault\00", align 1
@.str.68 = private unnamed_addr constant [70 x i8] c"Ignoring spurious kernel translation fault at virtual address %016lx\0A\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"write to read-only memory\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"execute from non-executable memory\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"read from unreadable memory\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"NULL pointer dereference\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"paging request\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.74 = private unnamed_addr constant [56 x i8] c"\011Unable to handle kernel %s at virtual address %016lx\0A\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"Oops\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"execution of user memory\00", align 1
@.str.77 = private unnamed_addr constant [47 x i8] c"access to user memory outside uaccess routines\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"\011Mem abort info:\0A\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"\011  ESR = 0x%08x\0A\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"\011  EC = 0x%02lx: %s, IL = %u bits\0A\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"\011  SET = %lu, FnV = %lu\0A\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"\011  EA = %lu, S1PTW = %lu\0A\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"\011  FSC = 0x%02x: %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"\011Data abort info:\0A\00", align 1
@.str.85 = private unnamed_addr constant [30 x i8] c"\011  Access size = %u byte(s)\0A\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"\011  SSE = %lu, SRT = %lu\0A\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"\011  SF = %lu, AR = %lu\0A\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"\011  ISV = 0, ISS = 0x%08lx\0A\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"\011  CM = %lu, WnR = %lu\0A\00", align 1
@init_mm = external dso_local global %struct.mm_struct, align 8
@.str.90 = private unnamed_addr constant [50 x i8] c"\011[%016lx] user address but active_mm is swapper\0A\00", align 1
@.str.91 = private unnamed_addr constant [59 x i8] c"\011[%016lx] address between user and kernel address ranges\0A\00", align 1
@.str.92 = private unnamed_addr constant [53 x i8] c"\011%s pgtable: %luk pages, %llu-bit VAs, pgdp=%016lx\0A\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"swapper\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@.str.95 = private unnamed_addr constant [23 x i8] c"\011[%016lx] pgd=%016llx\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"\01c, p4d=%016llx\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"\01c, pud=%016llx\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"\01c, pmd=%016llx\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"\01c, pte=%016llx\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.101 = private unnamed_addr constant [20 x i8] c"hardware breakpoint\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"hardware single-step\00", align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"hardware watchpoint\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"unknown 3\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"aarch32 BKPT\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"aarch32 vector catch\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"aarch64 BRK\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"unknown 7\00", align 1
@bp_hardening_data = external dso_local global %struct.bp_hardening_data, section ".data..percpu..read_mostly", align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ptep_set_access_flags(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %address, %struct.pte_t* noundef %ptep, i64 %entry.coerce, i32 noundef %dirty) local_unnamed_addr #0 {
entry:
  %pte.sroa.0 = alloca i64, align 8
  %pte.sroa.0.0.sroa_cast42 = bitcast i64* %pte.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast42)
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %ptep, i64 0, i32 0
  %pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pte.sroa.0.0.copyload, i64* %pte.sroa.0, align 8
  %call = call fastcc i32 @pte_same(i64 %pte.sroa.0.0.copyload, i64 %entry.coerce) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and = and i64 %entry.coerce, 38280596832650368
  %xor = xor i64 %and, 128
  %0 = bitcast %struct.pte_t* %ptep to i8*
  br label %do.body8

do.body8:                                         ; preds = %do.body8, %if.end
  %pteval.0 = phi i64 [ %pte.sroa.0.0.copyload, %if.end ], [ %call14.i, %do.body8 ]
  %xor9 = xor i64 %pteval.0, 128
  %or = or i64 %xor9, %xor
  %xor11 = xor i64 %or, 128
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %0, i64 noundef %pteval.0, i64 noundef %xor11) #13
  %cmp.not = icmp eq i64 %call14.i, %pteval.0
  br i1 %cmp.not, label %do.end16, label %do.body8

do.end16:                                         ; preds = %do.body8
  %tobool17.not = icmp eq i32 %dirty, 0
  br i1 %tobool17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %do.end16
  call fastcc void @flush_tlb_page(%struct.vm_area_struct* noundef %vma, i64 noundef %address) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.then18, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then18 ], [ 1, %do.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast42)
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pte_same(i64 %pte_a.coerce, i64 %pte_b.coerce) unnamed_addr #2 {
entry:
  %cmp = icmp eq i64 %pte_a.coerce, %pte_b.coerce
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_page(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %uaddr) unnamed_addr #0 {
entry:
  call fastcc void @flush_tlb_page_nosync(%struct.vm_area_struct* noundef %vma, i64 noundef %uaddr) #12
  call void asm sideeffect "dsb ish", "~{memory}"() #14, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_mem_abort(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.fault_info* @esr_to_fault_info(i32 noundef %esr) #12
  %shl.i = shl i64 %far, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %far
  %fn = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 0
  %0 = load i32 (i64, i32, %struct.pt_regs*)*, i32 (i64, i32, %struct.pt_regs*)** %fn, align 8
  %call2 = call i32 %0(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %2 = load i64, i64* %1, align 8
  %and3 = and i64 %2, 15
  %cmp = icmp eq i64 %and3, 0
  br i1 %cmp, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 noundef %and) #15
  call fastcc void @mem_abort_decode(i32 noundef %esr) #12
  call fastcc void @show_pte(i64 noundef %and) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end
  %name = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 3
  %3 = load i8*, i8** %name, align 8
  %sig = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 1
  %4 = load i32, i32* %sig, align 8
  %code = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 2
  %5 = load i32, i32* %code, align 4
  call void @arm64_notify_die(i8* noundef %3, %struct.pt_regs* noundef %regs, i32 noundef %4, i32 noundef %5, i64 noundef %and, i32 noundef %esr) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.fault_info* @esr_to_fault_info(i32 noundef %esr) unnamed_addr #2 {
entry:
  %and = and i32 %esr, 63
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr [64 x %struct.fault_info], [64 x %struct.fault_info]* @fault_info, i64 0, i64 %idx.ext
  ret %struct.fault_info* %add.ptr
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mem_abort_decode(i32 noundef %esr) unnamed_addr #0 {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i64 0, i64 0)) #15
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i64 0, i64 0), i32 noundef %esr) #15
  %conv = zext i32 %esr to i64
  %shr = lshr i64 %conv, 26
  %call8 = call i8* @esr_get_class_string(i32 noundef %esr) #13
  %and10 = and i64 %conv, 33554432
  %tobool.not = icmp eq i64 %and10, 0
  %cond = select i1 %tobool.not, i32 16, i32 32
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.80, i64 0, i64 0), i64 noundef %shr, i8* noundef %call8, i32 noundef %cond) #15
  %and16 = lshr i64 %conv, 11
  %shr17 = and i64 %and16, 3
  %and19 = lshr i64 %conv, 10
  %shr20 = and i64 %and19, 1
  %call21 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i64 0, i64 0), i64 noundef %shr17, i64 noundef %shr20) #15
  %and26 = lshr i64 %conv, 9
  %shr27 = and i64 %and26, 1
  %and29 = lshr i64 %conv, 7
  %shr30 = and i64 %and29, 1
  %call31 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i64 noundef %shr27, i64 noundef %shr30) #15
  %and35 = and i32 %esr, 63
  %call36 = call fastcc %struct.fault_info* @esr_to_fault_info(i32 noundef %esr) #12
  %name = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call36, i64 0, i32 3
  %0 = load i8*, i8** %name, align 8
  %call37 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i64 0, i64 0), i32 noundef %and35, i8* noundef %0) #15
  %call38 = call fastcc i1 @esr_is_data_abort(i32 noundef %esr) #12
  br i1 %call38, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @data_abort_decode(i32 noundef %esr) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_pte(i64 noundef %addr) unnamed_addr #0 {
entry:
  %pgd.sroa.0 = alloca i64, align 8
  %p4d.sroa.0 = alloca i64, align 8
  %pud.sroa.0 = alloca i64, align 8
  %pmd.sroa.0 = alloca i64, align 8
  %pte.sroa.0 = alloca i64, align 8
  %pgd.sroa.0.0.sroa_cast191 = bitcast i64* %pgd.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pgd.sroa.0.0.sroa_cast191)
  %call = call fastcc i1 @is_ttbr0_addr(i64 noundef %addr) #12
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %active_mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 36
  %2 = load %struct.mm_struct*, %struct.mm_struct** %active_mm, align 16
  %cmp = icmp eq %struct.mm_struct* %2, @init_mm
  br i1 %cmp, label %do.end, label %do.end16

do.end:                                           ; preds = %if.then
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.90, i64 0, i64 0), i64 noundef %addr) #15
  br label %cleanup126

if.else:                                          ; preds = %entry
  %call4 = call fastcc i1 @is_ttbr1_addr(i64 noundef %addr) #12
  br i1 %call4, label %do.end16, label %do.end9

do.end9:                                          ; preds = %if.else
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.91, i64 0, i64 0), i64 noundef %addr) #15
  br label %cleanup126

do.end16:                                         ; preds = %if.else, %if.then
  %mm.0 = phi %struct.mm_struct* [ %2, %if.then ], [ @init_mm, %if.else ]
  %cmp18 = icmp eq %struct.mm_struct* %mm.0, @init_mm
  %cond = select i1 %cmp18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i64 0, i64 0)
  %3 = load i64, i64* @vabits_actual, align 8
  %call19 = call fastcc i64 @mm_to_pgd_phys(%struct.mm_struct* noundef %mm.0) #12
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.92, i64 0, i64 0), i8* noundef %cond, i64 noundef 4, i64 noundef %3, i64 noundef %call19) #15
  %pgd21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm.0, i64 0, i32 0, i32 8
  %4 = load %struct.pgd_t*, %struct.pgd_t** %pgd21, align 8
  %call22 = call fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef %4, i64 noundef %addr) #12
  %pgd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pgd_t, %struct.pgd_t* %call22, i64 0, i32 0
  %pgd.sroa.0.0.copyload = load volatile i64, i64* %pgd.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pgd.sroa.0.0.copyload, i64* %pgd.sroa.0, align 8
  %call31 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i64 0, i64 0), i64 noundef %addr, i64 noundef %pgd.sroa.0.0.copyload) #15
  %p4d.sroa.0.0.sroa_cast189 = bitcast i64* %p4d.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %p4d.sroa.0.0.sroa_cast189)
  %pud.sroa.0.0.sroa_cast187 = bitcast i64* %pud.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast187)
  %pmd.sroa.0.0.sroa_cast185 = bitcast i64* %pmd.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast185)
  %pte.sroa.0.0.sroa_cast183 = bitcast i64* %pte.sroa.0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast183)
  %call39 = call fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef %call22) #12
  %p4d.sroa.0.0..sroa_idx = getelementptr inbounds %struct.p4d_t, %struct.p4d_t* %call39, i64 0, i32 0, i32 0
  %p4d.sroa.0.0.copyload = load volatile i64, i64* %p4d.sroa.0.0..sroa_idx, align 8
  store volatile i64 %p4d.sroa.0.0.copyload, i64* %p4d.sroa.0, align 8
  %call49 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i64 0, i64 0), i64 noundef %p4d.sroa.0.0.copyload) #15
  %call61 = call fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef %call39) #12
  %pud.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pud_t, %struct.pud_t* %call61, i64 0, i32 0, i32 0, i32 0
  %pud.sroa.0.0.copyload = load volatile i64, i64* %pud.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pud.sroa.0.0.copyload, i64* %pud.sroa.0, align 8
  %call72 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i64 0, i64 0), i64 noundef %pud.sroa.0.0.copyload) #15
  %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.143 = load i64, i64* %pud.sroa.0, align 8
  %and = and i64 %pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.pud.sroa.0.0.143, 3
  %cmp81 = icmp eq i64 %and, 3
  br i1 %cmp81, label %if.end83, label %cleanup

if.end83:                                         ; preds = %do.end16
  %call84 = call fastcc %struct.pmd_t* @pmd_offset(%struct.pud_t* noundef %call61, i64 noundef %addr) #12
  %pmd.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %call84, i64 0, i32 0
  %pmd.sroa.0.0.copyload = load volatile i64, i64* %pmd.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pmd.sroa.0.0.copyload, i64* %pmd.sroa.0, align 8
  %call93 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i64 0, i64 0), i64 noundef %pmd.sroa.0.0.copyload) #15
  %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.136 = load i64, i64* %pmd.sroa.0, align 8
  %and98 = and i64 %pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.pmd.sroa.0.0.136, 3
  %cmp99 = icmp eq i64 %and98, 3
  br i1 %cmp99, label %if.end101, label %cleanup

if.end101:                                        ; preds = %if.end83
  %call102 = call fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* noundef nonnull %call84, i64 noundef %addr) #12
  %pte.sroa.0.0..sroa_idx = getelementptr inbounds %struct.pte_t, %struct.pte_t* %call102, i64 0, i32 0
  %pte.sroa.0.0.copyload = load volatile i64, i64* %pte.sroa.0.0..sroa_idx, align 8
  store volatile i64 %pte.sroa.0.0.copyload, i64* %pte.sroa.0, align 8
  %call111 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i64 0, i64 0), i64 noundef %pte.sroa.0.0.copyload) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %do.end16, %if.end101
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pte.sroa.0.0.sroa_cast183)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pmd.sroa.0.0.sroa_cast185)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pud.sroa.0.0.sroa_cast187)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %p4d.sroa.0.0.sroa_cast189)
  %call125 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #15
  br label %cleanup126

cleanup126:                                       ; preds = %cleanup, %do.end9, %do.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %pgd.sroa.0.0.sroa_cast191)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm64_notify_die(i8* noundef, %struct.pt_regs* noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_sp_pc_abort(i64 noundef %addr, i32 noundef %esr, %struct.pt_regs* noundef %regs) local_unnamed_addr #0 {
entry:
  call void @arm64_notify_die(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.pt_regs* noundef %regs, i32 noundef 7, i32 noundef 1, i64 noundef %addr, i32 noundef %esr) #13
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @hook_debug_fault_code(i32 noundef %nr, i32 (i64, i32, %struct.pt_regs*)* noundef %fn, i32 noundef %sig, i32 noundef %code, i8* noundef %name) local_unnamed_addr #5 section ".init.text" {
entry:
  %cmp1 = icmp ugt i32 %nr, 7
  br i1 %cmp1, label %do.body5, label %do.end8, !prof !10

do.body5:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/fault.c\22; .popsection; .long 14472b - 14470b; .short 861; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !11
  unreachable

do.end8:                                          ; preds = %entry
  %conv24 = zext i32 %nr to i64
  %fn9 = getelementptr [8 x %struct.fault_info], [8 x %struct.fault_info]* @debug_fault_info, i64 0, i64 %conv24, i32 0
  store i32 (i64, i32, %struct.pt_regs*)* %fn, i32 (i64, i32, %struct.pt_regs*)** %fn9, align 8
  %sig12 = getelementptr [8 x %struct.fault_info], [8 x %struct.fault_info]* @debug_fault_info, i64 0, i64 %conv24, i32 1
  store i32 %sig, i32* %sig12, align 8
  %code15 = getelementptr [8 x %struct.fault_info], [8 x %struct.fault_info]* @debug_fault_info, i64 0, i64 %conv24, i32 2
  store i32 %code, i32* %code15, align 4
  %name18 = getelementptr [8 x %struct.fault_info], [8 x %struct.fault_info]* @debug_fault_info, i64 0, i64 %conv24, i32 3
  store i8* %name, i8** %name18, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_debug_exception(i64 noundef %addr_if_watchpoint, i32 noundef %esr, %struct.pt_regs* noundef %regs) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.fault_info* @esr_to_debug_fault_info(i32 noundef %esr) #12
  %call1 = call fastcc i64 @instruction_pointer(%struct.pt_regs* noundef %regs) #12
  call fastcc void @debug_exception_enter() #12
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and = and i64 %1, 15
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = call fastcc i1 @is_ttbr0_addr(i64 noundef %call1) #12
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @arm64_apply_bp_hardening() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %fn = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 0
  %2 = load i32 (i64, i32, %struct.pt_regs*)*, i32 (i64, i32, %struct.pt_regs*)** %fn, align 8
  %call3 = call i32 %2(i64 noundef %addr_if_watchpoint, i32 noundef %esr, %struct.pt_regs* noundef %regs) #13
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 3
  %3 = load i8*, i8** %name, align 8
  %sig = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 1
  %4 = load i32, i32* %sig, align 8
  %code = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 2
  %5 = load i32, i32* %code, align 4
  call void @arm64_notify_die(i8* noundef %3, %struct.pt_regs* noundef %regs, i32 noundef %4, i32 noundef %5, i64 noundef %call1, i32 noundef %esr) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  call fastcc void @debug_exception_exit() #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc nonnull %struct.fault_info* @esr_to_debug_fault_info(i32 noundef %esr) unnamed_addr #2 {
entry:
  %shr = lshr i32 %esr, 27
  %and = and i32 %shr, 7
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr [8 x %struct.fault_info], [8 x %struct.fault_info]* @debug_fault_info, i64 0, i64 %idx.ext
  ret %struct.fault_info* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @instruction_pointer(%struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #6 {
entry:
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @debug_exception_enter() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_ttbr0_addr(i64 noundef %addr) unnamed_addr #6 {
entry:
  %0 = load i64, i64* @vabits_actual, align 8
  %addr.highbits = lshr i64 %addr, %0
  %cmp = icmp eq i64 %addr.highbits, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arm64_apply_bp_hardening() unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #13
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %cpus_have_const_cap.exit

if.then3.i:                                       ; preds = %entry
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 36, i32 0)) #13
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br i1 %cmp1.i.i, label %do.body, label %cleanup

cpus_have_const_cap.exit:                         ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 36) #13
  br i1 %call6.i, label %do.body, label %cleanup

do.body:                                          ; preds = %if.then3.i, %cpus_have_const_cap.exit
  %call2 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call2, ptrtoint (%struct.bp_hardening_data* @bp_hardening_data to i64)
  %0 = inttoptr i64 %add to %struct.bp_hardening_data*
  %fn = getelementptr inbounds %struct.bp_hardening_data, %struct.bp_hardening_data* %0, i64 0, i32 1
  %1 = load void ()*, void ()** %fn, align 8
  %tobool.not = icmp eq void ()* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %do.body
  call void %1() #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %do.body, %if.then3, %cpus_have_const_cap.exit
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @debug_exception_exit() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.page* @alloc_zeroed_user_highpage_movable(%struct.vm_area_struct* nocapture noundef readnone %vma, i64 noundef %vaddr) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.page* @alloc_pages() #12
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages() unnamed_addr #0 {
entry:
  call fastcc void @numa_node_id() #12
  %call1 = call fastcc %struct.page* @alloc_pages_node() #12
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tag_clear_highpage(%struct.page* noundef %page) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #14, !srcloc !14
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_page_nosync(%struct.vm_area_struct* nocapture noundef readonly %vma, i64 noundef %uaddr) unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  %shr = lshr i64 %uaddr, 12
  %and = and i64 %shr, 17592186044415
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  %0 = load %struct.mm_struct*, %struct.mm_struct** %vm_mm, align 8
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %0, i64 0, i32 0, i32 42, i32 0, i32 0
  %1 = load volatile i64, i64* %counter.i, align 8
  %shl = shl i64 %1, 48
  %or = or i64 %shl, %and
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or) #14, !srcloc !16
  %call2 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #12
  br i1 %call2, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %or3 = or i64 %or, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or3) #14, !srcloc !17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #7 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #13
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #13
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 41) #13
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap(i32 noundef %num) unnamed_addr #7 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %and.i = and i32 %num, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @do_bad(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* nocapture noundef readnone %regs) #2 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @do_translation_fault(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) #0 {
entry:
  %shl.i = shl i64 %far, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %far
  %call1 = call fastcc i1 @is_ttbr0_addr(i64 noundef %and) #12
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @do_page_fault(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @do_bad_area(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @do_page_fault(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %shl.i = shl i64 %far, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %far
  %call4 = call fastcc i1 @pagefault_disabled() #12
  br i1 %call4, label %no_context, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call5 = call fastcc i32 @preempt_count() #12
  %cmp = icmp eq i32 %call5, 0
  %tobool = icmp ne %struct.mm_struct* %2, null
  %or.cond = select i1 %cmp, i1 %tobool, i1 false
  br i1 %or.cond, label %if.end8, label %no_context

if.end8:                                          ; preds = %lor.lhs.false
  %3 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %4 = load i64, i64* %3, align 8
  %and9 = and i64 %4, 15
  %cmp10 = icmp eq i64 %and9, 0
  %spec.select = select i1 %cmp10, i32 596, i32 532
  %call13 = call fastcc i1 @is_el0_instruction_abort(i32 noundef %esr) #12
  br i1 %call13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end8
  %or15 = or i32 %spec.select, 256
  br label %if.end26

if.else:                                          ; preds = %if.end8
  %call16 = call fastcc i1 @is_write_abort(i32 noundef %esr) #12
  br i1 %call16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else
  %or18 = or i32 %spec.select, 1
  br label %if.end26

if.else19:                                        ; preds = %if.else
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #13
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else19
  %call.i9.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 15, i32 0)) #13
  %cmp1.i.i = icmp sgt i32 %call.i9.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %if.else19
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 15) #13
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  %spec.select179 = select i1 %retval.0.i, i64 3, i64 7
  br label %if.end26

if.end26:                                         ; preds = %cpus_have_const_cap.exit, %if.then17, %if.then14
  %vm_flags.0 = phi i64 [ 4, %if.then14 ], [ 2, %if.then17 ], [ %spec.select179, %cpus_have_const_cap.exit ]
  %mm_flags.1 = phi i32 [ %or15, %if.then14 ], [ %or18, %if.then17 ], [ %spec.select, %cpus_have_const_cap.exit ]
  %call27 = call fastcc i1 @is_ttbr0_addr(i64 noundef %and) #12
  br i1 %call27, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.end26
  %call28 = call fastcc i1 @is_el1_permission_fault(i64 noundef %and, i32 noundef %esr) #12
  br i1 %call28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %land.lhs.true
  %call30 = call fastcc i1 @is_el1_instruction_abort(i32 noundef %esr) #12
  br i1 %call30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then29
  call fastcc void @die_kernel_fault(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i64 0, i64 0), i64 noundef %and, i32 noundef %esr, %struct.pt_regs* noundef %regs) #12
  unreachable

if.end32:                                         ; preds = %if.then29
  %5 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %call33 = call %struct.exception_table_entry* @search_exception_tables(i64 noundef %6) #13
  %tobool34.not = icmp eq %struct.exception_table_entry* %call33, null
  br i1 %tobool34.not, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  call fastcc void @die_kernel_fault(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.77, i64 0, i64 0), i64 noundef %and, i32 noundef %esr, %struct.pt_regs* noundef %regs) #12
  unreachable

if.end37:                                         ; preds = %if.end32, %land.lhs.true, %if.end26
  %call38 = call fastcc i1 @mmap_read_trylock(%struct.mm_struct* noundef nonnull %2) #12
  br i1 %call38, label %if.end53, label %if.then39

if.then39:                                        ; preds = %if.end37
  %7 = load i64, i64* %3, align 8
  %and41 = and i64 %7, 15
  %cmp42 = icmp eq i64 %and41, 0
  br i1 %cmp42, label %retry, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.then39
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %call45 = call %struct.exception_table_entry* @search_exception_tables(i64 noundef %9) #13
  %tobool46.not = icmp eq %struct.exception_table_entry* %call45, null
  br i1 %tobool46.not, label %no_context, label %retry

retry:                                            ; preds = %if.then39, %land.lhs.true43, %if.then68
  %mm_flags.2 = phi i32 [ %or69, %if.then68 ], [ %mm_flags.1, %if.then39 ], [ %mm_flags.1, %land.lhs.true43 ]
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef nonnull %2) #12
  br label %if.end53

if.end53:                                         ; preds = %if.end37, %retry
  %mm_flags.3 = phi i32 [ %mm_flags.1, %if.end37 ], [ %mm_flags.2, %retry ]
  %call54 = call fastcc i32 @__do_page_fault(%struct.mm_struct* noundef nonnull %2, i64 noundef %and, i32 noundef %mm_flags.3, i64 noundef %vm_flags.0, %struct.pt_regs* noundef %regs) #12
  %call55 = call fastcc i1 @fault_signal_pending(i32 noundef %call54, %struct.pt_regs* noundef %regs) #12
  br i1 %call55, label %if.then56, label %if.end62

if.then56:                                        ; preds = %if.end53
  %10 = load i64, i64* %3, align 8
  %and58 = and i64 %10, 15
  %cmp59 = icmp eq i64 %and58, 0
  br i1 %cmp59, label %cleanup, label %no_context

if.end62:                                         ; preds = %if.end53
  %and63 = and i32 %call54, 1024
  %tobool64.not = icmp eq i32 %and63, 0
  %and66 = and i32 %mm_flags.3, 4
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond180 = or i1 %tobool67.not, %tobool64.not
  br i1 %or.cond180, label %if.end71, label %if.then68

if.then68:                                        ; preds = %if.end62
  %or69 = or i32 %mm_flags.3, 32
  br label %retry

if.end71:                                         ; preds = %if.end62
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef nonnull %2) #12
  %and72 = and i32 %call54, 198771
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %cleanup, label %if.end78, !prof !18

if.end78:                                         ; preds = %if.end71
  %11 = load i64, i64* %3, align 8
  %and80 = and i64 %11, 15
  %cmp81 = icmp eq i64 %and80, 0
  br i1 %cmp81, label %if.end84, label %no_context

if.end84:                                         ; preds = %if.end78
  %and85 = and i32 %call54, 1
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end88, label %if.then87

if.then87:                                        ; preds = %if.end84
  call void @pagefault_out_of_memory() #13
  br label %cleanup

if.end88:                                         ; preds = %if.end84
  %call89 = call fastcc %struct.fault_info* @esr_to_fault_info(i32 noundef %esr) #12
  call fastcc void @set_thread_esr(i64 noundef %and, i32 noundef %esr) #12
  %and90 = and i32 %call54, 2
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.else93, label %if.then92

if.then92:                                        ; preds = %if.end88
  %name = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call89, i64 0, i32 3
  %12 = load i8*, i8** %name, align 8
  call void @arm64_force_sig_fault(i32 noundef 7, i32 noundef 2, i64 noundef %far, i8* noundef %12) #13
  br label %cleanup

if.else93:                                        ; preds = %if.end88
  %and94 = and i32 %call54, 48
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else105, label %if.then96

if.then96:                                        ; preds = %if.else93
  %and97 = and i32 %call54, 32
  %tobool98.not = icmp eq i32 %and97, 0
  %spec.select181 = select i1 %tobool98.not, i16 12, i16 0
  %name104 = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call89, i64 0, i32 3
  %13 = load i8*, i8** %name104, align 8
  call void @arm64_force_sig_mceerr(i32 noundef 4, i64 noundef %far, i16 noundef %spec.select181, i8* noundef %13) #13
  br label %cleanup

if.else105:                                       ; preds = %if.else93
  %cmp106 = icmp eq i32 %call54, 131072
  %cond = select i1 %cmp106, i32 2, i32 1
  %name108 = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call89, i64 0, i32 3
  %14 = load i8*, i8** %name108, align 8
  call void @arm64_force_sig_fault(i32 noundef 11, i32 noundef %cond, i64 noundef %far, i8* noundef %14) #13
  br label %cleanup

no_context:                                       ; preds = %if.end78, %if.then56, %land.lhs.true43, %entry, %lor.lhs.false
  call fastcc void @__do_kernel_fault(i64 noundef %and, i32 noundef %esr, %struct.pt_regs* noundef %regs) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %if.else105, %if.then96, %if.end71, %if.then56, %no_context, %if.then87
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @do_sea(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) #0 {
entry:
  %call = call fastcc %struct.fault_info* @esr_to_fault_info(i32 noundef %esr) #12
  %0 = and i32 %esr, 1024
  %tobool.not = icmp eq i32 %0, 0
  %shl.i = shl i64 %far, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and6 = and i64 %shr.i, %far
  %siaddr.0 = select i1 %tobool.not, i64 %and6, i64 0
  %name = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 3
  %1 = load i8*, i8** %name, align 8
  %sig = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 1
  %2 = load i32, i32* %sig, align 8
  %code = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call, i64 0, i32 2
  %3 = load i32, i32* %code, align 4
  call void @arm64_notify_die(i8* noundef %1, %struct.pt_regs* noundef %regs, i32 noundef %2, i32 noundef %3, i64 noundef %siaddr.0, i32 noundef %esr) #13
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @do_tag_check_fault(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) #0 {
entry:
  %shl.i = shl i64 %far, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, -1080863910568919041
  %and1 = and i64 %far, 1080863910568919040
  %or = or i64 %and, %and1
  call fastcc void @do_bad_area(i64 noundef %or, i32 noundef %esr, %struct.pt_regs* noundef %regs) #12
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @do_alignment_fault(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) #0 {
entry:
  call fastcc void @do_bad_area(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) #12
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_bad_area(i64 noundef %far, i32 noundef %esr, %struct.pt_regs* noundef %regs) unnamed_addr #0 {
entry:
  %shl.i = shl i64 %far, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %far
  %0 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  %and1 = and i64 %1, 15
  %cmp = icmp eq i64 %and1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call fastcc %struct.fault_info* @esr_to_fault_info(i32 noundef %esr) #12
  call fastcc void @set_thread_esr(i64 noundef %and, i32 noundef %esr) #12
  %sig = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call2, i64 0, i32 1
  %2 = load i32, i32* %sig, align 8
  %code = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call2, i64 0, i32 2
  %3 = load i32, i32* %code, align 4
  %name = getelementptr inbounds %struct.fault_info, %struct.fault_info* %call2, i64 0, i32 3
  %4 = load i8*, i8** %name, align 8
  call void @arm64_force_sig_fault(i32 noundef %2, i32 noundef %3, i64 noundef %far, i8* noundef %4) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @__do_kernel_fault(i64 noundef %and, i32 noundef %esr, %struct.pt_regs* noundef %regs) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_thread_esr(i64 noundef %address, i32 noundef %esr) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fault_address = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 6
  store i64 %address, i64* %fault_address, align 8
  %call4 = call fastcc i1 @is_ttbr0_addr(i64 noundef %address) #12
  br i1 %call4, label %if.end30, label %if.then

if.then:                                          ; preds = %entry
  %2 = lshr i32 %esr, 26
  %shr = zext i32 %2 to i64
  switch i64 %shr, label %do.end [
    i64 36, label %sw.bb
    i64 32, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then
  %and6 = and i32 %esr, -33554112
  %or = or i32 %and6, 4
  br label %if.end30

sw.bb8:                                           ; preds = %if.then
  %and10 = and i32 %esr, -33554432
  %or12 = or i32 %and10, 4
  br label %if.end30

do.end:                                           ; preds = %if.then
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i64 0, i64 0), i32 noundef %esr) #13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/fault.c\22; .popsection; .long 14472b - 14470b; .short 442; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !19
  br label %if.end30

if.end30:                                         ; preds = %sw.bb, %sw.bb8, %do.end, %entry
  %esr.addr.0 = phi i32 [ %esr, %entry ], [ 0, %do.end ], [ %or12, %sw.bb8 ], [ %or, %sw.bb ]
  %conv31 = zext i32 %esr.addr.0 to i64
  %fault_code = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 137, i32 7
  store i64 %conv31, i64* %fault_code, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm64_force_sig_fault(i32 noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__do_kernel_fault(i64 noundef %addr, i32 noundef %esr, %struct.pt_regs* noundef %regs) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @is_el1_instruction_abort(i32 noundef %esr) #12
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @fixup_exception(%struct.pt_regs* noundef %regs) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call fastcc i1 @is_spurious_el1_translation_fault(i64 noundef %addr, i32 noundef %esr) #12
  br i1 %call2, label %land.rhs, label %if.end45

land.rhs:                                         ; preds = %if.end
  %call5 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @__do_kernel_fault._rs, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.__do_kernel_fault, i64 0, i64 0)) #13
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %do.end, !prof !18

do.end:                                           ; preds = %land.rhs
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.68, i64 0, i64 0), i64 noundef %addr) #13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/mm/fault.c\22; .popsection; .long 14472b - 14470b; .short 366; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #14, !srcloc !20
  br label %cleanup

if.end45:                                         ; preds = %if.end
  %call46 = call fastcc i1 @is_el1_mte_sync_tag_check_fault(i32 noundef %esr) #12
  br i1 %call46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end45
  call fastcc void @do_tag_recovery() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end45
  %call49 = call fastcc i1 @is_el1_permission_fault(i64 noundef %addr, i32 noundef %esr) #12
  br i1 %call49, label %if.then50, label %if.else59

if.then50:                                        ; preds = %if.end48
  %0 = and i32 %esr, 64
  %tobool52.not = icmp eq i32 %0, 0
  br i1 %tobool52.not, label %if.end70.sink.split, label %if.end70

if.else59:                                        ; preds = %if.end48
  %cmp = icmp ult i64 %addr, 4096
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.then50, %if.else59
  %.sink97 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i64 0, i64 0), %if.else59 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i64 0, i64 0), %if.then50 ]
  %.sink = phi i8* [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.72, i64 0, i64 0), %if.else59 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i64 0, i64 0), %if.then50 ]
  %cmp.sink = phi i1 [ %cmp, %if.else59 ], [ %call, %if.then50 ]
  %spec.select = select i1 %cmp.sink, i8* %.sink, i8* %.sink97
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.then50
  %msg.0 = phi i8* [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.69, i64 0, i64 0), %if.then50 ], [ %spec.select, %if.end70.sink.split ]
  call fastcc void @die_kernel_fault(i8* noundef %msg.0, i64 noundef %addr, i32 noundef %esr, %struct.pt_regs* noundef %regs) #12
  unreachable

cleanup:                                          ; preds = %land.rhs, %do.end, %land.lhs.true, %if.then47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_el1_instruction_abort(i32 noundef %esr) unnamed_addr #2 {
entry:
  %.mask = and i32 %esr, -67108864
  %cmp = icmp eq i32 %.mask, -2080374784
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixup_exception(%struct.pt_regs* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @is_spurious_el1_translation_fault(i64 noundef %addr, i32 noundef %esr) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @is_el1_data_abort(i32 noundef %esr) #12
  %and = and i32 %esr, 60
  %cmp.not = icmp eq i32 %and, 4
  %or.cond = and i1 %cmp.not, %call
  br i1 %or.cond, label %do.body1, label %cleanup

do.body1:                                         ; preds = %entry
  %call3 = call fastcc i64 @arch_local_irq_save() #12
  call void asm sideeffect "at s1e1r, $0", "r"(i64 %addr) #14, !srcloc !21
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !22
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 48\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dmb sy\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #14, !srcloc !23
  %0 = call i64 asm sideeffect "mrs $0, par_el1", "=r"() #14, !srcloc !24
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 48\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dmb sy\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #14, !srcloc !25
  call fastcc void @arch_local_irq_restore(i64 noundef %call3) #12
  %and23 = and i64 %0, 1
  %tobool.not = icmp eq i64 %and23, 0
  br i1 %tobool.not, label %cleanup, label %do.end40

do.end40:                                         ; preds = %do.body1
  %1 = and i64 %0, 120
  %cmp44 = icmp ne i64 %1, 8
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry, %do.end40
  %retval.0 = phi i1 [ %cmp44, %do.end40 ], [ false, %entry ], [ true, %do.body1 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_el1_mte_sync_tag_check_fault(i32 noundef %esr) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @is_el1_data_abort(i32 noundef %esr) #12
  %and = and i32 %esr, 63
  %cmp = icmp eq i32 %and, 17
  %retval.0 = and i1 %cmp, %call
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_tag_recovery() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, sctlr_el1", "=r"() #14, !srcloc !26
  %and = and i64 %0, -3298534883329
  %cmp.not = icmp eq i64 %and, %0
  br i1 %cmp.not, label %if.end, label %do.body1

do.body1:                                         ; preds = %entry
  call void asm sideeffect "msr sctlr_el1, ${0:x}", "rZ"(i64 %and) #14, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry
  call void asm sideeffect "isb", "~{memory}"() #14, !srcloc !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_el1_permission_fault(i64 noundef %addr, i32 noundef %esr) unnamed_addr #6 {
entry:
  %and = and i32 %esr, 60
  %call = call fastcc i1 @is_el1_data_abort(i32 noundef %esr) #12
  br i1 %call, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i1 @is_el1_instruction_abort(i32 noundef %esr) #12
  br i1 %call1, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp = icmp eq i32 %and, 12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true
  %retval.0 = phi i1 [ false, %land.lhs.true ], [ %cmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @die_kernel_fault(i8* noundef %msg, i64 noundef %addr, i32 noundef %esr, %struct.pt_regs* noundef %regs) unnamed_addr #8 {
entry:
  call void @bust_spinlocks(i32 noundef 1) #13
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i64 0, i64 0), i8* noundef %msg, i64 noundef %addr) #15
  call fastcc void @mem_abort_decode(i32 noundef %esr) #12
  call fastcc void @show_pte(i64 noundef %addr) #12
  call void @die(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), %struct.pt_regs* noundef %regs, i32 noundef %esr) #13
  call void @bust_spinlocks(i32 noundef 0) #13
  call void @do_exit(i64 noundef 9) #17
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_el1_data_abort(i32 noundef %esr) unnamed_addr #2 {
entry:
  %.mask = and i32 %esr, -67108864
  %cmp = icmp eq i32 %.mask, -1811939328
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #12
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #14, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #14, !srcloc !30
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #14, !srcloc !31
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #12
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #14, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bust_spinlocks(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @die(i8* noundef, %struct.pt_regs* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @pagefault_disabled() unnamed_addr #10 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 134
  %2 = load i32, i32* %pagefault_disabled, align 16
  %cmp = icmp ne i32 %2, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.11* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_el0_instruction_abort(i32 noundef %esr) unnamed_addr #2 {
entry:
  %.mask = and i32 %esr, -67108864
  %cmp = icmp eq i32 %.mask, -2147483648
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_write_abort(i32 noundef %esr) unnamed_addr #2 {
entry:
  %0 = and i32 %esr, 320
  %1 = icmp eq i32 %0, 64
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.exception_table_entry* @search_exception_tables(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @mmap_read_trylock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_read_trylock(%struct.rw_semaphore* noundef %mmap_lock) #13
  %cmp = icmp ne i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_read(%struct.rw_semaphore* noundef %mmap_lock) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__do_page_fault(%struct.mm_struct* noundef %mm, i64 noundef %addr, i32 noundef %mm_flags, i64 noundef %vm_flags, %struct.pt_regs* noundef %regs) unnamed_addr #0 {
entry:
  %call = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef %mm, i64 noundef %addr) #13
  %tobool.not = icmp eq %struct.vm_area_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 0
  %0 = load i64, i64* %vm_start, align 8
  %cmp = icmp ugt i64 %0, %addr
  br i1 %cmp, label %if.then12, label %if.end21, !prof !10

if.then12:                                        ; preds = %if.end
  %vm_flags13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 8
  %1 = load i64, i64* %vm_flags13, align 8
  %and = and i64 %1, 256
  %tobool14.not = icmp eq i64 %and, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.then12
  %call17 = call i32 @expand_stack(%struct.vm_area_struct* noundef nonnull %call, i64 noundef %addr) #13
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.end16, %if.end
  %vm_flags22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call, i64 0, i32 8
  %2 = load i64, i64* %vm_flags22, align 8
  %and23 = and i64 %2, %vm_flags
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call27 = call i32 @handle_mm_fault(%struct.vm_area_struct* noundef nonnull %call, i64 noundef %addr, i32 noundef %mm_flags, %struct.pt_regs* noundef %regs) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end16, %if.then12, %entry, %if.end26
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ 65536, %entry ], [ 65536, %if.then12 ], [ 65536, %if.end16 ], [ 131072, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @fault_signal_pending(i32 noundef %fault_flags, %struct.pt_regs* nocapture noundef readonly %regs) unnamed_addr #0 {
entry:
  %and = and i32 %fault_flags, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.end8, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %1) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.rhs, label %land.end8

lor.rhs:                                          ; preds = %land.rhs
  %2 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 3
  %3 = load i64, i64* %2, align 8
  %and3 = and i64 %3, 15
  %cmp = icmp eq i64 %and3, 0
  br i1 %cmp, label %land.rhs4, label %land.end8

land.rhs4:                                        ; preds = %lor.rhs
  %call6 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #12
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end8

land.end8:                                        ; preds = %land.rhs, %land.rhs4, %lor.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %tobool7, %land.rhs4 ]
  ret i1 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagefault_out_of_memory() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm64_force_sig_mceerr(i32 noundef, i64 noundef, i16 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @expand_stack(%struct.vm_area_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_mm_fault(%struct.vm_area_struct* noundef, i64 noundef, i32 noundef, %struct.pt_regs* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #12
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !18

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #12
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #6 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #12
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #7 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #12
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #12
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #7 {
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
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #2 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #6 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @esr_get_class_string(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @esr_is_data_abort(i32 noundef %esr) unnamed_addr #2 {
entry:
  %0 = and i32 %esr, -134217728
  %1 = icmp eq i32 %0, -1879048192
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @data_abort_decode(i32 noundef %esr) unnamed_addr #0 {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i64 0, i64 0)) #15
  %conv = zext i32 %esr to i64
  %and = and i64 %conv, 16777216
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end28, label %do.end2

do.end2:                                          ; preds = %entry
  %and5 = lshr i32 %esr, 22
  %shr = and i32 %and5, 3
  %shl = shl nuw nsw i32 1, %shr
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.85, i64 0, i64 0), i32 noundef %shl) #15
  %and11 = lshr i64 %conv, 21
  %shr12 = and i64 %and11, 1
  %and14 = lshr i64 %conv, 16
  %shr15 = and i64 %and14, 31
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0), i64 noundef %shr12, i64 noundef %shr15) #15
  %and21 = lshr i64 %conv, 15
  %shr22 = and i64 %and21, 1
  %and24 = lshr i64 %conv, 14
  %shr25 = and i64 %and24, 1
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i64 0, i64 0), i64 noundef %shr22, i64 noundef %shr25) #15
  br label %do.end34

do.end28:                                         ; preds = %entry
  %and31 = and i64 %conv, 33554431
  %call32 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i64 0, i64 0), i64 noundef %and31) #15
  br label %do.end34

do.end34:                                         ; preds = %do.end28, %do.end2
  %and37 = lshr i64 %conv, 8
  %shr38 = and i64 %and37, 1
  %and40 = lshr i64 %conv, 6
  %shr41 = and i64 %and40, 1
  %call42 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.89, i64 0, i64 0), i64 noundef %shr38, i64 noundef %shr41) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_ttbr1_addr(i64 noundef %addr) unnamed_addr #2 {
entry:
  %cmp = icmp ugt i64 %addr, -549755813889
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @mm_to_pgd_phys(%struct.mm_struct* noundef readonly %mm) unnamed_addr #6 {
entry:
  %cmp = icmp eq %struct.mm_struct* %mm, @init_mm
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.pgd_t*, %struct.pgd_t** getelementptr inbounds (%struct.mm_struct, %struct.mm_struct* @init_mm, i64 0, i32 0, i32 8), align 8
  %1 = ptrtoint %struct.pgd_t* %0 to i64
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 %1, %2
  br label %return

if.end:                                           ; preds = %entry
  %pgd1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  %3 = bitcast %struct.pgd_t** %pgd1 to i8**
  %4 = load i8*, i8** %3, align 8
  %call = call fastcc i64 @virt_to_phys(i8* noundef %4) #12
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ %call, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pgd_t* @pgd_offset_pgd(%struct.pgd_t* noundef readnone %pgd, i64 noundef %address) unnamed_addr #2 {
entry:
  %shr = lshr i64 %address, 30
  %and = and i64 %shr, 511
  %add.ptr = getelementptr %struct.pgd_t, %struct.pgd_t* %pgd, i64 %and
  ret %struct.pgd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.p4d_t* @p4d_offset(%struct.pgd_t* noundef readnone %pgd) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.pgd_t* %pgd to %struct.p4d_t*
  ret %struct.p4d_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.pud_t* @pud_offset(%struct.p4d_t* noundef readnone %p4d) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.p4d_t* %p4d to %struct.pud_t*
  ret %struct.pud_t* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pmd_offset(%struct.pud_t* nocapture noundef readonly %pud, i64 noundef %address) unnamed_addr #6 {
entry:
  %coerce.dive2 = getelementptr inbounds %struct.pud_t, %struct.pud_t* %pud, i64 0, i32 0, i32 0, i32 0
  %0 = load i64, i64* %coerce.dive2, align 8
  %call = call fastcc %struct.pmd_t* @pud_pgtable(i64 %0) #12
  %call3 = call fastcc i64 @pmd_index(i64 noundef %address) #12
  %add.ptr = getelementptr %struct.pmd_t, %struct.pmd_t* %call, i64 %call3
  ret %struct.pmd_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pte_t* @pte_offset_kernel(%struct.pmd_t* nocapture noundef readonly %pmd, i64 noundef %address) unnamed_addr #6 {
entry:
  %coerce.dive = getelementptr inbounds %struct.pmd_t, %struct.pmd_t* %pmd, i64 0, i32 0
  %0 = load i64, i64* %coerce.dive, align 8
  %call = call fastcc i64 @pmd_page_vaddr(i64 %0) #12
  %1 = inttoptr i64 %call to %struct.pte_t*
  %call1 = call fastcc i64 @pte_index(i64 noundef %address) #12
  %add.ptr = getelementptr %struct.pte_t, %struct.pte_t* %1, i64 %call1
  ret %struct.pte_t* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @virt_to_phys(i8* noundef %x) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %x to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %0, %2
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc nonnull %struct.pmd_t* @pud_pgtable(i64 %pud.coerce) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @pud_page_paddr(i64 %pud.coerce) #12
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  %1 = inttoptr i64 %or to %struct.pmd_t*
  ret %struct.pmd_t* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_index(i64 noundef %address) unnamed_addr #2 {
entry:
  %shr = lshr i64 %address, 21
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pud_page_paddr(i64 %pud.coerce) unnamed_addr #2 {
entry:
  %and = and i64 %pud.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pmd_page_vaddr(i64 %pmd.coerce) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) #12
  %0 = load i64, i64* @memstart_addr, align 8
  %sub = sub i64 %call, %0
  %or = or i64 %sub, -549755813888
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pte_index(i64 noundef %address) unnamed_addr #2 {
entry:
  %shr = lshr i64 %address, 12
  %and = and i64 %shr, 511
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pmd_page_paddr(i64 %pmd.coerce) unnamed_addr #2 {
entry:
  %and = and i64 %pmd.coerce, 281474976706560
  ret i64 %and
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @early_brk64(i64 noundef, i32 noundef, %struct.pt_regs* noundef) #3 section ".init.text"

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #10 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !33
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node() unnamed_addr #0 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0) #12
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #10 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef 17829322, i32 noundef 0, i32 noundef %nid, %struct.nodemask_t* noundef null) #13
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #14, !srcloc !34
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #18 = { nounwind readonly }

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
!8 = !{i64 2152422579}
!9 = !{i64 1297076}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2155796871}
!12 = !{i64 2155797229}
!13 = !{i64 2155797320}
!14 = !{i64 2147937465, i64 2147937498, i64 2147937549, i64 2147937605, i64 2147937638, i64 2147937692, i64 2147937721, i64 2147937741}
!15 = !{i64 2152416022}
!16 = !{i64 2152417424, i64 2152417151, i64 2152417786, i64 2152417832, i64 2152417838, i64 2152419226, i64 2152417875, i64 2152417893, i64 2152419300, i64 2152419348, i64 2152419396, i64 2152419459, i64 2152419508, i64 2152417971, i64 2152417996, i64 2152418022, i64 2152418028, i64 2152419247, i64 2152418065, i64 2152418071, i64 2152418121, i64 2152418167, i64 2152418200}
!17 = !{i64 2152420262, i64 2152419957, i64 2152420624, i64 2152420670, i64 2152420676, i64 2152422064, i64 2152420713, i64 2152420731, i64 2152422138, i64 2152422186, i64 2152422234, i64 2152422297, i64 2152422346, i64 2152420809, i64 2152420834, i64 2152420860, i64 2152420866, i64 2152422085, i64 2152420903, i64 2152420909, i64 2152420959, i64 2152421005, i64 2152421038}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2155788530}
!20 = !{i64 2155785518}
!21 = !{i64 7011}
!22 = !{i64 2155744387}
!23 = !{i64 2155744776, i64 2155744823, i64 2155744829, i64 2155744866, i64 2155744884, i64 2155745786, i64 2155745834, i64 2155745882, i64 2155745945, i64 2155745994, i64 2155744962, i64 2155744987, i64 2155745013, i64 2155745019, i64 2155745056, i64 2155745062, i64 2155745112, i64 2155745158, i64 2155745191}
!24 = !{i64 2155746087}
!25 = !{i64 2155746355, i64 2155746402, i64 2155746408, i64 2155746445, i64 2155746463, i64 2155747365, i64 2155747413, i64 2155747461, i64 2155747524, i64 2155747573, i64 2155746541, i64 2155746566, i64 2155746592, i64 2155746598, i64 2155746635, i64 2155746641, i64 2155746691, i64 2155746737, i64 2155746770}
!26 = !{i64 2155782447}
!27 = !{i64 2155782617}
!28 = !{i64 2155782768}
!29 = !{i64 2149557048, i64 2149557095, i64 2149557101, i64 2149557138, i64 2149557156, i64 2149558467, i64 2149558515, i64 2149558563, i64 2149558626, i64 2149558675, i64 2149557234, i64 2149557259, i64 2149557285, i64 2149557291, i64 2149558133, i64 2149558173, i64 2149558191, i64 2149558223, i64 2149558251, i64 2149558305, i64 2149558325, i64 2149558422, i64 2149557314, i64 2149557328, i64 2149557334, i64 2149557384, i64 2149557430, i64 2149557463}
!30 = !{i64 2149551035, i64 2149551082, i64 2149551088, i64 2149551125, i64 2149551143, i64 2149552454, i64 2149552502, i64 2149552550, i64 2149552613, i64 2149552662, i64 2149551221, i64 2149551246, i64 2149551272, i64 2149551278, i64 2149552120, i64 2149552160, i64 2149552178, i64 2149552210, i64 2149552238, i64 2149552292, i64 2149552312, i64 2149552409, i64 2149551301, i64 2149551315, i64 2149551321, i64 2149551371, i64 2149551417, i64 2149551450}
!31 = !{i64 2149553214, i64 2149553261, i64 2149553267, i64 2149553304, i64 2149553322, i64 2149554265, i64 2149554313, i64 2149554361, i64 2149554424, i64 2149554473, i64 2149553400, i64 2149553425, i64 2149553451, i64 2149553457, i64 2149553494, i64 2149553500, i64 2149553550, i64 2149553596, i64 2149553629}
!32 = !{i64 2149545332, i64 2149545379, i64 2149545385, i64 2149545422, i64 2149545440, i64 2149546781, i64 2149546829, i64 2149546877, i64 2149546940, i64 2149546989, i64 2149545518, i64 2149545543, i64 2149545569, i64 2149545575, i64 2149546447, i64 2149546487, i64 2149546505, i64 2149546537, i64 2149546565, i64 2149546619, i64 2149546639, i64 2149546736, i64 2149545598, i64 2149545612, i64 2149545618, i64 2149545668, i64 2149545714, i64 2149545747}
!33 = !{i64 2149054132, i64 2149054179, i64 2149054185, i64 2149054222, i64 2149054240, i64 2149055167, i64 2149055215, i64 2149055263, i64 2149055326, i64 2149055375, i64 2149054318, i64 2149054343, i64 2149054369, i64 2149054375, i64 2149054412, i64 2149054418, i64 2149054468, i64 2149054514, i64 2149054547}
!34 = !{i64 2147915603, i64 2147916114, i64 2147916144, i64 2147916170, i64 2147916202, i64 2147916231}
